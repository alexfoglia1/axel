#include <stdio.h>
#include <stdint.h>

int
main(int argc, char** argv)
{
    /** Call and debug kernel functions which are bugged :) **/

    uint64_t hex = 0xCAFEBABEDEAD;
    printf("hex 0x%X", hex);
}
