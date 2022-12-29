#include <kernel/paging.h>

#include <kernel/arch/asm.h>
#include <kernel/arch/idt.h>
#include <kernel/arch/gdt.h>

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
    page_directory = (uint32_t*) PAGE_DIRECTORY_VADDR;
    page_table     = (uint32_t*) PAGE_TABLE_VADDR;
    paging_stack_loc = PAGING_STACK_ADDR;
    paging_stack_max = PAGING_STACK_ADDR;
    paging_active = 0;
    loc = (physical_addr_start + PAGE_MEM_DIM) & PAGE_MASK;
}


void
paging_enable()
{
    idt_add_entry(PAGE_FAULT_INT, &paging_fault_handler, PRESENT | TRP_GATE);

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
    mmu_enable_paging(pd);

    uint32_t pt_idx = (PAGING_STACK_ADDR>>12) / PAGE_TABLE_ENTRY_SIZE;

    page_directory[pt_idx] = (uint32_t)(paging_alloc_page ()) | PAGE_PRESENT | PAGE_WRITE;
    memset(&page_table[pt_idx * PAGE_TABLE_ENTRY_SIZE], 0x00, PAGE_TABLE_SIZE);

    paging_active = 0x01;
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
        }
    }

    return (uint32_t*)paging_stack_loc;
}


void
paging_map(uint32_t va, uint32_t pa, uint32_t flags)
{
    uint32_t virtual_page = va / PAGE_TABLE_SIZE;
    uint32_t pt_idx = virtual_page / PAGE_TABLE_ENTRY_SIZE;

    if (0 == page_directory[pt_idx])
    {
        /** The page directory entry of this virtual address is empty **/
        page_directory[pt_idx] = (uint32_t)(paging_alloc_page()) | PAGE_PRESENT | PAGE_WRITE;

        /** Clear the page table entry of this virtual address **/
        memset(&page_table[pt_idx * PAGE_TABLE_ENTRY_SIZE], 0x00, PAGE_TABLE_SIZE);
    }

    page_table[virtual_page] = (pa & PAGE_MASK) | flags;
}


void
paging_map_memory(multiboot_info_t* mbd)
{
    for (uint32_t i = 0; i < mbd->mmap_length; i += sizeof(multiboot_memory_map_t))
    {
        multiboot_memory_map_t* mmmt =
            (multiboot_memory_map_t*) (mbd->mmap_addr + i);


        if (MULTIBOOT_MEMORY_AVAILABLE == mmmt->type)
        {
            uint32_t addr = (uint32_t)(mmmt->addr  & 0xFFFFFFFF);
            uint32_t length = (uint32_t)(mmmt->len & 0xFFFFFFFF);
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
}


uint32_t*
virtual_to_physical(uint32_t* va)
{
    uint32_t virtual_page = (uint32_t)(va) / PAGE_TABLE_SIZE;
    uint32_t pt_idx = virtual_page / PAGE_TABLE_ENTRY_SIZE;

    return (uint32_t*)(page_table[virtual_page] & PAGE_MASK);
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
paging_fault_handler(interrupt_stack_frame_t* frame)
{
    // TODO : handle page fault
    printf("KERNEL PANIC : PAGE FAULT\n");
    abort();
}



