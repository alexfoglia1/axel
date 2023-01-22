#include <interrupts/isr.h>

#include <kernel/arch/idt.h>
#include <kernel/arch/rf.h>

#include <stdio.h>
#include <stdlib.h>

static hl_interrupt_handler hl_interrupt_handlers[IDT_N_ENTRY_POINTS] = 
{
    &divide_by_zero_exception, // INT 0 : DIVIDE BY ZERO
    &unhandled_interrupt,      // INT 1 : UNHANDLED
    &unhandled_interrupt,      // INT 2 : UNHANDLED
    &unhandled_interrupt,      // INT 3 : UNHANDLED
    &unhandled_interrupt,      // INT 4 : UNHANDLED
    &unhandled_interrupt,      // INT 5 : UNHANDLED
    &undef_opcode_exception,   // INT 6 : UNDEFINED OPCODE
    &unhandled_interrupt,      // INT 7 : UNHANDLED
    &unhandled_interrupt,      // INT 8 : UNHANDLED (PIT TIMER IRQ : IT WILL BE ADDED BY PIT DRIVER)
    &unhandled_interrupt,      // INT 9 : UNHANDLED (KEYBOARD IRQ  : IT WILL BE ADDED BY KEYBOARD DRIVER)
    &unhandled_interrupt,      // INT 10 : UNHANDLED 
    &unhandled_interrupt,      // INT 11 : UNHANDLED (COM_2 IRQ : IT WILL BE ADDED BY COM DRIVER)
    &unhandled_interrupt,      // INT 12 : UNHANDLED (COM_1 IRQ : IT WILL BE ADDED BY COM DRIVER)
    &gpf_exception,            // INT 13 : GENERAL PROTECTION FAULT
    &page_fault_exception,     // INT 14 : PAGE FAULT
    &unhandled_interrupt,      // INT 15 : UNHANDLED
    &unhandled_interrupt,      // INT 16 : UNHANDLED
    &unhandled_interrupt,      // INT 17 : UNHANDLED
    &unhandled_interrupt,      // INT 18 : UNHANDLED
    &unhandled_interrupt,      // INT 19 : UNHANDLED
    &unhandled_interrupt,      // INT 20 : UNHANDLED
    &unhandled_interrupt,      // INT 21 : UNHANDLED
    &unhandled_interrupt,      // INT 22 : UNHANDLED
    &unhandled_interrupt,      // INT 23 : UNHANDLED
    &unhandled_interrupt,      // INT 24 : UNHANDLED
    &unhandled_interrupt,      // INT 25 : UNHANDLED
    &unhandled_interrupt,      // INT 26 : UNHANDLED
    &unhandled_interrupt,      // INT 27 : UNHANDLED
    &unhandled_interrupt,      // INT 28 : UNHANDLED
    &unhandled_interrupt,      // INT 29 : UNHANDLED
    &unhandled_interrupt,      // INT 30 : UNHANDLED
    &unhandled_interrupt,      // INT 31 : UNHANDLED
    &unhandled_interrupt,      // INT 32 : UNHANDLED
    &unhandled_interrupt,      // INT 33 : UNHANDLED (SYSCALL READ  : IT WILL BE ADDED BY SYSCALL HANDLER)
    &unhandled_interrupt       // INT 34 : UNHANDLED (SYSCALL WRITE : IT WILL BE ADDED BY SYSCALL HANDLER)
};


void
isr_register(uint32_t int_no, hl_interrupt_handler handler)
{
    hl_interrupt_handlers[int_no] = handler;
}


void
hl_int_dispatcher(interrupt_stack_frame_t stack_frame)
{
    hl_interrupt_handlers[stack_frame.int_no](stack_frame);
}


void
unhandled_interrupt(interrupt_stack_frame_t frame)
{
    printf("Unhandled interrupt 0x%X\n", frame.int_no);
}


void
divide_by_zero_exception(interrupt_stack_frame_t stack_frame)
{
    printf("KERNEL PANIC : DIVIDE BY 0 EXCEPTION\n");
    abort();
}

void undef_opcode_exception(interrupt_stack_frame_t stack_frame)
{
    uint32_t isr;
    RF_READ_IST_PTR(isr);

    printf("KERNEL PANIC : UNDEFINED OPCODE AT 0x%x\n", isr);
    abort();
}


void gpf_exception(interrupt_stack_frame_t frame)
{
    printf("KERNEL PANIC : GENERAL PROTECTION FAULT\n");
    abort();
}


void
page_fault_exception(interrupt_stack_frame_t frame)
{
    // A page fault has occurred.
    // The faulting address is stored in the CR2 register.
    uint32_t faulting_address;
    RF_READ_CR_2(faulting_address); 

    // The error code gives us details of what happened.
    int present = (frame.err_code >> 0) & 0x1;      // Page present
    int rw = (frame.err_code >> 1) & 0x1;           // Write operation?
    int us = (frame.err_code >> 2) & 0x1;           // Processor was in user-mode?
    int reserved = (frame.err_code >> 3) & 0x1;     // Overwritten CPU-reserved bits of page entry?
    int id = (frame.err_code>> 4) & 0x1;            // Caused by an instruction fetch?

    // Output an error message.
    printf("KERNEL PANIC : PAGE FAULT\n(present(%d), write-operation(%d), user-mode(%d), reserved(%d), fetch(%d))\n\tat 0x%X\n\n",
                        present,     rw,                            us,  reserved,           id,   faulting_address);

    abort();
}
