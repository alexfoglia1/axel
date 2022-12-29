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

#define PS2_KEY_ESCAPE_DOWN  1
#define PS2_KEY_ESCAPE_UP    129
#define PS2_KEY_F1_DOWN      59
#define PS2_KEY_F1_UP        187
#define PS2_KEY_F2_DOWN      60
#define PS2_KEY_F2_UP        188
#define PS2_KEY_F3_DOWN      61
#define PS2_KEY_F3_UP        189
#define PS2_KEY_F4_DOWN      62
#define PS2_KEY_F4_UP        190
#define PS2_KEY_F5_DOWN      63
#define PS2_KEY_F5_UP        191
#define PS2_KEY_F6_DOWN      64
#define PS2_KEY_F6_UP        192
#define PS2_KEY_F7_DOWN      65
#define PS2_KEY_F7_UP        193
#define PS2_KEY_F8_DOWN      66
#define PS2_KEY_F8_UP        194
#define PS2_KEY_F9_DOWN      67
#define PS2_KEY_F9_UP        195
#define PS2_KEY_F10_DOWN     68
#define PS2_KEY_F10_UP       196
#define PS2_KEY_F11_DOWN     87
#define PS2_KEY_F11_UP       215
#define PS2_KEY_F12_DOWN     88
#define PS2_KEY_F18_UP       216
#define PS2_KEY_TAB_DOWN     15
#define PS2_KEY_TAB_UP       143
#define PS2_KEY_CAPS_DOWN    58
#define PS2_KEY_CAPS_UP      186
#define PS2_KEY_LSHIFT_DOWN  42
#define PS2_KEY_LSHIFT_UP    170
#define PS2_KEY_LCTRL_DOWN   29
#define PS2_KEY_LCTRL_UP     157
#define PS2_KEY_WIN_DOWN     91
#define PS2_KEY_WIN_UP       219
#define PS2_KEY_LALT_DOWN    56
#define PS2_KEY_LALT_UP      184
#define PS2_KEY_SPACE_DOWN   57
#define PS2_KEY_SPACE_UP     185
#define PS2_KEY_ALTGR_DOWN   PS2_KEY_LALT_DOWN
#define PS2_KEY_ALTGR_UP     PS2_KEY_LALT_UP
#define PS2_KEY_RCTRL_DOWN   PS2_KEY_LCTRL_DOWN
#define PS2_KEY_RCTRL_UP     PS2_KEY_LCTRL_UP
#define PS2_KEY_ENTER_DOWN   28
#define PS2_KEY_ENTER_UP     156
#define PS2_KEY_BACKSP_DOWN  14
#define PS2_KEY_BACKSP_UP    142
#define PS2_KEY_LCKNUM_DOWN  69
#define PS2_KEY_LCKNUM_UP    197
#define PS2_KEY_RCANC_DOWN   83
#define PS2_KEY_RCANC_UP     211
#define PS2_NUMPAD_0_DOWN    82
#define PS2_NUMPAD_0_UP      210
#define PS2_NUMPAD_1_DOWN    79
#define PS2_NUMPAD_1_UP      207
#define PS2_NUMPAD_2_DOWN    80
#define PS2_NUMPAD_2_UP      208
#define PS2_NUMPAD_3_DOWN    81
#define PS2_NUMPAD_3_UP      209
#define PS2_NUMPAD_4_DOWN    75
#define PS2_NUMPAD_4_UP      203
#define PS2_NUMPAD_5_DOWN    76
#define PS2_NUMPAD_5_UP      204
#define PS2_NUMPAD_6_DOWN    77
#define PS2_NUMPAD_6_UP      205
#define PS2_NUMPAD_7_DOWN    71
#define PS2_NUMPAD_7_UP      199
#define PS2_NUMPAD_8_DOWN    72
#define PS2_NUMPAD_8_UP      200
#define PS2_NUMPAD_9_DOWN    73
#define PS2_NUMPAD_9_UP      201
#define PS2_KEY_LEFT_DOWN    PS2_NUMPAD_4_DOWN
#define PS2_KEY_LEFT_UP      PS2_NUMPAD_4_UP
#define PS2_KEY_RIGHT_DOWN   PS2_NUMPAD_6_DOWN
#define PS2_KEY_RIGHT_UP     PS2_NUMPAD_6_UP
#define PS2_KEY_UPP_DOWN     PS2_NUMPAD_8_DOWN
#define PS2_KEY_UPP_UP       PS2_NUMPAD_8_UP
#define PS2_KEY_DWN_DOWN     PS2_NUMPAD_2_DOWN
#define PS2_KEY_DWN_UP       PS2_NUMPAD_2_UP
#define PS2_KEY_START_DOWN   PS2_NUMPAD_7_DOWN
#define PS2_KEY_START_UP     PS2_NUMPAD_7_UP
#define PS2_KEY_PAGUPP_DOWN  PS2_NUMPAD_9_DOWN
#define PS2_KEY_PAGUPP_UP    PS2_NUMPAD_9_UP
#define PS2_KEY_PAGDWN_DOWN  PS2_NUMPAD_3_DOWN
#define PS2_KEY_PAGDWN_UP    PS2_NUMPAD_3_UP


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


void ps2_controller_init(uint32_t* rsdt_addr);

#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void ps2_irq1_keyboard_handler(interrupt_stack_frame_t* frame);

uint8_t ps2_controller_found();
uint8_t ps2_is_dual_channel();


#endif
