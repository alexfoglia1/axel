#ifndef CMOS_H
#define CMOS_H

#include <stdint.h>

#define CMOS_PORT_ADDRESS 0x70
#define CMOS_PORT_DATA    0x71

#define CMOS_GET_UPDATE_IN_PROGRESS_CMD  0x0A
#define CMOS_GET_UPDATE_IN_PROGRESS_MASK 0x80

#define CMOS_SEC_REG      0x00
#define CMOS_MIN_REG      0x02
#define CMOS_HRS_REG      0x04
#define CMOS_DAY_REG      0x07
#define CMOS_MNT_REG      0x08
#define CMOS_YEA_REG      0x09
#define CMOS_BBB_REG      0x0B


typedef struct
{
    uint8_t sec;
    uint8_t min;
    uint8_t hour;
    uint8_t day;
    uint8_t month;
    uint8_t year;
} cmos_rtc_datetime;

uint8_t cmos_read_rtc_reg(int reg);
cmos_rtc_datetime cmos_read_rtc();


#endif
