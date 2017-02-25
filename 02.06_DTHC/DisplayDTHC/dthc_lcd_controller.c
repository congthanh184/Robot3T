#include "dthc_lcd_controller.h"
#include "HardwareProfile-THC_DisplayBoard.h"
#include "htc.h"

#define TIME_TO_RESET   30

//extern volatile char lcd_buf[16]; // bien mang xuat du lieu ra lcd

static const char WelcomeScreen1[] = "3T ROBOTIC GROUP";
static const char WelcomeScreen2[] = "www.robot3t.com";
static const char MainScreen1[] = "TipV:";
static const char MainScreen2[] = "SetV:";
static const char MainScreen3[] = "Select Mode:";
static const char* MainScreen4[] = { "1.Set V U/D", "2.ARC OK I ", "3.ARC OK V ", "4.Main View", "5.Test View" };

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

    TRIS_POWER_LCD = 0;
    POWER_LCD_PIN = 0;              // fire
    __delay_ms(100);

    Initial_4bitLCD();	
    initMainScreen = 0;

    // Create Up Arrow character
    WriteCmdLCD(0x48);    // Access CGRAM at 1
    for (i=0; i<sizeof(CustomCharacters); i++)
        WriteDataLCD(CustomCharacters[i]);
    WriteCmdLCD(0x80);    // Return DDRAM
    countTimer = 0;
    countUpdate = 0;
    nameMode = 0;
}
//======================================================================================
//void LCD_ReInit_MainScreen() {
//    Clear_LCD();
//    SetCursor( 0x00); // Start Cursor Line-1
//    strcpy( lcd_buf, MainScreen1);
//    print_LCD();
//    SetCursor( 0x40); // Start Cursor Line-2
//    strcpy( lcd_buf, MainScreen2);
//    print_LCD();
//    Enable_Blink_LCD(1); // Enable Blink LCD
//    SetCursor( 0x46 );
//    sprintf(lcd_buf, "%3u", valueSetV);
//    print_LCD();
//}
//======================================================================================
void LCD_Update() {    
    /* Ko dung countTimer de delay nua vi ko cap nhat LCD theo  */
    /* thoi gian ma phu thuoc vao gia tri master truyen toi     */
    if ( LCD_Status == LCD_RUN_MODE ) {
        SetCursor(0x06);
        sprintf(lcd_buf, "%3u  %3s ", valueTipV, dispTOR);
        print_LCD();
        WriteDataLCD( Up_State );
        if (nameMode != 0) {
            SetCursor(0x0B);
            WriteDataLCD(nameMode);
            SetCursor(0x0B);
        }
        SetCursor(0x4B);
        sprintf(lcd_buf, "%3s ", dispARC);
        print_LCD();
        WriteDataLCD( Down_State );

        if (Up_State != NONE_ARROW)             // Blink at arrow
            SetCursor(0x0F);
        else
            if (Down_State != NONE_ARROW)
                SetCursor(0x4F);
//        countTimer = 0;
//        countUpdate++;        
        // reset value
        valueTipV = 0;
        Up_State = NONE_ARROW;
        Down_State = NONE_ARROW;
        dispTOR = StrNull;
        dispARC = StrNull;
    }
    else
        if ( LCD_Status == LCD_TEST_VIEW_MODE ) {
            SetCursor(0x06);
            sprintf(lcd_buf, "%3u", valueTipV);
            print_LCD();
            SetCursor(0x46);
            sprintf(lcd_buf, "%3u", valueTipI);
            print_LCD();
            SetCursor(0x10);
            valueTipV = 0;
            valueTipI = 0;
            Up_State = NONE_ARROW;
            Down_State = NONE_ARROW;
            dispTOR = StrNull;
            dispARC = StrNull;
        }
//    else
//        countTimer++;
}
//======================================================================================
void LCD_Repaint(unsigned char cmd) {
    if ( cmd == 0 && LCD_Status == LCD_RUN_MODE ) {         // Repaint LCD's main screen RUN MODE
        Clear_LCD();
        SetCursor( 0x00); // Start Cursor Line-1
        strcpy( lcd_buf, MainScreen1);
        print_LCD();
        if (nameMode != 0) {
            SetCursor(0x0B);
            WriteDataLCD(nameMode);
            SetCursor(0x0B);
        }
        SetCursor( 0x40); // Start Cursor Line-2
        strcpy( lcd_buf, MainScreen2);
        print_LCD();
        Enable_Blink_LCD(1); // Enable Blink LCD
        SetCursor( 0x46 );
        sprintf(lcd_buf, "%3u", valueSetV);
        print_LCD();        
    }
    else
        if ( cmd == 1) {                                    // Reset LCD

        }
}
//======================================================================================
void LCD_SubMode(unsigned char k) {
    if ( k == 0)
        nameMode = 'V';
    else
        nameMode = 'I';
}

