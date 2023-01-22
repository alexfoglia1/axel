#ifndef COM_H
#define COM_H

#include <interrupts/isr.h> // for interrupt stack frame t

#define COM1_PORT 0x3F8
#define COM2_PORT 0x2F8
#define COM3_PORT 0x3E8

#define COM_BAUD_MAX 115200

#define COM_BITS_8 0x03
#define COM_BITS_7 0x02
#define COM_BITS_6 0x01
#define COM_BITS_5 0x00

#define COM_PARITY_NONE  0x00
#define COM_PARITY_ODD   0x01
#define COM_PARITY_EVEN  0x03
#define COM_PARITY_MARK  0x05
#define COM_PARITY_SPACE 0x07

#define COM_STOPBITS_1 0x00
#define COM_STOPBITS_2 0x01

#define COM_CMD_DISABLE_IRQS 0x00
#define COM_CMD_ENABLE_IRQS  0x0B      
#define COM_CMD_ENB_DLAB     0x80
#define COM_CMD_ENB_FIFO     0xC7
#define COM_CMD_SET_TEST_ON  0x1E
#define COM_CMD_SET_TEST_OFF 0x0F
#define COM_CMD_TEST_ECHO    0xAE
#define COM_CMD_ENB_DATA_IRQ 0x01

#define COM1_IRQ             0x04
#define COM2_IRQ             0x03
#define COM3_IRQ             COM1_IRQ
#define COM4_IRQ             COM2_IRQ

#define COM2_IRQ_INTERRUPT_NO  0x0B
#define COM3_IRQ_INTERRUPT_NO  COM1_IRQ_INTERRUPT_NO
#define COM4_IRQ_INTERRUPT_NO  COM2_IRQ_INTERRUPT_NO

#define COM_OUTBUF_LEN       0x8000
#define COM_INBUF_LEN        0x8000
#define COM_TX_BYTES         0x10

#define COM_MIN_TX_FREQ_HZ 1
#define COM_MAX_TX_FREQ_HZ 1000
#define COM_STD_TX_FREQ_HZ 100

#include <stdint.h>

void com_init(int com_port, int baud, uint8_t bits, uint8_t parity, uint8_t stop_bits);
void com_set_int_byte(uint8_t byte);
uint8_t com_is_initialized(int com_port);
int com_write(int com_port, uint8_t* buf);
int com_read(int com_port, uint8_t* buf, uint32_t n_bytes);

uint32_t com_flush(int com_port); // Effectively transmit data to outport : called from PIT timer

void com_1_irq_handler(interrupt_stack_frame_t frame);
void com_2_irq_handler(interrupt_stack_frame_t frame);
void com_3_irq_handler(interrupt_stack_frame_t frame);

#endif
