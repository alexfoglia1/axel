#ifndef _ASM_H
#define _ASM_H

#include <stdint.h>

// Some useful assembly routines
void cli();
void sti();
uint8_t inb (int port_no);
void outb (int port_no, int data);
void store_gdt(void* gdt_addr, uint16_t limit, int32_t code, int32_t data);
void store_idt(void* idt_addr);
int cpuid_supported();

#endif
