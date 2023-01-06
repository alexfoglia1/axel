#include <kernel/paging.h>

#include <controllers/pic.h>

#include <common/utils.h>

#include <stdlib.h>
#include <stdio.h>

uint32_t page_directory[PAGE_DIRECTORY_ENTRIES] __attribute__((aligned(PAGE_FRAME_SIZE)));
uint32_t page_tables[PAGE_DIRECTORY_ENTRIES][PAGE_TABLE_ENTRIES] __attribute__((aligned(PAGE_FRAME_SIZE)));
uint8_t paging_active;

void 
paging_init()
{
    paging_active = 0x00;

    for(uint32_t i = 0; i < PAGE_DIRECTORY_ENTRIES; i++)
    {
        page_directory[i] = PAGE_WRITE;
    }
    
    for (uint32_t i = 0; i < PAGE_DIRECTORY_ENTRIES; i++)
    {
        uint32_t current_page_directory_mask = PAGE_WRITE;
        uint32_t current_page_directory_first_addr = (i * PAGE_DIRECTORY_ENTRIES) * PAGE_FRAME_SIZE;

        if (0x01 == memory_frame_present((uint8_t*)(current_page_directory_first_addr)))
        {
            current_page_directory_mask |= PAGE_PRESENT;
        }

        for (uint32_t j = 0; j < PAGE_TABLE_ENTRIES; j++)
        {
            uint32_t current_page_frame_addr = (i * PAGE_DIRECTORY_ENTRIES + j) * PAGE_FRAME_SIZE;
            uint32_t current_page_frame_mask = PAGE_WRITE;

            if (0x01 == memory_frame_present((uint8_t*)(current_page_frame_addr)))
            {
                current_page_frame_mask |= PAGE_PRESENT;
            }

            page_tables[i][j] = current_page_frame_addr | current_page_frame_mask;
        }

        page_directory[i] = ((uint32_t)page_tables[i]) | current_page_directory_mask;
    }

    load_page_directory(page_directory);
    enable_paging();
    pic_add_irq(PAGEFAULT_IRQ_INTERRUPT_NO, &paging_fault_irq_handler);

    __slog__(COM1_PORT, "We have a little friend in CR3 register :)\n");

    paging_active = 0x01;
}


uint8_t
paging_is_active()
{
    return paging_active;
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void paging_fault_irq_handler(interrupt_stack_frame_t* frame)
{
    printf("KERNEL PANIC : PAGE FAULT\n");
    abort();
}
