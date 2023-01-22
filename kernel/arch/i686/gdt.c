#include <kernel/arch/gdt.h>

#include <common/utils.h>

#include <string.h>
#include <stdio.h>


static gdt_entry_t gdt_entries[GDT_ENTRIES];
static gdt_ptr_t   gdt_ptr;


void
gdt_init()
{
    gdt_ptr.base = (uint32_t)(&gdt_entries);
    gdt_ptr.limit = (GDT_ENTRIES * sizeof(gdt_entry_t)) - 1;

    gdt_add_entry(0, 0, 0, 0, 0);
    gdt_add_entry(1, 0, 0xFFFFFFFF, 0x9A, 0xCF);
    gdt_add_entry(2, 0, 0xFFFFFFFF, 0x92, 0xCF);
    gdt_add_entry(3, 0, 0xFFFFFFFF, 0xFA, 0xCF);
    gdt_add_entry(4, 0, 0xFFFFFFFF, 0xF2, 0xCF);

    store_gdt((uint32_t)(&gdt_ptr));
}


void
gdt_add_entry(int32_t pos, uint32_t base, uint32_t limit, uint8_t access, uint8_t granularity)
{
    gdt_entries[pos].base_low  = (uint16_t)(base  & 0xFFFF);
    gdt_entries[pos].base      = (uint8_t)((base >> 16) & 0xFF);
    gdt_entries[pos].base_high = (uint8_t)((base >> 24) & 0xFF);

    gdt_entries[pos].lim_low = (uint16_t)(limit & 0xFFFF);

    gdt_entries[pos].granularity  = (((limit >> 16) & 0x0F) | (granularity & 0xF0));

    gdt_entries[pos].access = access;
}



