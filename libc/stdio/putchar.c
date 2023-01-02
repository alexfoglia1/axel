#include <stdio.h>
#include <kernel/arch/tty.h>

int
putchar(int ic)
{
	uint32_t* _ic = &ic;
	asm volatile ("mov $0, %%eax \n\
				   mov $1, %%ebx \n\
				   mov %0, %%ecx \n\
				   int $33"
				   :: "m" (_ic));
	return sizeof(int);
}
