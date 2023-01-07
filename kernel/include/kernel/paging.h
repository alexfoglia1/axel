#ifndef _PAGING_H
#define _PAGING_H

#include <kernel/memory.h>

#include <interrupts/isr.h> // for interrupt stack frame t

#include <stdint.h>

#define PAGE_DIRECTORY_ENTRIES 0x400
#define PAGE_TABLE_ENTRIES 0x400

#define PAGE_PRESENT 0x01
#define PAGE_WRITE   0x02

#define PAGEFAULT_IRQ_INTERRUPT_NO  0x0E

typedef struct page_table_entry
{
    uint32_t present  :1;
    uint32_t rw       :1;
    uint32_t user     :1;
    uint32_t accessed :1;
    uint32_t dirty    :1;
    uint32_t unused   :7;
    uint32_t pa       :20;
} page_table_entry_t;

typedef struct page_table
{
    page_table_entry_t pages[PAGE_TABLE_ENTRIES];
} page_table_t;

typedef struct page_directory
{
    page_table_t* page_tables[PAGE_DIRECTORY_ENTRIES];
    uint32_t page_tables_pa[PAGE_DIRECTORY_ENTRIES];
    uint32_t page_tables_pa_0;
} page_directory_t;

extern void load_page_directory(uint32_t* page_directory);
extern void enable_paging();

void paging_alloc_frame(uint32_t address, page_directory_t* page_directory, uint32_t is_kernel_page, uint32_t is_write);
void paging_free_frame(page_table_entry_t* page_table_entry);
void paging_init();
//uint32_t* paging_clone_directory(page_directory_t* page_directory);



#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void paging_fault_irq_handler(interrupt_stack_frame_t* frame);

#endif
