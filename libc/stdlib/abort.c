#include <stdio.h>
#include <stdlib.h>

__attribute__((__noreturn__))
void
abort(void)
{
#if defined(__is_libk)
	printf("SYSTEM HALT\n");
#else
	// TODO: Abnormally terminate the process as if by SIGABRT.
	printf("SYSTEM HALT\n");
#endif
	while (1);
	__builtin_unreachable();
}
