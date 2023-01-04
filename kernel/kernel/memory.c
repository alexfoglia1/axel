#include <kernel/memory.h>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <common/utils.h>


page_frame_entry_t* head;
uint32_t mem_size;

void
memory_init(multiboot_info_t* mbd)
{
    head = (page_frame_entry_t*) (mbd->mem_upper * 1024); // First page frame pointer is stored in mbd->mem_upper
    mem_size = 0;
    page_frame_entry_t* current = head;
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

            int n_frames = mmmt->len / PAGE_FRAME_SIZE;
            for (int frame = 0; frame < n_frames; frame++)
            {
                uint32_t p_frame = (uint32_t)mmmt->addr + frame * PAGE_FRAME_SIZE;

                current->base_addr = p_frame;
                current->next = current + 1;
                current->available = 0x01;

                current = current->next;
            }
        }
    }
    current = current - 1;
    current->next = 0x00;

    // Initializing reserved memory blocks
    const page_frame_entry_t* tail = current;
    current = head;
    while (current->base_addr < tail)
    {
        current->available = 0x00;
        current = current->next;
    }

    // Initializing available memory blocks
    while (current != 0x00)
    {
        memset((uint32_t*)current->base_addr, 0x00, PAGE_FRAME_SIZE);
        current = current->next;
    }
}


void*
memory_alloc_frame(uint8_t* err)
{
    page_frame_entry_t* first_available_frame = head;

    uint8_t frame_found = 0x00;
    while (first_available_frame->next != 0x00)
    {
        if (0x01 == first_available_frame->available)
        {
            frame_found = 0x01;
            break;
        }
        else
        {
            first_available_frame = first_available_frame->next;
        }
    }

    if (0x00 == frame_found)
    {
        *err = 0x01;
        return (void*)0x00;
    }
    else
    {
        void* ptr = first_available_frame->base_addr;
        first_available_frame->available = 0x00;

        *err = 0x00;
        return ptr;
    }
}


void
memory_free_frame(void* ptr)
{
    page_frame_entry_t* current = head;
    while (current != 0x00)
    {
        if (current->base_addr == ptr)
        {
            current->available = 0x01;

            // Reinitializing frame
            memset(current->base_addr, 0x00, PAGE_FRAME_SIZE);
            return;
        }
        current = current->next;
    }
}


uint8_t
memory_frame_present(void* frame_address)
{
    return frame_address < mem_size;
}