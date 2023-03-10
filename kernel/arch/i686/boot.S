.set ALIGN,	1<<0
.set MEMINFO,	1<<1
.set FLAGS,	ALIGN | MEMINFO
.set MAGIC,	0x1BADB002
.set CHECKSUM,	-(MAGIC + FLAGS)

.section .multiboot
.align 4
.long MAGIC
.long FLAGS
.long CHECKSUM
.extern kern_end

.section .bss
.align 16
stack_tail:
.skip 16384
stack_head:

.section .text
.global _start
.type _start, @function
_start:
    mov $stack_head, %esp
    push %esp
    push %eax
    push %ebx
    call kernel_main
    cli
1:	hlt
    jmp 1b

.size _start, . - _start
