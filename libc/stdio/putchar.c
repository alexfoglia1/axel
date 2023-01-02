#include <stdio.h>


int
putchar(int ic)
{
	// TODO: Implement stdio and the write system call.
	asm volatile ("mov $0x00, %%eax \n\
				   mov $0x01, %%ebx \n\
				   mov %0, %%ecx \n\
				   int $0x21"
				   :: "r" (&ic));

	return sizeof(int);
}
