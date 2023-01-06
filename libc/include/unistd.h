#ifndef _UNISTD_H
#define _UNISTD_H

#define SYSCALL_TTY_WRITE     0x00
#define SYSCALL_IO_WRITE_BYTE 0x01
#define SYSCALL_IO_WRITE_WORD 0x02
#define SYSCALL_IO_WRITE_LONG 0x03
#define SYSCALL_COM_1_READ    0x04
#define SYSCALL_COM_2_READ    0x05
#define SYSCALL_COM_3_READ    0x06

#include <sys/cdefs.h>
#include <stdint.h>
#include <stddef.h>

int write(int desc, uint8_t* buffer, size_t count);
int read(int desc, uint8_t* buffer, size_t count);

#endif