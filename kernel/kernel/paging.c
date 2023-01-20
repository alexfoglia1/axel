#include <kernel/paging.h>
#include <kernel/memory_manager.h>

#include <stdio.h>
#include <string.h>

#include <common/utils.h>


static page_directory_t* kernel_directory = (page_directory_t*) (0x00);
static page_directory_t* current_directory = (page_directory_t*) (0x00);

static page_table_t*
new_page_table(uint32_t* pa)
{
    page_table_t* new_page_table = (page_table_t*)(kmalloc_ap(sizeof(page_table_t), pa));
    memset(new_page_table, 0x00, PAGE_TABLE_ENTRIES * sizeof(page_table_entry_t));

    return new_page_table;
}


static page_table_t*
clone_table(page_table_t* src, uint32_t* phys)
{
    page_table_t* dst = new_page_table(phys);

    for (uint32_t i = 0; i < PAGE_TABLE_ENTRIES; i++)
    {
        if (0x00 != src->pages[i].pa)
        {
            uint32_t physical_frame = memory_next_available_frame();
            memory_acquire_frame(physical_frame);

            dst->pages[i].present  = (src->pages[i].present)  ? 0x01 : 0x00;
            dst->pages[i].rw       = (src->pages[i].rw)       ? 0x01 : 0x00;
            dst->pages[i].user     = (src->pages[i].user)     ? 0x01 : 0x00;
            dst->pages[i].accessed = (src->pages[i].accessed) ? 0x01 : 0x00;
            dst->pages[i].dirty    = (src->pages[i].dirty)    ? 0x01 : 0x00;
            dst->pages[i].pa       = physical_frame >> 12;

            copy_page_physical(src->pages[i].pa * PAGE_FRAME_SIZE, dst->pages[i].pa * PAGE_FRAME_SIZE);
        }
    }

    return dst;
}


void
paging_init()
{
    kernel_directory = (page_directory_t*) kmalloc_a(sizeof(page_directory_t));
    memset(kernel_directory, 0x00, sizeof(page_directory_t));
    
    // Early initialization of kernel heap : assigning pointer to kernel_directory and initialize kernel heap structures
    memory_create_heap((void*)(kernel_directory));

    // Identity map addresses from zero to memory_get_alloc_addr() which is the highest kernel-used physical address
    // Note that with the early kernel heap initialization, this loop will cover with an identity map the kheap structures
    uint32_t pa = 0;
    while (pa <= memory_get_alloc_addr())
    {
        uint32_t page_table_index = 0x00;
        uint32_t page_frame_index = 0x00;
        paging_get_page(pa, &page_table_index, &page_frame_index);

        // If the current page table does not exist, it shall be created
        if (0x00 == kernel_directory->tables[page_table_index])
        {
            uint32_t pt_pa = 0x00;
            kernel_directory->tables[page_table_index] = new_page_table(&pt_pa);
            kernel_directory->tables_physical[page_table_index] = (pt_pa | 0x7);
        }

        //The page table entry associated witch this address pa is:
        page_table_entry_t* current_pte = (page_table_entry_t*) (&kernel_directory->tables[page_table_index]->pages[page_frame_index]);
        
        current_pte->present = 0x01;            // The page is present
        current_pte->rw = 0;                    // We don't want to write over the kernel
        current_pte->user = 0;                  // We don't want userspace processes access to this pages
        current_pte->pa = pa >> 12;             // We are identity mapping

        //Tell the memory manager that a page frame is acquired
        memory_acquire_frame(pa);

        pa += PAGE_FRAME_SIZE;
    }

    // Map kheap addresses in the kernel page directory
    paging_map(KHEAP_START, KHEAP_START + KHEAP_SIZE, kernel_directory);

    // Load kernel page directory
    // (kernel_directory was allocated BEFORE paging and heap, its physical address is equal to the address of tables_physical)
    load_page_directory(kernel_directory->tables_physical);
    
    // Enable paging
    enable_paging();

    // Paging is active, memory allocation can be redirected to the kernel heap
    memory_enable_heap_malloc();
    __slog__(COM1_PORT, "Paging is active\n");

    // Now clone the kernel directory and use the clone
    current_directory = paging_clone_directory(kernel_directory);

    // current_directory is allocated AFTER paging and heap, tables_physical points a virtual address in the heap
    // but physical_addr stores tables_physical physical address due to the paging_clone_directory() behaviour
    load_page_directory((uint32_t*)(current_directory->physical_addr));
    __slog__(COM1_PORT, "Kernel directory cloned\n");
}


