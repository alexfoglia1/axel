#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <stdbool.h>

#include <kernel/paging.h>
#include <kernel/memory.h>

#include <kernel/arch/cpuid.h>
#include <kernel/arch/tty.h>
#include <kernel/arch/multiboot.h>
#include <kernel/arch/io.h>
#include <kernel/arch/gdt.h>
#include <kernel/arch/idt.h>

#include <interrupts/isr.h>

#include <controllers/ps2.h>
#include <controllers/pic.h>
#include <controllers/com.h>
#include <controllers/acpi.h>
#include <controllers/cmos.h>
#include <controllers/ide.h>

#include <drivers/pit.h>
#include <drivers/keyboard.h>

#include <filesystem/virtual_fs.h>
#include <filesystem/initrd.h>

#include <common/utils.h>


#define MAJOR_V 0
#define MINOR_V 1
#define STAGE_V 'b'


void
kernel_main(multiboot_info_t* mbd, uint32_t magic)
{
    errno = ENOERR;

//  Initializing TTY, GDT and IDT
    tty_init();
    gdt_init();
    idt_init();
//  -------------------------

//  Initialize COM immediately, to permit log capabilities since boot
    uint8_t com1_init_res = com_init(COM1_PORT, 9600, COM_BITS_8, COM_PARITY_NONE, COM_STOPBITS_1);
    uint8_t com2_init_res = com_init(COM2_PORT, 9600, COM_BITS_8, COM_PARITY_NONE, COM_STOPBITS_1);
    uint8_t com3_init_res = com_init(COM3_PORT, 9600, COM_BITS_8, COM_PARITY_NONE, COM_STOPBITS_1);

    __slog__(COM1_PORT, "Initialized tty, gdt, idt and COM\n");
//  -------------------------------------------------------------------------------------------

//  Initialize memory
    memory_init(mbd);
//  -------------------------

    tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
    printf("Starting AXEL %d.%d-%c\n\n", MAJOR_V, MINOR_V, STAGE_V);

    __slog__(COM1_PORT, "Multiboot magic: %X\n", magic);
    if (magic != MULTIBOOT_BOOTLOADER_MAGIC)
    {
        tty_set_color(VGA_COLOR_RED, VGA_COLOR_BLACK);
        printf("KERNEL PANIC : INVALID BOOTLOADER\n");
        abort();
    }
    else
    {
        uint64_t mem_size = memory_get_size();

        printf("Available Memory:\t\t");
        tty_set_color(VGA_COLOR_GREEN, VGA_COLOR_BLACK);
        printf("[%U KiB]\n", mem_size / 1024);
        tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
    }

    cli();

//  Detecting CPU Model
    printf("Detecting CPU Model:\t");

#ifndef __DEBUG_STUB__
    extern int cpuid_supported();
    int cpuid_available = cpuid_supported();
#else
    int cpuid_available = 1;
#endif

    if (cpuid_available == 0)
    {
        tty_set_color(VGA_COLOR_RED, VGA_COLOR_BLACK);
        printf("[KO]\n");
    }
    else
    {
        tty_set_color(VGA_COLOR_GREEN, VGA_COLOR_BLACK);
        int registers[3];
        cpuid_get_model(&registers[0], &registers[1], &registers[2]);
        printf("[");
        for (int i = 0; i < 3; i++)
        {
            int model = registers[i];
            const char* str_model = (const char*)(&model);
            printf("%c%c%c%c", str_model[0], str_model[1], str_model[2], str_model[3]);
        }
        printf("]\n");
    }
    tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
//  --------------------------


//  --------------------------

//  Displaying Initialization of UART COM PORTS
    printf("Detecting COM1:\t\t");
    
    if (com1_init_res == 0x01)
    {
        tty_set_color(VGA_COLOR_GREEN, VGA_COLOR_BLACK);
        printf("[OK]\n");

        __slog__(COM1_PORT, "COM 1 Detected\n");
    }
    else
    {
        tty_set_color(VGA_COLOR_RED, VGA_COLOR_BLACK);
        printf("[KO]\n");
    }
    tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);

    printf("Detecting COM2:\t\t");
    if (com2_init_res == 0x01)
    {
        tty_set_color(VGA_COLOR_GREEN, VGA_COLOR_BLACK);
        printf("[OK]\n");

        __slog__(COM1_PORT, "COM 2 Detected\n");
    }
    else
    {
        tty_set_color(VGA_COLOR_RED, VGA_COLOR_BLACK);
        printf("[KO]\n");

        __slog__(COM1_PORT, "COM 2 Not Detected\n");
    }
    tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);

    printf("Detecting COM3:\t\t");
    if (com3_init_res == 0x01)
    {
        tty_set_color(VGA_COLOR_GREEN, VGA_COLOR_BLACK);
        printf("[OK]\n");

        __slog__(COM1_PORT, "COM 3 Detected\n");
    }
    else
    {
        tty_set_color(VGA_COLOR_RED, VGA_COLOR_BLACK);
        printf("[KO]\n");

        __slog__(COM1_PORT, "COM 3 Not Detected\n");
    }
    tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
