#include <controllers/com.h>
#include <controllers/pic.h>

#include <common/utils.h>

#include <kernel/arch/io.h>
#include <kernel/arch/vga.h>

#include <kernel/memory.h>

#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <unistd.h>


static uint8_t com_1_port_present;
static uint8_t com_2_port_present;
static uint8_t com_3_port_present;

static uint8_t com_1_output_buffer[COM_OUTBUF_LEN];
static uint8_t com_2_output_buffer[COM_OUTBUF_LEN];
static uint8_t com_3_output_buffer[COM_OUTBUF_LEN];

static uint8_t com_1_input_buffer[COM_INBUF_LEN];
static uint8_t com_2_input_buffer[COM_INBUF_LEN];
static uint8_t com_3_input_buffer[COM_INBUF_LEN];

static uint32_t com_1_output_ll;
static uint32_t com_2_output_ll;
static uint32_t com_3_output_ll;

static uint32_t com_1_input_ll;
static uint32_t com_2_input_ll;
static uint32_t com_3_input_ll;

static uint8_t interrupt_byte; //when this byte is received, we will fire a software interrupt

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
    interrupt_byte = 0x00;

    if (com_port == COM1_PORT)
    {
        com_1_port_present = 0x00;
        com_1_output_ll = 0;
        com_1_input_ll = 0;
        memset(&com_1_output_buffer, 0x00, COM_OUTBUF_LEN);
        memset(&com_1_input_buffer, 0x00, COM_INBUF_LEN);
    }
    else if (com_port == COM2_PORT)
    {
        com_2_port_present = 0x00;
        com_2_output_ll = 0;
        com_2_input_ll = 0;
        memset(&com_2_output_buffer, 0x00, COM_OUTBUF_LEN);
        memset(&com_2_input_buffer, 0x00, COM_INBUF_LEN);

    }
    else if (com_port == COM3_PORT)
    {
        com_3_port_present = 0x00;
        com_3_output_ll = 0;
        com_3_input_ll = 0;
        memset(&com_3_output_buffer, 0x00, COM_OUTBUF_LEN);
        memset(&com_3_input_buffer, 0x00, COM_INBUF_LEN);
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


void
com_set_int_byte(uint8_t byte)
{
    interrupt_byte = byte;
}


int
com_write(int com_port, uint8_t* buf)
{
    int len = strlen((const char*) buf);
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
            int output_buf_idx = *output_buf_llen;

            if (COM_OUTBUF_LEN == output_buf_idx)
            {
                errno = EOVERFLOW;
                return -1;
            }

            output_buffer[*output_buf_llen] = buf[i];
            *output_buf_llen = output_buf_idx + 1;
        }
    }

    return len;
}


int
com_read(int com_port, uint8_t* buf, uint32_t n_bytes)
{

    uint8_t* input_buffer = (COM1_PORT == com_port) ? com_1_input_buffer :
                            (COM2_PORT == com_port) ? com_2_input_buffer :
                            (COM3_PORT == com_port) ? com_3_input_buffer : (uint8_t*) 0x00;
    
    uint32_t* input_buffer_llen = (COM1_PORT == com_port) ? &com_1_input_ll :
                                  (COM2_PORT == com_port) ? &com_2_input_ll :
                                  (COM3_PORT == com_port) ? &com_3_input_ll : (uint32_t*) 0x00;

    if (0x00 == input_buffer || 0x00 == input_buffer_llen)
    {
        // Todo : someone want to read over an unexisting serial port, handle this case!
        return -1;
    }
    else
    {
        int bytes_to_read = __min__(n_bytes, *input_buffer_llen);

        memcpy(buf, input_buffer, bytes_to_read);
        for (uint32_t i = bytes_to_read; i < *input_buffer_llen; i++)
        {
            input_buffer[i - bytes_to_read] = input_buffer[i];
        }

        *input_buffer_llen -= bytes_to_read;

        if (0 == *input_buffer_llen)
        {
            memset(input_buffer, 0x00, COM_INBUF_LEN);
        }

        return bytes_to_read;
    }
}


static void
com_irq_handler(int com_port, uint8_t* input_buffer, uint32_t* input_buffer_llen, int syscall_no)
{
    if (COM_INBUF_LEN == *input_buffer_llen)
    {
        errno = EOVERFLOW;
    }
    else
    {
        uint8_t byte_rx = inb(com_port);
        input_buffer[*input_buffer_llen] = byte_rx;
        *input_buffer_llen += 1;

        if (interrupt_byte != 0x00 && interrupt_byte == byte_rx)
        {
            uint8_t* buf = kmalloc(*input_buffer_llen);
            read(syscall_no, buf, *input_buffer_llen);
        }
    }

    outb(PIC_MASTER_CMD_PORT, PIC_EOI);
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
com_1_irq_handler(interrupt_stack_frame_t* frame)
{
    com_irq_handler(COM1_PORT, com_1_input_buffer, &com_1_input_ll, SYSCALL_COM_1_READ);
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void com_2_irq_handler(interrupt_stack_frame_t* frame)
{
    com_irq_handler(COM2_PORT, com_2_input_buffer, &com_2_input_ll, SYSCALL_COM_2_READ);
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void com_3_irq_handler(interrupt_stack_frame_t* frame)
{
    com_irq_handler(COM3_PORT, com_3_input_buffer, &com_3_input_ll, SYSCALL_COM_3_READ);
}


uint32_t
com_flush(int com_port)
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
