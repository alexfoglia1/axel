#include <unistd.h>

int write(int desc, uint8_t* buffer, size_t count)
{
    for (size_t i = 0; i < count; i++)
    {
        uint8_t* _ic = &buffer[i];
	    // $0 in EAX : SYSCALL_TTY_WRITE
        // TODO : handle all possible descriptors...
	    asm volatile ("mov $0, %%eax \n\ 
				   mov $1, %%ebx \n\
				   mov %0, %%ecx \n\
				   int $33"
				   :: "m" (_ic));
    }
}