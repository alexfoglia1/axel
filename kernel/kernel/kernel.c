#include <stdio.h>
#include <errno.h>
#include <stdbool.h>

#include <kernel/tty.h>
#include <kernel/multiboot.h>

void
_main(multiboot_info_t* mbd, uint32_t magic)
{
	errno = ENOERR;
	tty_init();

	tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
	printf("Starting AXEL\n");

	if (MULTIBOOT_BOOTLOADER_MAGIC == magic)
	{
		printf("Bootloader recognized, booting the system\n\n");

		uint64_t memsize = 0;
    	for(uint32_t i = 0; i < mbd->mmap_length; i += sizeof(multiboot_memory_map_t)) 
    	{
        	multiboot_memory_map_t* mmmt = 
            	(multiboot_memory_map_t*) (mbd->mmap_addr + i);
 
			bool available = (mmmt->type == MULTIBOOT_MEMORY_AVAILABLE);
			tty_set_color(available ? VGA_COLOR_GREEN : VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);

			uint64_t addr = ((uint64_t)(mmmt->addr_high) << 32);
			addr |= mmmt->addr_low;
			uint64_t len = ((uint64_t)(mmmt->len_high) << 32);
			len |= mmmt->len_low;
        	printf("Addr : %x   \t  Length : %x \t  Size : %x \t", addr, len, mmmt->size);
			printf(" Type : %x\n", mmmt->type);
			
			if (available)
			{
				memsize += len;
			}
    }

	printf("\nTotal available RAM: %U KiB\n", memsize / 1024);
	}
	else
	{
		tty_set_color(VGA_COLOR_RED, VGA_COLOR_BLACK);
		printf("Critical error during bootloading : abort\n");
	}
}
