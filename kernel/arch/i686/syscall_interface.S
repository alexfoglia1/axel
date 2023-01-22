.text
.globl syscall_interface
//Excpected stack:
//
//
//[24 + %esp] = syscall_extra
//[20 + %esp] = syscall_buffer
//[16 + %esp] = syscall_count
//[12 + %esp] = syscall_type
//[8  + %esp] = int_no

syscall_interface:
    push %ebp
    mov %esp, %ebp
    mov 8(%esp), %eax
    
test_32: // test if it is a read
    cmpl $32, %eax
    je  trigger_int_32
    jmp test_33 // it is not a read, test if it is a write
    
trigger_int_32:
    mov 12(%esp), %eax
    mov 16(%esp), %ebx
    mov 20(%esp), %ecx
    mov 24(%esp), %edx
    int $32
    jmp _exit

test_33:
    cmpl $33, %eax
    je  trigger_int_33
    jmp _exit // it is neither read or write, return
    
trigger_int_33:
    mov 12(%esp), %eax
    mov 16(%esp), %ebx
    mov 20(%esp), %ecx
    mov 24(%esp), %edx
    int $33
    jmp _exit
    
_exit:
    ret
