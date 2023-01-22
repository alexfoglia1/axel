.text

.globl irq0_entry_point
irq0_entry_point:
    cli
    
    push $0  // error code
    push $32 // interrupt no
    jmp ll_irq_dispatcher
    
.globl irq1_entry_point
irq1_entry_point:
    cli
    
    push $0  // error code
    push $33 // interrupt no
    jmp ll_irq_dispatcher
    
    
.globl irq2_entry_point
irq2_entry_point:
    cli
    
    push $0  // error code
    push $34 // interrupt no
    jmp ll_irq_dispatcher
    
.globl irq3_entry_point
irq3_entry_point:
    cli
    
    push $0  // error code
    push $35 // interrupt no
    jmp ll_irq_dispatcher
    
.globl irq4_entry_point
irq4_entry_point:
    cli
    
    push $0  // error code
    push $36 // interrupt no
    jmp ll_irq_dispatcher
    
.globl irq5_entry_point
irq5_entry_point:
    cli
    
    push $0  // error code
    push $37 // interrupt no
    jmp ll_irq_dispatcher
    
.globl irq6_entry_point
irq6_entry_point:
    cli
    
    push $0  // error code
    push $38 // interrupt no
    jmp ll_irq_dispatcher
    
.globl irq7_entry_point
irq7_entry_point:
    cli
    
    push $0  // error code
    push $39 // interrupt no
    jmp ll_irq_dispatcher
    
.globl irq8_entry_point
irq8_entry_point:
    cli
    
    push $0  // error code
    push $40 // interrupt no
    jmp ll_irq_dispatcher
    
.globl irq9_entry_point
irq9_entry_point:
    cli
    
    push $0  // error code
    push $41 // interrupt no
    jmp ll_irq_dispatcher
    
.globl irq10_entry_point
irq10_entry_point:
    cli
    
    push $0  // error code
    push $42 // interrupt no
    jmp ll_irq_dispatcher
    
.globl irq11_entry_point
irq11_entry_point:
    cli
    
    push $0  // error code
    push $43 // interrupt no
    jmp ll_irq_dispatcher
    
 .globl irq12_entry_point
irq12_entry_point:
    cli
    
    push $0  // error code
    push $44 // interrupt no
    jmp ll_irq_dispatcher
    
 .globl irq13_entry_point
irq13_entry_point:
    cli
    
    push $0  // error code
    push $45 // interrupt no
    jmp ll_irq_dispatcher
    
.globl irq14_entry_point
irq14_entry_point:
    cli
    
    push $0  // error code
    push $46 // interrupt no
    jmp ll_irq_dispatcher
    
.globl irq15_entry_point
irq15_entry_point:
    cli
    
    push $0  // error code
    push $47 // interrupt no
    jmp ll_irq_dispatcher
