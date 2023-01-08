#include <kernel/memory.h>
#include <kernel/paging.h>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <common/utils.h>

extern uint32_t kern_end;

uint32_t* kernel_end;
uint32_t mem_size;
uint32_t alloc_addr;

heap_t* kernel_heap;

// A static helpful routine to allocate dynamic memory for the kernel
static void*
__kmalloc__(uint32_t size, uint8_t aligned, uint32_t* pa)
{
    if (0x00 == kernel_heap)
    {
        // If we need to allocate aligned but alloc_addr is not alligned with page frame size, then we align it
        if (0x01 == aligned && (alloc_addr != (alloc_addr & PAGE_FRAME_MASK)))
        {
            alloc_addr &= PAGE_FRAME_MASK; // alloc_addr is now the highest address multiple of PAGE_FRAME_SIZE which is less than alloc_addr before
            alloc_addr += PAGE_FRAME_SIZE; // alloc_addr is now the lowest address multiple of PAGE_FRAME_SIZE which is greater than alloc_addr before
        }

        if (pa != 0x00)
        {
            *pa = alloc_addr; // saving physical address if required
        }

        void* return_value = (void*)(alloc_addr);
        alloc_addr += size;

        return return_value;
    }
    else
    {
        return memory_heap_alloc(size, aligned, kernel_heap);
    }
}


static uint8_t
header_t_less_than(array_type_t arg_1, array_type_t arg_2)
{
    // This is the ordered array representing heap index less than function
    heap_header_t* harg_1 = (heap_header_t*) arg_1;
    heap_header_t* harg_2 = (heap_header_t*) arg_2;

    return (harg_1->size < harg_2->size) ? 0x01 : 0x00;
}


static int32_t
find_smallest_hole(uint32_t size, uint8_t page_aligned, heap_t* heap)
{
   // Find the smallest hole that will fit.
   uint32_t iterator = 0;
   while (iterator < heap->index.array_ll)
   {
       heap_header_t *header = (heap_header_t *)ordered_array_at(&heap->index, iterator);
       // If the user has requested the memory be page-aligned
       if (0x01 == page_aligned)
       {
           // Page-align the starting point of this header.
            uint32_t location = (uint32_t)header;
            int32_t offset = 0;
            if (((location+sizeof(heap_header_t)) & PAGE_FRAME_MASK) != 0)
            {
                offset = PAGE_FRAME_SIZE - (location+sizeof(heap_header_t)) % PAGE_FRAME_SIZE;
            }

            int32_t hole_size = (int32_t)header->size - offset;
            // Can we fit now?
            if (hole_size >= (int32_t)size)
            {
                break;
            }
       }
       else if (header->size >= size)
       {
            break;
       }

       iterator += 1;
   }

   // Why did the loop exit?
   return (iterator == heap->index.array_ll) ? -1 : (int32_t) iterator;
}


static
void heap_expand(uint32_t new_size, heap_t *heap)
{
    // Get the nearest following page boundary.
    if ((new_size & PAGE_FRAME_MASK) != 0)
    {
        new_size &= PAGE_FRAME_MASK;
        new_size += PAGE_FRAME_SIZE;
    }

    // This should always be on a page boundary.
    uint32_t old_size = heap->end_address-heap->start_address;
    uint32_t i = old_size;
    while (i < new_size)
    {
        page_table_entry_t* page_table_entry = paging_get_page(heap->start_address + i, paging_get_kernel_page_directory());
        paging_alloc_frame(page_table_entry, heap->supervisor ? 0x01 : 0x00, heap->readonly ? 0x00 : 0x01);

        i += PAGE_FRAME_SIZE;
    }

    heap->end_address = heap->start_address + new_size;
}


