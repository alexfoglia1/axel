#include <stdio.h>
#include <stdint.h>

#include <kernel/arch/multiboot.h>

#include <controllers/cmos.h>

#include <common/utils.h>

extern void kernel_main(multiboot_info_t* mbr, uint32_t magic);

int
main(int argc, char** argv)
{
    /** Call and debug kernel functions which are bugged :) **/

    cmos_rtc_datetime datetime;
    datetime.day = 1;
    datetime.month = 7;
    datetime.year = 23;

    datetime.hour = 7;
    datetime.min = 1;
    datetime.sec = 0;

    char strtime[128];
    cmos_datetime_to_str(datetime, strtime);
    int x = 0;
#if 0
    multiboot_info_t mbr;
    memset(&mbr, 0x00, sizeof(multiboot_info_t));

    mbr.flags = 0xFFFFFFFF;
    mbr.mmap_length = 3;

    multiboot_memory_map_t maps[3];

    maps[0].addr = 0x0000;
    maps[0].len = 0x10000;
    maps[0].size = 0x14;
    maps[0].type = MULTIBOOT_MEMORY_RESERVED;

    maps[1].addr = 0x010000;
    maps[1].len =  0xF00000;
    maps[1].size = 0x14;
    maps[1].type = MULTIBOOT_MEMORY_AVAILABLE;

    maps[2].addr = 0xF10000;
    maps[2].len  = 0xFFFFFF;
    maps[2].size = 0x14;
    maps[2].type = MULTIBOOT_MEMORY_AVAILABLE;

    mbr.mmap_addr = (uint32_t)(&maps);
    kernel_main(&mbr, MULTIBOOT_BOOTLOADER_MAGIC);
#endif

    return 0;
}
