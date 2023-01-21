#ifndef _SYSCALL_H
#define _SYSCALL_H


#include <stddef.h>

#include <interrupts/isr.h> // for interrupt_stack_frame_t

#include <kernel/arch/io.h>

#include <unistd.h>

// These are the interrupt numbers associated to system calls
#define SYSCALL_INT_NO_READ  32
#define SYSCALL_INT_NO_WRITE 33


// Map interrupts number to system calls in the IDT
void syscall_init();


// Actual system calls code : one file per handler, these functions are called by the user through the syscall_interface:
// each assembly routine in syscall_interface.S triggers a software interrupt which number shall be mapped in the IDT
// with the particular system call associated to such an interrupt number

#if ARCH == i686
__attribute__((interrupt))
#endif
void sys_write(interrupt_stack_frame_t* frame);
#if ARCH == i686
__attribute__((interrupt))
#endif
void sys_read(interrupt_stack_frame_t* frame);

#endif
