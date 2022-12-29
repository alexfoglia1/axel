.global asm_cpuid_supported
.type asm_cpuid_supported, @function
asm_cpuid_supported:
    pushfl     
    pushfl
    xor $0x00200000,(%esp)
    popfl
    pushfl
    pop %eax
    xor %eax,(%esp)
    popfl
    and $0x00200000,%eax
    ret