//  ..........................

//  Initializing ACPI
    printf("Initializing ACPI:\t\t");

    acpi_init();
    if (0x01 == acpi_is_initialized())
    {
        tty_set_color(VGA_COLOR_GREEN, VGA_COLOR_BLACK);
        printf("[OK]\n");

        tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
        printf("Enabling ACPI:\t\t");

        acpi_enable();
        if  (0x01 == acpi_is_enabled())
        {
            tty_set_color(VGA_COLOR_GREEN, VGA_COLOR_BLACK);
            printf("[OK]\n");
        }
        else
        {
            tty_set_color(VGA_COLOR_RED, VGA_COLOR_BLACK);
            printf("[KO]\n");
        }
    }
    else
    {
        tty_set_color(VGA_COLOR_RED, VGA_COLOR_BLACK);
        printf("[KO]\n");
    }
    tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
//  --------------------------

//  Initializing PS/2 controller
    printf("Detecting PS/2 Channels:\t");

    ps2_controller_init();

    if (ps2_is_present())
    {
        tty_set_color(VGA_COLOR_GREEN, VGA_COLOR_BLACK);
        printf("[%s]\n", ps2_is_dual_channel() == 0x01 ? "2" : "1");
        tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
    }
    else
    {
        tty_set_color(VGA_COLOR_RED, VGA_COLOR_BLACK);
        printf("[0]\n");
        tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
    }

    tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
//  --------------------------

//  Initializing Device Drivers
    printf("Loading device drivers:\t");

    pit_init(); // Serial output will effectively start after this call!
    keyboard_init(PS2_DATA_PORT); // It works with PS/2 or legacy USB

    tty_set_color(VGA_COLOR_GREEN, VGA_COLOR_BLACK);
    printf("[OK]\n");
    tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
//  --------------------------

//  Initializing paging
    printf("Initializing paging:\t");
    paging_init();
    if (0x01 == paging_is_active())
    {
        tty_set_color(VGA_COLOR_GREEN, VGA_COLOR_BLACK);
        printf("[OK]\n");
    }
    else
    {
        tty_set_color(VGA_COLOR_RED, VGA_COLOR_BLACK);
        printf("[KO]\n");
    }

    tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
//  --------------------------

    sti();

    printf("\nMounting initrd...\n");
    vfs_node_t* vfs_root = initrd_init(*(uint32_t*)(mbd->mods_addr));

    uint32_t i = 0;
    struct dirent *node = 0;
    while ((node = vfs_read_dir(vfs_root, i)) != 0)
    {
        //printf("Found file ");
        //printf(node->name);
        vfs_node_t *fsnode = vfs_find_dir(fs_root, node->name);
#if 0
        if ((fsnode->flags&0x7) == FS_DIRECTORY)
            printf("\n\t(directory)\n");
        else
        {
            printf("\n\t contents: \"");
            char buf[256];
            uint32_t sz = vfs_read(fsnode, 0, 256, (uint8_t*) buf);
            uint32_t j;
            printf("%s\n", buf);
        }
#endif
        i++;
    }


    while (1);
}
