#ifndef _ISR_H
#define _ISR_H

#include <stdint.h>

#define AVAILABLE_HANDLERS 32 // change this when adding a new interrupt handler
#define TSK_GATE 0x5
#define IRQ_GATE 0xE
#define TRP_GATE 0xF

typedef void (*interrupt_handler)();

struct interrupt_handler_descriptor
{
    interrupt_handler handler;
    uint8_t attributes;
};

extern struct interrupt_handler_descriptor isr_vector[AVAILABLE_HANDLERS];

//TODO : rename other interrupts than / 0 exception
__attribute__((noreturn)) void divide_by_zero_exception(); //INT 0
__attribute__((noreturn)) void exception_handler_0x01();   //INT 1
__attribute__((noreturn)) void exception_handler_0x02();   //INT 2
__attribute__((noreturn)) void exception_handler_0x03();   //INT 3
__attribute__((noreturn)) void exception_handler_0x04();   //INT 4
__attribute__((noreturn)) void exception_handler_0x05();   //INT 5
__attribute__((noreturn)) void exception_handler_0x06();   //INT 6
__attribute__((noreturn)) void exception_handler_0x07();   //INT 7
__attribute__((noreturn)) void exception_handler_0x08();   //INT 8
__attribute__((noreturn)) void exception_handler_0x09();   //INT 9
__attribute__((noreturn)) void exception_handler_0x0A();   //INT 10
__attribute__((noreturn)) void exception_handler_0x0B();   //INT 11
__attribute__((noreturn)) void exception_handler_0x0C();   //INT 12
__attribute__((noreturn)) void exception_handler_0x0D();   //INT 13
__attribute__((noreturn)) void exception_handler_0x0E();   //INT 14
__attribute__((noreturn)) void exception_handler_0x0F();   //INT 15
__attribute__((noreturn)) void exception_handler_0x10();   //INT 16
__attribute__((noreturn)) void exception_handler_0x11();   //INT 17
__attribute__((noreturn)) void exception_handler_0x12();   //INT 18
__attribute__((noreturn)) void exception_handler_0x13();   //INT 19
__attribute__((noreturn)) void exception_handler_0x14();   //INT 20
__attribute__((noreturn)) void exception_handler_0x15();   //INT 21
__attribute__((noreturn)) void exception_handler_0x16();   //INT 22
__attribute__((noreturn)) void exception_handler_0x17();   //INT 23
__attribute__((noreturn)) void exception_handler_0x18();   //INT 24
__attribute__((noreturn)) void exception_handler_0x19();   //INT 25
__attribute__((noreturn)) void exception_handler_0x1A();   //INT 26
__attribute__((noreturn)) void exception_handler_0x1B();   //INT 27
__attribute__((noreturn)) void exception_handler_0x1C();   //INT 28
__attribute__((noreturn)) void exception_handler_0x1D();   //INT 29
__attribute__((noreturn)) void exception_handler_0x1E();   //INT 30
__attribute__((noreturn)) void exception_handler_0x1F();   //INT 31



#endif
