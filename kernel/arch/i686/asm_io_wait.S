.global asm_io_wait
.type asm_io_wait, @function
asm_io_wait:
   pusha

   push $0x28
   push .next
   retf

.next:
   nop
   nop
   nop
   nop
   pause

   push $0x28
   push .next2
   retf

.next2:
   nop
   nop
   nop
   nop
   pause

   push $0x28
   push .next3
   retf

.next3:
   nop
   nop
   nop
   nop
   pause

   push $0x28
   push .next4
   retf

.next4:

   outb %al, $128
   outb %al, $128

   popa
   ret