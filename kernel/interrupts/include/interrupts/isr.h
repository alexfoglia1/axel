#ifndef _ISR_H
#define _ISR_H

#include <stdint.h>


#define INITIAL_INTERRUPT_HANDLERS 32
#define TSK_GATE 0x5
#define IRQ_GATE 0xE
#define TRP_GATE 0xF


typedef struct
{
    uint32_t eax, ebx, ecx, edx;
    uint32_t int_no, err_code;
    uint32_t eip, cs, eflags, userresp, ss;
} interrupt_stack_frame_t;


typedef void (*interrupt_handler)(interrupt_stack_frame_t* frame);

struct interrupt_handler_descriptor
{
    interrupt_handler handler;
    uint8_t attributes;
};


extern struct interrupt_handler_descriptor isr_vector[INITIAL_INTERRUPT_HANDLERS];

//TODO : implement other exceptions
#if ARCH == i686
__attribute__((interrupt))
#endif
void divide_by_zero_exception(interrupt_stack_frame_t* frame); //INT 0

#if ARCH == i686
__attribute__((interrupt))
#endif
void page_fault_exception(interrupt_stack_frame_t* frame); // INT 14

#if ARCH == i686
__attribute__((interrupt))
#endif
void
unhandled_interrupt(interrupt_stack_frame_t* frame);

#endif
