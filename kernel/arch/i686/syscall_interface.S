.text
.globl syscall_interface
syscall_interface:
    push %ebp
    mov %esp, %ebp
    movl $0, %eax 
    movl 8(%esp), %eax

test_0:
    mov $0, %ebx
    cmp %eax, %ebx
    je  trigger_int_0
    jmp test_1
    
trigger_int_0:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $0
    jmp _exit

test_1:
    mov $1, %ebx
    cmp %eax, %ebx
    je  trigger_int_1
    jmp test_2
    
trigger_int_1:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $1
    jmp _exit

test_2:
    mov $2, %ebx
    cmp %eax, %ebx
    je  trigger_int_2
    jmp test_3
    
trigger_int_2:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $2
    jmp _exit

test_3:
    mov $3, %ebx
    cmp %eax, %ebx
    je  trigger_int_3
    jmp test_4
    
trigger_int_3:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $3
    jmp _exit

test_4:
    mov $4, %ebx
    cmp %eax, %ebx
    je  trigger_int_4
    jmp test_5
    
trigger_int_4:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $4
    jmp _exit

test_5:
    mov $5, %ebx
    cmp %eax, %ebx
    je  trigger_int_5
    jmp test_6
    
trigger_int_5:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $5
    jmp _exit

test_6:
    mov $6, %ebx
    cmp %eax, %ebx
    je  trigger_int_6
    jmp test_7
    
trigger_int_6:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $6
    jmp _exit

test_7:
    mov $7, %ebx
    cmp %eax, %ebx
    je  trigger_int_7
    jmp test_8
    
trigger_int_7:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $7
    jmp _exit

test_8:
    mov $8, %ebx
    cmp %eax, %ebx
    je  trigger_int_8
    jmp test_9
    
trigger_int_8:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $8
    jmp _exit

test_9:
    mov $9, %ebx
    cmp %eax, %ebx
    je  trigger_int_9
    jmp test_10
    
trigger_int_9:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $9
    jmp _exit

test_10:
    mov $10, %ebx
    cmp %eax, %ebx
    je  trigger_int_10
    jmp test_11
    
trigger_int_10:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $10
    jmp _exit

test_11:
    mov $11, %ebx
    cmp %eax, %ebx
    je  trigger_int_11
    jmp test_12
    
trigger_int_11:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $11
    jmp _exit

test_12:
    mov $12, %ebx
    cmp %eax, %ebx
    je  trigger_int_12
    jmp test_13
    
trigger_int_12:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $12
    jmp _exit

test_13:
    mov $13, %ebx
    cmp %eax, %ebx
    je  trigger_int_13
    jmp test_14
    
trigger_int_13:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $13
    jmp _exit

test_14:
    mov $14, %ebx
    cmp %eax, %ebx
    je  trigger_int_14
    jmp test_15
    
trigger_int_14:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $14
    jmp _exit

test_15:
    mov $15, %ebx
    cmp %eax, %ebx
    je  trigger_int_15
    jmp test_16
    
trigger_int_15:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $15
    jmp _exit

test_16:
    mov $16, %ebx
    cmp %eax, %ebx
    je  trigger_int_16
    jmp test_17
    
trigger_int_16:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $16
    jmp _exit

test_17:
    mov $17, %ebx
    cmp %eax, %ebx
    je  trigger_int_17
    jmp test_18
    
trigger_int_17:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $17
    jmp _exit

test_18:
    mov $18, %ebx
    cmp %eax, %ebx
    je  trigger_int_18
    jmp test_19
    
trigger_int_18:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $18
    jmp _exit

test_19:
    mov $19, %ebx
    cmp %eax, %ebx
    je  trigger_int_19
    jmp test_20
    
trigger_int_19:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $19
    jmp _exit

test_20:
    mov $20, %ebx
    cmp %eax, %ebx
    je  trigger_int_20
    jmp test_21
    
trigger_int_20:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $20
    jmp _exit

test_21:
    mov $21, %ebx
    cmp %eax, %ebx
    je  trigger_int_21
    jmp test_22
    
trigger_int_21:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $21
    jmp _exit

test_22:
    mov $22, %ebx
    cmp %eax, %ebx
    je  trigger_int_22
    jmp test_23
    
trigger_int_22:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $22
    jmp _exit

test_23:
    mov $23, %ebx
    cmp %eax, %ebx
    je  trigger_int_23
    jmp test_24
    
trigger_int_23:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $23
    jmp _exit

test_24:
    mov $24, %ebx
    cmp %eax, %ebx
    je  trigger_int_24
    jmp test_25
    
trigger_int_24:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $24
    jmp _exit

test_25:
    mov $25, %ebx
    cmp %eax, %ebx
    je  trigger_int_25
    jmp test_26
    
trigger_int_25:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $25
    jmp _exit

test_26:
    mov $26, %ebx
    cmp %eax, %ebx
    je  trigger_int_26
    jmp test_27
    
trigger_int_26:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $26
    jmp _exit

test_27:
    mov $27, %ebx
    cmp %eax, %ebx
    je  trigger_int_27
    jmp test_28
    
trigger_int_27:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $27
    jmp _exit

test_28:
    mov $28, %ebx
    cmp %eax, %ebx
    je  trigger_int_28
    jmp test_29
    
trigger_int_28:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $28
    jmp _exit

test_29:
    mov $29, %ebx
    cmp %eax, %ebx
    je  trigger_int_29
    jmp test_30
    
trigger_int_29:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $29
    jmp _exit

test_30:
    mov $30, %ebx
    cmp %eax, %ebx
    je  trigger_int_30
    jmp test_31
    
trigger_int_30:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $30
    jmp _exit

