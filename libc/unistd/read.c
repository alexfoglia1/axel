#include <unistd.h>
#include <stdio.h>
#include <kernel/arch/tty.h>

int
read(uint32_t syscall_type, void* buffer, size_t count)
{
    char buf[512];
    sprintf(buf, "UNSTD READ, INT_NO(0x%X), TYPE(0x%X), BUFFER(0x%X), COUNT(0x%X)\n", SYSCALL_INT_NO_WRITE, syscall_type, buffer, count);
    tty_putstring(buf);

    syscall_interface(SYSCALL_INT_NO_READ, syscall_type, (uint32_t) buffer, (uint32_t) count, 0);

    return count;
}