#ifndef _ISR_H
#define _ISR_H

#include <stdint.h>

struct i686_interrupt_stack
{
   uint32_t ds;
   uint32_t edi, esi, ebp, esp, ebx, edx, ecx, eax;
   uint32_t int_no, err_code;
   uint32_t eip, cs, eflags, useresp, ss;
};

struct debug_interrupt_stack
{
   uint32_t ds;
   uint32_t edi, esi, ebp, esp, ebx, edx, ecx, eax;
   uint32_t int_no, err_code;
   uint32_t eip, cs, eflags, useresp, ss;
};

#if ARCH == i686
typedef struct i686_interrupt_stack interrupt_stack_frame_t;
#else
typedef struct debug_interrupt_stack interrupt_stack_frame_t;
#endif

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
void undef_opcode_exception(interrupt_stack_frame_t stack_frame);
void gpf_exception(interrupt_stack_frame_t stack_frame);
void page_fault_exception(interrupt_stack_frame_t stack_frame);
void unhandled_interrupt(interrupt_stack_frame_t stack_frame);

#endif
