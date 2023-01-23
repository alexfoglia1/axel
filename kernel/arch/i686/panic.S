.text
.globl panic
panic:
    push %ebp
    mov %esp, %ebp
    mov 8(%esp), %eax
    
    push %eax
    call tty_putstring
    cli
    hlt