static uint32_t
heap_contract(uint32_t new_size, heap_t *heap)
{
    // Get the nearest following page boundary.
    if (new_size & PAGE_FRAME_SIZE)
    {
        new_size &= PAGE_FRAME_SIZE;
        new_size += PAGE_FRAME_SIZE;
    }
    // Don't contract too far!
    if (new_size < HEAP_MIN_SIZE)
    {
        new_size = HEAP_MIN_SIZE;
    }

    uint32_t old_size = heap->end_address - heap->start_address;
    uint32_t i = old_size - PAGE_FRAME_SIZE;
    while (new_size < i)
    {
        page_table_entry_t* page_table_entry = paging_get_page(heap->start_address + i, paging_get_kernel_page_directory());
        paging_free_frame(page_table_entry);

        i -= PAGE_FRAME_SIZE;
    }

    heap->end_address = heap->start_address + new_size;
    return new_size;
}


void*
kmalloc_page_aligned(uint32_t size)
{
    return __kmalloc__(size, 0x01, 0x00);
}


void*
kmalloc_physical(uint32_t size, uint32_t* pa)
{
    return __kmalloc__(size, 0x00, pa);
}


void*
kmalloc_page_aligned_physical(uint32_t size, uint32_t* pa)
{
    return __kmalloc__(size, 0x01, pa);
}


void*
kmalloc(uint32_t size)
{
    return __kmalloc__(size, 0x00, 0x00);
}


void
kfree(void* p)
{
    if (0x00 != kernel_heap)
    {
        memory_heap_free(p, kernel_heap);
    }
}


