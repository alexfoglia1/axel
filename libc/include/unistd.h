#ifndef _UNISTD_H
#define _UNISTD_H

#define SYSCALL_TYPE_TTY_WRITE     0x00
#define SYSCALL_TYPE_IO_WRITE_BYTE 0x01
#define SYSCALL_TYPE_IO_WRITE_WORD 0x02
#define SYSCALL_TYPE_IO_WRITE_LONG 0x03

#define SYSCALL_TYPE_COM_READ(N)(0x04 + N)

#define SYSCALL_INT_NO_READ  80
#define SYSCALL_INT_NO_WRITE 81
#define SYSCALL_INT_NO_FORK  82

#include <sys/cdefs.h>

#include <stdint.h>
#include <stddef.h>

// Assembly interface to actual system calls, this shall be equals to the signature defined in kernel/arch/asm.h
extern int syscall_interface(uint32_t syscall_int_no, uint32_t syscall_type, uint32_t buffer, uint32_t count, uint32_t extra);

int write(uint32_t syscall_type, void* buffer, size_t count);
int read(uint32_t syscall_type,  void* buffer, size_t count);
int fork();

#endif