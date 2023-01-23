#include <kernel/arch/gdt.h>

#include <string.h>


static gdt_entry_t gdt_entries[GDT_ENTRIES];
static gdt_ptr_t   gdt_ptr;
static tss_entry_t tss_entry;


// Initialise our task state segment structure.
static void
write_tss(int32_t pos, uint16_t ss0, uint32_t esp0)
{
   // Firstly, let's compute the base and limit of our entry into the GDT.
   uint32_t base = (uint32_t) &tss_entry;
   uint32_t limit = base + sizeof(tss_entry);

   // Now, add our TSS descriptor's address to the GDT.
   gdt_add_entry(pos, base, limit, 0xE9, 0x00);

   // Ensure the descriptor is initially zero.
   memset(&tss_entry, 0, sizeof(tss_entry));

   tss_entry.ss0  = ss0;  // Set the kernel stack segment.
   tss_entry.esp0 = esp0; // Set the kernel stack pointer.

   tss_entry.cs   = 0x0b;
   tss_entry.ss = tss_entry.ds = tss_entry.es = tss_entry.fs = tss_entry.gs = 0x13;
}


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
    write_tss(5, 0x10, 0x00);

    store_gdt((uint32_t)(&gdt_ptr));
    store_tss();
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


void
gdt_set_kernel_stack(uint32_t stack)
{
    tss_entry.esp0 = stack;
}