test_31:
    mov $31, %ebx
    cmp %eax, %ebx
    je  trigger_int_31
    jmp test_32
    
trigger_int_31:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $31
    jmp _exit

test_32:
    mov $32, %ebx
    cmp %eax, %ebx
    je  trigger_int_32
    jmp test_33
    
trigger_int_32:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    pusha
    int $32
    jmp _exit

test_33:
    mov $33, %ebx
    cmp %eax, %ebx
    je  trigger_int_33
    jmp test_34
    
trigger_int_33:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    pusha
    int $33
    jmp _exit

test_34:
    mov $34, %ebx
    cmp %eax, %ebx
    je  trigger_int_34
    jmp test_35
    
trigger_int_34:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $34
    jmp _exit

test_35:
    mov $35, %ebx
    cmp %eax, %ebx
    je  trigger_int_35
    jmp test_36
    
trigger_int_35:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $35
    jmp _exit

test_36:
    mov $36, %ebx
    cmp %eax, %ebx
    je  trigger_int_36
    jmp test_37
    
trigger_int_36:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $36
    jmp _exit

test_37:
    mov $37, %ebx
    cmp %eax, %ebx
    je  trigger_int_37
    jmp test_38
    
trigger_int_37:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $37
    jmp _exit

test_38:
    mov $38, %ebx
    cmp %eax, %ebx
    je  trigger_int_38
    jmp test_39
    
trigger_int_38:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $38
    jmp _exit

test_39:
    mov $39, %ebx
    cmp %eax, %ebx
    je  trigger_int_39
    jmp test_40
    
trigger_int_39:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $39
    jmp _exit

test_40:
    mov $40, %ebx
    cmp %eax, %ebx
    je  trigger_int_40
    jmp test_41
    
trigger_int_40:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $40
    jmp _exit

test_41:
    mov $41, %ebx
    cmp %eax, %ebx
    je  trigger_int_41
    jmp test_42
    
trigger_int_41:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $41
    jmp _exit

test_42:
    mov $42, %ebx
    cmp %eax, %ebx
    je  trigger_int_42
    jmp test_43
    
trigger_int_42:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $42
    jmp _exit

test_43:
    mov $43, %ebx
    cmp %eax, %ebx
    je  trigger_int_43
    jmp test_44
    
trigger_int_43:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $43
    jmp _exit

test_44:
    mov $44, %ebx
    cmp %eax, %ebx
    je  trigger_int_44
    jmp test_45
    
trigger_int_44:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $44
    jmp _exit

test_45:
    mov $45, %ebx
    cmp %eax, %ebx
    je  trigger_int_45
    jmp test_46
    
trigger_int_45:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $45
    jmp _exit

test_46:
    mov $46, %ebx
    cmp %eax, %ebx
    je  trigger_int_46
    jmp test_47
    
trigger_int_46:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $46
    jmp _exit

test_47:
    mov $47, %ebx
    cmp %eax, %ebx
    je  trigger_int_47
    jmp test_48
    
trigger_int_47:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $47
    jmp _exit

test_48:
    mov $48, %ebx
    cmp %eax, %ebx
    je  trigger_int_48
    jmp test_49
    
trigger_int_48:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $48
    jmp _exit

test_49:
    mov $49, %ebx
    cmp %eax, %ebx
    je  trigger_int_49
    jmp test_50
    
trigger_int_49:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $49
    jmp _exit

test_50:
    mov $50, %ebx
    cmp %eax, %ebx
    je  trigger_int_50
    jmp test_51
    
trigger_int_50:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $50
    jmp _exit

test_51:
    mov $51, %ebx
    cmp %eax, %ebx
    je  trigger_int_51
    jmp test_52
    
trigger_int_51:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $51
    jmp _exit

test_52:
    mov $52, %ebx
    cmp %eax, %ebx
    je  trigger_int_52
    jmp test_53
    
trigger_int_52:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $52
    jmp _exit

test_53:
    mov $53, %ebx
    cmp %eax, %ebx
    je  trigger_int_53
    jmp test_54
    
trigger_int_53:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $53
    jmp _exit

test_54:
    mov $54, %ebx
    cmp %eax, %ebx
    je  trigger_int_54
    jmp test_55
    
trigger_int_54:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $54
    jmp _exit

test_55:
    mov $55, %ebx
    cmp %eax, %ebx
    je  trigger_int_55
    jmp test_56
    
trigger_int_55:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $55
    jmp _exit

test_56:
    mov $56, %ebx
    cmp %eax, %ebx
    je  trigger_int_56
    jmp test_57
    
trigger_int_56:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $56
    jmp _exit

test_57:
    mov $57, %ebx
    cmp %eax, %ebx
    je  trigger_int_57
    jmp test_58
    
trigger_int_57:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $57
    jmp _exit

test_58:
    mov $58, %ebx
    cmp %eax, %ebx
    je  trigger_int_58
    jmp test_59
    
trigger_int_58:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $58
    jmp _exit

test_59:
    mov $59, %ebx
    cmp %eax, %ebx
    je  trigger_int_59
    jmp test_60
    
trigger_int_59:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $59
    jmp _exit

test_60:
    mov $60, %ebx
    cmp %eax, %ebx
    je  trigger_int_60
    jmp test_61
    
trigger_int_60:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $60
    jmp _exit

test_61:
    mov $61, %ebx
    cmp %eax, %ebx
    je  trigger_int_61
    jmp test_62
    
trigger_int_61:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $61
    jmp _exit

test_62:
    mov $62, %ebx
    cmp %eax, %ebx
    je  trigger_int_62
    jmp test_63
    
trigger_int_62:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $62
    jmp _exit

test_63:
    mov $63, %ebx
    cmp %eax, %ebx
    je  trigger_int_63
    jmp test_64
    
