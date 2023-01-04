#ifndef MEMORY_H
#define MEMORY_H

#include <stdint.h>
#include <kernel/arch/multiboot.h>

#define PAGE_FRAME_SIZE 0x1000 //A chunk of 4KiB in physical memory represents a page frame, this should be also the size of a virtual page

void memory_init(multiboot_info_t* mbd);
uint32_t memory_get_size();
uint8_t memory_frame_present(void* frame_address);

#endif