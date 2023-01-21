.text
.globl context_switch
context_switch:
    push %ebp
    mov %esp, %ebp
    mov 8(%esp),  %eax // new task eip
    mov 12(%esp), %ebx // new task esp
    mov 16(%esp), %ecx // new task ebp
    mov 20(%esp), %edx // new task page directory
    cli

    
    mov %ebx, %esp // current stack pointer = new task stack pointer
    mov %ecx, %ebp // current base pointer = new task base pointer
    mov %edx, %cr3 // current page directory = new task page directory
    mov %eax, %ebx // ebx = new task eip
    mov $0xDEADC0DE, %eax // set return value equals to a well known constant
    sti
    
    jmp %ebx //jump to new task, if I am child eip = ebx = return from here = return 0xDEADC0DE
    
