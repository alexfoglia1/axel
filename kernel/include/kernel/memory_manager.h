#ifndef _MEM_MANAGER_H
#define _MEM_MANAGER_H

#include <stdint.h>

#include <kernel/kheap.h>

#include <kernel/arch/multiboot.h>

#define PAGE_FRAME_SIZE 0x1000      // Each physical page frame is 4K length
#define PAGE_ALIGN_MASK 0x00000FFF  // Page align mask = page frame size - 1
#define PAGE_FRAME_MASK 0xFFFFF000  // Page frame mask : gets the lowest address multiple of 0x1000

// MEMORY MANAGEMENT API : INITIALIZATION
void memory_init(multiboot_info_t* mbd);

// MEMORY MANAGEMENT API : SUPPORT FUNCTIONS
uint32_t memory_get_size();
uint32_t memory_get_alloc_addr();
uint32_t memory_next_available_frame();
void memory_acquire_frame(uint32_t frame_addr);
void memory_create_heap(void* kernel_directory);
void memory_enable_heap_malloc();

// MEMORY MANAGEMENT API : ALLOCATION 
void* kmalloc(uint32_t size);
void* kmalloc_a(uint32_t size);
void* kmalloc_ap(uint32_t size, uint32_t* pa);
void  kfree(void* p);


#endif