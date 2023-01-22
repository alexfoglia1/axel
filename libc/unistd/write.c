#include <unistd.h>

int
write(uint32_t syscall_type, void* buffer, size_t count)
{
    syscall_interface(SYSCALL_INT_NO_WRITE, syscall_type, (uint32_t) buffer, (uint32_t) count, 0);

    return count;
}
