#ifndef HARDWAREPROFILETHC_DISPLAYBOARD_H
#define HARDWAREPROFILETHC_DISPLAYBOARD_H

#include <htc.h>

#define _XTAL_FREQ	8000000UL                           // define for delay routine

/** LCD ***********************************************************/
#define TRIS_DATA_PIN_4     TRISDbits.TRISD7 	        // Ket noi vao chan DB4
#define TRIS_DATA_PIN_5     TRISDbits.TRISD6 	        // Ket noi vao chan DB5
#define TRIS_DATA_PIN_6     TRISDbits.TRISD5 	        // Ket noi vao chan DB6
#define TRIS_DATA_PIN_7     TRISDbits.TRISD4 	        // Ket noi vao chan DB7
#define TRIS_RS             TRISBbits.TRISB2 			// Ket noi vao chan RS
#define TRIS_RW             TRISBbits.TRISB1 			// Ket noi vao chan RW
#define TRIS_E              TRISBbits.TRISB0 			// Ket noi vao chan E
#define TRIS_POWER_LCD      TRISBbits.TRISB3

#define DATA_PIN_4          PORTDbits.RD7 			    // RC13 = D4 LCD
#define DATA_PIN_5          PORTDbits.RD6 			    // RC14 = D5 LCD
#define DATA_PIN_6          PORTDbits.RD5 			    // RD3 = D6 LCD
#define DATA_PIN_7          PORTDbits.RD4 			    // RD2 = D7 LCD
#define RS_PIN              PORTBbits.RB2 				// RB6 = RS LCD
#define RW_PIN              PORTBbits.RB1 				// RB7 = RW LCD
#define E_PIN               PORTBbits.RB0 				// RDB8 = E LCD
#define POWER_LCD_PIN       PORTBbits.RB3

#define READ_PIN_BUSY       PORTDbits.RD4               // Read LCD Busy Pin

#define LCD_UPDATE_PERIOD   -62500                       // 250ms
#define LCD_TIME_REPAINT    200                          // 250ms * 200 = 50s
/** BUTTON *********************************************************/
typedef enum {
    NONE_BUTTON,
    BUTTON_UP,
    BUTTON_DOWN,
    BUTTON_ENTER,
    BUTTON_AM
} ButtonState;

#define     TRIS_BT_UP          TRISDbits.TRISD0
#define     TRIS_BT_DOWN        TRISDbits.TRISD1
#define     TRIS_BT_ENTER       TRISDbits.TRISD2
#define     TRIS_BT_A_M         TRISDbits.TRISD3

#define     BT_UP               PORTDbits.RD0
#define     BT_DOWN             PORTDbits.RD1
#define     BT_ENTER            PORTDbits.RD2
#define     BT_A_M              PORTDbits.RD3

#define     PRESS_STATE         0
/** LED ************************************************************/
#define     mInitLED_A_M()      TRISAbits.TRISA0 = 0;
#define     LED_AM_PIN          PORTAbits.RA0
#define     TurnLED_AM_ON()     PORTAbits.RA0  = 0;
#define     TurnLED_AM_OFF()    PORTAbits.RA0  = 1;
/** I/O pin definitions ********************************************/
#define     INPUT_PIN           1
#define     OUTPUT_PIN          0

#endif // HARDWAREPROFILETHC_DISPLAYBOARD_H
