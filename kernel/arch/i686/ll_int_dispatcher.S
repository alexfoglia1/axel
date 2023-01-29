.text
.globl ll_int_dispatcher
ll_int_dispatcher:
    pusha
    
    mov %ds, %ax
    push %eax
    
    mov $0x10, %ax
    mov %ax, %ds
    mov %ax, %es
    mov %ax, %fs
    mov %ax, %gs
    
    call hl_int_dispatcher

    mov %eax, -4(%ebp)
    pop %eax
    mov %ax, %ds
    mov %ax, %es
    mov %ax, %fs
    mov %ax, %gs
    
    popa
    add $8, %esp
    movl -4(%ebp), %eax
    sti
    iret
