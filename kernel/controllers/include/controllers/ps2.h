#ifndef _PS2_H
#define _PS2_H

#include <interrupts/isr.h>

#define PS2_DATA_PORT  0x60
#define PS2_CTRL_PORT  0x64

#define PS2_DSB_PORT_1 0xAD
#define PS2_ENB_PORT_1 0xAE
#define PS2_DSB_PORT_2 0xA7
#define PS2_ENB_PORT_2 0xA8
#define PS2_TST_PORT_1 0xAB
#define PS2_TST_PORT_2 0xA9


void ps2_controller_init();
uint8_t ps2_is_present();
uint8_t ps2_is_dual_channel();

#endif
