#ifndef _ISR_H
#define _ISR_H

#include <stdint.h>

typedef struct
{
   uint32_t ds;
   uint32_t edi, esi, ebp, esp, ebx, edx, ecx, eax;
   uint32_t int_no, err_code, syscall_type, syscall_buffer, syscall_count, syscall_ioaddr;
   uint32_t eip, cs, eflags, useresp, ss;
} interrupt_stack_frame_t;

typedef void (*hl_interrupt_handler)(interrupt_stack_frame_t frame);

// Register high level interrupt service routines : it shall be used by the kernel and device drivers
void isr_register(uint32_t int_no, hl_interrupt_handler handler); 

// The below routine is called by the asm ll_int_dispatcher() defined in kernel/arch/asm.h
// |
// |
// |
// |
// |
// v
void hl_int_dispatcher(interrupt_stack_frame_t stack_frame);
// ^
// |
// |
// |
// |
//
// The above routine calls the belows
//
// |
// |
// |
// |
// v
void divide_by_zero_exception(interrupt_stack_frame_t stack_frame);
void page_fault_exception(interrupt_stack_frame_t stack_frame);
void unhandled_interrupt(interrupt_stack_frame_t stack_frame);

#endif
