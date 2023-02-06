#include <interrupts/isr.h>

#include <controllers/pic.h>

#include <kernel/arch/idt.h>
#include <kernel/arch/tty.h>
#include <kernel/arch/rf.h>

#include <common/utils.h>

#include <kernel/multitasking.h>

static hl_interrupt_handler hl_interrupt_handlers[IDT_ENTRIES] = 
{
    &divide_by_zero_exception,    // INT 0  : DIVIDE BY ZERO
    &unhandled_interrupt,         // INT 1  : UNHANDLED
    &unhandled_interrupt,         // INT 2  : UNHANDLED
    &unhandled_interrupt,         // INT 3  : UNHANDLED
    &unhandled_interrupt,         // INT 4  : UNHANDLED
    &unhandled_interrupt,         // INT 5  : UNHANDLED
    &undef_opcode_exception,      // INT 6  : UNDEFINED OPCODE
    &unhandled_interrupt,         // INT 7  : UNHANDLED
    &unhandled_interrupt,         // INT 8  : UNHANDLED
    &unhandled_interrupt,         // INT 9  : UNHANDLED
    &unhandled_interrupt,         // INT 10 : UNHANDLED 
    &unhandled_interrupt,         // INT 11 : UNHANDLED
    &unhandled_interrupt,         // INT 12 : UNHANDLED
    &gpf_exception,               // INT 13 : GENERAL PROTECTION FAULT
    &page_fault_exception,        // INT 14 : PAGE FAULT
    &unhandled_interrupt,         // INT 15 : UNHANDLED
    &unhandled_interrupt,         // INT 16 : UNHANDLED
    &unhandled_interrupt,         // INT 17 : UNHANDLED
    &unhandled_interrupt,         // INT 18 : UNHANDLED
    &unhandled_interrupt,         // INT 19 : UNHANDLED
    &unhandled_interrupt,         // INT 20 : UNHANDLED
    &unhandled_interrupt,         // INT 21 : UNHANDLED
    &unhandled_interrupt,         // INT 22 : UNHANDLED
    &unhandled_interrupt,         // INT 23 : UNHANDLED
    &unhandled_interrupt,         // INT 24 : UNHANDLED
    &unhandled_interrupt,         // INT 25 : UNHANDLED
    &unhandled_interrupt,         // INT 26 : UNHANDLED
    &unhandled_interrupt,         // INT 27 : UNHANDLED
    &unhandled_interrupt,         // INT 28 : UNHANDLED
    &unhandled_interrupt,         // INT 29 : UNHANDLED
    &unhandled_interrupt,         // INT 30 : UNHANDLED
    &unhandled_interrupt,         // INT 31 : UNHANDLED

    &unhandled_interrupt,         // INT 32 : IRQ0
    &unhandled_interrupt,         // INT 33 : IRQ1
    &unhandled_interrupt,         // INT 34 : IRQ2
    &unhandled_interrupt,         // INT 35 : IRQ3
    &unhandled_interrupt,         // INT 36 : IRQ4
    &unhandled_interrupt,         // INT 37 : IRQ5
    &unhandled_interrupt,         // INT 38 : IRQ6
    &unhandled_interrupt,         // INT 39 : IRQ7
    &unhandled_interrupt,         // INT 40 : IRQ8
    &unhandled_interrupt,         // INT 41 : IRQ9
    &unhandled_interrupt,         // INT 42 : IRQ10
    &unhandled_interrupt,         // INT 43 : IRQ11
    &unhandled_interrupt,         // INT 44 : IRQ12
    &unhandled_interrupt,         // INT 45 : IRQ13
    &unhandled_interrupt,         // INT 46 : IRQ14
    &unhandled_interrupt,         // INT 47 : IRQ15

    0, 0, 0,                      // INT 48->50   null
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // INT 51->60   null
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // INT 61->70   null
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // INT 71->80   null
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // INT 81->90   null
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // INT 91->100  null
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // INT 101->110 null
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // INT 111->120 null
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // INT 121->130 null
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // INT 131->140 null
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // INT 141->150 null
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // INT 151->160 null
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // INT 161->170 null
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // INT 171->180 null
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // INT 181->190 null
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // INT 191->200 null
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // INT 201->210 null
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // INT 211->220 null
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // INT 221->230 null
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // INT 231->240 null
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // INT 241->250 null
    0, 0, 0, 0, 0                 // INT 251->255 null
};


void
isr_register(uint32_t int_no, hl_interrupt_handler handler)
{
    hl_interrupt_handlers[int_no] = handler;
}


int
hl_int_dispatcher(interrupt_stack_frame_t stack_frame)
{
    if (0x00 != hl_interrupt_handlers[stack_frame.int_no])
    {
        return hl_interrupt_handlers[stack_frame.int_no](stack_frame);
    }
    else
    {
        __klog__(COM1_PORT, "hl_int_dispatcher : ISR for int_no(0x%X) is null pointer\n", stack_frame.int_no);

        return -1;
    }
}


int
hl_irq_dispatcher(interrupt_stack_frame_t stack_frame)
{
    if (stack_frame.int_no >= PIC_IRQ_SLV_THRESHOLD)
    {
        pic_reset_slave();
    }
    pic_reset_master();

    return hl_int_dispatcher(stack_frame);
}


int
unhandled_interrupt(interrupt_stack_frame_t frame)
{
    __klog__(COM1_PORT, "Unhandled interrupt 0x%X\n", frame.int_no);

    return 0;
}


int __attribute__((noreturn))
divide_by_zero_exception(interrupt_stack_frame_t stack_frame)
{
    panic("KERNEL PANIC : DIVIDE BY 0 EXCEPTION\n");
}


int __attribute__((noreturn)) undef_opcode_exception(interrupt_stack_frame_t stack_frame)
{
    panic("KERNEL PANIC : UNDEFINED OPCODE\n");
}


int __attribute__((noreturn)) gpf_exception(interrupt_stack_frame_t frame)
{
    panic("KERNEL PANIC : GENERAL PROTECTION FAULT\n");
}


int
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

    // Output a detailed error message.
    printk("(present(%d), write-operation(%d), user-mode(%d), reserved(%d), fetch(%d))\n\tat 0x%X\n\n",
                           present, rw, us, reserved, id, faulting_address);

    panic("KERNEL PANIC : PAGE FAULT\n");

    return -1;
}
