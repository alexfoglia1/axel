#include <drivers/pit.h>

#include <controllers/pic.h>
#include <controllers/com.h>

#include <kernel/arch/io.h>

#include <common/utils.h>

#include <stdio.h>


static uint32_t ticks_cnt;
static uint32_t millis_cnt;

static pit_callback_t callback;

uint32_t
pit_get_count()
{
    uint32_t count = 0;
    callback = (pit_callback_t)(0x00);

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
    ticks_cnt = 0;
    millis_cnt = 0;

    uint16_t div = PIT_DIVISOR;
    uint8_t div_low  = div & 0xFF;
    uint8_t div_high = div >> 8;

    outb(PIT_MDCMD_REG_PORT, 0x37); // 0x37 Square wave 0x31 Interrupt on terminal count
    outb(PIT_CHANNEL_0_PORT, div_low);
    outb(PIT_CHANNEL_0_PORT, div_high);

    pic_add_irq(PIT_IRQ_INTERRUPT_NO, pit_irq0_handler);
}


uint32_t
pit_get_millis()
{
    return millis_cnt;
}


uint32_t
pit_get_seconds()
{
    return (millis_cnt / 1000);
}


uint32_t
pit_get_ticks()
{
    return ticks_cnt;
}


void
pit_set_callback(pit_callback_t _callback)
{
    callback = _callback;
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
pit_irq0_handler(interrupt_stack_frame_t* frame)
{
    ticks_cnt  += 1;
    millis_cnt = (ticks_cnt * PIT_MILLIS_PER_TICK);

    pic_reset_master(); //IRQ0 ACK
    outb(PIC_MASTER_CMD_PORT, PIC_EOI);

    if (0x00 != callback)
    {
        callback(ticks_cnt, millis_cnt);
    }
}
