#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <stdbool.h>

#include <kernel/paging.h>
#include <kernel/kheap.h>
#include <kernel/memory_manager.h>
#include <kernel/multitasking.h>
#include <kernel/scheduler.h>

#include <kernel/arch/cpuid.h>
#include <kernel/arch/tty.h>
#include <kernel/arch/multiboot.h>
#include <kernel/arch/io.h>
#include <kernel/arch/gdt.h>
#include <kernel/arch/idt.h>

#include <interrupts/isr.h>

#include <syscall/syscall.h>

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
#define STAGE_V 'B'


void
kernel_main(multiboot_info_t* mbd, uint32_t magic, uint32_t esp)
{
    cli();
    errno = ENOERR;

//   I can __slog__ if com are not yet initialized, output is just buffered
    __slog__(COM1_PORT, "System boot\n"); 

//  Initializing TTY, GDT, IDT and system calls
    tty_init();
    gdt_init();

//  We need pic to be remapped before IDT initialization
    pic_remap();
    idt_init();
    __slog__(COM1_PORT, "Descriptors initialized\n");

    syscall_init();
//  -------------------------

    tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);

    printf("Starting AXEL %d.%d-%c\n\n", MAJOR_V, MINOR_V, STAGE_V);

    if (magic != MULTIBOOT_BOOTLOADER_MAGIC)
    {
        tty_set_color(VGA_COLOR_RED, VGA_COLOR_BLACK);
        printf("KERNEL PANIC : INVALID BOOTLOADER\n");
        abort();
    }
    else
    {
        memory_init(mbd);

        uint64_t mem_size = memory_get_size();

        printf("Available Memory:\t\t");
        tty_set_color(VGA_COLOR_GREEN, VGA_COLOR_BLACK);
        printf("[%U KiB]\n", mem_size / 1024);
        tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
    }

//  Detecting CPU Model
    printf("Detecting CPU Model:\t");

    uint8_t cpuid_available = cpuid_supported();
    if (0x00 == cpuid_available)
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

//  Initialize paging + heap : doing so, we can kmalloc and kfree using the heap (no heap, no kfree)
    printf("Initializing paging:\t");

    paging_init();
    
    tty_set_color(VGA_COLOR_GREEN, VGA_COLOR_BLACK);
    printf("[OK]\n");
    tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
//  -------------------------

//  Initialize COM
    com_init(COM1_PORT, 9600, COM_BITS_8, COM_PARITY_NONE, COM_STOPBITS_1);
    com_init(COM2_PORT, 9600, COM_BITS_8, COM_PARITY_NONE, COM_STOPBITS_1);
    com_init(COM3_PORT, 9600, COM_BITS_8, COM_PARITY_NONE, COM_STOPBITS_1);
    com_set_int_byte(0x0D); // Fire a read syscall when <enter> is received

    __slog__(COM1_PORT, "COM ports initialized\n");
    printf("Detecting COM1:\t\t");

    if (com_is_initialized(COM1_PORT) == 0x01)
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
    if (com_is_initialized(COM2_PORT) == 0x01)
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
    if (com_is_initialized(COM3_PORT) == 0x01)
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
//  -------------------------------------------------------------------------------------------

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

    pit_init();
    keyboard_init(PS2_DATA_PORT); // It works with PS/2 or legacy USB

    tty_set_color(VGA_COLOR_GREEN, VGA_COLOR_BLACK);
    printf("[OK]\n");
    tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
//  --------------------------

//  Initializing ramdisk
    printf("Mounting initrd:\t\t");

    vfs_node_t* vfs_root = initrd_init(*(uint32_t*)(mbd->mods_addr));
    uint32_t i = 0;
    struct dirent *node = 0;
    while ((node = vfs_read_dir(vfs_root, i)) != 0)
    {
        __slog__(COM1_PORT, "Found file %s\n", node->name);

        vfs_node_t* fs_node = vfs_find_dir(vfs_root, node->name);

        if (fs_node->flags == FS_DIRECTORY)
        {
            __slog__(COM1_PORT, "%s/%s is a directory\n", vfs_root->name, fs_node->name);
        }
        else
        {
            __slog__(COM1_PORT, "%s/%s is a file\n", vfs_root->name, fs_node->name);
            char buf[256];
            vfs_read(fs_node, 0, 256, (uint8_t*) buf);
            __slog__(COM1_PORT, "File content: %s\n", (const char*) buf);
        }

        i += 1;
    }

    tty_set_color(VGA_COLOR_GREEN, VGA_COLOR_BLACK);
    printf("[OK]\n");
    tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
//  --------------------------

//  Initializing multitasking
    printf("Initializing scheduler:\t");
    
    tasking_init(esp);
    scheduler_init(COM_STD_TX_FREQ_HZ);
    pit_set_callback(&scheduler);
    
    tty_set_color(VGA_COLOR_GREEN, VGA_COLOR_BLACK);
    printf("[OK]\n");
    tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
//  --------------------------

    sti();

    printf("Welcome!\n");

    while(1);

#if 0
    int tid = tasking_fork();
    if (0 == tid)
    {
        int child_tid = tasking_fork();
        if (0 == child_tid)
        {
            while (1)
            {
                printf("I am child's child, fork() returned 0x%X,0x%X, get_tid() returned 0x%X\n", tid, child_tid, tasking_gettid());
                sleep(1000);
            }
        }
        else
        {
            while (1)
            {
                printf("I am parent's child, fork() returned 0x%X,0x%X, get_tid() returned 0x%X\n", tid, child_tid, tasking_gettid());
                sleep(2000);
            }
        }
    }
    else
    {
        while (1)
        {
            printf("I am parent, fork() returned 0x%X, get_tid() returned 0x%X\n", tid, tasking_gettid());
            sleep(4000);
        }
    }
#endif
}
