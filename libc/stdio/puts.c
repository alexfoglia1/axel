#include <stdio.h>
#include <kernel/arch/tty.h>

int
puts(const char* string)
{
	return printf("%s\n", string);
}
