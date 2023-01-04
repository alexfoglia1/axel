#ifndef _PAGING_H
#define _PAGING_H

#include <kernel/arch/multiboot.h>
#include <kernel/memory.h>

#include <interrupts/isr.h> // for interrupt stack frame t

#include <stdint.h>

#define PAGE_DIRECTORY_ENTRIES 0x400
#define PAGE_TABLE_ENTRIES 0x400

#define PAGE_PRESENT 0x01
#define PAGE_WRITE   0x02

#define PAGEFAULT_IRQ_INTERRUPT_NO  0x0E

extern void load_page_directory(uint32_t* page_directory);
extern void enable_paging();


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void paging_fault_irq_handler(interrupt_stack_frame_t* frame);

void paging_init();
uint8_t paging_is_active();

#endif
