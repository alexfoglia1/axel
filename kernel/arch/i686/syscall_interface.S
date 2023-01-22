.text
.globl syscall_interface
//Excpected stack:
//
//
//[24 + %esp] = syscall_extra
//[20 + %esp] = syscall_count
//[16 + %esp] = syscall_buf
//[12 + %esp] = syscall_type
//[8  + %esp] = int_no

syscall_interface:
    push %ebp
    mov %esp, %ebp
    mov 8(%esp), %eax
    
test_80: // test if it is a read
    cmpl $80, %eax
    je  trigger_int_80
    jmp test_81 // it is not a read, test if it is a write
    
trigger_int_80:
    mov 12(%esp), %eax
    mov 16(%esp), %ebx
    mov 20(%esp), %ecx
    mov 24(%esp), %edx
    int $80
    jmp _exit

test_81:
    cmpl $81, %eax
    je  trigger_int_81
    jmp _exit // it is neither read or write, return
    
trigger_int_81:
    mov 12(%esp), %eax
    mov 16(%esp), %ebx
    mov 20(%esp), %ecx
    mov 24(%esp), %edx
    int $81
    jmp _exit
    
_exit:
    popa
    add $8, %esp
    ret
