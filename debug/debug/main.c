#include <stdio.h>
#include <stdint.h>
#include <kernel/cpuid.h>

int
main(int argc, char** argv)
{
    /** Call and debug kernel functions which are bugged :) **/
    int eax = cpuid_get_model(0);
    int ebx = cpuid_get_model(1);
    int ecx = cpuid_get_model(2);

    char* _eax = (char*)(&eax);
    char* _ebx = (char*)(&ebx);
    char* _ecx = (char*)(&ecx);

    printf("%s\n", _eax);
    printf("%s\n", _ebx);
    printf("%s\n", _ecx);

    return 0;
}
