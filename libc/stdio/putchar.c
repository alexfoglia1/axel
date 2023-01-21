#include <stdio.h>
#include <unistd.h>
#include <kernel/arch/tty.h>

int
putchar(int ic)
{
    return write(SYSCALL_TYPE_TTY_WRITE, (uint8_t*)(&ic), 1);
}
