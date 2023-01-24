#ifndef _ASM_H
#define _ASM_H
// Header containing the assembly routines signatures

#include <stdint.h>

void store_gdt(uint32_t gdt_addr);
void store_idt(uint32_t idt_addr);
void store_tss();
uint8_t cpuid_supported();
uint32_t read_eip();
void flush_tlb();
void enable_paging();
void copy_page_physical(uint32_t src, uint32_t dst);
void load_page_directory(uint32_t page_directory);
void context_switch(uint32_t eip, uint32_t esp, uint32_t ebp, uint32_t page_directory);
void enter_user_mode();

void __attribute__((noreturn)) panic(const char* prompt); // Preferred abnormal termination if an exception happened in kernel mode, otherwise user mode shall call the stdlib abort()


// Interrupt service routines entry points : the idt shall point always to them in the range 0-31
void isr0_entry_point();
void isr1_entry_point();
void isr2_entry_point();
void isr3_entry_point();
void isr4_entry_point();
void isr5_entry_point();
void isr6_entry_point();
void isr7_entry_point();
void isr8_entry_point();
void isr9_entry_point();
void isr10_entry_point();
void isr11_entry_point();
void isr12_entry_point();
void isr13_entry_point();
void isr14_entry_point();
void isr15_entry_point();
void isr16_entry_point();
void isr17_entry_point();
void isr18_entry_point();
void isr19_entry_point();
void isr20_entry_point();
void isr21_entry_point();
void isr22_entry_point();
void isr23_entry_point();
void isr24_entry_point();
void isr25_entry_point();
void isr26_entry_point();
void isr27_entry_point();
void isr28_entry_point();
void isr29_entry_point();
void isr30_entry_point();
void isr31_entry_point();

void isr80_entry_point();
void isr81_entry_point();
// ^
// |
// |
// |
// |
//
// The above routines calls the below
//
// |
// |
// |
// |
// v
void ll_int_dispatcher();
// ^
// |
// |
// |
// |
//
// The above routines calls the hl_int_dispatcher() defined in kernel/interrupts/isr.h

// IRQ entry points : the idt shall point always to them in the range 32-47
void irq0_entry_point();
void irq1_entry_point();
void irq2_entry_point();
void irq3_entry_point();
void irq4_entry_point();
void irq5_entry_point();
void irq6_entry_point();
void irq7_entry_point();
void irq8_entry_point();
void irq9_entry_point();
void irq10_entry_point();
void irq11_entry_point();
void irq12_entry_point();
void irq13_entry_point();
void irq14_entry_point();
void irq15_entry_point();
// ^
// |
// |
// |
// |
//
// The above routines calls the below
//
// |
// |
// |
// |
// v
void ll_irq_dispatcher();
// ^
// |
// |
// |
// |
//
// The above routines calls the hl_int_dispatcher() defined in kernel/interrupts/isr.h


#endif
