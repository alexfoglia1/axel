#include <stdio.h>
#include <errno.h>
#include <unistd.h>

#include <kernel/paging.h>
#include <kernel/kheap.h>
#include <kernel/memory_manager.h>
#include <kernel/multitasking.h>
#include <kernel/scheduler.h>
#include <kernel/elf_loader.h>

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

//   I can __klog__ if com are not yet initialized, output is just buffered
    __klog__(COM1_PORT, "System boot\n"); 

//  Log stack segment selector and code segment selector before GDT initialization
    uint32_t cs, ss;
    RF_READ_COD_SEL(cs);
    RF_READ_STK_SEL(ss);
    __klog__(COM1_PORT, "Before GDT initialization: ss(0x%X), cs(0x%X)\n", ss, cs);
//  -------------------------

//  Initializing TTY, GDT and IDT
    tty_init();
    gdt_init();

//  We need pic to be remapped before IDT initialization
    pic_remap();
//  -------------------------
    idt_init();
    syscall_init();
    
    __klog__(COM1_PORT, "Descriptors initialized\n");
//  -------------------------

//  Log stack segment selector and code segment selector after GDT initialization
    RF_READ_COD_SEL(cs);
    RF_READ_STK_SEL(ss);
    __klog__(COM1_PORT, "After GDT initialization: ss(0x%X), cs(0x%X)\n", ss, cs);
//  -------------------------

    tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);

    printk("Starting AXEL %d.%d-%c\n\n", MAJOR_V, MINOR_V, STAGE_V);

    if (magic != MULTIBOOT_BOOTLOADER_MAGIC)
    {
        tty_set_color(VGA_COLOR_RED, VGA_COLOR_BLACK);
        panic("KERNEL PANIC : INVALID BOOTLOADER\n");
    }
    else
    {
        memory_init(mbd);

        uint64_t mem_size = memory_get_size();

        printk("Available Memory:\t\t");
        tty_set_color(VGA_COLOR_GREEN, VGA_COLOR_BLACK);
        printk("[%U KiB]\n", mem_size / 1024);
        tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
    }

//  Detecting CPU Model
    printk("Detecting CPU Model:\t");

    uint8_t cpuid_available = cpuid_supported();
    if (0x00 == cpuid_available)
    {
        tty_set_color(VGA_COLOR_RED, VGA_COLOR_BLACK);
        printk("[KO]\n");
    }
    else
    {
        tty_set_color(VGA_COLOR_GREEN, VGA_COLOR_BLACK);
        int registers[3];
        cpuid_get_model(&registers[0], &registers[1], &registers[2]);
        printk("[");
        for (int i = 0; i < 3; i++)
        {
            int model = registers[i];
            const char* str_model = (const char*)(&model);
            printk("%c%c%c%c", str_model[0], str_model[1], str_model[2], str_model[3]);
        }
        printk("]\n");
    }
    tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
//  --------------------------

//  Initializing ACPI
    printk("Initializing ACPI:\t\t");

    acpi_init();

    if (0x01 == acpi_is_initialized())
    {
        tty_set_color(VGA_COLOR_GREEN, VGA_COLOR_BLACK);
        printk("[OK]\n");

        tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
        printk("Enabling ACPI:\t\t");

        acpi_enable();
        if  (0x01 == acpi_is_enabled())
        {
            tty_set_color(VGA_COLOR_GREEN, VGA_COLOR_BLACK);
            printk("[OK]\n");
        }
        else
        {
            tty_set_color(VGA_COLOR_RED, VGA_COLOR_BLACK);
            printk("[KO]\n");
        }
    }
    else
    {
        tty_set_color(VGA_COLOR_RED, VGA_COLOR_BLACK);
        printk("[KO]\n");
    }
    tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
//  --------------------------

