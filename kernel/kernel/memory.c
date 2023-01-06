#include <kernel/memory.h>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <common/utils.h>

extern uint32_t kern_end;
uint32_t mem_size;
uint32_t alloc_addr;

// A static helpful routine to allocate dynamic memory for the kernel
static uint8_t*
__kmalloc__(uint32_t size, uint8_t aligned, uint8_t* pa)
{
    // If we need to allocate aligned but alloc_addr is not alligned with page frame size, than we align it
    if (0x01 == aligned && (alloc_addr != (alloc_addr & PAGE_FRAME_MASK)))
    {
        alloc_addr &= PAGE_FRAME_MASK; // alloc_addr is now the highest address multiple of 0x1000 which is less than alloc_addr before
        alloc_addr += PAGE_FRAME_SIZE; // alloc_addr is now the lowest address multiple of 0x1000 which is greater than alloc_addr before
    }

    if (pa != 0x00)
    {
        *pa = (uint8_t*) alloc_addr; // saving physical address if required
    }

    uint8_t* return_value = (uint8_t*)(alloc_addr);
    alloc_addr += size;

    return return_value;
}


uint8_t*
kmalloc_page_aligned(uint32_t size)
{
    return __kmalloc__(size, 0x01, 0x00);
}


uint8_t*
kmalloc_physical(uint32_t size, uint8_t* pa)
{
    return __kmalloc__(size, 0x00, pa);
}


uint8_t*
kmalloc_page_aligned_physical(uint32_t size, uint8_t* pa)
{
    return __kmalloc__(size, 0x01, pa);
}


uint8_t*
kmalloc(uint32_t size)
{
    return __kmalloc__(size, 0x00, 0x00);
}


void
memory_init(multiboot_info_t* mbd)
{
    mem_size = 0;
    alloc_addr = kern_end;

    #ifdef __ADDR_64BIT__
    for (uint32_t i = 0; i < mbd->mmap_length; i++)
    {
        uint8_t* p_mmmt_byte0 = (uint8_t*) (0x7FFF00000000 | (mbd->mmap_addr));
        uint8_t* p_mmmt_bytei = (uint8_t*) (p_mmmt_byte0 + (i * sizeof(multiboot_memory_map_t)));
        multiboot_memory_map_t* mmmt = (multiboot_memory_map_t*) (p_mmmt_bytei);
#else
    for (uint32_t i = 0; i < mbd->mmap_length; i += sizeof(multiboot_memory_map_t))
    {
        multiboot_memory_map_t* mmmt =
            (multiboot_memory_map_t*) (mbd->mmap_addr + i);
#endif
        if (MULTIBOOT_MEMORY_AVAILABLE == mmmt->type)
        {
            mem_size += mmmt->len;
        }
    }
   
}

uint32_t
memory_get_size()
{
    return mem_size;
}


uint8_t
memory_frame_present(uint8_t* frame_address)
{
    return (((uint32_t) frame_address) < mem_size);
}