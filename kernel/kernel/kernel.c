#include <stdio.h>
#include <errno.h>
#include <stdbool.h>

#include <kernel/tty.h>
#include <kernel/multiboot.h>
#include <kernel/asm.h>
#include <kernel/gdt.h>
#include <kernel/idt.h>
#include <isr/isr.h>
#include <drivers/pic.h>
#include <drivers/pit.h>

#define MAJOR_V 0
#define MINOR_V 1
#define STAGE_V 'b'


void
kernel_main()
{
	errno = ENOERR;
	tty_init();

	tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
	printf("Starting AXEL %d.%d-%c\n", MAJOR_V, MINOR_V, STAGE_V);

//  Initializing GDT and IDT
	cli();
	gdt_init();
	idt_init();
	sti();
//  --------------------------

//  Initializing PIT timer
	pit_init_timer();
//  --------------------------

//  Initializing interrupts
	pic_init_irq();
//  ..........................

	uint32_t ticks0 = pit_get_ticks();
	while(1)
	{
		uint32_t ticks = pit_get_ticks();
		uint32_t millis = pit_get_millis();
		int seconds = pit_get_seconds();
		uint32_t delta_ticks = ticks - ticks0;

		uint32_t millis_after_last_second = millis - seconds * 1000;
		int millis_ciphers = 1;
		if (millis_after_last_second >= 10)
		{
			millis_ciphers += 1;
		}
		if (millis_after_last_second >= 100)
		{
			millis_ciphers += 1;
		}

		if (delta_ticks >= 1)
		{
			if (millis_ciphers == 3)
				printf("seconds(%u.%u)\n", seconds, millis_after_last_second);
			else if(millis_ciphers == 2)
				printf("seconds(%u.0%u)\n", seconds, millis_after_last_second);
			else
				printf("seconds(%u.00%u)\n", seconds, millis_after_last_second);

			ticks0 = ticks;
		}
	}
}
