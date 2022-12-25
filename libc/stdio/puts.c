#include <stdio.h>
#include <kernel/tty.h>

int
puts(const char* string)
{
	return printf("%s\n", string);
}