trigger_int_63:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $63
    jmp _exit

test_64:
    mov $64, %ebx
    cmp %eax, %ebx
    je  trigger_int_64
    jmp test_65
    
trigger_int_64:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $64
    jmp _exit

test_65:
    mov $65, %ebx
    cmp %eax, %ebx
    je  trigger_int_65
    jmp test_66
    
trigger_int_65:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $65
    jmp _exit

test_66:
    mov $66, %ebx
    cmp %eax, %ebx
    je  trigger_int_66
    jmp test_67
    
trigger_int_66:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $66
    jmp _exit

test_67:
    mov $67, %ebx
    cmp %eax, %ebx
    je  trigger_int_67
    jmp test_68
    
trigger_int_67:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $67
    jmp _exit

test_68:
    mov $68, %ebx
    cmp %eax, %ebx
    je  trigger_int_68
    jmp test_69
    
trigger_int_68:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $68
    jmp _exit

test_69:
    mov $69, %ebx
    cmp %eax, %ebx
    je  trigger_int_69
    jmp test_70
    
trigger_int_69:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $69
    jmp _exit

test_70:
    mov $70, %ebx
    cmp %eax, %ebx
    je  trigger_int_70
    jmp test_71
    
trigger_int_70:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $70
    jmp _exit

test_71:
    mov $71, %ebx
    cmp %eax, %ebx
    je  trigger_int_71
    jmp test_72
    
trigger_int_71:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $71
    jmp _exit

test_72:
    mov $72, %ebx
    cmp %eax, %ebx
    je  trigger_int_72
    jmp test_73
    
trigger_int_72:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $72
    jmp _exit

test_73:
    mov $73, %ebx
    cmp %eax, %ebx
    je  trigger_int_73
    jmp test_74
    
trigger_int_73:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $73
    jmp _exit

test_74:
    mov $74, %ebx
    cmp %eax, %ebx
    je  trigger_int_74
    jmp test_75
    
trigger_int_74:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $74
    jmp _exit

test_75:
    mov $75, %ebx
    cmp %eax, %ebx
    je  trigger_int_75
    jmp test_76
    
trigger_int_75:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $75
    jmp _exit

test_76:
    mov $76, %ebx
    cmp %eax, %ebx
    je  trigger_int_76
    jmp test_77
    
trigger_int_76:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $76
    jmp _exit

test_77:
    mov $77, %ebx
    cmp %eax, %ebx
    je  trigger_int_77
    jmp test_78
    
trigger_int_77:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $77
    jmp _exit

test_78:
    mov $78, %ebx
    cmp %eax, %ebx
    je  trigger_int_78
    jmp test_79
    
trigger_int_78:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $78
    jmp _exit

test_79:
    mov $79, %ebx
    cmp %eax, %ebx
    je  trigger_int_79
    jmp test_80
    
trigger_int_79:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $79
    jmp _exit

test_80:
    mov $80, %ebx
    cmp %eax, %ebx
    je  trigger_int_80
    jmp test_81
    
trigger_int_80:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $80
    jmp _exit

test_81:
    mov $81, %ebx
    cmp %eax, %ebx
    je  trigger_int_81
    jmp test_82
    
trigger_int_81:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $81
    jmp _exit

test_82:
    mov $82, %ebx
    cmp %eax, %ebx
    je  trigger_int_82
    jmp test_83
    
trigger_int_82:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $82
    jmp _exit

test_83:
    mov $83, %ebx
    cmp %eax, %ebx
    je  trigger_int_83
    jmp test_84
    
trigger_int_83:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $83
    jmp _exit

test_84:
    mov $84, %ebx
    cmp %eax, %ebx
    je  trigger_int_84
    jmp test_85
    
trigger_int_84:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $84
    jmp _exit

test_85:
    mov $85, %ebx
    cmp %eax, %ebx
    je  trigger_int_85
    jmp test_86
    
trigger_int_85:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $85
    jmp _exit

test_86:
    mov $86, %ebx
    cmp %eax, %ebx
    je  trigger_int_86
    jmp test_87
    
trigger_int_86:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $86
    jmp _exit

test_87:
    mov $87, %ebx
    cmp %eax, %ebx
    je  trigger_int_87
    jmp test_88
    
trigger_int_87:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $87
    jmp _exit

test_88:
    mov $88, %ebx
    cmp %eax, %ebx
    je  trigger_int_88
    jmp test_89
    
trigger_int_88:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $88
    jmp _exit

test_89:
    mov $89, %ebx
    cmp %eax, %ebx
    je  trigger_int_89
    jmp test_90
    
trigger_int_89:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $89
    jmp _exit

test_90:
    mov $90, %ebx
    cmp %eax, %ebx
    je  trigger_int_90
    jmp test_91
    
trigger_int_90:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $90
    jmp _exit

test_91:
    mov $91, %ebx
    cmp %eax, %ebx
    je  trigger_int_91
    jmp test_92
    
trigger_int_91:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $91
    jmp _exit

test_92:
    mov $92, %ebx
    cmp %eax, %ebx
    je  trigger_int_92
    jmp test_93
    
trigger_int_92:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $92
    jmp _exit

test_93:
    mov $93, %ebx
    cmp %eax, %ebx
    je  trigger_int_93
    jmp test_94
    
trigger_int_93:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $93
    jmp _exit

test_94:
    mov $94, %ebx
    cmp %eax, %ebx
    je  trigger_int_94
    jmp test_95
    
trigger_int_94:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $94
    jmp _exit

test_95:
    mov $95, %ebx
    cmp %eax, %ebx
    je  trigger_int_95
    jmp test_96
    
trigger_int_95:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $95
    jmp _exit

