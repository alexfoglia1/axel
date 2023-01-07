#ifndef MEMORY_H
#define MEMORY_H

#include <stdint.h>
#include <kernel/arch/multiboot.h>

#define PAGE_FRAME_SIZE 0x1000 //A chunk of 4KiB in physical memory represents a page frame, this should be also the size of a virtual page
#define PAGE_FRAME_MASK 0xFFFFF000

void memory_init(multiboot_info_t* mbd);
uint32_t memory_get_size();
uint32_t memory_get_next_alloc_address();
uint8_t memory_frame_present(void* frame_address);

void* kmalloc_page_aligned(uint32_t size);
void* kmalloc_physical(uint32_t size, uint32_t* pa);
void* kmalloc_page_aligned_physical(uint32_t size, uint32_t* pa);
void* kmalloc(uint32_t size);

#endif