#include <drivers/pit.h>
#include <drivers/pic.h>
#include <kernel/idt.h>
#include <kernel/gdt.h>
#include <kernel/asm.h>
#include <stdio.h>

struct pit_time_elapsed time_elapsed;
uint32_t count_0;

uint32_t
pit_get_count()
{
    uint32_t count = 0;

    cli();

    outb(PIT_MDCMD_REG_PORT, 0b0000000);

    uint8_t count_low  = inb(PIT_CHANNEL_0_PORT);
    uint8_t count_high = inb(PIT_CHANNEL_0_PORT);

    sti();

    count = count_low;
    count |= (count_high < 8);

    return count;
}


void
pit_set_count(uint32_t count)
{
    cli();

	outb(PIT_CHANNEL_0_PORT, count & 0xFF);
	outb(PIT_CHANNEL_0_PORT, (count & 0xFF00) >> 8);

    sti();
}


void
pit_init_timer()
{
    time_elapsed.ticks = 0;
    time_elapsed.millis = 0;
    count_0 = pit_get_count();

    cli();

    uint16_t div = PIT_DIVISOR;
    uint8_t div_low  = div & 0xFF;
    uint8_t div_high = div >> 8;

    outb(PIT_MDCMD_REG_PORT, 0x37); // 0x37 Square wave 0x31 Interrupt on terminal count
    outb(PIT_CHANNEL_0_PORT, div_low);
    outb(PIT_CHANNEL_0_PORT, div_high);

    sti();
}


uint32_t
pit_get_millis()
{
    return time_elapsed.millis;
}

int
pit_get_seconds()
{
    return time_elapsed.millis / 1000;
}

uint32_t
pit_get_ticks()
{
    return time_elapsed.ticks;
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
pit_irq0_handler(interrupt_stack_frame_t* frame)
{
    time_elapsed.ticks += 1;
    time_elapsed.millis = (time_elapsed.ticks * PIT_MILLIS_PER_TICK);

    pic_reset_master(); //IRQ0 ACK
}
