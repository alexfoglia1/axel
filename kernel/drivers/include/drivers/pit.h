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
#define PIT_MILLIS_PER_TICK 10

struct pit_time_elapsed
{
    uint32_t ticks;
    uint32_t millis;
};


void pit_init_timer();

uint32_t pit_get_count();
void pit_set_count(uint32_t count);

uint32_t pit_get_millis();
int pit_get_seconds();
uint32_t pit_get_ticks();

#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void pit_irq0_handler(interrupt_stack_frame_t* frame);

#endif
