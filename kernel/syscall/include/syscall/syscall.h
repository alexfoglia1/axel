#ifndef _SYSCALL_H
#define _SYSCALL_H


#include <stddef.h>

#include <interrupts/isr.h> // for interrupt_stack_frame_t

#include <unistd.h>

// Map interrupts number to system calls in the IDT
void syscall_init();


// Actual system calls code : one file per handler, these functions are called by the user through the syscall_interface:
// each assembly routine in syscall_interface.S triggers a software interrupt which number shall be mapped in the IDT
// with the particular system call associated to such an interrupt number
void sys_write(interrupt_stack_frame_t frame);
void sys_read(interrupt_stack_frame_t  frame);

#endif
