#include <isr/isr.h>
#include <stdio.h>

__attribute__((noreturn)) void
exception_handler()
{
    printf("Generic exception handler : halt!\n");
#ifndef __DEBUG_STUB__
    asm volatile("cli1: hlt");
#else
    //while(1);
#endif
}


__attribute__((noreturn))
void exception_handler_0x10()
{
    printf("0x10 ISR : halt!\n");
    asm volatile("cli2: hlt");
}


__attribute__((noreturn)) void
exception_handler_0x17()
{
    printf("0x17 ISR : halt!\n");
    asm volatile("cli3: hlt");
}


__attribute__((noreturn)) void
divide_by_zero_exception()
{
    printf("Divide by 0 : halt!\n");
    asm volatile("cli4: hlt");
}

__attribute__((noreturn))
void exception_handler_0x0()
{
    printf("0x00 ISR : halt!\n");
    asm volatile("cli5: hlt");
}