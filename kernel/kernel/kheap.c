#include <kernel/kheap.h>
#include <kernel/paging.h>

#include <stdio.h>
#include <stdlib.h>

#include <common/utils.h>
#include <common/ordered_array.h>


static page_directory_t* kernel_directory = (page_directory_t*)(0x00);
static ordered_array_t kheap;


static void* 
__kheap_malloc_at__(uint32_t va, uint32_t size, uint8_t page_aligned, uint32_t* pa)
{
    uint32_t descriptor_address = va;
    kheap_block_descriptor_t* block_descriptor = (kheap_block_descriptor_t*) (descriptor_address);
    uint32_t alloc_addr = descriptor_address + sizeof(kheap_block_descriptor_t);

    // va may correspond to a previously allocated block and hence it is yet present in the kheap ordered array
    ordered_array_delete_at(&kheap, ordered_array_index_of(&kheap, block_descriptor));

    if (0x01 == page_aligned && alloc_addr & PAGE_ALIGN_MASK)
    {
        alloc_addr &= PAGE_FRAME_MASK;
        alloc_addr += PAGE_FRAME_SIZE;
    }

    block_descriptor->addr = alloc_addr;
    block_descriptor->used = KHEAP_USED_BLOCK;
    block_descriptor->size = size + (alloc_addr - descriptor_address);

    if (0x00 != pa)
    {
        uint32_t table_index, frame_index;
        paging_get_page(alloc_addr, &table_index, &frame_index);

        page_table_entry_t* alloc_addr_pte = (page_table_entry_t*) (&kernel_directory->tables[table_index]->pages[frame_index]);
          
        // Get the frame address whose block contains the physical address of virtual address alloc_addr
        uint32_t alloc_addr_frame = alloc_addr_pte->pa << 12;

        // Get the alloc_addr offset from its frame base address (if alloc_addr is page aligned, the offset is obviously zero)
        uint32_t alloc_addr_offset = alloc_addr & PAGE_ALIGN_MASK;

        // Get the alloc_addr physical address
        *pa = (alloc_addr_frame | alloc_addr_offset);
    }
    
    ordered_array_insert(&kheap, block_descriptor);
    
    __slog__(COM1_PORT, "kheap malloc : requested 0x%X, allocated 0x%X, descriptor address 0x%X, returned address 0x%X\n", size, block_descriptor->size, va, block_descriptor->addr);
    
    return (void*) block_descriptor->addr;
}


static void*
__kheap_malloc__(uint32_t size, uint8_t page_aligned, uint32_t* pa)
{
    if (kheap.array_ll == 0)
    {
        return __kheap_malloc_at__(KHEAP_START, size, page_aligned, pa);
    }
    else
    {
        uint32_t minimum_requred_space = size + sizeof(kheap_block_descriptor_t);

        // Worst case : block descriptor allocated at 1 + frame_nth_base and page aligned allocation is required : alloc_addr will be at frame_n+1th_base
        // And hence the distance between alloc_addr and the header end is PAGE_FRAME_SIZE - 1 - sizeof(kheap_block_descriptor_t)
        uint32_t extra_required_space = (0x01 == page_aligned) ? PAGE_FRAME_SIZE - 1 - sizeof(kheap_block_descriptor_t) : 0;

        //First attempt : search for the first available heap block big enough to contain the required space
        for (uint32_t i = 0; i < kheap.array_ll; i++)
        {
            kheap_block_descriptor_t* block_i = (kheap_block_descriptor_t*) (ordered_array_at(&kheap, i));

            if (block_i->size >= minimum_requred_space + extra_required_space &&
                KHEAP_AVAILABLE_BLOCK == block_i->used)
            {
                return __kheap_malloc_at__((uint32_t)block_i, size, page_aligned, pa);
            }
        }

        //Second attempt : no suitable holes found, allocate at the highest non used heap address
        uint32_t highest_addr = 0x00;
        for (uint32_t i = 0; i < kheap.array_ll; i++)
        {
            kheap_block_descriptor_t* block_i = (kheap_block_descriptor_t*) (ordered_array_at(&kheap, i));
            uint32_t block_i_addr = (uint32_t)(block_i);
            if (block_i_addr + block_i->size > highest_addr)
            {
                highest_addr = block_i_addr + block_i->size;
            }
        }

        // Check if highest_addr + required space does not exceed KHEAP_END
        if (highest_addr + minimum_requred_space + extra_required_space > KHEAP_START + KHEAP_SIZE)
        {
            printf("KERNEL PANIC : HEAP OUT OF BOUNDS\n");
            abort();
        }
        else
        {
            return __kheap_malloc_at__(highest_addr, size, page_aligned, pa);
        }
    }
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
    uint32_t ptr = (uint32_t)(p);

    if (0x00 == ptr)
    {
        return;
    }
    
    for (uint32_t i = 0; i < kheap.array_ll; i++)
    {
        kheap_block_descriptor_t* block_i = (kheap_block_descriptor_t*) (ordered_array_at(&kheap, i));

        if (block_i->addr == ptr)
        {
            block_i->used = KHEAP_AVAILABLE_BLOCK;
            __slog__(COM1_PORT, "kheap free memory at 0x%X\n", ptr);
        }
    }
}
