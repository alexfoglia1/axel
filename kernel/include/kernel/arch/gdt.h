#ifndef _GDT_H
#define _GDT_H

#include <stdint.h>

#include <kernel/arch/asm.h>

#define GDT_ENTRIES 5


typedef struct gdt_entry
{
    uint16_t lim_low;
    uint16_t base_low; 
    uint8_t  base;
    uint8_t  access;
    uint8_t  granularity;
    uint8_t  base_high;
} __attribute__((packed)) gdt_entry_t;


typedef struct gdt_ptr
{
    uint16_t limit;
    uint32_t base;
} __attribute__((packed)) gdt_ptr_t;


void gdt_add_entry(int32_t pos, uint32_t base, uint32_t limit, uint8_t access, uint8_t granularity);
void gdt_init();


#endif