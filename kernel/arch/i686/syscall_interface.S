.text
.globl syscall_interface
syscall_interface:
    mov 8(%esp), %eax
test_32: // test if it is a read
    cmpl $32, %eax
    je  trigger_int_32
    jmp test_33 // it is not a read, test if it is a write
    
trigger_int_32:
    int $32
    jmp _exit

test_33:
    cmpl $33, %eax
    je  trigger_int_33
    jmp _exit // it is neither read or write, return
    
trigger_int_33:
    push $97
    jmp tty_putchar
    int $33
    jmp _exit
    
_exit:
    push $98
    jmp tty_putchar
    ret