test_96:
    mov $96, %ebx
    cmp %eax, %ebx
    je  trigger_int_96
    jmp test_97
    
trigger_int_96:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $96
    jmp _exit

test_97:
    mov $97, %ebx
    cmp %eax, %ebx
    je  trigger_int_97
    jmp test_98
    
trigger_int_97:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $97
    jmp _exit

test_98:
    mov $98, %ebx
    cmp %eax, %ebx
    je  trigger_int_98
    jmp test_99
    
trigger_int_98:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $98
    jmp _exit

test_99:
    mov $99, %ebx
    cmp %eax, %ebx
    je  trigger_int_99
    jmp test_100
    
trigger_int_99:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $99
    jmp _exit

test_100:
    mov $100, %ebx
    cmp %eax, %ebx
    je  trigger_int_100
    jmp test_101
    
trigger_int_100:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $100
    jmp _exit

test_101:
    mov $101, %ebx
    cmp %eax, %ebx
    je  trigger_int_101
    jmp test_102
    
trigger_int_101:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $101
    jmp _exit

test_102:
    mov $102, %ebx
    cmp %eax, %ebx
    je  trigger_int_102
    jmp test_103
    
trigger_int_102:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $102
    jmp _exit

test_103:
    mov $103, %ebx
    cmp %eax, %ebx
    je  trigger_int_103
    jmp test_104
    
trigger_int_103:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $103
    jmp _exit

test_104:
    mov $104, %ebx
    cmp %eax, %ebx
    je  trigger_int_104
    jmp test_105
    
trigger_int_104:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $104
    jmp _exit

test_105:
    mov $105, %ebx
    cmp %eax, %ebx
    je  trigger_int_105
    jmp test_106
    
trigger_int_105:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $105
    jmp _exit

test_106:
    mov $106, %ebx
    cmp %eax, %ebx
    je  trigger_int_106
    jmp test_107
    
trigger_int_106:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $106
    jmp _exit

test_107:
    mov $107, %ebx
    cmp %eax, %ebx
    je  trigger_int_107
    jmp test_108
    
trigger_int_107:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $107
    jmp _exit

test_108:
    mov $108, %ebx
    cmp %eax, %ebx
    je  trigger_int_108
    jmp test_109
    
trigger_int_108:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $108
    jmp _exit

test_109:
    mov $109, %ebx
    cmp %eax, %ebx
    je  trigger_int_109
    jmp test_110
    
trigger_int_109:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $109
    jmp _exit

test_110:
    mov $110, %ebx
    cmp %eax, %ebx
    je  trigger_int_110
    jmp test_111
    
trigger_int_110:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $110
    jmp _exit

test_111:
    mov $111, %ebx
    cmp %eax, %ebx
    je  trigger_int_111
    jmp test_112
    
trigger_int_111:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $111
    jmp _exit

test_112:
    mov $112, %ebx
    cmp %eax, %ebx
    je  trigger_int_112
    jmp test_113
    
trigger_int_112:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $112
    jmp _exit

test_113:
    mov $113, %ebx
    cmp %eax, %ebx
    je  trigger_int_113
    jmp test_114
    
trigger_int_113:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $113
    jmp _exit

test_114:
    mov $114, %ebx
    cmp %eax, %ebx
    je  trigger_int_114
    jmp test_115
    
trigger_int_114:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $114
    jmp _exit

test_115:
    mov $115, %ebx
    cmp %eax, %ebx
    je  trigger_int_115
    jmp test_116
    
trigger_int_115:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $115
    jmp _exit

test_116:
    mov $116, %ebx
    cmp %eax, %ebx
    je  trigger_int_116
    jmp test_117
    
trigger_int_116:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $116
    jmp _exit

test_117:
    mov $117, %ebx
    cmp %eax, %ebx
    je  trigger_int_117
    jmp test_118
    
trigger_int_117:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $117
    jmp _exit

test_118:
    mov $118, %ebx
    cmp %eax, %ebx
    je  trigger_int_118
    jmp test_119
    
trigger_int_118:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $118
    jmp _exit

test_119:
    mov $119, %ebx
    cmp %eax, %ebx
    je  trigger_int_119
    jmp test_120
    
trigger_int_119:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $119
    jmp _exit

test_120:
    mov $120, %ebx
    cmp %eax, %ebx
    je  trigger_int_120
    jmp test_121
    
trigger_int_120:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $120
    jmp _exit

test_121:
    mov $121, %ebx
    cmp %eax, %ebx
    je  trigger_int_121
    jmp test_122
    
trigger_int_121:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $121
    jmp _exit

test_122:
    mov $122, %ebx
    cmp %eax, %ebx
    je  trigger_int_122
    jmp test_123
    
trigger_int_122:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $122
    jmp _exit

test_123:
    mov $123, %ebx
    cmp %eax, %ebx
    je  trigger_int_123
    jmp test_124
    
trigger_int_123:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $123
    jmp _exit

test_124:
    mov $124, %ebx
    cmp %eax, %ebx
    je  trigger_int_124
    jmp test_125
    
trigger_int_124:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $124
    jmp _exit

test_125:
    mov $125, %ebx
    cmp %eax, %ebx
    je  trigger_int_125
    jmp test_126
    
trigger_int_125:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $125
    jmp _exit

test_126:
    mov $126, %ebx
    cmp %eax, %ebx
    je  trigger_int_126
    jmp test_127
    
trigger_int_126:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $126
    jmp _exit

test_127:
    mov $127, %ebx
    cmp %eax, %ebx
    je  trigger_int_127
    jmp test_128
    
trigger_int_127:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $127
    jmp _exit

