#ifndef _ASM_H
#define _ASM_H

#include <stdint.h>

// Some useful assembly routines
void cli();
void sti();
void store_gdt(void* gdt_addr, uint16_t limit, int32_t code, int32_t data);

#endif
