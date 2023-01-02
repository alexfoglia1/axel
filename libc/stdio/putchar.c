#include <stdio.h>
#include <unistd.h>

int
putchar(int ic)
{
	return write(SYSCALL_TTY_WRITE, &ic, 1);
}
