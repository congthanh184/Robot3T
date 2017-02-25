#include <htc.h>
#include <stdio.h>
#include "usart.h"

/* Serial initialization */
void  init_comms(void) {
    RX_PIN = 1;
    TX_PIN = 0;
    SPBRGH = 0;
    SPBRG = DIVIDER;
    RCSTA = (NINE_BITS|0x90);
    TXSTA = (SPEED|NINE_BITS|0x20);
    RCIF = 0;           // Clear interrupt flag
    RCIE = 1;           // Enable receive interrupt
}

void putch(unsigned char byte) 
{
	/* output one byte */
	while(!TXIF)	/* set when register is empty */
		continue;
	TXREG = byte;
}

unsigned char getch() {
	/* retrieve one byte */
	while(!RCIF)	/* set when register is not empty */
		continue;
	return RCREG;	
}

unsigned char getche(void)
{
	unsigned char c;
	putch(c = getch());
	return c;
}

