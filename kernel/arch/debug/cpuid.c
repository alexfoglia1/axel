#include <kernel/arch/cpuid.h>
#include <cpuid.h> // gcc __cpuid


void
cpuid_get_model(int* eebx, int* eecx, int* eedx)
{
    int ebx, edx, ecx;
    int unused;

    __cpuid(0, unused, ebx, edx, ecx);
    
    *eebx = ebx;
    *eecx = ecx;
    *eedx = edx;
}
