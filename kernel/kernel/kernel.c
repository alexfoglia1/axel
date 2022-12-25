#include <stdio.h>
#include <errno.h>
#include <kernel/tty.h>

#include <kernel/multiboot.h>

void
_main(multiboot_info_t* mbd, uint32_t magic)
{
	errno = ENOERR;
	tty_init();

	printf("MULTIBOOT MAGIC NUMBER(%u)\n", magic);
	

}