test_128:
    mov $128, %ebx
    cmp %eax, %ebx
    je  trigger_int_128
    jmp test_129
    
trigger_int_128:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $128
    jmp _exit

test_129:
    mov $129, %ebx
    cmp %eax, %ebx
    je  trigger_int_129
    jmp test_130
    
trigger_int_129:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $129
    jmp _exit

test_130:
    mov $130, %ebx
    cmp %eax, %ebx
    je  trigger_int_130
    jmp test_131
    
trigger_int_130:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $130
    jmp _exit

test_131:
    mov $131, %ebx
    cmp %eax, %ebx
    je  trigger_int_131
    jmp test_132
    
trigger_int_131:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $131
    jmp _exit

test_132:
    mov $132, %ebx
    cmp %eax, %ebx
    je  trigger_int_132
    jmp test_133
    
trigger_int_132:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $132
    jmp _exit

test_133:
    mov $133, %ebx
    cmp %eax, %ebx
    je  trigger_int_133
    jmp test_134
    
trigger_int_133:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $133
    jmp _exit

test_134:
    mov $134, %ebx
    cmp %eax, %ebx
    je  trigger_int_134
    jmp test_135
    
trigger_int_134:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $134
    jmp _exit

test_135:
    mov $135, %ebx
    cmp %eax, %ebx
    je  trigger_int_135
    jmp test_136
    
trigger_int_135:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $135
    jmp _exit

test_136:
    mov $136, %ebx
    cmp %eax, %ebx
    je  trigger_int_136
    jmp test_137
    
trigger_int_136:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $136
    jmp _exit

test_137:
    mov $137, %ebx
    cmp %eax, %ebx
    je  trigger_int_137
    jmp test_138
    
trigger_int_137:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $137
    jmp _exit

test_138:
    mov $138, %ebx
    cmp %eax, %ebx
    je  trigger_int_138
    jmp test_139
    
trigger_int_138:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $138
    jmp _exit

test_139:
    mov $139, %ebx
    cmp %eax, %ebx
    je  trigger_int_139
    jmp test_140
    
trigger_int_139:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $139
    jmp _exit

test_140:
    mov $140, %ebx
    cmp %eax, %ebx
    je  trigger_int_140
    jmp test_141
    
trigger_int_140:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $140
    jmp _exit

test_141:
    mov $141, %ebx
    cmp %eax, %ebx
    je  trigger_int_141
    jmp test_142
    
trigger_int_141:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $141
    jmp _exit

test_142:
    mov $142, %ebx
    cmp %eax, %ebx
    je  trigger_int_142
    jmp test_143
    
trigger_int_142:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $142
    jmp _exit

test_143:
    mov $143, %ebx
    cmp %eax, %ebx
    je  trigger_int_143
    jmp test_144
    
trigger_int_143:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $143
    jmp _exit

test_144:
    mov $144, %ebx
    cmp %eax, %ebx
    je  trigger_int_144
    jmp test_145
    
trigger_int_144:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $144
    jmp _exit

test_145:
    mov $145, %ebx
    cmp %eax, %ebx
    je  trigger_int_145
    jmp test_146
    
trigger_int_145:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $145
    jmp _exit

test_146:
    mov $146, %ebx
    cmp %eax, %ebx
    je  trigger_int_146
    jmp test_147
    
trigger_int_146:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $146
    jmp _exit

test_147:
    mov $147, %ebx
    cmp %eax, %ebx
    je  trigger_int_147
    jmp test_148
    
trigger_int_147:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $147
    jmp _exit

test_148:
    mov $148, %ebx
    cmp %eax, %ebx
    je  trigger_int_148
    jmp test_149
    
trigger_int_148:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $148
    jmp _exit

test_149:
    mov $149, %ebx
    cmp %eax, %ebx
    je  trigger_int_149
    jmp test_150
    
trigger_int_149:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $149
    jmp _exit

test_150:
    mov $150, %ebx
    cmp %eax, %ebx
    je  trigger_int_150
    jmp test_151
    
trigger_int_150:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $150
    jmp _exit

test_151:
    mov $151, %ebx
    cmp %eax, %ebx
    je  trigger_int_151
    jmp test_152
    
trigger_int_151:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $151
    jmp _exit

test_152:
    mov $152, %ebx
    cmp %eax, %ebx
    je  trigger_int_152
    jmp test_153
    
trigger_int_152:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $152
    jmp _exit

test_153:
    mov $153, %ebx
    cmp %eax, %ebx
    je  trigger_int_153
    jmp test_154
    
trigger_int_153:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $153
    jmp _exit

test_154:
    mov $154, %ebx
    cmp %eax, %ebx
    je  trigger_int_154
    jmp test_155
    
trigger_int_154:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $154
    jmp _exit

test_155:
    mov $155, %ebx
    cmp %eax, %ebx
    je  trigger_int_155
    jmp test_156
    
trigger_int_155:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $155
    jmp _exit

test_156:
    mov $156, %ebx
    cmp %eax, %ebx
    je  trigger_int_156
    jmp test_157
    
trigger_int_156:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $156
    jmp _exit

test_157:
    mov $157, %ebx
    cmp %eax, %ebx
    je  trigger_int_157
    jmp test_158
    
trigger_int_157:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $157
    jmp _exit

test_158:
    mov $158, %ebx
    cmp %eax, %ebx
    je  trigger_int_158
    jmp test_159
    
trigger_int_158:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $158
    jmp _exit

test_159:
    mov $159, %ebx
    cmp %eax, %ebx
    je  trigger_int_159
    jmp test_160
    
trigger_int_159:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $159
    jmp _exit

test_160:
    mov $160, %ebx
    cmp %eax, %ebx
    je  trigger_int_160
    jmp test_161
    
