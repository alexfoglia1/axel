#include <isr/isr.h>
#include <kernel/gdt.h>
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
    {&generic_irq_ignore, PRESENT | IRQ_GATE}, /* INT 0x9 = IRQ1 = KEYBOARD */ //Not yet impl.
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

__attribute__((noreturn)) void
generic_irq_ignore()
{
     __asm__("pushal");
    
    printf("IRQ\n");

    __asm__("popal; leave; iret"); /* BLACK MAGIC! */
}


__attribute__((noreturn)) void
divide_by_zero_exception()
{
    printf("Divide by 0 : halt!\n");
    asm volatile("cli1: hlt");
}


__attribute__((noreturn)) void
exception_handler_0x01()
{
    printf("0x01 ISR : halt!\n");
    asm volatile("cli2: hlt");
}


__attribute__((noreturn)) void
exception_handler_0x02()
{
    printf("0x02 ISR : halt!\n");
    asm volatile("cli3: hlt");
}


__attribute__((noreturn)) void
exception_handler_0x03()
{
    printf("0x03 ISR : halt!\n");
    asm volatile("cli4: hlt");
}


__attribute__((noreturn)) void
exception_handler_0x04()
{
    printf("0x04 ISR : halt!\n");
    asm volatile("cli5: hlt");
}


__attribute__((noreturn)) void
exception_handler_0x05()
{
    printf("0x05 ISR : halt!\n");
    asm volatile("cli6: hlt");
}


__attribute__((noreturn)) void
exception_handler_0x06()
{
    printf("0x06 ISR : halt!\n");
    asm volatile("cli7: hlt");
}


__attribute__((noreturn))
void exception_handler_0x07()
{
    printf("0x07 ISR : halt!\n");
    asm volatile("cli8: hlt");
}


__attribute__((noreturn)) void
exception_handler_0x09()
{
    printf("0x09 ISR : halt!\n");
    asm volatile("cli10: hlt");
}


__attribute__((noreturn)) void
exception_handler_0x0A()
{
    printf("0x0A ISR : halt!\n");
    asm volatile("cli11: hlt");
}


__attribute__((noreturn)) void
exception_handler_0x0B()
{
    printf("0x0B ISR : halt!\n");
    asm volatile("cli12: hlt");
}


__attribute__((noreturn)) void
exception_handler_0x0C()
{
    printf("0x0C ISR : halt!\n");
    asm volatile("cli13: hlt");
}


__attribute__((noreturn)) void
exception_handler_0x0D()
{
    printf("0x0D ISR : halt!\n");
    asm volatile("cli14: hlt");
}


__attribute__((noreturn)) void
exception_handler_0x0E()
{
    printf("0x0E ISR : halt!\n");
    asm volatile("cli15: hlt");
}


__attribute__((noreturn)) void
exception_handler_0x0F()
{
    printf("0x0F ISR : halt!\n");
    asm volatile("cli16: hlt");
}


__attribute__((noreturn)) void
exception_handler_0x10()
{
    printf("0x10 ISR : halt!\n");
    asm volatile("cli17: hlt");
}


__attribute__((noreturn)) void
exception_handler_0x11()
{
    printf("0x11 ISR : halt!\n");
    asm volatile("cli18: hlt");
}


__attribute__((noreturn)) void
exception_handler_0x12()
{
    printf("0x12 ISR : halt!\n");
    asm volatile("cli19: hlt");
}


__attribute__((noreturn)) void
exception_handler_0x13()
{
    printf("0x13 ISR : halt!\n");
    asm volatile("cli20: hlt");
}


__attribute__((noreturn)) void
exception_handler_0x14()
{
    printf("0x14 ISR : halt!\n");
    asm volatile("cli21: hlt");
}


__attribute__((noreturn)) void
exception_handler_0x15()
{
    printf("0x15 ISR : halt!\n");
    asm volatile("cli22: hlt");
}


__attribute__((noreturn)) void
exception_handler_0x16()
{
    printf("0x16 ISR : halt!\n");
    asm volatile("cli23: hlt");
}


__attribute__((noreturn))
void exception_handler_0x17()
{
    printf("0x17 ISR : halt!\n");
    asm volatile("cli24: hlt");
}


__attribute__((noreturn)) void
exception_handler_0x18()
{
    printf("0x18 ISR : halt!\n");
    asm volatile("cli25: hlt");
}


__attribute__((noreturn)) void
exception_handler_0x19()
{
    printf("0x19 ISR : halt!\n");
    asm volatile("cli26: hlt");
}


__attribute__((noreturn)) void
exception_handler_0x1A()
{
    printf("0x1A ISR : halt!\n");
    asm volatile("cli27: hlt");
}


__attribute__((noreturn)) void
exception_handler_0x1B()
{
    printf("0x1B ISR : halt!\n");
    asm volatile("cli28: hlt");
}


__attribute__((noreturn)) void
exception_handler_0x1C()
{
    printf("0x1C ISR : halt!\n");
    asm volatile("cli29: hlt");
}


__attribute__((noreturn)) void
exception_handler_0x1D()
{
    printf("0x1D ISR : halt!\n");
    asm volatile("cli30: hlt");
}


__attribute__((noreturn)) void
exception_handler_0x1E()
{
    printf("0x1E ISR : halt!\n");
    asm volatile("cli31: hlt");
}


__attribute__((noreturn)) void
exception_handler_0x1F()
{
    printf("0x1F ISR : halt!\n");
    asm volatile("cli32: hlt");
}
