#include <stdio.h>
#include <errno.h>
#include <stdbool.h>

#include <kernel/tty.h>
#include <kernel/multiboot.h>

#define MAJOR_V 0
#define MINOR_V 1
#define STAGE_V 'b'

void
_main(multiboot_info_t* mbd, uint32_t magic)
{
	errno = ENOERR;
	tty_init();

	tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
	printf("Starting AXEL %d.%d-%c\n", MAJOR_V, MINOR_V, STAGE_V);

	if (MULTIBOOT_BOOTLOADER_MAGIC == magic)
	{
		printf("%s\n\n", "Bootloader recognized, booting the system");

		uint64_t memsize = 0;
    	for(uint32_t i = 0; i < mbd->mmap_length; i += sizeof(multiboot_memory_map_t)) 
    	{
        	multiboot_memory_map_t* mmmt = 
            	(multiboot_memory_map_t*) (mbd->mmap_addr + i);
 
			bool available = (mmmt->type == MULTIBOOT_MEMORY_AVAILABLE);
			tty_set_color(available ? VGA_COLOR_GREEN : VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);

        	printf("Addr : %x   \t  Length : %x \t  Type : %u\n", mmmt->addr, mmmt->len, mmmt->type);

			if (available)
			{
				memsize += mmmt->len;
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