//  Initialize paging + heap : doing so, we can kmalloc and kfree using the heap (no heap, no kfree)
    printk("Initializing paging:\t");

    paging_init();
    
    tty_set_color(VGA_COLOR_GREEN, VGA_COLOR_BLACK);
    printk("[OK]\n");
    tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
//  -------------------------

//  Initialize COM
    com_init(COM1_PORT, 9600, COM_BITS_8, COM_PARITY_NONE, COM_STOPBITS_1, COM_BLOCKING_O|COM_AUTOFLSH_O);
    com_init(COM2_PORT, 9600, COM_BITS_8, COM_PARITY_NONE, COM_STOPBITS_1, COM_BLOCKING_O|COM_AUTOFLSH_O);

    __klog__(COM1_PORT, "COM ports initialized\n");
    printk("Detecting COM1:\t\t");

    if (com_is_initialized(COM1_PORT) == 0x01)
    {
        tty_set_color(VGA_COLOR_GREEN, VGA_COLOR_BLACK);
        printk("[OK]\n");

        __klog__(COM1_PORT, "COM 1 Detected\n");
    }
    else
    {
        tty_set_color(VGA_COLOR_RED, VGA_COLOR_BLACK);
        printk("[KO]\n");
    }
    tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);

    printk("Detecting COM2:\t\t");
    if (com_is_initialized(COM2_PORT) == 0x01)
    {
        tty_set_color(VGA_COLOR_GREEN, VGA_COLOR_BLACK);
        printk("[OK]\n");

        __klog__(COM1_PORT, "COM 2 Detected\n");
    }
    else
    {
        tty_set_color(VGA_COLOR_RED, VGA_COLOR_BLACK);
        printk("[KO]\n");

        __klog__(COM1_PORT, "COM 2 Not Detected\n");
    }
    tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
//  -------------------------------------------------------------------------------------------

//  Initializing PS/2 controller
    printk("Detecting PS/2 channels:\t");

    ps2_controller_init();
    if (ps2_is_present())
    {
        tty_set_color(VGA_COLOR_GREEN, VGA_COLOR_BLACK);
        printk("[%s]\n", ps2_is_dual_channel() == 0x01 ? "2" : "1");
    }
    else
    {
        tty_set_color(VGA_COLOR_RED, VGA_COLOR_BLACK);
        printk("[0]\n");
    }

    tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
//  --------------------------

//  Initializing Device Drivers
    printk("Loading device drivers:\t");

    pit_init();
    keyboard_init(PS2_DATA_PORT); // It works with PS/2 or legacy USB

    tty_set_color(VGA_COLOR_GREEN, VGA_COLOR_BLACK);
    printk("[OK]\n");
    tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
//  --------------------------


//  Initializing ramdisk
    printk("Mounting initrd:\t\t");

    initrd_init(*(uint32_t*)(mbd->mods_addr));

    tty_set_color(VGA_COLOR_GREEN, VGA_COLOR_BLACK);
    printk("[OK]\n");
    tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
//  --------------------------

//  Initializing multitasking
    printk("Initializing scheduler:\t");
    
    tasking_init(esp);
    pit_set_callback(&scheduler);
    
    tty_set_color(VGA_COLOR_GREEN, VGA_COLOR_BLACK);
    printk("[OK]\n");
    tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
//  --------------------------

//  Entering user mode
    printk("Entering user mode\n");

    gdt_set_kernel_stack(tasking_get_current_task()->kernel_stack + KERNEL_STACK_SIZE);
    enter_user_mode();
//  --------------------------

}


// when user mode is entered, we continue from here (with IF = 1!)
void
user_mode_entry_point()
{
    printf("\nEntered user mode, starting task spawner\n");
    
    int tid = fork();
    if (0x00 == tid)
    {
        printf("Task spawner started\n");
        int bash_tid = spawn("/usr/bin/bash.out");
        printf("%s [%d]\n", "/usr/bin/bash.out", bash_tid);
        while(1);
    }
    else
    {
        printf("Kernel sleep\n");
        while(1);
    }
}