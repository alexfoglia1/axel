#include <limits.h>
#include <stdbool.h>
#include <stdarg.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>


static bool
print(const char* data, size_t length)
{
	const unsigned char* bytes = (const unsigned char*) data;

	for (size_t i = 0; i < length; i++)
	{
		if (EOF == putchar(bytes[i]))
		{
			return false;
		}
	}
	return true;
}


static bool
print_signed_integer(const int* data)
{
	if (0 == *data)
	{
		return print("0", 1);
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
		reversed[j] = buf[i - j - 1];
	}

	return print((const char*)reversed, i + rev0);
}

static bool
print_unsigned_integer(const uint32_t* data)
{
	if (0 == *data)
	{
		return print("0", 1);
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

	return print((const char*)reversed, i);
}


static bool
print_unsigned_long(const uint64_t* data)
{
	if (0 == *data)
	{
		return print("0", 1);
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

	return print((const char*)reversed, i);
}


static bool
print_hex(const uint64_t* data, bool lower_case)
{
	if (0 == *data)
	{
		return print("0", 1);
	}

	unsigned int val = *data;
	char buf[256];
	memset(&buf, 0x00, 256);

	size_t i = 0;
	while (val && i < 256)
	{
		int digit = (val % 16);
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

	return print((const char*)reversed, i);
}


int
printf(const char* restrict format, ...)
{
	va_list parameters;
	va_start(parameters, format);

	int written = 0;
	while (*format != EOS)
	{
		size_t maxrem = INT_MAX - written;

		if (format[0] != '%' || format[1] == '%')
		{
			if (format[0] == '%')
			{
				format += 1;
			}

			size_t amount = 1;
			while (format[amount] && format[amount] != '%')
			{
				amount += 1;
			}

			if (maxrem < amount)
			{
				// TODO: Set errno to EOVERFLOW.
				errno = EOVERFLOW;
				return -1;
			}

			
			if (!print(format, amount))
			{
				return -1;
			}

			format += amount;
			written += amount;
			continue;
		}

		const char* format_begun_at = format++;

		if ('c' == *format)
		{
			format += 1;

			char c = (char) va_arg(parameters, int /* char promotes to int */);
			if (!maxrem)
			{
				// TODO: Set errno to EOVERFLOW.
				errno = EOVERFLOW;
				return -1;
			}
			if (!print(&c, sizeof(c)))
			{
				return -1;
			}

			written += 1;
		}
		else if ('d' == *format)
		{
			format += 1;

			int i = (int) va_arg(parameters, int);
			if (!maxrem)
			{
				errno = EOVERFLOW;
				return -1;
			}
			if (!print_signed_integer(&i))
			{
				return -1;
			}

			written += 1;
		}
		else if ('u' == *format)
		{
			format += 1;

			uint32_t i = (uint32_t) va_arg(parameters, uint32_t);
			if (!maxrem)
			{
				errno = EOVERFLOW;
				return -1;
			}
			if (!print_unsigned_integer(&i))
			{
				return -1;
			}

			written += 1;
		}
		else if ('U' == *format)
		{
			format += 1;

			uint64_t i = (uint64_t) va_arg(parameters, uint64_t);
			if (!maxrem)
			{
				errno = EOVERFLOW;
				return -1;
			}
			if (!print_unsigned_long(&i))
			{
				return -1;
			}

			written += 1;	
		}
		else if ('x' == *format)
		{
			format += 1;

			uint64_t i = (uint64_t) va_arg(parameters, uint64_t);
			if (!maxrem)
			{
				errno = EOVERFLOW;
				return -1;
			}
			if (!print_hex(&i, true))
			{
				return -1;
			}

			written += 1;
		}
		else if ('X' == *format)
		{
			format += 1;

			uint64_t i = (uint64_t) va_arg(parameters, uint64_t);
			if (!maxrem)
			{
				errno = EOVERFLOW;
				return -1;
			}
			if (!print_hex(&i, false))
			{
				return -1;
			}

			written += 1;
		}
		else if ('s' == *format)
		{
			format += 1;

			const char* str = va_arg(parameters, const char*);
			size_t len = strlen(str);
			if (maxrem < len)
			{
				// TODO: Set errno to EOVERFLOW.
				errno = EOVERFLOW;
				return -1;
			}
			if (!print(str, len))
			{
				return -1;
			}

			written += len;
		}
		else
		{
			format = format_begun_at;

			size_t len = strlen(format);
			if (maxrem < len)
			{
				// TODO: Set errno to EOVERFLOW.
				errno = EOVERFLOW;
				return -1;
			}
			if (!print(format, len))
			{
				return -1;
			}

			written += len;
			format += len;
		}
	}

	va_end(parameters);
	return written;
}
