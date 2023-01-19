#include <stdlib.h>
#include <string.h>

int atoi(char* ascii)
{
    int sign = '-' == ascii[0] ? -1 : 1;
    int len = strlen(ascii);

    int result = 0;
    int ascii_idx = 1;
    while (ascii[ascii_idx])
    {
        int k = 1;
        int exp = len - ascii_idx - 1;
        for (int i = 0; i < exp; i++)
        {
            k *= 10;
        }

        result += (ascii[ascii_idx] - '0') * k;
        ascii_idx += 1;
    }

    return sign * result;
}