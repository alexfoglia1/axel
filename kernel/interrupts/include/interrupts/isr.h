#ifndef _ISR_H
#define _ISR_H

#include <stdint.h>


#define INITIAL_INTERRUPT_HANDLERS 32
#define TSK_GATE 0x5
#define IRQ_GATE 0xE
#define TRP_GATE 0xF


typedef struct __attribute__((__packed__))
{
    uint16_t gs;
    uint16_t fs;
    uint16_t es;
    uint16_t ds;
    uint32_t ebp;
    uint32_t edi;
    uint32_t esi;
    uint32_t edx;
    uint32_t ecx;
    uint32_t ebx;
    uint32_t eax;
    //Vector no.
    uint32_t vec_no;
    //Hardware error code
    uint32_t error_code;
    //Hardware pushed registers
    void (*eip)(void);
    uint16_t cs;
    uint32_t eflag;
    void *esp;
    uint16_t ss;
} interrupt_stack_frame_t;


typedef void (*interrupt_handler)(interrupt_stack_frame_t* frame);

struct interrupt_handler_descriptor
{
    interrupt_handler handler;
    uint8_t attributes;
};


extern struct interrupt_handler_descriptor isr_vector[INITIAL_INTERRUPT_HANDLERS];

//TODO : implement other exceptions
#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void divide_by_zero_exception(interrupt_stack_frame_t* frame); //INT 0

#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void page_fault_exception(interrupt_stack_frame_t* frame); // INT 14

#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
unhandled_interrupt(interrupt_stack_frame_t* frame);

#endif
