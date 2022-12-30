#include <controllers/com.h>

#include <kernel/arch/asm.h>

#include <stdio.h>
#include <string.h>


static uint8_t
COM_SET_BAUD(int baud)
{
    return COM_BAUD_MAX / baud;
}


static uint8_t
COM_SET_BPS(uint8_t bits, uint8_t parity, uint8_t stop_bits)
{
    uint8_t bps = 0x00;

    bps |= ((bits      & 0x03));
    bps |= ((stop_bits & 0x01) << 2);
    bps |= ((parity    & 0x07) << 3);

    return bps;
}


uint8_t
com_init(int com_port, int baud, uint8_t bits, uint8_t parity, uint8_t stop_bits)
{
   outb(com_port + 1, COM_CMD_DISABLE_IRQS);
   outb(com_port + 3, COM_CMD_ENB_DLAB);
   outb(com_port + 0, COM_SET_BAUD(baud));
   outb(com_port + 1, 0x00);
   outb(com_port + 3, COM_SET_BPS(bits, parity, stop_bits));
   outb(com_port + 2, COM_CMD_ENB_FIFO);
   outb(com_port + 4, COM_CMD_ENABLE_IRQS);

   outb(com_port + 4, COM_CMD_SET_TEST_ON);
   outb(com_port + 0, COM_CMD_TEST_ECHO);

   uint8_t rx = inb(com_port + 0);

   if (COM_CMD_TEST_ECHO == rx)
   {
        outb(com_port + 4, COM_CMD_SET_TEST_OFF);
        return 1;
   }
   else
   {
        return 0;
   }
}


void
com_send_message(int com_port, const char* message)
{
    int len = strlen(message);
    for (int i = 0; i < len; i++)
    {
        outb(com_port, message[i]);
    }
}

// TODO place in buffer and implement device drivers protocols
#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
com_1_irq_handler(interrupt_stack_frame_t* frame)
{
    char rx = inb(COM1_PORT + 5) & 0x01;
    printf("[COM1] >> %c\n", rx);
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void com_2_irq_handler(interrupt_stack_frame_t* frame)
{
    char rx = inb(COM2_PORT + 5) & 0x01;
    printf("[COM2] >> %c\n", rx);
}