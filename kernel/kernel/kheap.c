#include <kernel/kheap.h>
#include <kernel/paging.h>
#include <common/ordered_array.h>


static page_directory_t* kernel_directory = (page_directory_t*)(0x00);
static ordered_array_t kheap;

static void*
__kheap_malloc__(uint32_t size, uint8_t page_aligned, uint32_t* pa)
{
    return 0;

}


static
uint8_t size_based_less_than(array_type_t arg_1, array_type_t arg_2)
{
    kheap_block_descriptor_t* block_1 = (kheap_block_descriptor_t*)(arg_1);
    kheap_block_descriptor_t* block_2 = (kheap_block_descriptor_t*)(arg_2);

    return block_1->size < block_2->size ? 0x01 : 0x00;
}


void
kheap_init(void* _kernel_directory)
{
    kernel_directory = (page_directory_t*)(_kernel_directory);
    kheap = ordered_array_new(KHEAP_SIZE, &size_based_less_than);

    kheap_block_descriptor_t* entire_heap_descriptor = kmalloc(sizeof(kheap_block_descriptor_t));
    
    entire_heap_descriptor->addr = KHEAP_START;
    entire_heap_descriptor->size = KHEAP_SIZE;
    entire_heap_descriptor->used = 0x00;
    ordered_array_insert(&kheap, (array_type_t*)(entire_heap_descriptor));
}

void*
kheap_malloc(uint32_t size)
{
    return __kheap_malloc__(size, 0x00, 0x00);
}


void*
kheap_malloc_a(uint32_t size)
{
    return __kheap_malloc__(size, 0x01, 0x00);
}


void*
kheap_malloc_ap(uint32_t size, uint32_t* pa)
{
    return __kheap_malloc__(size, 0x01, pa);
}


void
kheap_free(void* p)
{

}