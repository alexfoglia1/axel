#include <unistd.h>

int
read(int desc, uint8_t* buffer, size_t count)
{
    asm volatile ("mov %0, %%eax\n\
                   mov %1, %%ebx\n\
                   mov %2, %%ecx\n\
                   int $32"
                   :: "m" (desc), "m" (count), "m" (buffer));

    return count;
}