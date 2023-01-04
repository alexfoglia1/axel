#include <limits.h>
#include <stdbool.h>
#include <stdarg.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>

#include <kernel/arch/tty.h>
#include <kernel/arch/vga.h>


static char* __print_to__   = 0x00;
static int __print_to_idx__ = 0;

void
__redirect_printf__(char* print_to)
{
    __print_to__ = print_to;
    __print_to_idx__ = 0;
}


static bool
print(const char* data, size_t length)
{
    const unsigned char* bytes = (const unsigned char*) data;

    for (size_t i = 0; i < length; i++)
    {
        if (0x00 == __print_to__)
        {
            if (EOF == putchar(bytes[i]))
            {
                return false;
            }
        }
        else
        {
            __print_to__[__print_to_idx__] = data[i];
            __print_to_idx__ += 1;
        }
    }
    return true;
}


static int
print_char(const char* data)
{
    print(data, 1);
    return 1;
}


static int
print_signed_integer(const int* data)
{
    if (0 == *data)
    {
        print("0", 1);
        return 1;
    }

    bool gt0 = (*data >= 0);

    int val = gt0 ? *data : *data * -1;
    char buf[256];
    memset(&buf, 0x00, 256);

    size_t i = 0;
    while (val && i < 256)
    {
        char digit = (val % 10) + '0';
        val/= 10;

        buf[i] = digit;
        i += 1;
    }

    char reversed[256];
    memset(&reversed, 0x00, 256);

    size_t rev0 = gt0 ? 0 : 1;
    if (!gt0)
    {
        reversed[0] = '-';
    }
    for (size_t j = rev0; j < i + rev0; j++)
    {
        reversed[j] = buf[i - j - 1 + rev0];
    }

    print((const char*)reversed, i + rev0);
    return i + rev0;
}


static int
print_unsigned_integer(const uint32_t* data)
{
    if (0 == *data)
    {
        print("0", 1);
        return 1;
    }

    uint32_t val = (uint32_t) *data;
    char buf[256];
    memset(&buf, 0x00, 256);

    size_t i = 0;
    while (val && i < 256)
    {
        char digit = (val % 10) + '0';
        val/= 10;

        buf[i] = digit;
        
        i += 1;
    }

    char reversed[256];
    memset(&reversed, 0x00, 256);

    for (size_t j = 0; j < i; j++)
    {
        reversed[j] = buf[i - j - 1];
    }

    print((const char*)reversed, i);
    return i;
}


static int
print_unsigned_long(const uint64_t* data)
{
    if (0 == *data)
    {
        print("0", 1);
        return 1;
    }

    uint64_t val = (uint64_t) *data;
    char buf[256];
    memset(&buf, 0x00, 256);

    size_t i = 0;
    while (val && i < 256)
    {
        char digit = (val % 10) + '0';
        val/= 10;

        buf[i] = digit;
        
        i += 1;
    }

    char reversed[256];
    memset(&reversed, 0x00, 256);
    for (size_t j = 0; j < i; j++)
    {
        reversed[j] = buf[i - j - 1];
    }

    print((const char*)reversed, i);
    return i;
}


static int
print_hex(const uint32_t* data, bool lower_case)
{
    if (0 == *data)
    {
        print("0", 1);
        return 1;
    }

    uint32_t val = *data;
    char buf[256];
    memset(&buf, 0x00, 256);

    size_t i = 0;
    while (val && i < 256)
    {
        uint32_t digit = (val % 16);
        char cdigit;
        switch (digit)
        {
            case 0: /** Falltrough **/
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                cdigit = digit + '0';
                break;
            case 10:
                cdigit = lower_case ? 'a' : 'A';
                break;
            case 11:
                cdigit = lower_case ? 'b' : 'B';
                break;
            case 12:
                cdigit = lower_case ? 'c' : 'C';
                break;
            case 13:
                cdigit = lower_case ? 'd' : 'D';
                break;
            case 14:
                cdigit = lower_case ? 'e' : 'E';
                break;
            case 15:
                cdigit = lower_case ? 'f' : 'F';
                break;
            default:
                /** If you fall here, probably the ALU is broken :( **/
                return false;
        }
        val/= 16;

        buf[i] = cdigit;
        i += 1;
    }

    char reversed[256];
    memset(&reversed, 0x00, 256);

    for (size_t j = 0; j < i; j++)
    {
        reversed[j] = buf[i - j - 1];
    }

    print((const char*)reversed, i);
    return i;
}


