#include <kernel/paging.h>
#include <kernel/memory_manager.h>

#include <stdio.h>
#include <common/utils.h>


uint32_t physical_memory_size = 0;
uint32_t n_phyiscal_frames = 0;
page_directory_t* kernel_directory = (page_directory_t*) (0x00);


void
paging_init()
{
    physical_memory_size = memory_get_size();
    n_phyiscal_frames = physical_memory_size / PAGE_FRAME_SIZE;

    __slog__(COM1_PORT, "Initializing paging : physical_memory_size = %u bytes, number of physical frames = %u\n", physical_memory_size, n_phyiscal_frames);

    kernel_directory = (page_directory_t*) kmalloc_a(sizeof(page_directory_t));

    printf("Kernel directory allocated at 0x%X\n", kernel_directory);
    printf("Kernel directory page tables at 0x%X\n", kernel_directory->tables);
    printf("Kernel directory page tables physical at 0x%X\n", kernel_directory->tables_physical);
}