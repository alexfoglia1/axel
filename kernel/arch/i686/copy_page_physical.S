.text
.globl copy_page_physical
copy_page_physical:
    push %ebx
    pushfl
    cli

    mov 12(%esp), %ebx
    mov 16(%esp), %ecx

    mov %cr0, %edx
    and $0x7FFFFFFF, %edx
    mov %edx, %cr0
    mov $1024, %edx

loop:
    mov (%ebx), %eax
    mov %eax, (%ecx)
    add $4, %ebx
    add $4, %ecx
    decl %edx
    jnz loop

    mov %cr0, %edx
    or $0x80000000, %edx
    mov %edx, %cr0

    popfl
    pop %ebx
    ret
