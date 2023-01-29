#include <unistd.h>
#include <stdio.h>


int
fork()
{
    return syscall_interface(SYSCALL_INT_NO_FORK, 0, 0, 0, 0);
}