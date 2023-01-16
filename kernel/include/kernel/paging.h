#ifndef _PAGING_H
#define _PAGING_H


#include <kernel/memory_manager.h>

#define PAGE_DIRECTORY_ENTRIES 0x400
#define PAGE_TABLE_ENTRIES 0x400

#define PAGE_PRESENT 0x01
#define PAGE_WRITE   0x02


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
    page_table_t* tables[PAGE_DIRECTORY_ENTRIES];       // Array of pointers to page tables where pointers are virtual  addresses
    uint32_t tables_physical[PAGE_DIRECTORY_ENTRIES];   // Array of pointers to page tables where pointers are physical addresses 
    uint32_t physical_addr;                             // Physical address of tables_physical
} page_directory_t;


void
paging_init();


#endif