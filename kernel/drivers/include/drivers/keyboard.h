#ifndef _KEYBOARD_H
#define _KEYBOARD_H

#include <interrupts/isr.h> // for interrupt stack frame t

#define KBD_KEY_ESCAPE_DOWN  1
#define KBD_KEY_ESCAPE_UP    129
#define KBD_KEY_F1_DOWN      59
#define KBD_KEY_F1_UP        187
#define KBD_KEY_F2_DOWN      60
#define KBD_KEY_F2_UP        188
#define KBD_KEY_F3_DOWN      61
#define KBD_KEY_F3_UP        189
#define KBD_KEY_F4_DOWN      62
#define KBD_KEY_F4_UP        190
#define KBD_KEY_F5_DOWN      63
#define KBD_KEY_F5_UP        191
#define KBD_KEY_F6_DOWN      64
#define KBD_KEY_F6_UP        192
#define KBD_KEY_F7_DOWN      65
#define KBD_KEY_F7_UP        193
#define KBD_KEY_F8_DOWN      66
#define KBD_KEY_F8_UP        194
#define KBD_KEY_F9_DOWN      67
#define KBD_KEY_F9_UP        195
#define KBD_KEY_F10_DOWN     68
#define KBD_KEY_F10_UP       196
#define KBD_KEY_F11_DOWN     87
#define KBD_KEY_F11_UP       215
#define KBD_KEY_F12_DOWN     88
#define KBD_KEY_F18_UP       216
#define KBD_KEY_TAB_DOWN     15
#define KBD_KEY_TAB_UP       143
#define KBD_KEY_CAPS_DOWN    58
#define KBD_KEY_CAPS_UP      186
#define KBD_KEY_LSHIFT_DOWN  42
#define KBD_KEY_LSHIFT_UP    170
#define KBD_KEY_LCTRL_DOWN   29
#define KBD_KEY_LCTRL_UP     157
#define KBD_KEY_WIN_DOWN     91
#define KBD_KEY_WIN_UP       219
#define KBD_KEY_LALT_DOWN    56
#define KBD_KEY_LALT_UP      184
#define KBD_KEY_SPACE_DOWN   57
#define KBD_KEY_SPACE_UP     185
#define KBD_KEY_ALTGR_DOWN   KBD_KEY_LALT_DOWN
#define KBD_KEY_ALTGR_UP     KBD_KEY_LALT_UP
#define KBD_KEY_RCTRL_DOWN   KBD_KEY_LCTRL_DOWN
#define KBD_KEY_RCTRL_UP     KBD_KEY_LCTRL_UP
#define KBD_KEY_ENTER_DOWN   28
#define KBD_KEY_ENTER_UP     156
#define KBD_KEY_BACKSP_DOWN  14
#define KBD_KEY_BACKSP_UP    142
#define KBD_KEY_LCKNUM_DOWN  69
#define KBD_KEY_LCKNUM_UP    197
#define KBD_KEY_RCANC_DOWN   83
#define KBD_KEY_RCANC_UP     211
#define KBD_NUMPAD_0_DOWN    82
#define KBD_NUMPAD_0_UP      210
#define KBD_NUMPAD_1_DOWN    79
#define KBD_NUMPAD_1_UP      207
#define KBD_NUMPAD_2_DOWN    80
#define KBD_NUMPAD_2_UP      208
#define KBD_NUMPAD_3_DOWN    81
#define KBD_NUMPAD_3_UP      209
#define KBD_NUMPAD_4_DOWN    75
#define KBD_NUMPAD_4_UP      203
#define KBD_NUMPAD_5_DOWN    76
#define KBD_NUMPAD_5_UP      204
#define KBD_NUMPAD_6_DOWN    77
#define KBD_NUMPAD_6_UP      205
#define KBD_NUMPAD_7_DOWN    71
#define KBD_NUMPAD_7_UP      199
#define KBD_NUMPAD_8_DOWN    72
#define KBD_NUMPAD_8_UP      200
#define KBD_NUMPAD_9_DOWN    73
#define KBD_NUMPAD_9_UP      201
#define KBD_KEY_LEFT_DOWN    KBD_NUMPAD_4_DOWN
#define KBD_KEY_LEFT_UP      KBD_NUMPAD_4_UP
#define KBD_KEY_RIGHT_DOWN   KBD_NUMPAD_6_DOWN
#define KBD_KEY_RIGHT_UP     KBD_NUMPAD_6_UP
#define KBD_KEY_UPP_DOWN     KBD_NUMPAD_8_DOWN
#define KBD_KEY_UPP_UP       KBD_NUMPAD_8_UP
#define KBD_KEY_DWN_DOWN     KBD_NUMPAD_2_DOWN
#define KBD_KEY_DWN_UP       KBD_NUMPAD_2_UP
#define KBD_KEY_START_DOWN   KBD_NUMPAD_7_DOWN
#define KBD_KEY_START_UP     KBD_NUMPAD_7_UP
#define KBD_KEY_PAGUPP_DOWN  KBD_NUMPAD_9_DOWN
#define KBD_KEY_PAGUPP_UP    KBD_NUMPAD_9_UP
#define KBD_KEY_PAGDWN_DOWN  KBD_NUMPAD_3_DOWN
#define KBD_KEY_PAGDWN_UP    KBD_NUMPAD_3_UP

#define KBD_IRQ              0x01

void keyboard_init(uint8_t in_port);
int  keyboard_irq_handler(interrupt_stack_frame_t frame);
int  keyboard_read(uint8_t* buf, uint32_t size);


#endif
