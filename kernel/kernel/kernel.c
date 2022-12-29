#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <stdbool.h>

#include <kernel/cpuid.h>
#include <kernel/tty.h>
#include <kernel/multiboot.h>
#include <kernel/asm.h>
#include <kernel/gdt.h>
#include <kernel/idt.h>
#include <isr/isr.h>
#include <drivers/pic.h>
#include <drivers/pit.h>
#include <drivers/ps2.h>
#include <drivers/rsdp.h>
#include <kernel/cpuid.h>
#include <common/utils.h>


#define MAJOR_V 0
#define MINOR_V 1
#define STAGE_V 'b'

void
kernel_main(multiboot_info_t* mbd, uint32_t magic)
{
	errno = ENOERR;
	tty_init();

	tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
	printf("Starting AXEL %d.%d-%c\n\n", MAJOR_V, MINOR_V, STAGE_V);

	if (magic != MULTIBOOT_BOOTLOADER_MAGIC)
	{
		tty_set_color(VGA_COLOR_RED, VGA_COLOR_BLACK);
        printf("CRITICAL ERROR : INVALID BOOTLOADER\n");
		abort();
    }
	else
	{
		uint64_t mem_size = print_multiboot_info(mbd);

		printf("\nAvailable Memory:\t\t");
		tty_set_color(VGA_COLOR_GREEN, VGA_COLOR_BLACK);
		printf("[%U KiB]\n", mem_size / 1024);
		tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
	}

	cli();

//  Detecting CPU Model
	printf("Detecting CPU Model:\t");
	
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

//  Detecting RSDP
	rsdp_find();
//  --------------------------

//  Initializing PS/2 controller
	printf("Detecting PS/2 Channels:\t");

    ps2_controller_init(rsdp_get_rsdt_address());

	if (ps2_controller_found())
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

	pic_init(ps2_controller_found());

	tty_set_color(VGA_COLOR_GREEN, VGA_COLOR_BLACK);
	printf("[OK]\n");
	tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
//  ..........................

//  Initializing PIT timer
	pit_init_timer();
//  --------------------------

	sti();

	while (1);
}
