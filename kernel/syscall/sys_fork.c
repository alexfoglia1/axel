#include <syscall/syscall.h>

#include <kernel/multitasking.h>

#include <kernel/arch/tty.h>
#include <kernel/arch/io.h>

int
sys_fork(interrupt_stack_frame_t frame)
{
    printk("sys_fork()\n");
    sti();
    int tid = tasking_fork();
    cli();

    return tid;
}