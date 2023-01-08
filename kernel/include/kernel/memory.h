#ifndef MEMORY_H
#define MEMORY_H

#include <stdint.h>

#include <common/ordered_array.h>

#include <kernel/arch/multiboot.h>

#define PAGE_FRAME_SIZE 0x1000 //A chunk of 4KiB in physical memory represents a page frame, this should be also the size of a virtual page
#define PAGE_FRAME_MASK 0xFFFFF000
#define HEAP_START         0xC0000000
#define HEAP_INITIAL_SIZE  0x01000000
#define HEAP_INDEX_SIZE    0x20000
#define HEAP_MAGIC         0x123890AB
#define HEAP_MIN_SIZE      0x70000

typedef struct
{
    uint32_t magic;
    uint8_t is_hole;
    uint32_t size;
} heap_header_t;

typedef struct
{
    uint32_t magic;
    heap_header_t* header;
} heap_footer_t;

typedef struct
{
    ordered_array_t index;
    uint32_t start_address;
    uint32_t end_address;
    uint32_t max_address;
    uint8_t supervisor;
    uint8_t readonly;
} heap_t;


void memory_init(multiboot_info_t* mbd);
uint32_t memory_get_size();
uint32_t memory_get_next_alloc_address();
void memory_set_alloc_address(uint32_t alloc_address);
uint8_t memory_frame_present(void* frame_address);


heap_t* memory_create_heap(uint32_t start, uint32_t end, uint32_t max, uint8_t supervisor, uint8_t readonly);
void* memory_heap_alloc(uint32_t size, uint8_t page_aligned, heap_t* heap);
void  memory_heap_free(void* p, heap_t* heap);
void  memory_set_kernel_heap(heap_t* kernel_heap);


void* kmalloc_page_aligned(uint32_t size);
void* kmalloc_physical(uint32_t size, uint32_t* pa);
void* kmalloc_page_aligned_physical(uint32_t size, uint32_t* pa);
void* kmalloc(uint32_t size);

void kfree(void* p);

#endif