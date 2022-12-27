#include <drivers/pit.h>
#include <drivers/pic.h>
#include <kernel/idt.h>
#include <kernel/gdt.h>
#include <kernel/asm.h>
#include <stdio.h>

struct pit_time_elapsed time_elapsed;


uint32_t
read_pit_count()
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
init_pit_timer()
{
    time_elapsed.ticks = 0;
    time_elapsed.seconds = 0;

    uint16_t div = PIT_DIVISOR;
    uint8_t div_low  = div & 0xFF;
    uint8_t div_high = div >> 8;

    cli();

    outb(PIT_MDCMD_REG_PORT, 0x37);
    outb(PIT_CHANNEL_0_PORT, div_low);
    outb(PIT_CHANNEL_0_PORT, div_high);

    idt_add_entry(PIT_IRQ_INTERRUPT, &pit_irq0_handler, PRESENT | IRQ_GATE);
    
    sti();
}


uint32_t
pit_get_millis()
{
    return time_elapsed.ticks * 55;
}

uint32_t
pit_get_seconds()
{
    return time_elapsed.seconds;
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
pit_irq0_handler(interrupt_stack_frame_t* frame)
{
    printf("IRQ0\n");
    time_elapsed.ticks += 1;
    if (time_elapsed.ticks % PIT_TICKS_PER_SECOND == 0)
    {
        time_elapsed.seconds += 1;
    }
    printf("Ticks: %u\n", time_elapsed.ticks);

    if (frame->vec_no > 40)
    {
        reset_pic_slave();
    }

    reset_pic_master();
}
