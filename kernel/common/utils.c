#include <common/utils.h>
#include <drivers/pit.h>

#include <string.h>


char __slog_buf__[SERIAL_LOG_BUFLEN];
char __slog_prm__[SERIAL_LOG_BUFLEN - SERIAL_LOG_TSTMP_BUFLEN];
char __slog_tst__[SERIAL_LOG_TSTMP_BUFLEN];


void
cmos_datetime_to_str(cmos_rtc_datetime_t datetime, char* buf)
{
    char dd[3];
    char mo[3];
    char yr[3];

    char hh[3];
    char mm[3];
    char ss[3];

    dd[2] = mo[2] = yr[2] = hh[2] = mm[2] = ss[2] = '\0';

    sprintf(dd, "%s%b", datetime.day < 10 ? "0" : "", datetime.day);
    sprintf(mo, "%s%b", datetime.month < 10 ? "0" : "", datetime.month);
    sprintf(yr, "%s%b", datetime.year < 10 ? "0" : "", datetime.year);

    sprintf(hh, "%s%b", datetime.hour < 10 ? "0" : "", datetime.hour);
    sprintf(mm, "%s%b", datetime.min < 10 ? "0" : "", datetime.min);
    sprintf(ss, "%s%b", datetime.sec < 10 ? "0" : "", datetime.sec);

    sprintf(buf, "[%s/%s/%s %s:%s:%s]", dd, mo, yr, hh, mm, ss);
}


void
sleep(uint32_t millis)
{
    uint32_t millis0 = pit_get_millis();
    while (pit_get_millis() - millis0 < millis);
}