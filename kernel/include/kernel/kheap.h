#ifndef _KHEAP_H
#define _KHEAP_H

#define KHEAP_START 0xC0000000
#define KHEAP_SIZE  0x00010000

#define KHEAP_AVAILABLE_BLOCK 0x00
#define KHEAP_USED_BLOCK      0x01
#define KHEAP_MERGED_BLOCK    0x02

#include <stdint.h>

typedef struct
{
    uint32_t addr;
    uint32_t size;
    uint8_t  status;

} kheap_block_descriptor_t;

void kheap_init();

// KHEAP API : ALLOCATION (forwarded from memory_manager) 
void* kheap_malloc(uint32_t size);
void* kheap_malloc_a(uint32_t size);
void* kheap_malloc_ap(uint32_t size, uint32_t* pa);
void  kheap_free(void* p);

#endif