trigger_int_160:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $160
    jmp _exit

test_161:
    mov $161, %ebx
    cmp %eax, %ebx
    je  trigger_int_161
    jmp test_162
    
trigger_int_161:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $161
    jmp _exit

test_162:
    mov $162, %ebx
    cmp %eax, %ebx
    je  trigger_int_162
    jmp test_163
    
trigger_int_162:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $162
    jmp _exit

test_163:
    mov $163, %ebx
    cmp %eax, %ebx
    je  trigger_int_163
    jmp test_164
    
trigger_int_163:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $163
    jmp _exit

test_164:
    mov $164, %ebx
    cmp %eax, %ebx
    je  trigger_int_164
    jmp test_165
    
trigger_int_164:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $164
    jmp _exit

test_165:
    mov $165, %ebx
    cmp %eax, %ebx
    je  trigger_int_165
    jmp test_166
    
trigger_int_165:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $165
    jmp _exit

test_166:
    mov $166, %ebx
    cmp %eax, %ebx
    je  trigger_int_166
    jmp test_167
    
trigger_int_166:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $166
    jmp _exit

test_167:
    mov $167, %ebx
    cmp %eax, %ebx
    je  trigger_int_167
    jmp test_168
    
trigger_int_167:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $167
    jmp _exit

test_168:
    mov $168, %ebx
    cmp %eax, %ebx
    je  trigger_int_168
    jmp test_169
    
trigger_int_168:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $168
    jmp _exit

test_169:
    mov $169, %ebx
    cmp %eax, %ebx
    je  trigger_int_169
    jmp test_170
    
trigger_int_169:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $169
    jmp _exit

test_170:
    mov $170, %ebx
    cmp %eax, %ebx
    je  trigger_int_170
    jmp test_171
    
trigger_int_170:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $170
    jmp _exit

test_171:
    mov $171, %ebx
    cmp %eax, %ebx
    je  trigger_int_171
    jmp test_172
    
trigger_int_171:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $171
    jmp _exit

test_172:
    mov $172, %ebx
    cmp %eax, %ebx
    je  trigger_int_172
    jmp test_173
    
trigger_int_172:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $172
    jmp _exit

test_173:
    mov $173, %ebx
    cmp %eax, %ebx
    je  trigger_int_173
    jmp test_174
    
trigger_int_173:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $173
    jmp _exit

test_174:
    mov $174, %ebx
    cmp %eax, %ebx
    je  trigger_int_174
    jmp test_175
    
trigger_int_174:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $174
    jmp _exit

test_175:
    mov $175, %ebx
    cmp %eax, %ebx
    je  trigger_int_175
    jmp test_176
    
trigger_int_175:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $175
    jmp _exit

test_176:
    mov $176, %ebx
    cmp %eax, %ebx
    je  trigger_int_176
    jmp test_177
    
trigger_int_176:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $176
    jmp _exit

test_177:
    mov $177, %ebx
    cmp %eax, %ebx
    je  trigger_int_177
    jmp test_178
    
trigger_int_177:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $177
    jmp _exit

test_178:
    mov $178, %ebx
    cmp %eax, %ebx
    je  trigger_int_178
    jmp test_179
    
trigger_int_178:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $178
    jmp _exit

test_179:
    mov $179, %ebx
    cmp %eax, %ebx
    je  trigger_int_179
    jmp test_180
    
trigger_int_179:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $179
    jmp _exit

test_180:
    mov $180, %ebx
    cmp %eax, %ebx
    je  trigger_int_180
    jmp test_181
    
trigger_int_180:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $180
    jmp _exit

test_181:
    mov $181, %ebx
    cmp %eax, %ebx
    je  trigger_int_181
    jmp test_182
    
trigger_int_181:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $181
    jmp _exit

test_182:
    mov $182, %ebx
    cmp %eax, %ebx
    je  trigger_int_182
    jmp test_183
    
trigger_int_182:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $182
    jmp _exit

test_183:
    mov $183, %ebx
    cmp %eax, %ebx
    je  trigger_int_183
    jmp test_184
    
trigger_int_183:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $183
    jmp _exit

test_184:
    mov $184, %ebx
    cmp %eax, %ebx
    je  trigger_int_184
    jmp test_185
    
trigger_int_184:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $184
    jmp _exit

test_185:
    mov $185, %ebx
    cmp %eax, %ebx
    je  trigger_int_185
    jmp test_186
    
trigger_int_185:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $185
    jmp _exit

test_186:
    mov $186, %ebx
    cmp %eax, %ebx
    je  trigger_int_186
    jmp test_187
    
trigger_int_186:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $186
    jmp _exit

test_187:
    mov $187, %ebx
    cmp %eax, %ebx
    je  trigger_int_187
    jmp test_188
    
trigger_int_187:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $187
    jmp _exit

test_188:
    mov $188, %ebx
    cmp %eax, %ebx
    je  trigger_int_188
    jmp test_189
    
trigger_int_188:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $188
    jmp _exit

test_189:
    mov $189, %ebx
    cmp %eax, %ebx
    je  trigger_int_189
    jmp test_190
    
trigger_int_189:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $189
    jmp _exit

test_190:
    mov $190, %ebx
    cmp %eax, %ebx
    je  trigger_int_190
    jmp test_191
    
trigger_int_190:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $190
    jmp _exit

test_191:
    mov $191, %ebx
    cmp %eax, %ebx
    je  trigger_int_191
    jmp test_192
    
trigger_int_191:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $191
    jmp _exit

test_192:
    mov $192, %ebx
    cmp %eax, %ebx
    je  trigger_int_192
    jmp test_193
    
trigger_int_192:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $192
    jmp _exit

