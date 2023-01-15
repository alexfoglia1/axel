#include <kernel/memory_manager.h>


static uint32_t memory_size = 0;


void
memory_init(multiboot_info_t* mbd)
{
    memory_size = 0;

//  The very first thing to do : count available memory by parsing the multiboot info provided by GRUB
    for (uint32_t i = 0; i < mbd->mmap_length; i += sizeof(multiboot_memory_map_t))
    {
        multiboot_memory_map_t* mblock_map = (multiboot_memory_map_t*) (mbd->mmap_addr + i);

        if (MULTIBOOT_MEMORY_AVAILABLE == mblock_map->type)
        {
            memory_size += mblock_map->len;
        }
    }

}


uint32_t
memory_get_size()
{
    return memory_size;
}


void*
kmalloc(uint32_t size)
{
    return 0x00;
}


void
kfree(void* p)
{
    return;
}