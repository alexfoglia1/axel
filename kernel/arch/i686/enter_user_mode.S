.text
.globl enter_user_mode
enter_user_mode:
    cli
    movw $0x23, %ax
    movw %ax, %ds
    movw %ax, %es
    movw %ax, %fs
    movw %ax, %gs
    
    movl %esp, %eax // save current stack pointer
    
    // populate the stack as if we are returning from an exception handler called in user mode
    // excpected stack:
    // [SS]
    // [ESP]
    // [EFLAGS]
    // [CS]
    // [EIP]
    
    pushl $0x23 // stack segment selector = 0x20 | 0x03 (GDT entry user data segment)
    pushl %eax  // stack pointer = old stack pointer 
    pushf       // push EFLAGS register
    
    popl %eax
    or $0x200, %eax
    pushl %eax // repush EFLAGS with the interrupt flag IF set to 1
    
    pushl $0x1B // code segment selector = 0x18 | 0x03 (GDT entry user code segment)
    pushl $user_mode_entry_point
    
    // now simulate return from interrupt service routine!
    iret

    
    
     
