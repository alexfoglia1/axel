#ifndef _PS2_H
#define _PS2_H

#include <interrupts/isr.h>

#define PS2_KEY_INTERRUPT 9
#define PS2_DATA_PORT  0x60
#define PS2_CTRL_PORT  0x64

#define PS2_DSB_PORT_1 0xAD
#define PS2_ENB_PORT_1 0xAE
#define PS2_DSB_PORT_2 0xA7
#define PS2_ENB_PORT_2 0xA8
#define PS2_TST_PORT_1 0xAB
#define PS2_TST_PORT_2 0xA9


struct ACPISDTHeader
{
  char signature[4];
  uint32_t length;
  uint8_t revision;
  uint8_t checksum;
  char oemid[6];
  char oemtableid[8];
  uint32_t oemrev;
  uint32_t creatorid;
  uint32_t creatorrev;
};

struct FADT
{
    struct   ACPISDTHeader h;
    uint32_t FirmwareCtrl;
    uint32_t Dsdt;
    uint8_t  Reserved;
    uint8_t  PreferredPowerManagementProfile;
    uint16_t SCI_Interrupt;
    uint32_t SMI_CommandPort;
    uint8_t  AcpiEnable;
    uint8_t  AcpiDisable;
    uint8_t  S4BIOS_REQ;
    uint8_t  PSTATE_Control;
    uint32_t PM1aEventBlock;
    uint32_t PM1bEventBlock;
    uint32_t PM1aControlBlock;
    uint32_t PM1bControlBlock;
    uint32_t PM2ControlBlock;
    uint32_t PMTimerBlock;
    uint32_t GPE0Block;
    uint32_t GPE1Block;
    uint8_t  PM1EventLength;
    uint8_t  PM1ControlLength;
    uint8_t  PM2ControlLength;
    uint8_t  PMTimerLength;
    uint8_t  GPE0Length;
    uint8_t  GPE1Length;
    uint8_t  GPE1Base;
    uint8_t  CStateControl;
    uint16_t WorstC2Latency;
    uint16_t WorstC3Latency;
    uint16_t FlushSize;
    uint16_t FlushStride;
    uint8_t  DutyOffset;
    uint8_t  DutyWidth;
    uint8_t  DayAlarm;
    uint8_t  MonthAlarm;
    uint8_t  Century;
    uint16_t BootArchitectureFlags;
    uint8_t  Reserved2;
    uint32_t Flags;
    uint8_t ResetReg[12];
    uint8_t  ResetValue;
    uint8_t  Reserved3[3];
}__attribute__((packed));


void ps2_controller_init(uint32_t* rsdt_addr);
uint8_t ps2_controller_found();
uint8_t ps2_is_dual_channel();


#endif
