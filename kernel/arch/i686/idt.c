#include <kernel/arch/idt.h>
#include <kernel/arch/gdt.h>

#include <interrupts/isr.h>

#include <string.h>

#include <common/utils.h>


__attribute__((aligned(0x10))) 
struct idt_entry idt[IDT_SIZE]; // The real IDT pointed by LIDT


void
idt_init()
{
    for (int i = 0; i < IDT_SIZE; i++)
    {
        memset(&idt[i], 0x00, sizeof(struct idt_entry));
    }


    idt_add_entry(0,  &isr0_entry_point,  PRESENT | TRP_GATE);
    idt_add_entry(1,  &isr1_entry_point,  PRESENT | TRP_GATE);
    idt_add_entry(2,  &isr2_entry_point,  PRESENT | TRP_GATE);
    idt_add_entry(3,  &isr3_entry_point,  PRESENT | TRP_GATE);
    idt_add_entry(4,  &isr4_entry_point,  PRESENT | TRP_GATE);
    idt_add_entry(5,  &isr5_entry_point,  PRESENT | TRP_GATE);
    idt_add_entry(6,  &isr6_entry_point,  PRESENT | TRP_GATE);
    idt_add_entry(7,  &isr7_entry_point,  PRESENT | TRP_GATE);
    idt_add_entry(8,  &isr8_entry_point,  PRESENT | TRP_GATE);
    idt_add_entry(9,  &isr9_entry_point,  PRESENT | TRP_GATE);
    idt_add_entry(10, &isr10_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(11, &isr11_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(12, &isr12_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(13, &isr13_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(14, &isr14_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(15, &isr15_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(16, &isr16_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(17, &isr17_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(18, &isr18_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(19, &isr19_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(20, &isr20_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(21, &isr21_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(22, &isr22_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(23, &isr23_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(24, &isr24_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(25, &isr25_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(26, &isr26_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(27, &isr27_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(28, &isr28_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(29, &isr29_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(30, &isr30_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(31, &isr31_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(32, &isr32_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(33, &isr33_entry_point, PRESENT | TRP_GATE);
    idt_add_entry(34, &isr34_entry_point, PRESENT | TRP_GATE);

    store_idt(&idt);
}


void
idt_add_entry(uint8_t pos, void* isr, uint8_t flags)
{
    struct idt_entry* descriptor = &idt[pos];
 
    descriptor->isr_low        = (uint32_t)(isr) & 0xFFFF;
    descriptor->kernel_cs      = 0x08;
    descriptor->attributes     = flags;
    descriptor->isr_high       = (uint32_t)(isr) >> 16;
    descriptor->reserved       = 0;
}


void*
idt_get_entry(uint8_t pos)
{
    uint32_t addr = idt[pos].isr_low & 0xFFFF;
    addr |= (idt[pos].isr_high << 16);

    return (void*)(addr);
}


void*
idt_get_addr()
{
    return &idt[0];
}


void
store_idt(void* idt_addr)
{
    struct idtr idt_r;
    idt_r.base = (uintptr_t)idt_addr;
    idt_r.limit = (uint16_t)sizeof(struct idt_entry) * IDT_SIZE - 1;

    asm volatile ("lidt %0" : : "m"(idt_r));
}
