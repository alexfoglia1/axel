#include <unistd.h>

#include <kernel/arch/tty.h>

int
write(uint32_t syscall_type, uint8_t* buffer, size_t count)
{
    syscall_interface(SYSCALL_INT_NO_WRITE, syscall_type, (uint32_t) count, (uint32_t) buffer, 0);

    return count;
}
