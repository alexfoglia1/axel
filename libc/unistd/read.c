#include <unistd.h>


int
read(uint32_t syscall_type, uint8_t* buffer, size_t count)
{
    syscall_interface(SYSCALL_INT_NO_READ, syscall_type, (uint32_t) count, (uint32_t) buffer, 0);

    return count;
}