#include <bash.h>
#include <unistd.h>

void _start()
{
    char buf[5] = {'b', 'a', 's', 'h', '\n'};
    syscall_interface(SYSCALL_INT_NO_WRITE, SYSCALL_TYPE_TTY_WRITE, (uint32_t)buf, 5, 0);
    return;
}