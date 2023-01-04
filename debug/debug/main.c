#include <stdio.h>
#include <stdint.h>

#include <kernel/arch/multiboot.h>

#include <controllers/cmos.h>
#include <controllers/com.h>

#include <common/utils.h>

extern void kernel_main(multiboot_info_t* mbr, uint32_t magic);

int
main(int argc, char** argv)
{
    /** Call and debug kernel functions which are bugged :) **/

    com_init(COM1_PORT, 38400, COM_BITS_8, COM_PARITY_NONE, COM_STOPBITS_1);
    int x = 0;

    multiboot_info_t mbr;
    memset(&mbr, 0x00, sizeof(multiboot_info_t));

    mbr.flags = 0xFFFFFFFF;
    mbr.mmap_length = 6;
    mbr.mem_upper = 0x1B80;

    multiboot_memory_map_t maps[6];

    maps[0].addr = 0x0;
    maps[0].len = 0x9F000;
    maps[0].size = 0x14;
    maps[0].type = MULTIBOOT_MEMORY_AVAILABLE;

    maps[1].addr = 0x9F000;
    maps[1].len = 0x1000;
    maps[1].size = 0x14;
    maps[1].type = MULTIBOOT_MEMORY_RESERVED;

    maps[2].addr = 0xE8000;
    maps[2].len = 0x18000;
    maps[2].size = 0x14;
    maps[2].type = MULTIBOOT_MEMORY_RESERVED;

    maps[3].addr = 0x100000;
    maps[3].len = 0x1EF0000;
    maps[3].size = 0x14;
    maps[3].type = MULTIBOOT_MEMORY_AVAILABLE;

    maps[4].addr = 0x1FF0000;
    maps[4].len = 0x10000;
    maps[4].size = 0x14;
    maps[4].type = MULTIBOOT_MEMORY_ACPI_RECLAIMABLE;

    maps[5].addr = 0xFFFC0000;
    maps[5].len = 0x40000;
    maps[5].size = 0x14;
    maps[5].type = MULTIBOOT_MEMORY_RESERVED;

    mbr.mmap_addr = (uint32_t)(&maps);
    kernel_main(&mbr, MULTIBOOT_BOOTLOADER_MAGIC);

    return 0;
}
