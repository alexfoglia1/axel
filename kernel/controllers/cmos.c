#include <controllers/cmos.h>

#include <kernel/arch/asm.h>

static uint8_t second;
static uint8_t minute;
static uint8_t hour;
static uint8_t day;
static uint8_t month;
static uint32_t year;

uint8_t
cmos_read_rtc_reg(int reg)
{
    outb(CMOS_PORT_ADDRESS, reg);
    return inb(CMOS_PORT_DATA);
}


cmos_rtc_datetime
cmos_read_rtc()
{
    uint8_t last_sec;
    uint8_t last_min;
    uint8_t last_hour;
    uint8_t last_day;
    uint8_t last_month;
    uint8_t last_year;
    uint8_t reg_b;

    uint8_t is_update_in_progress = 0x1;
    while (0x01 == is_update_in_progress)
    {
        outb(CMOS_PORT_ADDRESS, CMOS_GET_UPDATE_IN_PROGRESS_CMD);
        is_update_in_progress = (inb(CMOS_PORT_DATA) & CMOS_GET_UPDATE_IN_PROGRESS_MASK);
    }

    second = cmos_read_rtc_reg(CMOS_SEC_REG);
    minute = cmos_read_rtc_reg(CMOS_MIN_REG);
    hour = cmos_read_rtc_reg(CMOS_HRS_REG);
    day = cmos_read_rtc_reg(CMOS_DAY_REG);
    month = cmos_read_rtc_reg(CMOS_MNT_REG);
    year = cmos_read_rtc_reg(CMOS_YEA_REG);

    do
    {
        last_sec = second;
        last_min = minute;
        last_hour = hour;
        last_day = day;
        last_month = month;
        last_year = year;

        is_update_in_progress = 0x1;
        while (0x01 == is_update_in_progress)
        {
            outb(CMOS_PORT_ADDRESS, CMOS_GET_UPDATE_IN_PROGRESS_CMD);
            is_update_in_progress = (inb(CMOS_PORT_DATA) & CMOS_GET_UPDATE_IN_PROGRESS_MASK);
        }

        second = cmos_read_rtc_reg(CMOS_SEC_REG);
        minute = cmos_read_rtc_reg(CMOS_MIN_REG);
        hour = cmos_read_rtc_reg(CMOS_HRS_REG);
        day = cmos_read_rtc_reg(CMOS_DAY_REG);
        month = cmos_read_rtc_reg(CMOS_MNT_REG);
        year = cmos_read_rtc_reg(CMOS_YEA_REG);

    }
    while( (last_sec != second) || (last_min != minute) || (last_hour != hour) ||
           (last_day != day) || (last_month != month) || (last_year != year));

    reg_b = cmos_read_rtc_reg(CMOS_BBB_REG);

    if (0x00 == (reg_b & 0x04))
    {
        second = (second & 0x0F) + ((second / 16) * 10);
        minute = (minute & 0x0F) + ((minute / 16) * 10);
        hour = ( (hour & 0x0F) + (((hour & 0x70) / 16) * 10) ) | (hour & 0x80);
        day = (day & 0x0F) + ((day / 16) * 10);
        month = (month & 0x0F) + ((month / 16) * 10);
        year = (year & 0x0F) + ((year / 16) * 10);
    }

    if ((0x00 == (reg_b & 0x02)) && (0x01 == (hour & 0x80)))
    {
        hour = ((hour & 0x7F) + 12) % 24;
    }


    cmos_rtc_datetime datetime;
    datetime.sec = second;
    datetime.min = minute;
    datetime.hour = hour;
    datetime.day = day;
    datetime.month = month;
    datetime.year = year;

    return datetime;
}
