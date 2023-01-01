#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <stdbool.h>

#include <kernel/paging.h>

#include <kernel/arch/cpuid.h>
#include <kernel/arch/tty.h>
#include <kernel/arch/multiboot.h>
#include <kernel/arch/asm.h>
#include <kernel/arch/gdt.h>
#include <kernel/arch/idt.h>

#include <interrupts/isr.h>

#include <controllers/ps2.h>
#include <controllers/pic.h>
#include <controllers/com.h>
#include <controllers/acpi.h>
#include <controllers/cmos.h>

#include <drivers/pit.h>
#include <drivers/keyboard.h>

#include <common/utils.h>


#define MAJOR_V 0
#define MINOR_V 1
#define STAGE_V 'b'


void
kernel_main(multiboot_info_t* mbd, uint32_t magic)
{
	errno = ENOERR;

	//  Initialize COM1 immediately, to permit log capabilities since boot
	//  Note that com_init doesn't register COM IRQS, this shall be done after IDT initialization, otherwise idt_init() will erase the corresponding entry

	uint8_t com1_init_res = com_init(COM1_PORT, 9600, COM_BITS_8, COM_PARITY_NONE, COM_STOPBITS_1);
	uint8_t com2_init_res = com_init(COM2_PORT, 9600, COM_BITS_8, COM_PARITY_NONE, COM_STOPBITS_1);
	__slog__(COM1_PORT, "System boot\n");
	//  -------------------------------------------------------------------------------------------

	tty_init();
	
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
		uint64_t mem_size = parse_multiboot_info(mbd);

		printf("Available Memory:\t\t");
		tty_set_color(VGA_COLOR_GREEN, VGA_COLOR_BLACK);
		printf("[%U KiB]\n", mem_size / 1024);
		tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
	}

	cli();

//  Detecting CPU Model
	printf("Detecting CPU Model:\t");
	
	int cpuid_available = cpuid_supported();

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

//  Initializing GDT and IDT
	printf("Initializing Descriptors:\t");

	gdt_init();
	idt_init();

	tty_set_color(VGA_COLOR_GREEN, VGA_COLOR_BLACK);
	printf("[OK]\n");
	tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
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

//  Initializing PIC IRQs
	printf("Initializing IRQ:\t\t");

	pic_init(ps2_is_present());

	tty_set_color(VGA_COLOR_GREEN, VGA_COLOR_BLACK);
	printf("[OK]\n");
	tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);

//  Initializing paging
#ifndef __DEBUG_STUB__
    printf("Initializing paging:\t");
    paging_init(mbd->mem_upper);
    paging_enable();
    // Todo : maybe we want to initialize heap memory here...
    paging_map_memory(mbd);
#endif
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

//  ..........................

//  Initializing Device Drivers
	printf("Loading device drivers:\t");

	pit_init(); // Serial output will effectively start after this call!
    keyboard_init(PS2_DATA_PORT); // It works with PS/2 or legacy USB
	com_register_interrupts();

	tty_set_color(VGA_COLOR_GREEN, VGA_COLOR_BLACK);
    printf("[OK]\n");
	tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
//  --------------------------

	sti();

	while (1);
}