void
paging_map(uint32_t va_from, uint32_t va_to, page_directory_t* page_directory)
{
// Check va_from is page_aligned, if it is not, align it to the highest page aligned addr < va_from
    if (va_from & PAGE_ALIGN_MASK)
    {
        va_from &= PAGE_FRAME_MASK;
    }

//  Check va_to is page_aligned, if it is not, align it to the lowest page aligned addr > va_to
    if (va_to & PAGE_ALIGN_MASK)
    {
        va_to &= PAGE_FRAME_MASK;
        va_to += PAGE_FRAME_SIZE;
    }

//  Now mapping
    uint32_t virtual_address = va_from;
    while (virtual_address < va_to)
    {
        uint32_t page_table_index = 0x00;
        uint32_t page_frame_index = 0x00;
        paging_get_page(virtual_address, &page_table_index, &page_frame_index);

        if (0x00 == kernel_directory->tables[page_table_index])
        {
            uint32_t pt_pa = 0x00;
            kernel_directory->tables[page_table_index] = new_page_table(&pt_pa);
            kernel_directory->tables_physical[page_table_index] = (pt_pa | 0x7);
        }

        page_table_entry_t* current_pte = (page_table_entry_t*) (&kernel_directory->tables[page_table_index]->pages[page_frame_index]);

        uint32_t physical_frame = memory_next_available_frame();
        
        current_pte->present = 0x01;            
        current_pte->rw = 0x01;                  
        current_pte->user = 0;             
        current_pte->pa = physical_frame >> 12;

        memory_acquire_frame(physical_frame);

        virtual_address += PAGE_FRAME_SIZE;
    }
}


void
paging_get_page(uint32_t va, uint32_t* page_table_index, uint32_t* frame_index)
{
    if (0x00 != page_table_index)
    {
        *page_table_index = (va / (PAGE_FRAME_SIZE * PAGE_DIRECTORY_ENTRIES));
    }

    if (0x00 != frame_index)
    {
        *frame_index = (va / PAGE_FRAME_SIZE) % PAGE_TABLE_ENTRIES;
    }
}


page_directory_t* paging_clone_directory(page_directory_t* src)
{
    uint32_t phys;

    page_directory_t* dst = (page_directory_t*) kmalloc_ap(sizeof(page_directory_t), &phys);
    memset(dst, 0x00, sizeof(page_directory_t));

    // dst is probably allocated in the kernel heap (for sure considering the paging_init() routine)
    // hence load_page_directory() cannot take a virtual address as the page directory address (both dst and dst->tables_physical) are virtual)

    uint32_t offset = (uint32_t)dst->tables_physical - (uint32_t)dst;
    dst->physical_addr = phys + offset; // if using dst as the current page directory in %CR3, this value shall be used

    for (uint32_t i = 0; i < PAGE_DIRECTORY_ENTRIES; i++)
    {
        if (0x00 != src->tables[i])
        {
            if (kernel_directory->tables[i] == src->tables[i])
            {
                dst->tables[i] = src->tables[i];
                dst->tables_physical[i] = src->tables_physical[i];
            }
            else
            {
                uint32_t phys;
                dst->tables[i] = clone_table(src->tables[i], &phys);
                dst->tables_physical[i] = phys | 0x07;
            }
        }
    }

    return dst;
}
