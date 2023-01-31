#include <unistd.h>


int
spawn(const char* filename)
{
    return syscall_interface(SYSCALL_INT_NO_SPAWN, 0, (uint32_t) filename, 0, 0);
}