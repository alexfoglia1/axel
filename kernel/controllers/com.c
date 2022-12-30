#include <controllers/com.h>
#include <kernel/arch/asm.h>


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

