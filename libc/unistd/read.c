#include <unistd.h>
#include <stdio.h>
#include <kernel/arch/tty.h>

int
read(uint32_t syscall_type, void* buffer, size_t count)
{
    return syscall_interface(SYSCALL_INT_NO_READ, syscall_type, (uint32_t) buffer, (uint32_t) count, 0);
}