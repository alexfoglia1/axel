#include <kernel/paging.h>
#include <kernel/arch/io.h>

#include <controllers/pic.h>

#include <common/utils.h>

#include <string.h>
#include <stdio.h>
#include <stdlib.h>

uint32_t *page_directory;
uint32_t *page_table;
uint32_t loc;
uint32_t paging_stack_loc;
uint32_t paging_stack_max;
uint32_t *current_directory;
uint8_t  paging_active;


void
paging_init(uint32_t physical_addr_start)
{
    __slog__(COM1_PORT, "Initializing paging\n");

    page_directory = (uint32_t*) PAGE_DIRECTORY_VADDR;
    page_table     = (uint32_t*) PAGE_TABLE_VADDR;
    paging_stack_loc = PAGING_STACK_ADDR;
    paging_stack_max = PAGING_STACK_ADDR;
    paging_active = 0;
    loc = (physical_addr_start + PAGE_MEM_DIM) & PAGE_MASK;

    __slog__(COM1_PORT, "Paging initialized, page directory at(0x%X), page table at(0x%X)\n", page_directory, page_table);
}


void
paging_enable()
{
    __slog__(COM1_PORT, "Enabling paging\n");

    pic_add_irq(PAGEFAULT_IRQ_INTERRUPT_NO, &paging_fault_irq_handler);

    uint32_t* pd = (uint32_t*)paging_alloc_page();
    memset(pd, 0x00, PAGE_TABLE_SIZE);
    pd[0] = (uint32_t)(paging_alloc_page()) | PAGE_PRESENT | PAGE_WRITE;

    uint32_t *pt = (uint32_t*) (pd[0] & PAGE_MASK);
    for (int i = 0; i < PAGE_TABLE_ENTRY_SIZE; i++)
    {
        pt[i] = i * PAGE_TABLE_SIZE | PAGE_PRESENT | PAGE_WRITE;
    }

    pd[PAGE_TABLE_ENTRY_SIZE - 2] = (uint32_t)(paging_alloc_page ()) | PAGE_PRESENT | PAGE_WRITE;
    pt = (uint32_t*) (pd[PAGE_TABLE_ENTRY_SIZE - 2] & PAGE_MASK);
    memset(pt, 0x00, PAGE_TABLE_SIZE);

    pt[PAGE_TABLE_ENTRY_SIZE - 1] = (uint32_t)pd | PAGE_PRESENT | PAGE_WRITE;
    pd[PAGE_TABLE_ENTRY_SIZE - 1] = (uint32_t)pd | PAGE_PRESENT | PAGE_WRITE;

    current_directory = pd;
    asm volatile ("mov %0, %%cr3" : : "r" (pd));
    uint32_t cr0;
    asm volatile ("mov %%cr0, %0" : "=r" (cr0));
    cr0 |= 0x80000000;
    asm volatile ("mov %0, %%cr0" : : "r" (cr0));

    uint32_t pt_idx = (PAGING_STACK_ADDR>>12) / PAGE_TABLE_ENTRY_SIZE;

    page_directory[pt_idx] = (uint32_t)(paging_alloc_page ()) | PAGE_PRESENT | PAGE_WRITE;
    memset(&page_table[pt_idx * PAGE_TABLE_ENTRY_SIZE], 0x00, PAGE_TABLE_SIZE);

    paging_active = 0x01;

    __slog__(COM1_PORT, "Paging is active\n");
}


uint32_t*
paging_alloc_page()
{
    if (0 == paging_active)
    {
        loc += PAGE_MEM_DIM;
        return (uint32_t*)loc;
    }
    else
    {
        if (PAGING_STACK_ADDR == paging_stack_loc)
        {
            printf("KERNEL PANIC : OUT OF MEMORY\n");
            abort();
        }
        else
        {
            paging_stack_loc -= sizeof(uint32_t);
            
            __slog__(COM1_PORT, "Allocated page, stack lock(0x%X)\n", paging_stack_loc);
        }
    }

    return (uint32_t*)paging_stack_loc;
}


void
paging_map(uint32_t va, uint32_t pa, uint32_t flags)
{
    __slog__(COM1_PORT, "Mapping va(0x%X),pa(0x%X)\n");

    uint32_t virtual_page = va / PAGE_TABLE_SIZE;
    uint32_t pt_idx = virtual_page / PAGE_TABLE_ENTRY_SIZE;

    __slog__(COM1_PORT, "Virtual page of va(0x%X)=(0x%X), page directory index of virtual page=(%u)\n", va, virtual_page, pt_idx);
    if (0 == page_directory[pt_idx])
    {
        __slog__(COM1_PORT, "No page table entry found for va(0x%X)\n", va);

        uint32_t page_addr = (uint32_t)(paging_alloc_page());
        page_directory[pt_idx] = page_addr | PAGE_PRESENT | PAGE_WRITE;
        memset(&page_table[pt_idx * PAGE_TABLE_ENTRY_SIZE], 0x00, PAGE_TABLE_SIZE);

        __slog__(COM1_PORT, "Page directory allocated for va(0x%X) at(0x%X), page_directory[%u] is now(0x%X)\n", va, page_addr, pt_idx, page_directory[pt_idx]);
    }

    page_table[virtual_page] = (pa & PAGE_MASK) | flags;

    __slog__(COM1_PORT, "Stored pa(0x%X) in page_table[0x%X]\n", pa, virtual_page);
}


void
paging_map_memory(multiboot_info_t* mbd)
{
    __slog__(COM1_PORT, "Start mapping physical memory using multiboot memory map\n");

    for (uint32_t i = 0; i < mbd->mmap_length; i += sizeof(multiboot_memory_map_t))
    {
        multiboot_memory_map_t* mmmt =
            (multiboot_memory_map_t*) (mbd->mmap_addr + i);


        if (MULTIBOOT_MEMORY_AVAILABLE == mmmt->type)
        {
            uint32_t addr = (uint32_t)(mmmt->addr  & 0xFFFFFFFF);
            uint32_t length = (uint32_t)(mmmt->len & 0xFFFFFFFF);
            __slog__(COM1_PORT, "Found an available memory area at(0x%X) of size(%u) bytes\n", addr, length);
            for (uint32_t j = addr; j < addr + length; j += PAGE_MEM_DIM)
            {
                if (paging_stack_loc < paging_stack_max)
                {
                    uint32_t* stack = (uint32_t*)paging_stack_loc;
                    *stack = j;
                    paging_stack_loc += sizeof(uint32_t);

                }
                else
                {
                    paging_map(paging_stack_max, j, PAGE_PRESENT | PAGE_WRITE);
                    paging_stack_max += PAGE_MEM_DIM;
                }
            }
        }
    }

    __slog__(COM1_PORT, "Physical memory mapped\n");
}


uint32_t*
virtual_to_physical(uint32_t* va)
{
    uint32_t virtual_page = (uint32_t)(va) / PAGE_TABLE_SIZE;
    uint32_t pt_idx = virtual_page / PAGE_TABLE_ENTRY_SIZE;

    return (uint32_t*)(page_table[pt_idx] & PAGE_MASK);
}


uint8_t
paging_is_active()
{
    return paging_active;
}


void
#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
paging_fault_irq_handler(interrupt_stack_frame_t* frame)
{
    // TODO : handle page fault
    printf("KERNEL PANIC : PAGE FAULT\n");
    abort();
}



