#include <kernel/paging.h>
#include <kernel/memory.h>

#include <common/utils.h>

#include <controllers/pic.h>
#include <controllers/com.h>

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

uint32_t physical_memory_size;
uint32_t n_physical_frames;
uint32_t *frames_bitset;

page_directory_t* kernel_page_directory;
page_directory_t* current_page_directory;

#define INDEX_FROM_BIT(a)(a/32)
#define OFFSET_FROM_BIT(a)(a%32)


static
void set_frames_bitset(uint32_t frame_address, uint8_t value)
{
    uint32_t frame  = frame_address / PAGE_FRAME_SIZE;
    uint32_t index  = INDEX_FROM_BIT(frame);
    uint32_t offset = OFFSET_FROM_BIT(frame);

    if (0x00 == value)
    {
        frames_bitset[index] &= ~(0x01 << offset);
    }
    else
    {
        frames_bitset[index] |= (0x01 << offset);
    }
}


static
uint32_t get_first_free_frame()
{
    for (uint32_t i = 0; i < INDEX_FROM_BIT(n_physical_frames); i++)
    {
        for (uint32_t j = 0; j < 32; j++)
        {
            if (0x00 == (frames_bitset[i] & (0x01 << j)))
            {
                return i * 32 + j;
            }
        }
    }

    return 0x00;
}


static
void switch_page_directory(page_directory_t* directory)
{
    current_page_directory = directory;

    // Load kernel page directory
    load_page_directory(current_page_directory->page_tables_pa);

    // Enable paging
    enable_paging();

    __slog__(COM1_PORT, "Switched page directory\n");
}


page_table_entry_t*
paging_get_page(uint32_t address, page_directory_t* page_directory)
{
    // Turn the address into an index.
    address /= PAGE_FRAME_SIZE;
    // Find the page table containing this address.
    uint32_t table_idx = address / PAGE_TABLE_ENTRIES;

    if (page_directory->page_tables[table_idx]) // If this table is already assigned
    {
        return &page_directory->page_tables[table_idx]->pages[address % PAGE_TABLE_ENTRIES];
    }
    else
    {
        uint32_t tmp;
        page_directory->page_tables[table_idx] = (page_table_t*) kmalloc_page_aligned_physical(sizeof(page_table_t), &tmp);
        memset(page_directory->page_tables[table_idx], 0, PAGE_FRAME_SIZE);
        page_directory->page_tables_pa[table_idx] = tmp | 0x7; // PRESENT, RW, US.

        return &page_directory->page_tables[table_idx]->pages[address % PAGE_TABLE_ENTRIES];
    }
}


void
paging_alloc_frame(page_table_entry_t* page_table_entry, uint32_t is_kernel_page, uint32_t is_write)
{
    if (page_table_entry->pa != 0x00)
    {
        return;
    }
    else
    {
        uint32_t next_free_frame = get_first_free_frame();
        if ((uint32_t)(-1) == next_free_frame)
        {
            printf("KERNEL PANIC : NO FREE FRAMES\n");
            abort();
        }

        set_frames_bitset(next_free_frame * PAGE_FRAME_SIZE, 0x01);

        page_table_entry->present = 0x01;
        page_table_entry->rw = (0x00 == is_write) ? 0x00 : 0x01;
        page_table_entry->user = (0x00 == is_kernel_page) ? 0x01 : 0x00;
        page_table_entry->pa = next_free_frame;
    }
}


void
paging_free_frame(page_table_entry_t* page_table_entry)
{
    if (0x00 == page_table_entry->pa)
    {
        return; // Nothing to free here
    }
    else
    {
        set_frames_bitset(page_table_entry->pa, 0x00);
        page_table_entry->pa = 0x00;
    }
}


void 
paging_init()
{
    physical_memory_size = memory_get_size();
    n_physical_frames = physical_memory_size / PAGE_FRAME_SIZE;

    __slog__(COM1_PORT, "Initializing paging : physical_memory_size = %u bytes, number of physical frames = %u\n", physical_memory_size, n_physical_frames);   

    // We don't need a n_physical_frames length array to store n_physical_frames 0/1 values
    frames_bitset = (uint32_t*) kmalloc(INDEX_FROM_BIT(n_physical_frames)); 

    // Initialize all physical frames as non-used (0x00)
    memset(frames_bitset, 0x00, INDEX_FROM_BIT(n_physical_frames));

    // Create the kernel page directory
    kernel_page_directory = (page_directory_t*)(kmalloc_page_aligned(sizeof(page_directory_t)));

    // Clear kernel page directory pointers in order to initialize them
    memset(kernel_page_directory, 0x00, sizeof(page_directory_t));

    __slog__(COM1_PORT, "Kernel page directory allocated at pa 0x%X\n", (uint32_t)(kernel_page_directory));

    // Map pages in the kernel memory area which will become the kernel heap
    for (uint32_t i = HEAP_START; i < HEAP_START + HEAP_INITIAL_SIZE; i += PAGE_FRAME_SIZE)
    {
        paging_get_page(i, kernel_page_directory);
    }

    // Identity map (virtual = physical) addresses from 0 to memory_get_next_alloc_address()
    uint32_t current_addr = 0;
    while (current_addr <= memory_get_next_alloc_address())
    {
        paging_alloc_frame(paging_get_page(current_addr, kernel_page_directory), 0, 0); 
        current_addr += PAGE_FRAME_SIZE;
    }

    // Now allocating heap pages created before
    for (uint32_t i = HEAP_START; i < HEAP_START + HEAP_INITIAL_SIZE; i += PAGE_FRAME_SIZE)
    {
        paging_alloc_frame(paging_get_page(i, kernel_page_directory), 0, 0);
    }

    // Register page fault handler
    pic_add_irq(PAGEFAULT_IRQ_INTERRUPT_NO, &paging_fault_irq_handler);

    // Set current pèage directory = kernel_page_directory and enable paging
    switch_page_directory(kernel_page_directory);

    __slog__(COM1_PORT, "Paging is active\n");

    // Create kernel heap
    heap_t* kernel_heap = memory_create_heap(HEAP_START, HEAP_START + HEAP_INITIAL_SIZE, 0xCFFFF000, 0, 0);
    // Tell memory that kernel_heap is created and hence kmalloc can be redirectioned
    memory_set_kernel_heap(kernel_heap);

    __slog__(COM1_PORT, "Heap is active\n");
}


page_directory_t*
paging_get_kernel_page_directory()
{
    return kernel_page_directory;
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void paging_fault_irq_handler(interrupt_stack_frame_t* frame)
{
   // A page fault has occurred.
   // The faulting address is stored in the CR2 register.

   uint32_t faulting_address;
   asm volatile("mov %%cr2, %0" : "=r" (faulting_address));

   // The error code gives us details of what happened.
   int present = frame->error_code & 0x1; // Page not present
   int rw = frame->error_code & 0x2;           // Write operation?
   int us = frame->error_code & 0x4;           // Processor was in user-mode?
   int reserved = frame->error_code & 0x8;     // Overwritten CPU-reserved bits of page entry?
   int id = frame->error_code & 0x10;          // Caused by an instruction fetch?

   // Output an error message.
   printf("\nPage fault ( present(%d), write-operation(%d), user-mode(%d), reserved(%d), fetch(%d) ) at 0x%X\n",
                        present,     rw,                            us,  reserved,           id,   faulting_address);

    abort();
}
