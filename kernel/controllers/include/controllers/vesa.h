#ifndef _VESA_H
#define _VESA_H

#include <stdint.h>

typedef struct
{
    char signature[4];
    uint16_t version;
    uint32_t oem;
    uint32_t capabilities;
    uint32_t video_modes;
    uint16_t video_memory;
    uint16_t sw_rev;
    uint32_t vendor;
    uint32_t prod_name;
    uint32_t prod_rev;
    char reserved[222];
    char oem_data[256];
} __attribute__((packed)) vbe_info_t;

typedef struct {
	uint16_t attributes;
	uint8_t windowA, windowB;
	uint16_t granularity;
	uint16_t windowSize;
	uint16_t segmentA, segmentB;
	uint32_t winFuncPtr; // ptr to INT 0x10 Function 0x4F05
	uint16_t pitch; // bytes per scan line

	uint16_t screen_width, screen_height; // resolution
	uint8_t wChar, yChar, planes, bpp, banks; // number of banks
	uint8_t memoryModel, bankSize, imagePages;
	uint8_t reserved0;

	// color masks
	uint8_t readMask, redPosition;
	uint8_t greenMask, greenPosition; 
	uint8_t blueMask, bluePosition;
	uint8_t reservedMask, reservedPosition;
	uint8_t directColorAttributes;

	uint32_t physbase; //pointer to LFB in LFB modes 
	uint32_t offScreenMemOff;
	uint16_t offScreenMemSize;
	uint8_t reserved1[206];
} __attribute__((packed)) svga_mode_info_t;


#endif