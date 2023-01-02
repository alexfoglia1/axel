#ifndef _SYSCALL_H
#define _SYSCALL_H

#include <stddef.h>

#include <interrupts/isr.h> // for interrupt_stack_frame_t

#include <kernel/arch/asm.h>

#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void write(interrupt_stack_frame_t* frame);
#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void read(interrupt_stack_frame_t* frame);

#endif
