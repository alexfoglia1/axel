#ifndef _MEM_MANAGER_H
#define _MEM_MANAGER_H

#include <stdint.h>

#include <kernel/arch/multiboot.h>

// MEMORY MANAGEMENT API : INITIALIZATION
void memory_init(multiboot_info_t* mbd);
uint32_t memory_get_size();

// MEMORY MANAGEMENT API : ALLOCATION 
void* kmalloc(uint32_t size);
void  kfree(void* p);




#endif