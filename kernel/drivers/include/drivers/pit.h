#ifndef _PIT_H
#define _PIT_H

#include <stdint.h>
#include <isr/isr.h>

#define PIT_CHANNEL_0_PORT 0x40
#define PIT_CHANNEL_1_PORT 0x41
#define PIT_CHANNEL_2_PORT 0x42
#define PIT_MDCMD_REG_PORT 0x43
#define PIT_DIVISOR 11931
#define PIT_IRQ_INTERRUPT 8
#define PIT_TICKS_PER_SECOND 18

#define MASTER_PIC_COMMAND_PORT 0x20
#define SLAVE_PIC_COMMAND_PORT  0xA0

struct pit_time_elapsed
{
    uint32_t ticks;
    uint32_t seconds;
};


uint32_t read_pit_count();
void init_pit_timer();
uint32_t pit_get_millis();
uint32_t pit_get_seconds();

void pit_irq0_handler(interrupt_stack_frame_t* frame);

#endif
