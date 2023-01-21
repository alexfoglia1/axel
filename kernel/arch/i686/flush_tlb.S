.text
.globl flush_tlb
flush_tlb:
    mov %cr3, %eax
    mov %eax, %cr3
