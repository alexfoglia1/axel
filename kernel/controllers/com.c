#include <controllers/com.h>
#include <controllers/pic.h>

#include <kernel/arch/io.h>
#include <kernel/arch/vga.h>

#include <stdio.h>
#include <string.h>
#include <errno.h>


static uint8_t com_1_port_present;
static uint8_t com_2_port_present;
static uint8_t com_3_port_present;

static uint8_t com_1_output_buffer[COM_OUTBUF_LEN];
static uint8_t com_2_output_buffer[COM_OUTBUF_LEN];
static uint8_t com_3_output_buffer[COM_OUTBUF_LEN];

static uint32_t com_1_output_ll;
static uint32_t com_2_output_ll;
static uint32_t com_3_output_ll;

static uint8_t
COM_SET_BAUD(int baud)
{
    uint8_t baud_div = COM_BAUD_MAX / baud;
    return baud_div;
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
    if (com_port == COM1_PORT)
    {
        com_1_port_present = 0x00;
        com_1_output_ll = 0;
        memset(&com_1_output_buffer, 0x00, COM_OUTBUF_LEN);
    }
    else if (com_port == COM2_PORT)
    {
        com_2_port_present = 0x00;
        com_2_output_ll = 0;
        memset(&com_2_output_buffer, 0x00, COM_OUTBUF_LEN);
    }
    else if (com_port == COM3_PORT)
    {
        com_3_port_present = 0x00;
        com_3_output_ll = 0;
        memset(&com_3_output_buffer, 0x00, COM_OUTBUF_LEN);
    }
    else
    {
        return 0;
    }

     outb(com_port + 1, COM_CMD_DISABLE_IRQS);
     outb(com_port + 3, COM_CMD_ENB_DLAB);
     outb(com_port + 0, COM_SET_BAUD(baud));
     outb(com_port + 1, 0x00);
     outb(com_port + 3, COM_SET_BPS(bits, parity, stop_bits));
     outb(com_port + 2, COM_CMD_ENB_FIFO);
     outb(com_port + 4, COM_CMD_ENABLE_IRQS);
     outb(com_port + 1, COM_CMD_ENB_DATA_IRQ);

     outb(com_port + 4, COM_CMD_SET_TEST_ON);
     outb(com_port + 0, COM_CMD_TEST_ECHO);

     uint8_t rx = inb(com_port + 0);
     if (COM_CMD_TEST_ECHO == rx)
     {
        outb(com_port + 4, COM_CMD_SET_TEST_OFF);

        if (COM1_PORT == com_port)
        {
            com_1_port_present = 0x01;
            pic_add_irq(COM1_IRQ_INTERRUPT_NO, &com_1_irq_handler);
        }
        else if (COM2_PORT == com_port)
        {
            com_2_port_present = 0x01;
            pic_add_irq(COM2_IRQ_INTERRUPT_NO, &com_2_irq_handler);
        }
        else if (COM3_PORT == com_port)
        {
            com_3_port_present = 0x01;
            pic_add_irq(COM3_IRQ_INTERRUPT_NO, &com_3_irq_handler);
        }

        return 1;
     }
     else
     {
        return 0;
     }
}


int
com_send_message(int com_port, const char* message)
{
    int len = strlen(message);
    uint8_t* output_buffer =    (COM1_PORT == com_port) ? com_1_output_buffer :
                                (COM2_PORT == com_port) ? com_2_output_buffer :
                                (COM3_PORT == com_port) ? com_3_output_buffer : (uint8_t*) 0x00;

    uint32_t* output_buf_llen = (COM1_PORT == com_port) ? &com_1_output_ll :
                                (COM2_PORT == com_port) ? &com_2_output_ll :
                                (COM3_PORT == com_port) ? &com_3_output_ll : (uint32_t*) 0x00;

    if (0x00 == output_buffer || 0x00 == output_buf_llen)
    {
        // Todo : someone want to write over an unexisting serial port, handle this case!
        return -1;
    }
    else
    {
        for (int i = 0; i < len; i++)
        {
            //outb(com_port, message[i]);
            int output_buf_idx = *output_buf_llen;

            if (COM_OUTBUF_LEN == output_buf_idx)
            {
                errno = EOVERFLOW;
                return -1;
            }

            output_buffer[*output_buf_llen] = message[i];
            *output_buf_llen = output_buf_idx + 1;
        }
    }

    return len;
}


// TODO place in buffer and implement device drivers protocols
#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
com_1_irq_handler(interrupt_stack_frame_t* frame)
{
    char char_rx = inb(COM1_PORT);
    printf("[COM1] >> %c\n", char_rx);

    outb(PIC_MASTER_CMD_PORT, PIC_EOI);
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void com_2_irq_handler(interrupt_stack_frame_t* frame)
{
    char char_rx = inb(COM2_PORT);
    printf("[COM2] >> %c\n", char_rx);
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void com_3_irq_handler(interrupt_stack_frame_t* frame)
{
    char char_rx = inb(COM3_PORT);
    printf("[COM3] >> %c\n", char_rx);
}


uint32_t
com_tx_buffer(int com_port)
{
    uint8_t* output_buffer =    (COM1_PORT == com_port) ? com_1_output_buffer :
                                (COM2_PORT == com_port) ? com_2_output_buffer :
                                (COM3_PORT == com_port) ? com_3_output_buffer : (uint8_t*) 0x00;

    uint32_t* output_buf_llen = (COM1_PORT == com_port) ? &com_1_output_ll :
                                (COM2_PORT == com_port) ? &com_2_output_ll :
                                (COM3_PORT == com_port) ? &com_3_output_ll : (uint32_t*) 0x00;

    if (0x00 == output_buffer || 0x00 == output_buf_llen)
    {
        // Todo : someone want to write over an unexisting serial port, handle this case!
        return -1;
    }
    else
    {
        uint32_t bytes_to_transmit = *output_buf_llen < COM_TX_BYTES ? *output_buf_llen : COM_TX_BYTES;
        for (uint32_t i = 0; i < bytes_to_transmit; i++)
        {
            outb(com_port, output_buffer[i]);
        }

        for(uint32_t i = bytes_to_transmit; i < *output_buf_llen; i++)
        {
            output_buffer[i - bytes_to_transmit] = output_buffer[i];
        }

        *output_buf_llen -= bytes_to_transmit;
    }

    if (0x00 == *output_buf_llen)
    {
        memset(output_buffer, 0x00, COM_OUTBUF_LEN);
    }

    return COM_TX_BYTES;
}
