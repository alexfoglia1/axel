#include <kernel/memory.h>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <common/utils.h>


uint32_t mem_size;

void
memory_init(multiboot_info_t* mbd)
{
    mem_size = 0;

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
memory_frame_present(void* frame_address)
{
    return (uint32_t) frame_address < mem_size;
}