test_193:
    mov $193, %ebx
    cmp %eax, %ebx
    je  trigger_int_193
    jmp test_194
    
trigger_int_193:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $193
    jmp _exit

test_194:
    mov $194, %ebx
    cmp %eax, %ebx
    je  trigger_int_194
    jmp test_195
    
trigger_int_194:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $194
    jmp _exit

test_195:
    mov $195, %ebx
    cmp %eax, %ebx
    je  trigger_int_195
    jmp test_196
    
trigger_int_195:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $195
    jmp _exit

test_196:
    mov $196, %ebx
    cmp %eax, %ebx
    je  trigger_int_196
    jmp test_197
    
trigger_int_196:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $196
    jmp _exit

test_197:
    mov $197, %ebx
    cmp %eax, %ebx
    je  trigger_int_197
    jmp test_198
    
trigger_int_197:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $197
    jmp _exit

test_198:
    mov $198, %ebx
    cmp %eax, %ebx
    je  trigger_int_198
    jmp test_199
    
trigger_int_198:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $198
    jmp _exit

test_199:
    mov $199, %ebx
    cmp %eax, %ebx
    je  trigger_int_199
    jmp test_200
    
trigger_int_199:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $199
    jmp _exit

test_200:
    mov $200, %ebx
    cmp %eax, %ebx
    je  trigger_int_200
    jmp test_201
    
trigger_int_200:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $200
    jmp _exit

test_201:
    mov $201, %ebx
    cmp %eax, %ebx
    je  trigger_int_201
    jmp test_202
    
trigger_int_201:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $201
    jmp _exit

test_202:
    mov $202, %ebx
    cmp %eax, %ebx
    je  trigger_int_202
    jmp test_203
    
trigger_int_202:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $202
    jmp _exit

test_203:
    mov $203, %ebx
    cmp %eax, %ebx
    je  trigger_int_203
    jmp test_204
    
trigger_int_203:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $203
    jmp _exit

test_204:
    mov $204, %ebx
    cmp %eax, %ebx
    je  trigger_int_204
    jmp test_205
    
trigger_int_204:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $204
    jmp _exit

test_205:
    mov $205, %ebx
    cmp %eax, %ebx
    je  trigger_int_205
    jmp test_206
    
trigger_int_205:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $205
    jmp _exit

test_206:
    mov $206, %ebx
    cmp %eax, %ebx
    je  trigger_int_206
    jmp test_207
    
trigger_int_206:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $206
    jmp _exit

test_207:
    mov $207, %ebx
    cmp %eax, %ebx
    je  trigger_int_207
    jmp test_208
    
trigger_int_207:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $207
    jmp _exit

test_208:
    mov $208, %ebx
    cmp %eax, %ebx
    je  trigger_int_208
    jmp test_209
    
trigger_int_208:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $208
    jmp _exit

test_209:
    mov $209, %ebx
    cmp %eax, %ebx
    je  trigger_int_209
    jmp test_210
    
trigger_int_209:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $209
    jmp _exit

test_210:
    mov $210, %ebx
    cmp %eax, %ebx
    je  trigger_int_210
    jmp test_211
    
trigger_int_210:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $210
    jmp _exit

test_211:
    mov $211, %ebx
    cmp %eax, %ebx
    je  trigger_int_211
    jmp test_212
    
trigger_int_211:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $211
    jmp _exit

test_212:
    mov $212, %ebx
    cmp %eax, %ebx
    je  trigger_int_212
    jmp test_213
    
trigger_int_212:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $212
    jmp _exit

test_213:
    mov $213, %ebx
    cmp %eax, %ebx
    je  trigger_int_213
    jmp test_214
    
trigger_int_213:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $213
    jmp _exit

test_214:
    mov $214, %ebx
    cmp %eax, %ebx
    je  trigger_int_214
    jmp test_215
    
trigger_int_214:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $214
    jmp _exit

test_215:
    mov $215, %ebx
    cmp %eax, %ebx
    je  trigger_int_215
    jmp test_216
    
trigger_int_215:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $215
    jmp _exit

test_216:
    mov $216, %ebx
    cmp %eax, %ebx
    je  trigger_int_216
    jmp test_217
    
trigger_int_216:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $216
    jmp _exit

test_217:
    mov $217, %ebx
    cmp %eax, %ebx
    je  trigger_int_217
    jmp test_218
    
trigger_int_217:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $217
    jmp _exit

test_218:
    mov $218, %ebx
    cmp %eax, %ebx
    je  trigger_int_218
    jmp test_219
    
trigger_int_218:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $218
    jmp _exit

test_219:
    mov $219, %ebx
    cmp %eax, %ebx
    je  trigger_int_219
    jmp test_220
    
trigger_int_219:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $219
    jmp _exit

test_220:
    mov $220, %ebx
    cmp %eax, %ebx
    je  trigger_int_220
    jmp test_221
    
trigger_int_220:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $220
    jmp _exit

test_221:
    mov $221, %ebx
    cmp %eax, %ebx
    je  trigger_int_221
    jmp test_222
    
trigger_int_221:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $221
    jmp _exit

test_222:
    mov $222, %ebx
    cmp %eax, %ebx
    je  trigger_int_222
    jmp test_223
    
trigger_int_222:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $222
    jmp _exit

test_223:
    mov $223, %ebx
    cmp %eax, %ebx
    je  trigger_int_223
    jmp test_224
    
trigger_int_223:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $223
    jmp _exit

test_224:
    mov $224, %ebx
    cmp %eax, %ebx
    je  trigger_int_224
    jmp test_225
    
trigger_int_224:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $224
    jmp _exit

test_225:
    mov $225, %ebx
    cmp %eax, %ebx
    je  trigger_int_225
    jmp test_226
    