void
memory_init(multiboot_info_t* mbd)
{
    mem_size = 0;
    kernel_end = &kern_end;
    alloc_addr = (uint32_t) kernel_end;
    kernel_heap = (heap_t*) 0x00; // Check if kernel_heap == 0x00 to know what kmalloc should do

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
memory_get_next_alloc_address()
{
    return alloc_addr;
}


uint32_t
memory_get_size()
{
    return mem_size;
}


uint8_t
memory_frame_present(void* frame_address)
{
    return (((uint32_t) frame_address) < mem_size);
}


heap_t*
memory_create_heap(uint32_t start, uint32_t end, uint32_t max, uint8_t supervisor, uint8_t readonly)
{
    heap_t* heap = (heap_t*) kmalloc(sizeof(heap_t));
    heap->index = ordered_array_new_at((void*) start, HEAP_INDEX_SIZE, &header_t_less_than);

    start += sizeof(array_type_t) * HEAP_INDEX_SIZE;
    if (start & PAGE_FRAME_MASK)
    {
        start &= PAGE_FRAME_MASK;
        start += PAGE_FRAME_SIZE;
    }

    heap->start_address = start;
    heap->end_address = end;
    heap->max_address = max;
    heap->supervisor = supervisor;
    heap->readonly = readonly;

    heap_header_t* hole = (heap_header_t*) start;
    hole->size = end - start;
    hole->magic = HEAP_MAGIC;
    hole->is_hole = 0x01;
    
    ordered_array_insert(&heap->index, (array_type_t) hole);

    return heap;
}


void*
memory_heap_alloc(uint32_t size, uint8_t page_aligned, heap_t* heap)
{
    uint32_t true_size = size + sizeof(heap_header_t) + sizeof(heap_footer_t);
    int32_t smallest_hole = find_smallest_hole(true_size, page_aligned, heap);

    if (-1 == smallest_hole)
    {
       // Save some previous data.
       uint32_t old_length = heap->end_address - heap->start_address;
       uint32_t old_end_address = heap->end_address;

       // We need to allocate some more space.
       heap_expand(old_length + true_size, heap);
       uint32_t new_length = heap->end_address-heap->start_address;

       // Find the endmost header. (Not endmost in size, but in location).
       smallest_hole = 0;
       // Vars to hold the index of, and value of, the endmost header found so far.
       int32_t idx = -1;
       uint32_t value = 0x0;
       while ((uint32_t)(smallest_hole) < heap->index.array_ll)
       {
           uint32_t tmp = (uint32_t)ordered_array_at(&heap->index, smallest_hole);
           if (tmp > value)
           {
               value = tmp;
               idx = smallest_hole;
           }
           smallest_hole += 1;
       }

       // If we didn't find ANY headers, we need to add one.
       if (-1 == idx)
       {
           heap_header_t* header = (heap_header_t *)old_end_address;
           header->magic = HEAP_MAGIC;
           header->size = new_length - old_length;
           header->is_hole = 1;
           heap_footer_t* footer = (heap_footer_t*) (old_end_address + header->size - sizeof(heap_footer_t));
           footer->magic = HEAP_MAGIC;
           footer->header = header;

           ordered_array_insert(&heap->index, (array_type_t) header);
       }
       else
       {
           // The last header needs adjusting.
           heap_header_t *header = ordered_array_at(&heap->index, idx);
           header->size += new_length - old_length;
           // Rewrite the footer.
           heap_footer_t *footer = (heap_footer_t *) ( (uint32_t)header + header->size - sizeof(heap_footer_t) );
           footer->header = header;
           footer->magic = HEAP_MAGIC;
       }

       // We now have enough space. Recurse, and call the function again.
       return memory_heap_alloc(size, page_aligned, heap);
    }

    heap_header_t *orig_hole_header = (heap_header_t *) ordered_array_at(&heap->index, smallest_hole);
    uint32_t orig_hole_pos = (uint32_t)orig_hole_header;
    uint32_t orig_hole_size = orig_hole_header->size;
    // Here we work out if we should split the hole we found into two parts.
    // Is the original hole size - requested hole size less than the overhead for adding a new hole?
    if (orig_hole_size - true_size < sizeof(heap_header_t) + sizeof(heap_footer_t))
    {
        // Then just increase the requested size to the size of the hole we found.
        size += orig_hole_size - true_size;
        true_size = orig_hole_size;
    }

    if (page_aligned && orig_hole_pos & PAGE_FRAME_MASK)
    {
        uint32_t new_location   = orig_hole_pos + PAGE_FRAME_SIZE - (orig_hole_pos & 0xFFF) - sizeof(heap_header_t);
        heap_header_t *hole_header = (heap_header_t*)orig_hole_pos;
        hole_header->size     = PAGE_FRAME_SIZE - (orig_hole_pos & 0xFFF) - sizeof(heap_header_t);
        hole_header->magic    = HEAP_MAGIC;
        hole_header->is_hole  = 1;
       
        heap_footer_t *hole_footer = (heap_footer_t *) ((uint32_t)new_location - sizeof(heap_footer_t));
        hole_footer->magic    = HEAP_MAGIC;
        hole_footer->header   = hole_header;
        orig_hole_pos         = new_location;
        orig_hole_size        = orig_hole_size - hole_header->size;
    }
    else
    {
        // Else we don't need this hole any more, delete it from the index.
        ordered_array_delete_at(&heap->index, smallest_hole);
    }

    heap_header_t *block_header  = (heap_header_t *)orig_hole_pos;
    block_header->magic     = HEAP_MAGIC;
    block_header->is_hole   = 0;
    block_header->size      = true_size;

    heap_footer_t *block_footer  = (heap_footer_t *) (orig_hole_pos + sizeof(heap_footer_t) + size);
    block_footer->magic     = HEAP_MAGIC;
    block_footer->header    = block_header;

    if (orig_hole_size - true_size > 0)
    {
        heap_header_t *hole_header = (heap_header_t *) (orig_hole_pos + sizeof(heap_header_t) + size + sizeof(heap_footer_t));
        hole_header->magic    = HEAP_MAGIC;
        hole_header->is_hole  = 1;
        hole_header->size     = orig_hole_size - true_size;
        heap_footer_t *hole_footer = (heap_footer_t *) ( (uint32_t)hole_header + orig_hole_size - true_size - sizeof(heap_footer_t));
        if ((uint32_t)hole_footer < heap->end_address)
        {
            hole_footer->magic = HEAP_MAGIC;
            hole_footer->header = hole_header;
        }

        ordered_array_insert(&heap->index, (array_type_t) hole_header);
    }

    return (void*) ( (uint32_t)block_header+sizeof(heap_header_t));
}


void
memory_heap_free(void* p, heap_t* heap)
{
   // Exit gracefully for null pointers.
    if (p == 0)
        return;

    // Get the header and footer associated with this pointer.
    heap_header_t *header = (heap_header_t*) ( (uint32_t)p - sizeof(heap_header_t) );
    heap_footer_t *footer = (heap_footer_t*) ( (uint32_t)header + header->size - sizeof(heap_footer_t) );

   // Make us a hole.
    header->is_hole = 1;

   // Do we want to add this header into the 'free holes' index?
    char do_add = 1;

    // Unify left
    // If the thing immediately to the left of us is a footer...
    heap_footer_t *test_footer = (heap_footer_t*) ( (uint32_t)header - sizeof(heap_footer_t) );
    if (test_footer->magic == HEAP_MAGIC &&
        test_footer->header->is_hole == 1)
    {
        uint32_t cache_size = header->size; // Cache our current size.
        header = test_footer->header;     // Rewrite our header with the new one.
        footer->header = header;          // Rewrite our footer to point to the new header.
        header->size += cache_size;       // Change the size.
        do_add = 0;                       // Since this header is already in the index, we don't want to add it again.
    }

    // Unify right
    // If the thing immediately to the right of us is a header...
    heap_header_t *test_header = (heap_header_t*) ( (uint32_t)footer + sizeof(heap_footer_t) );
    if (test_header->magic == HEAP_MAGIC &&
       test_header->is_hole)
    {
       header->size += test_header->size; // Increase our size.
       test_footer = (heap_footer_t*) ( (uint32_t)test_header + // Rewrite it's footer to point to our header.
                                   test_header->size - sizeof(heap_footer_t) );
       footer = test_footer;
       // Find and remove this header from the index.
       uint32_t iterator = 0;
       while ( (iterator < heap->index.array_ll) &&
               (ordered_array_at(&heap->index, iterator) != (void*)test_header) )
           iterator++;

       // Make sure we actually found the item.
        if (iterator < heap->index.array_ll)
        {
            ordered_array_delete_at(&heap->index, iterator);
        }
    }

    // If the footer location is the end address, we can contract.
    if ( (uint32_t)footer+sizeof(heap_footer_t) == heap->end_address)
    {
        uint32_t old_length = heap->end_address-heap->start_address;
        uint32_t new_length = heap_contract( (uint32_t)header - heap->start_address, heap);
        // Check how big we will be after resizing.
        if (header->size - (old_length-new_length) > 0)
        {
            // We will still exist, so resize us.
            header->size -= old_length-new_length;
            footer = (heap_footer_t*) ( (uint32_t)header + header->size - sizeof(heap_footer_t) );
            footer->magic = HEAP_MAGIC;
            footer->header = header;
        }
        else
        {
            // We will no longer exist :(. Remove us from the index.
            uint32_t iterator = 0;
            while ( (iterator < heap->index.array_ll) &&
                    (ordered_array_at(&heap->index, iterator) != (void*)test_header) )
                iterator++;
            // If we didn't find ourselves, we have nothing to remove.
            if (iterator < heap->index.array_ll)
                ordered_array_delete_at(&heap->index, iterator);
        }
    }

    if (1 == do_add)
    {
       ordered_array_insert(&heap->index, (array_type_t) header);
    }
}


void
memory_set_kernel_heap(heap_t* kern_heap)
{
    // Someone created and gives us a kern_heap, we can decide to redirect kmalloc() to memory_heap_alloc()
    kernel_heap = kern_heap;
}