//======================================================================================
void LCD_SetMode ( LCD_MODE mode) {    

    if ( mode == LCD_RUN_MODE && initMainScreen==0 ) {
        Clear_LCD();
        SetCursor( 0x00);           // Start Cursor Line-1
        strcpy( lcd_buf, MainScreen1);
        print_LCD();
        SetCursor( 0x40);           // Start Cursor Line-2
        strcpy( lcd_buf, MainScreen2);
        print_LCD();
        Enable_Blink_LCD(1);        // Enable Blink LCD
        SetCursor( 0x46 );
        sprintf(lcd_buf, "%3u", valueSetV);
        print_LCD();
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
        Clear_LCD();
        SetCursor( 0x00);           // Start Cursor Line-1
        strcpy( lcd_buf, MainScreen1);
        print_LCD();
        if (nameMode != 0) {
            SetCursor(0x0B);
            WriteDataLCD(nameMode);
            SetCursor(0x0B);
        }
        SetCursor( 0x40);           // Start Cursor Line-2
        strcpy( lcd_buf, MainScreen2);
        print_LCD();
        SetCursor( 0x46 );
        sprintf(lcd_buf, "%3u", valueSetV);
        print_LCD();       
        break;
    case LCD_EDIT_MODE:
        Clear_LCD();
        SetCursor( 0x00); // Start Cursor Line-1
        strcpy( lcd_buf, MainScreen3);
        print_LCD();
        SetCursor( 0x42); // Start Cursor Line-2
        strcpy( lcd_buf, MainScreen4[0]);
        print_LCD();
        SetCursor(0x56);
//        Enable_Blink_LCD(1); // Enable Blink LCD
//        SetCursor( 0x08 );
//        sprintf(lcd_buf, "%3u", valueSetV);
//        print_LCD();
        break;
    case LCD_V_UD_MODE:
        Clear_LCD();
        SetCursor( 0x00);
        strcpy ( lcd_buf, MainScreen2);
        print_LCD();
        break;
    case LCD_ARC_V_MODE:
        Clear_LCD();
        SetCursor( 0x00);
        sprintf( lcd_buf, "MaxV:");
        print_LCD();
        SetCursor( 0x40);
        sprintf( lcd_buf, "MinV:");
        print_LCD();
        break;
    case LCD_ARC_I_MODE:
        Clear_LCD();
        SetCursor( 0x00);
        sprintf ( lcd_buf, "SetI:");
        print_LCD();
        break;
    case LCD_TEST_VIEW_MODE:
        Clear_LCD();
        SetCursor( 0x00);
        strcpy ( lcd_buf, MainScreen1);
        print_LCD();
        SetCursor( 0x40);
        sprintf( lcd_buf, "TipI:");
        print_LCD();
        break;
    }
    LCD_Status = mode;
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
void SetValueTipI(unsigned int k) {
    valueTipI = k;
}

//======================================================================================
void LCD_SetEditValue(unsigned char pos, unsigned char value) {
    if ( pos != 0xFF ) {            // put number
//        if (pos == 0) {
//            pos = 0x08;
//        }
//        else {
//            if ( pos == 1) {
//                SetCursor( 0x40); // Start Cursor Line-2
//                strcpy( lcd_buf, MainScreen4);
//                print_LCD();
//            }
//            else
//                if ( pos == 3 ) {
//                    SetCursor( 0x40); // Start Cursor Line-2
//                    strcpy( lcd_buf, MainScreen2);
//                    print_LCD();
//                }
//            if ( pos > 2 )
//                pos = pos - 3;
//            pos = 0x46 + pos;
//        }

        if ( pos < 9 ) {
            if (pos > 5) {
                pos -= 5;
            }
            else
                if (pos > 3) {
                    pos -= 2;
                }
            pos = 0x05 + pos;
        }
        else {
            pos = 0x45 + ( pos - 8 );
        }

        SetCursor( pos );

        if ( value <= 9 ) {
            value += '0';
        }

        WriteDataLCD( value );
        SetCursor( pos );
    }
    else {                          // put menu
        strcpy( lcd_buf, MainScreen4[value]);
        SetCursor(0x42);
        print_LCD();
        SetCursor(0x56);
    }
}
