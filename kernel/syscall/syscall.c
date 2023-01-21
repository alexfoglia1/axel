#include <syscall/syscall.h>

#include <common/utils.h>

#include <kernel/arch/idt.h>
#include <kernel/arch/gdt.h>

void
syscall_init()
{
    idt_add_entry(SYSCALL_INT_NO_READ,  &sys_read,  PRESENT | TRP_GATE);
    idt_add_entry(SYSCALL_INT_NO_WRITE, &sys_write, PRESENT | TRP_GATE);

    __slog__(COM1_PORT, "Syscall mapped\n");
}