#ifndef _ISR_H
#define _ISR_H

#include <stdint.h>

#define AVAILABLE_HANDLERS 32 // change this when adding a new interrupt handler
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


extern struct interrupt_handler_descriptor isr_vector[AVAILABLE_HANDLERS];

//TODO : rename other interrupts than / 0 exception
#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void divide_by_zero_exception(interrupt_stack_frame_t* frame); //INT 0
#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void exception_handler_0x01(interrupt_stack_frame_t* frame);   //INT 1
#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void exception_handler_0x02(interrupt_stack_frame_t* frame);   //INT 2
#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void exception_handler_0x03(interrupt_stack_frame_t* frame);   //INT 3
#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void exception_handler_0x04(interrupt_stack_frame_t* frame);   //INT 4
#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void exception_handler_0x05(interrupt_stack_frame_t* frame);   //INT 5
#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void exception_handler_0x06(interrupt_stack_frame_t* frame);   //INT 6
#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void exception_handler_0x07(interrupt_stack_frame_t* frame);   //INT 7
#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void exception_handler_0x10(interrupt_stack_frame_t* frame);   //INT 16
#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void exception_handler_0x11(interrupt_stack_frame_t* frame);   //INT 17
#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void exception_handler_0x12(interrupt_stack_frame_t* frame);   //INT 18
#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void exception_handler_0x13(interrupt_stack_frame_t* frame);   //INT 19
#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void exception_handler_0x14(interrupt_stack_frame_t* frame);   //INT 20
#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void exception_handler_0x15(interrupt_stack_frame_t* frame);   //INT 21
#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void exception_handler_0x16(interrupt_stack_frame_t* frame);   //INT 22
#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void exception_handler_0x17(interrupt_stack_frame_t* frame);   //INT 23
#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void exception_handler_0x18(interrupt_stack_frame_t* frame);   //INT 24
#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void exception_handler_0x19(interrupt_stack_frame_t* frame);   //INT 25
#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void exception_handler_0x1A(interrupt_stack_frame_t* frame);   //INT 26
#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void exception_handler_0x1B(interrupt_stack_frame_t* frame);   //INT 27
#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void exception_handler_0x1C(interrupt_stack_frame_t* frame);   //INT 28
#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void exception_handler_0x1D(interrupt_stack_frame_t* frame);   //INT 29
#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void exception_handler_0x1E(interrupt_stack_frame_t* frame);   //INT 30
#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void exception_handler_0x1F(interrupt_stack_frame_t* frame);   //INT 31

#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void generic_irq_ignore(interrupt_stack_frame_t* frame); //INT 0x08 - 0x0F

#endif
