#ifndef _ISR_H
#define _ISR_H

#include <stdint.h>

struct i686_interrupt_stack
{
   uint32_t ds;
   uint32_t edi, esi, ebp, spare, ebx, edx, ecx, eax;
   uint32_t int_no, err_code;
   uint32_t eip, cs, eflags, esp, ss;
};

struct debug_interrupt_stack
{
   uint32_t ds;
   uint32_t edi, esi, ebp, spare, ebx, edx, ecx, eax;
   uint32_t int_no, err_code;
   uint32_t eip, cs, eflags, esp, ss;
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
void unhandled_interrupt(interrupt_stack_frame_t stack_frame);
void divide_by_zero_exception(interrupt_stack_frame_t stack_frame);
void undef_opcode_exception(interrupt_stack_frame_t stack_frame);
void gpf_exception(interrupt_stack_frame_t stack_frame);
void page_fault_exception(interrupt_stack_frame_t stack_frame);

// The below routine is called by the asm ll_irq_dispatcher() defined in kernel/arch/asm.h
// |
// |
// |
// |
// |
// v
void hl_irq_dispatcher(interrupt_stack_frame_t stack_frame); // This extends the behavior of hl_int_dispatcher : it resets the pic when an interrupt has been served
// ^
// |
// |
// |
// |
//
// The above routine calls :
// 1) unhandled_interrupt() if the particular irq_no received by the ll_irq_dispatcher has not been registered by the corresponding device driver, OR
// 2) the isr routine which the corresponding device driver has registered

#endif
