#include <kernel/paging.h>
#include <kernel/memory_manager.h>

#include <stdio.h>
#include <string.h>

#include <common/utils.h>


static page_directory_t* kernel_directory = (page_directory_t*) (0x00);


static page_table_t*
new_page_table(uint32_t* pa)
{
    page_table_t* new_page_table = (page_table_t*)(kmalloc_ap(sizeof(page_table_t), pa));
    memset(new_page_table, 0x00, PAGE_TABLE_ENTRIES * sizeof(page_table_entry_t));

    return new_page_table;
}


void
paging_init()
{
    kernel_directory = (page_directory_t*) kmalloc_a(sizeof(page_directory_t));
    memset(kernel_directory, 0x00, sizeof(page_directory_t));
    
    // Identity map addresses from zero to memory_get_alloc_addr() which is the highest kernel physical address
    uint32_t pa = 0;
    while (pa < memory_get_alloc_addr())
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

    // Creating the kernel heap
    memory_create_heap();
    
    // Map kheap addresses in the kernel page directory
    paging_map(KHEAP_START, KHEAP_START + KHEAP_SIZE, kernel_directory);

    // Load kernel page directory
    load_page_directory(kernel_directory->tables_physical);
    
    // Enable paging
    enable_paging();

    while(1);
    __slog__(COM1_PORT, "Paging is active\n");
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
        current_pte->rw = 1;                  
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
