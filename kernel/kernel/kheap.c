#include <kernel/kheap.h>
#include <kernel/paging.h>

#include <kernel/arch/tty.h>

#include <common/utils.h>
#include <common/ordered_array.h>


static ordered_array_t kheap;

#if 0
static void
slog_heap_state(int com_port, const char* prompt)
{
    __klog__(com_port, "%s:\n", prompt);
    for (uint32_t i = 0; i < kheap.array_ll; i++)
    {
        kheap_block_descriptor_t* block_i = ordered_array_at(&kheap, i);
        __klog__(com_port, "block[%d] :\n\t\tDescriptor location: 0x%X\n\t\tAllocated address: 0x%X\n\t\tIn-memory size: 0x%X\n\t\tBlock state: %s\n", 
                            i, block_i, block_i->addr, block_i->size, (KHEAP_AVAILABLE_BLOCK == block_i->status) ? "available" :
                                                                      (KHEAP_USED_BLOCK == block_i->status)      ? "used" : "merged");
    }
}
#endif


static void
merge_available_blocks()
{
    for (uint32_t i = 0; i < kheap.array_ll - 1; i++)
    {
        kheap_block_descriptor_t* block_i = ordered_array_at(&kheap, i);
        if (KHEAP_AVAILABLE_BLOCK == block_i->status)
        {
            uint32_t j = i + 1;
            kheap_block_descriptor_t* next_block = ordered_array_at(&kheap, j);
            while (j < kheap.array_ll && KHEAP_AVAILABLE_BLOCK == next_block->status)
            {
                block_i->size += next_block->size;
                next_block->status = KHEAP_MERGED_BLOCK;
            }
        }
    }

    //slog_heap_state(COM1_PORT, "Kernel heap state after merge available blocks");

    int64_t kheap_idx = 0;
    kheap_block_descriptor_t* kheap_iterator = ordered_array_at(&kheap, kheap_idx);

    while (kheap_idx < kheap.array_ll)
    {
        if (KHEAP_MERGED_BLOCK == kheap_iterator->status)
        {
            ordered_array_delete_at(&kheap, kheap_idx);
            kheap_iterator = ordered_array_at(&kheap, kheap_idx);
        }
        else
        {
            kheap_idx += 1;
            kheap_iterator = ordered_array_at(&kheap, kheap_idx);
        }
    }

    //slog_heap_state(COM1_PORT, "Kernel heap state after removal merged blocks");

    if (kheap.array_ll == 1 && KHEAP_AVAILABLE_BLOCK == ((kheap_block_descriptor_t*) ordered_array_at(&kheap, 0))->status)
    {
        ordered_array_delete_at(&kheap, 0);
        __klog__(COM1_PORT, "Kernel heap clean : unique available block removed\n");
    }
}


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
    block_descriptor->status = KHEAP_USED_BLOCK;
    block_descriptor->size = size + (alloc_addr - descriptor_address);

    if (0x00 != pa)
    {
        page_directory_t* current_directory = paging_kernel_page_directory();

        uint32_t table_index, frame_index;
        paging_get_page(alloc_addr, &table_index, &frame_index);

        page_table_entry_t* current_pte = (page_table_entry_t*) (&current_directory->tables[table_index]->pages[frame_index]);

        // Get the frame address whose block contains the physical address of virtual address alloc_addr
        uint32_t alloc_addr_frame = (current_pte->pa << 12);

        // Get the alloc_addr offset from its frame base address (if alloc_addr is page aligned, the offset is obviously zero)
        uint32_t alloc_addr_offset = alloc_addr & PAGE_ALIGN_MASK;

        // Get the alloc_addr physical address
        *pa = (alloc_addr_frame | alloc_addr_offset);
    }
    
    ordered_array_insert(&kheap, block_descriptor);
    
    __klog__(COM1_PORT, "kheap malloc : requested 0x%X, allocated 0x%X, descriptor address 0x%X, returned address 0x%X\n", size, block_descriptor->size, va, block_descriptor->addr);
    //slog_heap_state(COM1_PORT, "Kernel heap state after malloc");

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
                KHEAP_AVAILABLE_BLOCK == block_i->status)
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
            printk("Requested %u + extra %u bytes = %u to allocate from 0x%X to 0x%X but heap end is at 0x%X\n",
                size,
                minimum_requred_space,
                size + minimum_requred_space,
                highest_addr,
                highest_addr + size + minimum_requred_space,
                KHEAP_START + KHEAP_SIZE
            );

            panic("KERNEL PANIC : HEAP OUT OF BOUNDS\n");
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
kheap_init()
{
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

    for (uint32_t i = 0; i < kheap.array_ll; i++)
    {
        kheap_block_descriptor_t* block_i = (kheap_block_descriptor_t*) (ordered_array_at(&kheap, i));

        if (block_i->addr == ptr)
        {
            if (block_i->status != KHEAP_USED_BLOCK)
            {
                panic("KERNEL PANIC : DOUBLE FREE\n");
            }
            else
            {
                __klog__(COM1_PORT, "kheap free 0x%X bytes of memory at 0x%X\n", block_i->size, ptr);

                block_i->status = KHEAP_AVAILABLE_BLOCK;
                //slog_heap_state(COM1_PORT, "Kernel heap state after free");
                merge_available_blocks();

                return;
            }
        }
    }

    panic("KERNEL PANIC : DOUBLE FREE OR MEMORY CORRUPTION\n");
}
