#include <kernel/arch/idt.h>
#include <kernel/arch/gdt.h>

#include <interrupts/isr.h>

#include <string.h>

#include <common/utils.h>


static __attribute__((aligned(0x10))) 
idt_entry_t idt_entries[IDT_ENTRIES];
static idt_ptr_t idt_ptr;


void
idt_init()
{
    idt_ptr.base = (uint32_t)(&idt_entries);
    idt_ptr.limit = (IDT_ENTRIES * sizeof(gdt_entry_t));

    for (int i = 0; i < IDT_ENTRIES; i++)
    {
        memset(&idt_entries[i], 0x00, sizeof(idt_entry_t));
    }

//  Interrupt handlers low-level entry points
    idt_add_entry(0,  (uint32_t) &isr0_entry_point,  PRESENT | TRP_GATE);
    idt_add_entry(1,  (uint32_t) &isr1_entry_point,  PRESENT | TRP_GATE);
    idt_add_entry(2,  (uint32_t) &isr2_entry_point,  PRESENT | TRP_GATE);
    idt_add_entry(3,  (uint32_t) &isr3_entry_point,  PRESENT | TRP_GATE);
    idt_add_entry(4,  (uint32_t) &isr4_entry_point,  PRESENT | TRP_GATE);
    idt_add_entry(5,  (uint32_t) &isr5_entry_point,  PRESENT | TRP_GATE);
    idt_add_entry(6,  (uint32_t) &isr6_entry_point,  PRESENT | TRP_GATE);
    idt_add_entry(7,  (uint32_t) &isr7_entry_point,  PRESENT | TRP_GATE);
    idt_add_entry(8,  (uint32_t) &isr8_entry_point,  PRESENT | TRP_GATE);
    idt_add_entry(9,  (uint32_t) &isr9_entry_point,  PRESENT | TRP_GATE);
    idt_add_entry(10, (uint32_t) &isr10_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(11, (uint32_t) &isr11_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(12, (uint32_t) &isr12_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(13, (uint32_t) &isr13_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(14, (uint32_t) &isr14_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(15, (uint32_t) &isr15_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(16, (uint32_t) &isr16_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(17, (uint32_t) &isr17_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(18, (uint32_t) &isr18_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(19, (uint32_t) &isr19_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(20, (uint32_t) &isr20_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(21, (uint32_t) &isr21_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(22, (uint32_t) &isr22_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(23, (uint32_t) &isr23_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(24, (uint32_t) &isr24_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(25, (uint32_t) &isr25_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(26, (uint32_t) &isr26_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(27, (uint32_t) &isr27_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(28, (uint32_t) &isr28_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(29, (uint32_t) &isr29_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(30, (uint32_t) &isr30_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(31, (uint32_t) &isr31_entry_point, PRESENT | TRP_GATE);

//  IRQ handlers low-level entry points
    idt_add_entry(IRQ_TO_INT_NO(0),  (uint32_t) &irq0_entry_point,  PRESENT | IRQ_GATE);
    idt_add_entry(IRQ_TO_INT_NO(1),  (uint32_t) &irq1_entry_point,  PRESENT | IRQ_GATE);
    idt_add_entry(IRQ_TO_INT_NO(2),  (uint32_t) &irq2_entry_point,  PRESENT | IRQ_GATE);
    idt_add_entry(IRQ_TO_INT_NO(3),  (uint32_t) &irq3_entry_point,  PRESENT | IRQ_GATE);
    idt_add_entry(IRQ_TO_INT_NO(4),  (uint32_t) &irq4_entry_point,  PRESENT | IRQ_GATE);
    idt_add_entry(IRQ_TO_INT_NO(5),  (uint32_t) &irq5_entry_point,  PRESENT | IRQ_GATE);
    idt_add_entry(IRQ_TO_INT_NO(6),  (uint32_t) &irq6_entry_point,  PRESENT | IRQ_GATE);
    idt_add_entry(IRQ_TO_INT_NO(7),  (uint32_t) &irq7_entry_point,  PRESENT | IRQ_GATE);
    idt_add_entry(IRQ_TO_INT_NO(8),  (uint32_t) &irq8_entry_point,  PRESENT | IRQ_GATE);
    idt_add_entry(IRQ_TO_INT_NO(9),  (uint32_t) &irq9_entry_point,  PRESENT | IRQ_GATE);
    idt_add_entry(IRQ_TO_INT_NO(10), (uint32_t) &irq10_entry_point, PRESENT | IRQ_GATE);
    idt_add_entry(IRQ_TO_INT_NO(11), (uint32_t) &irq11_entry_point, PRESENT | IRQ_GATE);
    idt_add_entry(IRQ_TO_INT_NO(12), (uint32_t) &irq12_entry_point, PRESENT | IRQ_GATE);
    idt_add_entry(IRQ_TO_INT_NO(13), (uint32_t) &irq13_entry_point, PRESENT | IRQ_GATE);
    idt_add_entry(IRQ_TO_INT_NO(14), (uint32_t) &irq14_entry_point, PRESENT | IRQ_GATE);
    idt_add_entry(IRQ_TO_INT_NO(15), (uint32_t) &irq15_entry_point, PRESENT | IRQ_GATE);


//  Syscall handlers low-level entry points
    idt_add_entry(SYSCALL_INT_NO_READ,  (uint32_t) &isr80_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(SYSCALL_INT_NO_WRITE, (uint32_t) &isr81_entry_point, PRESENT | TRP_GATE);
    
    store_idt((uint32_t)(&idt_ptr));
}


void
idt_add_entry(uint8_t pos, uint32_t isr, uint8_t flags)
{
    idt_entries[pos].isr_low        = ((isr)       & 0xFFFF);
    idt_entries[pos].isr_high       = ((isr >> 16) & 0xFFFF);

    idt_entries[pos].kernel_cs      = 0x08;
    idt_entries[pos].attributes     = flags;
    idt_entries[pos].reserved       = 0;
}
