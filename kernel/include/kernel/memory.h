#ifndef MEMORY_H
#define MEMORY_H

#include <stdint.h>
#include <kernel/arch/multiboot.h>

#define PAGE_FRAME_SIZE 0x1000 //A chunk of 4KiB in physical memory represents a page frame, this should be also the size of a virtual page


typedef struct page_frame_entry
{
    uint32_t base_addr;
    uint8_t  available;
    struct page_frame_entry* next;
} page_frame_entry_t;


void memory_init(multiboot_info_t* mbd);
void* memory_alloc_frame(uint8_t* err);
void memory_free_frame(void* ptr);
uint8_t memory_frame_present(void* frame_address);

#endif