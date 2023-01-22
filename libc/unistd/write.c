#include <unistd.h>

#include <kernel/arch/tty.h>
#include <stdio.h>

int
write(uint32_t syscall_type, uint8_t* buffer, size_t count)
{
    char tmp[512];
    sprintf(tmp, "unistd write, type(0x%X), buffer(0x%X), count(0x%X), extra(0x%X)\n", syscall_type, buffer, count, 0);
    tty_putstring(tmp);
    
    syscall_interface(SYSCALL_INT_NO_WRITE, syscall_type, (uint32_t) count, (uint32_t) buffer, 0);

    return count;
}
