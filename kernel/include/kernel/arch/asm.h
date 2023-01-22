#ifndef _ASM_H
#define _ASM_H
// Header containing the assembly routines signatures

#include <stdint.h>

uint8_t cpuid_supported();
uint32_t read_eip();
void flush_tlb();
void enable_paging();
void copy_page_physical(uint32_t src, uint32_t dst);
void load_page_directory(uint32_t page_directory);
void context_switch(uint32_t eip, uint32_t esp, uint32_t ebp, uint32_t page_directory);
void syscall_interface(uint32_t syscall_int_no, uint32_t syscall_type, uint32_t count, uint32_t buffer, uint32_t extra);


// Interrupt service routines entry points : the idt shall point always to them
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
void isr32_entry_point();
void isr33_entry_point();
void isr34_entry_point();
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


#endif