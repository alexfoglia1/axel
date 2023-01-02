#ifndef _SYSCALL_H
#define _SYSCALL_H


#include <stddef.h>

#include <interrupts/isr.h> // for interrupt_stack_frame_t

#include <kernel/arch/io.h>

#include <unistd.h>

#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void sys_write(interrupt_stack_frame_t* frame);
#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void sys_read(interrupt_stack_frame_t* frame);

#endif
