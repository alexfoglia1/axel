#include <interrupts/isr.h>

#include <syscall/syscall.h>

#include <kernel/arch/gdt.h>

#include <controllers/pic.h>

#include <stdio.h>
#include <stdlib.h>


struct interrupt_handler_descriptor isr_vector[AVAILABLE_HANDLERS] =
{
    // int 0 = divide by zero
    {&divide_by_zero_exception, PRESENT | TRP_GATE},

    // int 1->13 = todo 
    {&unhandled_interrupt, PRESENT | TRP_GATE},
    {&unhandled_interrupt, PRESENT | TRP_GATE},
    {&unhandled_interrupt, PRESENT | TRP_GATE},
    {&unhandled_interrupt, PRESENT | TRP_GATE},
    {&unhandled_interrupt, PRESENT | TRP_GATE},
    {&unhandled_interrupt, PRESENT | TRP_GATE},
    {&unhandled_interrupt, PRESENT | TRP_GATE},
    {&unhandled_interrupt, PRESENT | TRP_GATE},
    {&unhandled_interrupt, PRESENT | TRP_GATE},
    {&unhandled_interrupt, PRESENT | TRP_GATE}, 
    {&unhandled_interrupt, PRESENT | TRP_GATE},
    {&unhandled_interrupt, PRESENT | TRP_GATE},
    {&unhandled_interrupt, PRESENT | TRP_GATE}, 

    // int 14 = page fault
    {&page_fault_exception, PRESENT | TRP_GATE}, 

    // int 15->31 = todo
    {&unhandled_interrupt, PRESENT | TRP_GATE}, 
    {&unhandled_interrupt, PRESENT | TRP_GATE},
    {&unhandled_interrupt, PRESENT | TRP_GATE},
    {&unhandled_interrupt, PRESENT | TRP_GATE},
    {&unhandled_interrupt, PRESENT | TRP_GATE},
    {&unhandled_interrupt, PRESENT | TRP_GATE},
    {&unhandled_interrupt, PRESENT | TRP_GATE},
    {&unhandled_interrupt, PRESENT | TRP_GATE},
    {&unhandled_interrupt, PRESENT | TRP_GATE},
    {&unhandled_interrupt, PRESENT | TRP_GATE},
    {&unhandled_interrupt, PRESENT | TRP_GATE},
    {&unhandled_interrupt, PRESENT | TRP_GATE},
    {&unhandled_interrupt, PRESENT | TRP_GATE},
    {&unhandled_interrupt, PRESENT | TRP_GATE},
    {&unhandled_interrupt, PRESENT | TRP_GATE},
    {&unhandled_interrupt, PRESENT | TRP_GATE},
    {&unhandled_interrupt, PRESENT | TRP_GATE},

    // int 32 read syscall
    {&sys_read,  PRESENT | TRP_GATE},

    // int 33 write syscall
    {&sys_write, PRESENT | TRP_GATE}
};


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
divide_by_zero_exception(interrupt_stack_frame_t* frame)
{
    printf("KERNEL PANIC : DIVIDE BY ZERO\n");
    abort();
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void page_fault_exception(interrupt_stack_frame_t* frame)
{
    // A page fault has occurred.
    // The faulting address is stored in the CR2 register.
    uint32_t faulting_address;
    asm volatile("mov %%cr2, %0" : "=r" (faulting_address));

    // The error code gives us details of what happened.
    int present = frame->error_code & 0x1;      // Page present
    int rw = frame->error_code & 0x2;           // Write operation?
    int us = frame->error_code & 0x4;           // Processor was in user-mode?
    int reserved = frame->error_code & 0x8;     // Overwritten CPU-reserved bits of page entry?
    int id = frame->error_code & 0x10;          // Caused by an instruction fetch?

    // Output an error message.
    printf("Page fault (present(%d), write-operation(%d), user-mode(%d), reserved(%d), fetch(%d)) at 0x%X\n",
                        present,     rw,                            us,  reserved,           id,   faulting_address);

    printf("KERNEL PANIC : PAGE FAULT\n");
    abort();
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
unhandled_interrupt(interrupt_stack_frame_t* frame)
{
    printf("Unhandled interrupt 0x%X\n", *(uint32_t*)(frame->vec_no));
}

