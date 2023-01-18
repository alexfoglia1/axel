#ifndef _KHEAP_H
#define _KHEAP_H

#define KHEAP_START 0xC0000000
#define KHEAP_SIZE  0x10000

#include <stdint.h>

typedef struct
{
    uint32_t addr;
    uint32_t size;
    uint8_t  used;

} kheap_block_descriptor_t;

void kheap_init(void* kernel_directory);

// KHEAP API : ALLOCATION (forwarded from memory_manager) 
void* kheap_malloc(uint32_t size);
void* kheap_malloc_a(uint32_t size);
void* kheap_malloc_ap(uint32_t size, uint32_t* pa);
void  kheap_free(void* p);

#endif