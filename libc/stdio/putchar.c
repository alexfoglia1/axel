#include <stdio.h>
#include <unistd.h>
#include <kernel/arch/tty.h>

int
putchar(int ic)
{
//#if defined(__is_libk)
//    tty_putchar(ic);
//    return 0;
//#else
    return write(SYSCALL_TYPE_TTY_WRITE, (uint8_t*)(&ic), 1);
//#endif
}
