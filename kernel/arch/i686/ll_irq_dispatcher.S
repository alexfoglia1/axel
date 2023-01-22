.text
.globl ll_irq_dispatcher
ll_irq_dispatcher:
    pusha
    
    mov %ds, %ax
    push %eax
    
    mov $0x10, %ax
    mov %ax, %ds
    mov %ax, %es
    mov %ax, %fs
    mov %ax, %gs
    
    call hl_irq_dispatcher
    
    pop %eax
    mov %ax, %ds
    mov %ax, %es
    mov %ax, %fs
    mov %ax, %gs
    
    popa
    add $8, %esp
    sti
    iret
