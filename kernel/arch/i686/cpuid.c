#include <kernel/cpuid.h>
#include <cpuid.h> // gcc __cpuid


int
cpuid_get_model(int reg)
{
    int ebx;
    int edx;
    int ecx;
    int unused;

    __cpuid(0, unused, ebx, edx, ecx);
    
    if (0 == reg)
    {
        return ebx;
    }
    else if (1 == reg)
    {
        return ecx;
    }
    else
    {
        return edx;
    }
}
