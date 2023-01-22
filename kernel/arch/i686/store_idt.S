.text
.globl store_idt
store_idt:
    movl 4(%esp), %eax
    lidt (%eax)
    ret
