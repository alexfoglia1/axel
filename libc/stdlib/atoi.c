#include <stdlib.h>
#include <string.h>

int atoi(char* ascii)
{
    int sign = '-' == ascii[0] ? -1 : 1;

    int len = (-1 == sign) ? strlen(ascii) : strlen(ascii) - 1;
    int ascii_idx = (-1 == sign) ? 1 : 0;
    
    int result = 0;
    int n_idx = 0;
    while (ascii[ascii_idx])
    {
        if (ascii[ascii_idx] < '0' || ascii[ascii_idx] > '9')
        {
            return 0;
        }

        int k = 1;
        int exp = len - n_idx - 1;
        for (int i = 0; i < exp; i++)
        {
            k *= 10;
        }
        result += (ascii[ascii_idx] - '0') * k;

        ascii_idx += 1;
        n_idx += 1;
    }

    return sign * result;
}