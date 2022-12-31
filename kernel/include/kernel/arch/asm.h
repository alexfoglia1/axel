#ifndef _ASM_H
#define _ASM_H

#include <stdint.h>

// Some useful assembly routines
void cli();
void sti();
uint8_t inb (int port_no);
void outb (int port_no, int data);
uint16_t inw (int port_no);
void outw(int port_no, int data);
void store_gdt(void* gdt_addr, uint16_t limit, int32_t code, int32_t data);
void store_idt(void* idt_addr);
void mmu_enable_paging(uint32_t* pd);
int cpuid_supported();

#endif
