.text
.globl store_gdt
store_gdt:
    movl 4(%esp), %eax
    lgdt (%eax)
    
    movw $0x10, %ax
    movw %ax, %ds
    movw %ax, %es
    movw %ax, %fs
    movw %ax, %gs
    movw %ax, %ss
    jmp $0x08,$flush
    
flush:
    ret

.globl store_tss
store_tss:
    movw $0x2B, %ax
    ltr %ax
    ret