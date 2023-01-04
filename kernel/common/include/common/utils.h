#ifndef _UTILS_H_
#define _UTILS_H_

#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <kernel/arch/multiboot.h>

#include <controllers/com.h>
#include <controllers/cmos.h>

#define SERIAL_LOG_BUFLEN   1024
#define SERIAL_LOG_TSTMP_BUFLEN 20
extern char __slog_buf__[SERIAL_LOG_BUFLEN];
extern char __slog_prm__[SERIAL_LOG_BUFLEN - SERIAL_LOG_TSTMP_BUFLEN];
extern char __slog_tst__[SERIAL_LOG_TSTMP_BUFLEN];

#define __slog__(com_port, format, ...) \
            do { \
                sprintf(__slog_prm__, format, ##__VA_ARGS__); \
                cmos_datetime_to_str(cmos_read_rtc(), __slog_tst__); \
                sprintf(__slog_buf__, "%s %s", __slog_tst__, __slog_prm__); \
                com_send_message(com_port, __slog_buf__); \
                memset(__slog_buf__, 0x00, SERIAL_LOG_BUFLEN); \
                memset(__slog_prm__, 0x00, SERIAL_LOG_BUFLEN - SERIAL_LOG_TSTMP_BUFLEN); \
                memset(__slog_tst__, 0x00, SERIAL_LOG_TSTMP_BUFLEN); } \
            while(0)

#define __min__(a,b)(a < b ? a : b)
#define __max__(a,b)(a > b ? a : b)


void cmos_datetime_to_str(cmos_rtc_datetime datetime, char* buf);
void sleep(uint32_t millis);


#endif
