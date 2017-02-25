#include "dthc_lcd_controller.h"
#include "HardwareProfile - DTHCBoard.h"
#include "p18f4431.h"

#define TIME_TO_RESET   30

static const char WelcomeScreen1[] = "3T ROBOTIC GROUP";
static const char WelcomeScreen2[] = "www.robot3t.com";
static const char MainScreen1[] = "TipV:";
static const char MainScreen2[] = "SetV:";
static const char StrTOR[] = "TOR";
static const char StrARC[] = "ARC";
static const char StrNull[] = "\0";
unsigned char CustomCharacters[] = {0x04, 0x0E, 0x15, 0x04, 0x04, 0x04, 0x04, 0x04,     // Up arrow
                                    0x04, 0x04, 0x04, 0x04, 0x04, 0x15, 0x0E, 0x04};    // Down arrow
volatile static char* dispTOR;
volatile static char* dispARC;
volatile static ARROW_STATE Up_State, Down_State;
volatile static unsigned char valueEdit, curEditCursor;
volatile static unsigned char countTimer;
static unsigned char countUpdate;
//======================================================================================
void Init_DTHC_LCD(){
    unsigned char i;
    Initial_4bitLCD();	
    initMainScreen = 0;

    // Create Up Arrow character
    WriteCmdLCD(0x48);    // Access CGRAM at 1
    for (i=0; i<sizeof(CustomCharacters); i++)
        WriteDataLCD(CustomCharacters[i]);
    WriteCmdLCD(0x80);    // Return DDRAM
    countTimer = 0;
    countUpdate = 0;
}
//======================================================================================
void LCD_ReInit_MainScreen() {
    Clear_LCD();
    SetCursor( 0x00); // Start Cursor Line-1
    strcpy( lcd_buf, MainScreen1);
    print_LCD();
    SetCursor( 0x40); // Start Cursor Line-2
    strcpy( lcd_buf, MainScreen2);
    print_LCD();
    Enable_Blink_LCD(1); // Enable Blink LCD
    SetCursor( 0x46 );
    sprintf(lcd_buf, "%3u", valueSetV);
    print_LCD();
}
//======================================================================================
void LCD_Update() {
//    if (LAT_THC_DWN)
//        LAT_THC_DWN = 0;
//    else
//        LAT_THC_DWN = 1;

//    if (LAT_THC_UP)
//        LAT_THC_UP = 0;
//    else
//        LAT_THC_UP = 1;

    if (countUpdate >= 20) {
        LCD_ReInit_MainScreen();
        countUpdate = 0;
    }
    if (LCD_Status == LCD_RUN_MODE && countTimer >= 15) {
        SetCursor(0x06);
        sprintf(lcd_buf, "%3u  %3s ", valueTipV, dispTOR);
        print_LCD();
        WriteDataLCD( Up_State );

        SetCursor(0x4B);
        sprintf(lcd_buf, "%3s ", dispARC);
        print_LCD();
        WriteDataLCD( Down_State );

        if (Up_State != NONE_ARROW)             // Blink at arrow
            SetCursor(0x0F);
        else
            if (Down_State != NONE_ARROW)
                SetCursor(0x4F);
        countTimer = 0;        
        countUpdate++;
    }
    else
        countTimer++;
}
//======================================================================================
void LCD_SetMode ( LCD_MODE mode) {    

    if ( (mode == LCD_RUN_MODE || mode == LCD_EDIT_MODE) && (initMainScreen==0)) {
        LCD_ReInit_MainScreen();
        initMainScreen = 1;
    }

    switch (mode) {
    case LCD_INIT_MODE:
        Clear_LCD();
        SetCursor( 0x00); // Start Cursor Line-1
        strcpy( lcd_buf, WelcomeScreen1);
        print_LCD();
        SetCursor( 0x40); // Start Cursor Line-2
        strcpy( lcd_buf, WelcomeScreen2);
        print_LCD();
        break;
    case LCD_RUN_MODE:
//        Enable_Blink_LCD(0); // Disable Blink LCD
        SetCursor( 0x46 );
        sprintf(lcd_buf, "%3u", valueSetV);
        print_LCD();
        break;
    case LCD_EDIT_MODE:
//        initMainScreen = 0;
        break;
    }
    LCD_Status = mode;
//    LCD_Update();
}
//======================================================================================
void SetVisible_TOR(unsigned char eTOR) {
    if (eTOR)
        dispTOR = StrTOR;
    else
        dispTOR = StrNull;
}
//======================================================================================
void SetVisible_ARC(unsigned char eARC) {
    if (eARC)
        dispARC = StrARC;
    else
        dispARC = StrNull;
}

//======================================================================================
void SetValueTipV(unsigned int k) {
    valueTipV = k;
}
//======================================================================================
void SetValueSetV(unsigned int k ) {
    valueSetV = k;
}
//======================================================================================
void SetArrow(ARROW_STATE state) {
    Up_State = NONE_ARROW;
    Down_State = NONE_ARROW;
    if ( LCD_Status == LCD_RUN_MODE ) {
        if (state == UP_ARROW)
            Up_State = UP_ARROW;
        if (state == DOWN_ARROW)
            Down_State = DOWN_ARROW;
    }
}
//======================================================================================
void LCD_SetEditValue(unsigned char pos, unsigned char value) {
    SetCursor( 0x46 + pos );
    WriteDataLCD( value + '0' );
    SetCursor( 0x46 + pos );
}
