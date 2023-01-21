#ifndef _IO_H
#define _IO_H

#include <stdint.h>

// Some useful assembly routines
void cli();
void sti();
uint8_t inb (int port_no);
void outb (int port_no, int data);
uint16_t inw (int port_no);
void outw(int port_no, int data);
uint32_t inl (int port_no);
void outl(int port_no, int data);


#endif
