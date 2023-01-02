.global cpuid_supported
.type cpuid_supported, @function
cpuid_supported:
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
