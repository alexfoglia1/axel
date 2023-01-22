#include <unistd.h>

#include <kernel/arch/tty.h>
#include <stdio.h>

int
write(uint32_t syscall_type, uint8_t* buffer, size_t count)
{
    char buf[512];
    sprintf(buf, "unistd write, INT_NO(0x%X), TYPE(%u), COUNT(%u), BUFFER(0x%X)\n", SYSCALL_INT_NO_WRITE, syscall_type, buffer, count);
    tty_putstring(buf);
    syscall_interface(SYSCALL_INT_NO_WRITE, syscall_type, (uint32_t) count, (uint32_t) buffer, 0);


    return count;
}