static int
print_float(const double* data)
{
    double val = *data;

    int written = 0;
    int integer_part = (int)(val);
    written += print_signed_integer(&integer_part);
    written += print_char(".");
    
    double absval = *data < 0 ? *data * -1 : *data;
    int abs_integer_part = (int)(absval);
    double decimal_part = absval - abs_integer_part;

    while (1)
    {
        decimal_part *= 10;

        uint64_t next_10times_decimal_part = (uint64_t)(decimal_part * 10);
        if (next_10times_decimal_part % 10 == 0)
        {
            break;
        }
    }

    uint64_t idecimal_part = (uint64_t)(decimal_part);
    written += print_unsigned_long(&idecimal_part);

    return written;
}


static int
print_unsigned_int8(const uint8_t* data)
{
    uint32_t promoted = (uint32_t)(*data);
    return print_unsigned_integer(&promoted);
}


static int
print_signed_int8(const int8_t* data)
{
    int promoted = (int)(*data);
    return print_signed_integer(&promoted);
}


static int
print_unsigned_int16(const uint16_t* data)
{
    uint32_t promoted = (uint32_t)(*data);
    return print_unsigned_integer(&promoted);
}


static int
print_signed_int16(const int16_t* data)
{
    int promoted = (int)(*data);
    return print_signed_integer(&promoted);
}


int
printf(const char* restrict format, ...)
{
    va_list parameters;
    va_start(parameters, format);

    int written = 0;
    const char* p_next_char = &format[0];

    while (*p_next_char)
    {
        const char c_actual = *p_next_char;
        const char c_next   = *(p_next_char + 1);

        if ('%' == c_actual)
        {
            switch (c_next)
            {
                case 'c':
                {
                    p_next_char += 1;					
                    char arg = (char) (va_arg(parameters, int) & 0xFF);
                    written += print_char(&arg);
                    break;
                }
                case 'd':
                {
                    p_next_char += 1;					
                    int arg = (int) (va_arg(parameters, int));
                    written += print_signed_integer(&arg);
                    break;
                }
                case 'u':
                {
                    p_next_char += 1;					
                    uint32_t arg = (uint32_t) (va_arg(parameters, uint32_t));
                    written += print_unsigned_integer(&arg);
                    break;
                }
                case 'U':
                {
                    p_next_char += 1;					
                    uint64_t arg = (uint64_t) (va_arg(parameters, uint64_t));
                    written += print_unsigned_long(&arg);
                    break;
                }
                case 'b': // Mnemonic : byte
                {
                    p_next_char += 1;
                    uint8_t arg = (uint8_t) (va_arg(parameters, uint32_t) & 0xFF);
                    written += print_unsigned_int8(&arg);
                    break;
                }
                case 'h':
                {
                    p_next_char += 1;
                    int8_t arg = (int8_t) (va_arg(parameters, int) & 0xFF);
                    written += print_signed_int8(&arg);
                    break;
                }
                case 'w': // Mnemonic : word
                {
                    p_next_char += 1;
                    uint16_t arg = (uint16_t) (va_arg(parameters, uint32_t) & 0xFFFF);
                    written += print_unsigned_int16(&arg);
                    break;
                }
                case 'r': // Mnemonic : shoRt
                {
                    p_next_char += 1;
                    int16_t arg = (int16_t) (va_arg(parameters, int) & 0xFFFF);
                    written += print_signed_int16(&arg);
                    break;
                }
                case 'x':
                {
                    p_next_char += 1;					
                    uint32_t arg = (uint32_t) (va_arg(parameters, uint32_t));
                    written += print_hex(&arg, true);
                    break;
                }
                case 'X':
                {
                    p_next_char += 1;					
                    uint32_t arg = (uint32_t) (va_arg(parameters, uint32_t));
                    written += print_hex(&arg, false);
                    break;
                }
                case 's':
                {
                    p_next_char += 1;
                    const char* arg = va_arg(parameters, const char*);
                    size_t len = strlen(arg);
                    print(arg, len);
                    written += len;
                    break;
                }
                case 'f':
                {
                    p_next_char += 1;
                    double arg = (double) (va_arg(parameters, double));
                    written += print_float(&arg);
                    break;
                }
                default:
                    break;
            }
        }
        else
        {
            print((const char*)&c_actual, 1);

            written += 1;
        }

        p_next_char += 1;
    }

    va_end(parameters);
    return written;
}
