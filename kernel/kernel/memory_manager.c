#include <kernel/memory_manager.h>

#include <stdio.h>
#include <stdlib.h>

static uint32_t  memory_size = 0;
static uint32_t  alloc_addr  = 0;


static void*
__kmalloc__(uint32_t size, uint8_t page_aligned, uint32_t* pa)
{
    if (0x01 == page_aligned)
    {
        if (alloc_addr & PAGE_ALIGN_MASK) // If alloc_addr is not already page aligned
        {
            alloc_addr &= PAGE_FRAME_MASK;
            alloc_addr += PAGE_FRAME_SIZE;
        }
    }

    void* p = (void*)(alloc_addr);
    if ((uint32_t)(p) + size < memory_size)
    {
        
        *pa = (0x00 == pa) ? 0x00 : alloc_addr;
        alloc_addr += size;

        return p;
    }
    else
    {
        printf("KERNEL PANIC : OUT OF MEMORY\n");
        abort();

        __builtin_unreachable();
    }

}


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

//  Initializing allocation address
    alloc_addr = *(uint32_t*)(mbd->mods_addr + 4);
    if (alloc_addr & PAGE_ALIGN_MASK) // If alloc_addr is not already page aligned
    {
        alloc_addr &= PAGE_FRAME_MASK;
        alloc_addr += PAGE_FRAME_SIZE;
    }
}


uint32_t
memory_get_size()
{
    return memory_size;
}


uint32_t
memory_get_alloc_addr()
{
    return alloc_addr;
}


void*
kmalloc(uint32_t size)
{
    return __kmalloc__(size, 0x00, 0x00);
}


void*
kmalloc_a(uint32_t size)
{
    return __kmalloc__(size, 0x01, 0x00);
}


void*
kmalloc_ap(uint32_t size, uint32_t* pa)
{
    return __kmalloc__(size, 0x01, pa);
}


void
kfree(void* p)
{
    return;
}