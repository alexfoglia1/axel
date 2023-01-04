#include <drivers/pit.h>

#include <controllers/pic.h>
#include <controllers/com.h>

#include <kernel/arch/io.h>

#include <common/utils.h>

#include <stdio.h>


struct pit_time_elapsed time_elapsed;
uint32_t count_0;


uint32_t
pit_get_count()
{
    uint32_t count = 0;

    outb(PIT_MDCMD_REG_PORT, 0b0000000);

    uint8_t count_low  = inb(PIT_CHANNEL_0_PORT);
    uint8_t count_high = inb(PIT_CHANNEL_0_PORT);

    count = count_low;
    count |= (count_high < 8);

    return count;
}


void
pit_set_count(uint32_t count)
{
	outb(PIT_CHANNEL_0_PORT, count & 0xFF);
	outb(PIT_CHANNEL_0_PORT, (count & 0xFF00) >> 8);
}


void
pit_init()
{
    __slog__(COM1_PORT, "Initializing PIT timer\n");

    time_elapsed.ticks = 0;
    time_elapsed.millis = 0;
    count_0 = pit_get_count();

    uint16_t div = PIT_DIVISOR;
    uint8_t div_low  = div & 0xFF;
    uint8_t div_high = div >> 8;

    outb(PIT_MDCMD_REG_PORT, 0x37); // 0x37 Square wave 0x31 Interrupt on terminal count
    outb(PIT_CHANNEL_0_PORT, div_low);
    outb(PIT_CHANNEL_0_PORT, div_high);

    pic_add_irq(PIT_IRQ_INTERRUPT_NO, &pit_irq0_handler);

    __slog__(COM1_PORT, "PIT timer initialized\n");
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

    //TODO : Define a COM TX frequency
    if (time_elapsed.ticks % 2 == 0)
    {
        com_tx_buffer(COM1_PORT);
        //com_tx_buffer(COM2_PORT);
    }
    pic_reset_master(); //IRQ0 ACK
}
