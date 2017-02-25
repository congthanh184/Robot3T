#ifndef DTHC_LCD_CONTROLLER_H
#define DTHC_LCD_CONTROLLER_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Cac ham dieu khien lcd
extern char lcd_buf[16]; // bien mang xuat du lieu ra lcd
extern void Initial_4bitLCD(void); // Initial LCD Interface
extern void SetCursor(unsigned char); // Set Cursor Address
extern void print_LCD(void); // Print String to LCD*/
extern void Clear_LCD(void); // Clear LCD
extern void Enable_Blink_LCD(unsigned char enable); // Enable Blink LCD 1-Enable, 0-Disable
extern void WriteCmdLCD(unsigned char); // Write Command
extern void WriteDataLCD(unsigned char); // Write Data

typedef enum {    
    LCD_V_UD_MODE,
    LCD_ARC_I_MODE,
    LCD_ARC_V_MODE,
    LCD_RUN_MODE,
    LCD_TEST_VIEW_MODE,
    LCD_INIT_MODE,
    LCD_EDIT_MODE
} LCD_MODE ;

typedef enum {
    UP_ARROW = 1,       //1
    DOWN_ARROW,         //2
    NONE_ARROW = 22     //22 - space
} ARROW_STATE;

volatile static LCD_MODE LCD_Status;
volatile static unsigned char enableTOR, enableARC;
volatile static unsigned int valueTipV, valueSetV, valueTipI;
static unsigned char initMainScreen;
static unsigned char nameMode;

void Init_DTHC_LCD(void);
void LCD_SetMode( LCD_MODE mode );
void LCD_Update(void);
void LCD_Repaint(unsigned char cmd);
void LCD_SubMode(unsigned char);

void SetVisible_TOR( unsigned char);     // 0 - disable, !=0 - enable
void SetVisible_ARC( unsigned char);
void SetValueTipV(unsigned int);
void SetValueSetV(unsigned int);
void SetValueTipI(unsigned int);
void SetArrow( ARROW_STATE );
void LCD_SetEditValue(unsigned char, unsigned char);

#endif // DTHC_LCD_CONTROLLER_H