trigger_int_225:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $225
    jmp _exit

test_226:
    mov $226, %ebx
    cmp %eax, %ebx
    je  trigger_int_226
    jmp test_227
    
trigger_int_226:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $226
    jmp _exit

test_227:
    mov $227, %ebx
    cmp %eax, %ebx
    je  trigger_int_227
    jmp test_228
    
trigger_int_227:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $227
    jmp _exit

test_228:
    mov $228, %ebx
    cmp %eax, %ebx
    je  trigger_int_228
    jmp test_229
    
trigger_int_228:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $228
    jmp _exit

test_229:
    mov $229, %ebx
    cmp %eax, %ebx
    je  trigger_int_229
    jmp test_230
    
trigger_int_229:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $229
    jmp _exit

test_230:
    mov $230, %ebx
    cmp %eax, %ebx
    je  trigger_int_230
    jmp test_231
    
trigger_int_230:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $230
    jmp _exit

test_231:
    mov $231, %ebx
    cmp %eax, %ebx
    je  trigger_int_231
    jmp test_232
    
trigger_int_231:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $231
    jmp _exit

test_232:
    mov $232, %ebx
    cmp %eax, %ebx
    je  trigger_int_232
    jmp test_233
    
trigger_int_232:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $232
    jmp _exit

test_233:
    mov $233, %ebx
    cmp %eax, %ebx
    je  trigger_int_233
    jmp test_234
    
trigger_int_233:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $233
    jmp _exit

test_234:
    mov $234, %ebx
    cmp %eax, %ebx
    je  trigger_int_234
    jmp test_235
    
trigger_int_234:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $234
    jmp _exit

test_235:
    mov $235, %ebx
    cmp %eax, %ebx
    je  trigger_int_235
    jmp test_236
    
trigger_int_235:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $235
    jmp _exit

test_236:
    mov $236, %ebx
    cmp %eax, %ebx
    je  trigger_int_236
    jmp test_237
    
trigger_int_236:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $236
    jmp _exit

test_237:
    mov $237, %ebx
    cmp %eax, %ebx
    je  trigger_int_237
    jmp test_238
    
trigger_int_237:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $237
    jmp _exit

test_238:
    mov $238, %ebx
    cmp %eax, %ebx
    je  trigger_int_238
    jmp test_239
    
trigger_int_238:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $238
    jmp _exit

test_239:
    mov $239, %ebx
    cmp %eax, %ebx
    je  trigger_int_239
    jmp test_240
    
trigger_int_239:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $239
    jmp _exit

test_240:
    mov $240, %ebx
    cmp %eax, %ebx
    je  trigger_int_240
    jmp test_241
    
trigger_int_240:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $240
    jmp _exit

test_241:
    mov $241, %ebx
    cmp %eax, %ebx
    je  trigger_int_241
    jmp test_242
    
trigger_int_241:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $241
    jmp _exit

test_242:
    mov $242, %ebx
    cmp %eax, %ebx
    je  trigger_int_242
    jmp test_243
    
trigger_int_242:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $242
    jmp _exit

test_243:
    mov $243, %ebx
    cmp %eax, %ebx
    je  trigger_int_243
    jmp test_244
    
trigger_int_243:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $243
    jmp _exit

test_244:
    mov $244, %ebx
    cmp %eax, %ebx
    je  trigger_int_244
    jmp test_245
    
trigger_int_244:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $244
    jmp _exit

test_245:
    mov $245, %ebx
    cmp %eax, %ebx
    je  trigger_int_245
    jmp test_246
    
trigger_int_245:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $245
    jmp _exit

test_246:
    mov $246, %ebx
    cmp %eax, %ebx
    je  trigger_int_246
    jmp test_247
    
trigger_int_246:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $246
    jmp _exit

test_247:
    mov $247, %ebx
    cmp %eax, %ebx
    je  trigger_int_247
    jmp test_248
    
trigger_int_247:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $247
    jmp _exit

test_248:
    mov $248, %ebx
    cmp %eax, %ebx
    je  trigger_int_248
    jmp test_249
    
trigger_int_248:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $248
    jmp _exit

test_249:
    mov $249, %ebx
    cmp %eax, %ebx
    je  trigger_int_249
    jmp test_250
    
trigger_int_249:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $249
    jmp _exit

test_250:
    mov $250, %ebx
    cmp %eax, %ebx
    je  trigger_int_250
    jmp test_251
    
trigger_int_250:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $250
    jmp _exit

test_251:
    mov $251, %ebx
    cmp %eax, %ebx
    je  trigger_int_251
    jmp test_252
    
trigger_int_251:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $251
    jmp _exit

test_252:
    mov $252, %ebx
    cmp %eax, %ebx
    je  trigger_int_252
    jmp test_253
    
trigger_int_252:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $252
    jmp _exit

test_253:
    mov $253, %ebx
    cmp %eax, %ebx
    je  trigger_int_253
    jmp test_254
    
trigger_int_253:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $253
    jmp _exit

test_254:
    mov $254, %ebx
    cmp %eax, %ebx
    je  trigger_int_254
    jmp test_255
    
trigger_int_254:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $254
    jmp _exit

test_255:
    mov $255, %ebx
    cmp %eax, %ebx
    je  trigger_int_255
    jmp _exit
    
trigger_int_255:
    movl 12(%esp), %eax  // eax = syscall type
    movl 16(%esp), %ebx  // ebx = size of buffer used by actual system call
    movl 20(%esp), %ecx  // ecx = ptr to buffer used by actual system call
    movl 24(%esp), %edx  // edx = extra argument used by actual system call
    
    int $255
    jmp _exit

_exit:
    mov %ebp, %esp
    pop %ebp
    ret
