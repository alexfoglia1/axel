.text

.globl isr0_entry_point
isr0_entry_point:
    cli
    
    push $0 // error code
    push $0 // interrupt no
    jmp ll_int_dispatcher

.globl isr1_entry_point
isr1_entry_point:
    cli
    
    push $0 // error code
    push $1
    jmp ll_int_dispatcher

.globl isr2_entry_point
isr2_entry_point:
    cli
    push $0
    push $2
    jmp ll_int_dispatcher

.globl isr3_entry_point
isr3_entry_point:
    cli
    
    push $0 // error code
    push $3
    jmp ll_int_dispatcher

.globl isr4_entry_point
isr4_entry_point:
    cli
    
    push $0 // error code
    push $4
    jmp ll_int_dispatcher

.globl isr5_entry_point
isr5_entry_point:
    cli
    
    push $0 // error code
    push $5
    jmp ll_int_dispatcher

.globl isr6_entry_point
isr6_entry_point:
    cli
    
    push $0x17
    push $6
    jmp ll_int_dispatcher

.globl isr7_entry_point
isr7_entry_point:
    cli
    
    push $0 // error code
    push $7
    jmp ll_int_dispatcher

.globl isr8_entry_point
isr8_entry_point:
    cli
    
    push $0 // error code
    push $8
    jmp ll_int_dispatcher

.globl isr9_entry_point
isr9_entry_point:
    cli
    
    push $0 // error code
    push $9
    jmp ll_int_dispatcher

.globl isr10_entry_point
isr10_entry_point:
    cli
    
    push $0 // error code
    push $10
    jmp ll_int_dispatcher

.globl isr11_entry_point
isr11_entry_point:
    cli
    
    push $0 // error code
    push $11
    jmp ll_int_dispatcher

.globl isr12_entry_point
isr12_entry_point:
    cli
    
    push $0 // error code
    push $12
    jmp ll_int_dispatcher

.globl isr13_entry_point
isr13_entry_point:
    cli
    
    push $0
    push $13
    jmp ll_int_dispatcher

.globl isr14_entry_point
isr14_entry_point:
    cli
    // Error code from CPU
    
    push $14
    jmp ll_int_dispatcher

.globl isr15_entry_point
isr15_entry_point:
    cli
    
    push $0 // error code
    push $15
    jmp ll_int_dispatcher

.globl isr16_entry_point
isr16_entry_point:
    cli
    
    push $0 // error code
    push $16
    jmp ll_int_dispatcher

.globl isr17_entry_point
isr17_entry_point:
    cli
    // Error code from CPU
    
    push $17
    jmp ll_int_dispatcher

.globl isr18_entry_point
isr18_entry_point:
    cli

    push $0 // error code
    push $18
    jmp ll_int_dispatcher

.globl isr19_entry_point
isr19_entry_point:
    cli
    
    push $0 // error code
    push $19
    jmp ll_int_dispatcher

.globl isr20_entry_point
isr20_entry_point:
    cli
    
    push $0 // error code
    push $20
    jmp ll_int_dispatcher

.globl isr21_entry_point
isr21_entry_point:
    cli
    // Error code from CPU
    
    push $21
    jmp ll_int_dispatcher

.globl isr22_entry_point
isr22_entry_point:
    cli
    
    push $0 // error code
    push $22
    jmp ll_int_dispatcher

.globl isr23_entry_point
isr23_entry_point:
    cli
    
    push $0 // error code
    push $23
    jmp ll_int_dispatcher

.globl isr24_entry_point
isr24_entry_point:
    cli
    
    push $0 // error code
    push $24
    jmp ll_int_dispatcher

.globl isr25_entry_point
isr25_entry_point:
    cli
    
    push $0 // error code
    push $25
    jmp ll_int_dispatcher

.globl isr26_entry_point
isr26_entry_point:
    cli
    
    push $0 // error code
    push $26
    jmp ll_int_dispatcher

.globl isr27_entry_point
isr27_entry_point:
    cli
    
    push $0 // error code
    push $27
    jmp ll_int_dispatcher

.globl isr28_entry_point
isr28_entry_point:
    cli
    
    push $0 // error code
    push $28
    jmp ll_int_dispatcher

.globl isr29_entry_point
isr29_entry_point:
    cli
    
    push $0 // error code
    push $29
    jmp ll_int_dispatcher

.globl isr30_entry_point
isr30_entry_point:
    cli

    push $0 // error code
    push $30
    jmp ll_int_dispatcher

.globl isr31_entry_point
isr31_entry_point:
    cli
    
    push $0 // error code
    push $31
    jmp ll_int_dispatcher

.globl isr80_entry_point
isr80_entry_point:
    cli
    
    push $0 // error code
    push $80
    jmp ll_int_dispatcher

.globl isr81_entry_point
isr81_entry_point:
    cli
    
    push $0 // error code
    push $81
    jmp ll_int_dispatcher

.globl isr82_entry_point
isr82_entry_point:
    cli
    
    push $0 // error code
    push $82
    jmp ll_int_dispatcher

.globl isr83_entry_point
isr83_entry_point:
    cli
    
    push $0 // error code
    push $83
    jmp ll_int_dispatcher
