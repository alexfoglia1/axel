#include <isr/isr.h>
#include <kernel/gdt.h>
#include <drivers/pic.h>
#include <stdio.h>


struct interrupt_handler_descriptor isr_vector[AVAILABLE_HANDLERS] =
{
    {&divide_by_zero_exception, PRESENT | TRP_GATE},
    {&exception_handler_0x01, PRESENT | TRP_GATE},
    {&exception_handler_0x02, PRESENT | TRP_GATE},
    {&exception_handler_0x03, PRESENT | TRP_GATE},
    {&exception_handler_0x04, PRESENT | TRP_GATE},
    {&exception_handler_0x05, PRESENT | TRP_GATE},
    {&exception_handler_0x06, PRESENT | TRP_GATE},
    {&exception_handler_0x07, PRESENT | TRP_GATE},
    {&generic_irq_ignore, PRESENT | IRQ_GATE}, /* INT 0x8 = IRQ0 = PIT TICK */ //PIT driver is implementing this
    {&generic_irq_ignore, PRESENT | IRQ_GATE}, /* INT 0x9 = IRQ1 = KEYBOARD */ //PS2 driver is implementing this
    {&generic_irq_ignore, PRESENT | IRQ_GATE}, /* INT 0xA = IRQ2 = SLV 8259 */ //Not yet impl.
    {&generic_irq_ignore, PRESENT | IRQ_GATE}, /* INT 0xB = IRQ3 = COM2 SRQ */ //Not yet impl.
    {&generic_irq_ignore, PRESENT | IRQ_GATE}, /* INT 0xC = IRQ4 = COM1 SRQ */ //Not yet impl.
    {&generic_irq_ignore, PRESENT | IRQ_GATE}, /* INT 0xD = IRQ5 = LPT2 DRQ */ //Not yet impl.
    {&generic_irq_ignore, PRESENT | IRQ_GATE}, /* INT 0xE = IRQ6 = FLOPPY D */ //Not yet impl.
    {&generic_irq_ignore, PRESENT | IRQ_GATE}, /* INT 0xF = IRQ7 = LPTQ DRQ */ //Not yet impl.
    {&exception_handler_0x10, PRESENT | TRP_GATE},
    {&exception_handler_0x11, PRESENT | TRP_GATE},
    {&exception_handler_0x12, PRESENT | TRP_GATE},
    {&exception_handler_0x13, PRESENT | TRP_GATE},
    {&exception_handler_0x14, PRESENT | TRP_GATE},
    {&exception_handler_0x15, PRESENT | TRP_GATE},
    {&exception_handler_0x16, PRESENT | TRP_GATE},
    {&exception_handler_0x17, PRESENT | TRP_GATE},
    {&exception_handler_0x18, PRESENT | TRP_GATE},
    {&exception_handler_0x19, PRESENT | TRP_GATE},
    {&exception_handler_0x1A, PRESENT | TRP_GATE},
    {&exception_handler_0x1B, PRESENT | TRP_GATE},
    {&exception_handler_0x1C, PRESENT | TRP_GATE},
    {&exception_handler_0x1D, PRESENT | TRP_GATE},
    {&exception_handler_0x1E, PRESENT | TRP_GATE},
    {&exception_handler_0x1F, PRESENT | TRP_GATE},
};


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
divide_by_zero_exception(interrupt_stack_frame_t* frame)
{
    printf("Divide by 0 : halt!\n");
    asm volatile("cli1: hlt");
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
exception_handler_0x01(interrupt_stack_frame_t* frame)
{
    printf("0x01 ISR : halt!\n");
    asm volatile("cli2: hlt");
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
exception_handler_0x02(interrupt_stack_frame_t* frame)
{
    printf("0x02 ISR : halt!\n");
    asm volatile("cli3: hlt");
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
exception_handler_0x03(interrupt_stack_frame_t* frame)
{
    printf("0x03 ISR : halt!\n");
    asm volatile("cli4: hlt");
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
exception_handler_0x04(interrupt_stack_frame_t* frame)
{
    printf("0x04 ISR : halt!\n");
    asm volatile("cli5: hlt");
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
exception_handler_0x05(interrupt_stack_frame_t* frame)
{
    printf("0x05 ISR : halt!\n");
    asm volatile("cli6: hlt");
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
exception_handler_0x06(interrupt_stack_frame_t* frame)
{
    printf("0x06 ISR : halt!\n");
    asm volatile("cli7: hlt");
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
exception_handler_0x07(interrupt_stack_frame_t* frame)
{
    printf("0x07 ISR : halt!\n");
    asm volatile("cli8: hlt");
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
exception_handler_0x10(interrupt_stack_frame_t* frame)
{
    printf("0x10 ISR : halt!\n");
    asm volatile("cli17: hlt");
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
exception_handler_0x11(interrupt_stack_frame_t* frame)
{
    printf("0x11 ISR : halt!\n");
    asm volatile("cli18: hlt");
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
exception_handler_0x12(interrupt_stack_frame_t* frame)
{
    printf("0x12 ISR : halt!\n");
    asm volatile("cli19: hlt");
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
exception_handler_0x13(interrupt_stack_frame_t* frame)
{
    printf("0x13 ISR : halt!\n");
    asm volatile("cli20: hlt");
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
exception_handler_0x14(interrupt_stack_frame_t* frame)
{
    printf("0x14 ISR : halt!\n");
    asm volatile("cli21: hlt");
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
exception_handler_0x15(interrupt_stack_frame_t* frame)
{
    printf("0x15 ISR : halt!\n");
    asm volatile("cli22: hlt");
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
exception_handler_0x16(interrupt_stack_frame_t* frame)
{
    printf("0x16 ISR : halt!\n");
    asm volatile("cli23: hlt");
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
exception_handler_0x17(interrupt_stack_frame_t* frame)
{
    printf("0x17 ISR : halt!\n");
    asm volatile("cli24: hlt");
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
exception_handler_0x18(interrupt_stack_frame_t* frame)
{
    printf("0x18 ISR : halt!\n");
    asm volatile("cli25: hlt");
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
exception_handler_0x19(interrupt_stack_frame_t* frame)
{
    printf("0x19 ISR : halt!\n");
    asm volatile("cli26: hlt");
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
exception_handler_0x1A(interrupt_stack_frame_t* frame)
{
    printf("0x1A ISR : halt!\n");
    asm volatile("cli27: hlt");
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
exception_handler_0x1B(interrupt_stack_frame_t* frame)
{
    printf("0x1B ISR : halt!\n");
    asm volatile("cli28: hlt");
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
exception_handler_0x1C(interrupt_stack_frame_t* frame)
{
    printf("0x1C ISR : halt!\n");
    asm volatile("cli29: hlt");
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
exception_handler_0x1D(interrupt_stack_frame_t* frame)
{
    printf("0x1D ISR : halt!\n");
    asm volatile("cli30: hlt");
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
exception_handler_0x1E(interrupt_stack_frame_t* frame)
{
    printf("0x1E ISR : halt!\n");
    asm volatile("cli31: hlt");
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
exception_handler_0x1F(interrupt_stack_frame_t* frame)
{
    printf("0x1F ISR : halt!\n");
    asm volatile("cli32: hlt");
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
generic_irq_ignore(interrupt_stack_frame_t* frame)
{
    printf("IRQ(%u)\n", frame->vec_no);

    if (frame->vec_no > 40)
    {
        pic_reset_slave();
    }

    pic_reset_master();
}