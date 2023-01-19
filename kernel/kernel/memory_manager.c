#include <kernel/memory_manager.h>

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

static uint32_t  memory_size = 0x00;
static uint32_t  n_physical_frames = 0x00;
static uint32_t  alloc_addr  = 0x00;
static uint32_t* frame_bitmap = 0x00;
static uint32_t  frame_bitmap_len = 0x00;
static uint32_t  redirect_kmalloc = 0x00;


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

//  Count the number of available physical frames of PAGE_FRAME_SIZE bytes length (4096 = 4KiB)
    n_physical_frames = memory_size / PAGE_FRAME_SIZE;

//  Count the number of 32 bit blocks needed to map the state of n_physical_frames page frames
    frame_bitmap_len = n_physical_frames / 32;

//  Initializing allocation address
    alloc_addr = *(uint32_t*)(mbd->mods_addr + 4);

//  Allocating the frame bitmap
    frame_bitmap = (uint32_t*)(kmalloc(frame_bitmap_len));
    memset(frame_bitmap, 0x00, frame_bitmap_len * sizeof(uint32_t));
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


uint32_t
memory_next_available_frame()
{
    uint32_t bitmap_index = 0;
    while (bitmap_index < frame_bitmap_len)
    {
        if (0xFFFFFFFF != frame_bitmap[bitmap_index])
        {
            // At least one bit in frame_bitmap[bitmap_index] is not zero!
            break;
        }

        bitmap_index += 1;
    }

// Check the reason why we are outside the loop
    if (bitmap_index == frame_bitmap_len)
    {
        printf("KERNEL PANIC : OUT OF MEMORY - NO FREE FRAMES\n");
        abort();
    }

    int bitmap = frame_bitmap[bitmap_index];
    int bit_index = 0;

    while (bitmap != 0x00)
    {
        bitmap = bitmap >> 1;

        bit_index += 1;
    }

    return PAGE_FRAME_SIZE * (bitmap_index * 32 + bit_index); 
}


void
memory_acquire_frame(uint32_t frame_addr)
{
//  Check frame_addr is page aligned
    if (frame_addr & PAGE_ALIGN_MASK)
    {
        printf("KERNEL PANIC : INVALID PAGE FRAME TO ACQUIRE (0x%X)\n", frame_addr);
        abort();
    }

//  Check memory manager was initialized
    if (0x00 == frame_bitmap)
    {
        printf("KERNEL PANIC : INVALID MEMORY STATE WHILE ACQUIRING FRAME (0x%X)\n", frame_addr);
        abort();
    }

//  Get frame index
    uint32_t frame_index = frame_addr / PAGE_FRAME_SIZE;

//  Convert frame index to bitmap index (each bitmap entry stores 32 bit, hence the state of 32 frames)
    uint32_t bitmap_index = frame_index / 32;

// Convert frame index to a bit index (this is the bit inside the bitmap entry to be set)
    uint32_t bit_index = frame_index % 32;

// Set the bit associated to this frame_addr to 1 (acquired)
    uint32_t bit_mask = 0x01 << bit_index;
    frame_bitmap[bitmap_index] |= bit_mask;
}


void
memory_create_heap(void* kernel_directory)
{
    kheap_init(kernel_directory);
}


void*
kmalloc(uint32_t size)
{
    if (0x01 == redirect_kmalloc)
    {
        return kheap_malloc(size);
    }
    else
    {
        return __kmalloc__(size, 0x00, 0x00);
    }
}


void*
kmalloc_a(uint32_t size)
{
    if (0x01 == redirect_kmalloc)
    {
        return kheap_malloc_a(size);
    }
    else
    {
        return __kmalloc__(size, 0x01, 0x00);
    }
}


void*
kmalloc_ap(uint32_t size, uint32_t* pa)
{
    if (0x01 == redirect_kmalloc)
    {
        return kheap_malloc_ap(size, pa);
    }
    else
    {
        return __kmalloc__(size, 0x01, pa);
    }
}


void
kfree(void* p)
{
    if (0x01 == redirect_kmalloc)
    {
        return kheap_free(p);
    }
}


void
memory_enable_heap_malloc()
{
    redirect_kmalloc = 0x01;
}