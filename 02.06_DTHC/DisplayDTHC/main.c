#include <htc.h>
#include "HardwareProfile-THC_DisplayBoard.h"
#include "dthc_lcd_controller.h"
#include "stdio.h"
#include "usart.h"

__CONFIG(WDTE_ON & PWRTE_ON & FOSC_HS & MCLRE_ON &
         CP_OFF &  CPD_OFF & BOREN_OFF & IESO_OFF &
         FCMEN_OFF & LVP_OFF & DEBUG_OFF);
__CONFIG(BOR4V_BOR40V);

volatile unsigned char count;
// Define for interrupt rountine process ADC signal
unsigned char value[15];
unsigned int voltage_set_value;

// Define for scanning button
unsigned char countEnter = 0, maxCountEnter;
unsigned char GotButtonPressed;

ButtonState lastButton;
ButtonState bt;
// Define for LCD function
volatile unsigned char LCD_UPDATE_EVENT;
unsigned int countLCD_Repaint;
LCD_MODE mode = LCD_INIT_MODE;
LCD_MODE tempMode;
// Define for uart function
volatile unsigned char UART_RECEIVE_EVENT;
volatile unsigned char FLAG_VALUE_CHANGED;
volatile unsigned char globalTemp;
volatile char Data_Input[15];
volatile unsigned char Data_Output[15];
volatile unsigned char lengthDataInput, countData;
unsigned int unIntTemp;

//======================================================================================
void Init_Button_Port(void) {
    TRIS_BT_A_M = 1;
    TRIS_BT_UP = 1;
    TRIS_BT_DOWN = 1;
    TRIS_BT_ENTER = 1;
//    TRIS_ARC_OK = 0;
//    TRIS_THC_UP = 0;
//    TRIS_THC_DWN = 0;
//    TRIS_TORCH = 1;
//    TRIS_FIRE = 0;
    GotButtonPressed = 0;
    lastButton = NONE_BUTTON;
//    LAT_THC_DWN = 1;
//    LAT_THC_UP = 1;
}
//======================================================================================
ButtonState GetButton(void) {
    ButtonState button = NONE_BUTTON;

    if ( BT_ENTER == PRESS_STATE )
        button = BUTTON_ENTER;
    else
        if ( BT_UP == PRESS_STATE )
            button = BUTTON_UP;
        else
            if ( BT_DOWN == PRESS_STATE )
                button = BUTTON_DOWN;
            else
                if ( BT_A_M == PRESS_STATE )
                    button = BUTTON_AM;
    if ( button != NONE_BUTTON ) {
        if ( lastButton != button ) {
            GotButtonPressed = 0;
            lastButton = button;
        }
        if ( GotButtonPressed != 40 )
            button = NONE_BUTTON;
        if ( GotButtonPressed <= 40 )
            GotButtonPressed++;
    }
    else {
        GotButtonPressed = 0;
    }
    return button;
}
//======================================================================================
/*
void ProcessButton(void) {
    bt = GetButton();
    switch (bt) {
    case BUTTON_ENTER:
        if ( mode == LCD_RUN_MODE ) {
            mode = LCD_EDIT_MODE;
            countEnter = 0;
            LCD_SetMode( mode );
            LCD_SetEditValue( countEnter+1, value[countEnter+1] );
            LCD_SetEditValue( countEnter+2, value[countEnter+2] );
            LCD_SetEditValue( countEnter, value[countEnter] );
        }
        else
            if (mode == LCD_EDIT_MODE && countEnter < 2 ) {
                countEnter++;
                LCD_SetEditValue( countEnter, value[countEnter] );
            }
            else
            {
                voltage_set_value = (unsigned int) value[0] * 100 + value[1] * 10 + value[2];
                SetValueSetV(voltage_set_value);
                mode = LCD_RUN_MODE;
                LCD_SetMode( mode );
            }
        break;
    case BUTTON_UP:
        if ( mode == LCD_EDIT_MODE ){
            if ( value[countEnter] < 9 )
                value[countEnter]++;
            else
                value[countEnter] = 0;
            LCD_SetEditValue( countEnter, value[countEnter]);
        }
        break;
    case BUTTON_DOWN:
        if ( mode == LCD_EDIT_MODE ){
            if ( value[countEnter] > 0 )
                value[countEnter]--;
            else
                value[countEnter] = 9;
            LCD_SetEditValue( countEnter, value[countEnter]);
        }
        break;
    case BUTTON_AM:
        if ( LED_AM_PIN == 0 ) {
            TurnLED_AM_OFF();
        }
        else {
            TurnLED_AM_ON();
        }
        break;
    default:
        break;
    }
}
//======================================================================================
void ReloadTimer1(void) {
    TMR1IF = 0;
    TMR1H = (unsigned char) (LCD_UPDATE_PERIOD >> 8);
    TMR1L = (unsigned char) (LCD_UPDATE_PERIOD);
}

//======================================================================================

void UserInit(void) {
    ANSELH = 0;
    ANSEL = 0;
    INTCON = 0;

    // Setup Watchdog    
    WDTCON = 0b00001011;
    CLRWDT();
    // Setup IO function
    mInitLED_A_M();
    Init_Button_Port();
    // Setup UART
    init_comms();
    lengthDataInput = 0;
    // Setup LCD timer
    Init_DTHC_LCD();
    LCD_SetMode(LCD_INIT_MODE);
    T1CON = 0b00110000;             //
    ReloadTimer1();
    TMR1IE = 1;
    count = 0;
    TMR1ON = 1;
    // Enable interrupt
    PEIE = 1;
    GIE = 1;
}
*/
//======================================================================================
void main(void) {
    unsigned char count;
    unsigned char compareMode, compareAmpeValue;
    unsigned char requiredInit;    
    unsigned char REQUIRED_TRANSMIT;
    unsigned char temp;
    unsigned int maxVol, minVol;

    // UserInit()
    ANSELH = 0;
    ANSEL = 0;
    INTCON = 0;

    // Setup Watchdog
    WDTCON = 0b00001011;
    CLRWDT();
    // Setup IO function
    mInitLED_A_M();
    TurnLED_AM_OFF();
    Init_Button_Port();    
    // Setup LCD timer
    Init_DTHC_LCD();
    LCD_SetMode(LCD_INIT_MODE);
    T1CON = 0b00110000;             //
    TMR1IF = 0;
    TMR1H = (unsigned char) (LCD_UPDATE_PERIOD >> 8);
    TMR1L = (unsigned char) (LCD_UPDATE_PERIOD);
    TMR1IE = 1;
    count = 0;
    TMR1ON = 1;
    // Setup UART
    init_comms();
    lengthDataInput = 0;
    // Enable interrupt
    PEIE = 1;
    GIE = 1;
    // end userinit

    // prepare for data_output
    Data_Output[0] = '*';
    Data_Output[1] = 0xFF;         // SetV
    Data_Output[2] = 0xFF;
    Data_Output[3] = 0xFF;         // compare mode. If !=0 ampe mode, else volt mode
    Data_Output[4] = 0xFF;
    Data_Output[5] = 0xFF;
    Data_Output[6] = 0xFF;
    Data_Output[7] = 0xFF;
    Data_Output[8] = '#';

    compareMode = 'V';
    compareAmpeValue = 0;    
    // Init data for LCD display
    CLRWDT();
    __delay_ms(300);
    requiredInit = 1;
    SetValueTipV(0);
    SetValueSetV(0);
    SetVisible_TOR(0);
    SetVisible_ARC(0);
    SetArrow(NONE_ARROW);
    LCD_SetMode(LCD_RUN_MODE);
    mode = LCD_RUN_MODE;
    LCD_Update();
    REQUIRED_TRANSMIT = 0;

    while (1) {
        CLRWDT();
        // ProcessButton
        bt = GetButton();
        switch (bt) {
        case BUTTON_ENTER:
            if ( mode == LCD_RUN_MODE || mode == LCD_TEST_VIEW_MODE ) {
                mode = LCD_EDIT_MODE;
                countEnter = 0;
                LCD_SetMode( mode );
//                LCD_SetEditValue( countEnter+1, value[countEnter+1] );
//                LCD_SetEditValue( countEnter+2, value[countEnter+2] );
//                LCD_SetEditValue( countEnter, value[countEnter] );
//                LCD_SetEditValue( countEnter, compareMode);
                tempMode = LCD_V_UD_MODE;
            }
            else {
                if ( mode == LCD_EDIT_MODE ) {
                    if ( countEnter == 0 ) {       // Select mode
                        countEnter = 1;
                        compareMode = 0;
                        if ( tempMode == LCD_V_UD_MODE ) {
                            maxCountEnter = countEnter+3;
                        }
                        else
                            if ( tempMode == LCD_ARC_I_MODE ) {
                                countEnter = 4;
                                maxCountEnter = countEnter+2;
                                compareMode = 1;
                                compareAmpeValue = 0;
                            }
                            else
                                if ( tempMode == LCD_ARC_V_MODE ) {
                                    countEnter = 6;
                                    maxCountEnter = countEnter+6;
                                    compareMode = 0;
                                    compareAmpeValue = 0;
                                }
                                else {
                                    mode = tempMode;
                                }
                        LCD_SetMode(tempMode);
                        if ( mode != tempMode ) {
                            for ( temp = maxCountEnter - 1; temp >= countEnter; temp--)
                                LCD_SetEditValue( temp, value[temp] );
                        }
//                        compareAmpeValue = 0;                               // Turn_off compare A mode
                    }
                    else
                        if ( countEnter < maxCountEnter-1 ) {
                            countEnter++;
                            LCD_SetEditValue( countEnter, value[countEnter] );
                        }
                        else
                        {
                            FLAG_VALUE_CHANGED = 0;
                            unIntTemp = (unsigned int) value[1] * 100 + value[2] * 10 + value[3];
                            if (unIntTemp != voltage_set_value) {
                                voltage_set_value = unIntTemp;
                                SetValueSetV(voltage_set_value);
                                FLAG_VALUE_CHANGED = 1;
                            }

                            unIntTemp = (unsigned int) value[4] * 10 + value[5];
                            if (unIntTemp != compareAmpeValue) {
                                compareAmpeValue = unIntTemp;
                                FLAG_VALUE_CHANGED = 1;
                            }

                            unIntTemp = (unsigned int) value[6] * 100 + value[7] * 10 + value[8];
                            if (unIntTemp != maxVol) {
                                maxVol = unIntTemp;
                                FLAG_VALUE_CHANGED = 1;
                            }

                            unIntTemp = (unsigned int) value[9] * 100 + value[10] * 10 + value[11];
                            if (unIntTemp != minVol) {
                                minVol = unIntTemp;
                                FLAG_VALUE_CHANGED = 1;
                            }

                            if (FLAG_VALUE_CHANGED) {
                                LCD_SubMode(compareMode);
                                Data_Output[1] = (unsigned char)(voltage_set_value >> 8);
                                Data_Output[2] = (unsigned char)voltage_set_value;
                                Data_Output[3] = compareAmpeValue | ( compareMode << 7 );
                                Data_Output[4] = (unsigned char)(maxVol >> 8);
                                Data_Output[5] = (unsigned char) maxVol;
                                Data_Output[6] = (unsigned char)(minVol >> 8);
                                Data_Output[7] = (unsigned char) minVol;
                            }
                            mode = LCD_RUN_MODE;
                            LCD_SetMode( mode );
                        }
                }
            }
            break;
        case BUTTON_UP:
            if ( mode == LCD_EDIT_MODE ){
                if ( countEnter > 0) {
                    if ( value[countEnter] < 9 )
                        value[countEnter]++;
                    else
                        value[countEnter] = 0;
                    LCD_SetEditValue( countEnter, value[countEnter]);
                }
                else {
                    if ( tempMode > LCD_V_UD_MODE ) {
                        tempMode--;
                    }
                    else {
                        tempMode = LCD_TEST_VIEW_MODE;
                    }
                    LCD_SetEditValue( 0xFF, tempMode);
                }

            }
            break;
        case BUTTON_DOWN:
            if ( mode == LCD_EDIT_MODE ){
                if ( countEnter > 0 ) {
                    if ( value[countEnter] > 0 ) {
                        value[countEnter]--;
                    }
                    else {
                        value[countEnter] = 9;
                    }
                    LCD_SetEditValue( countEnter, value[countEnter]);
                }
                else {
                    if ( tempMode < LCD_TEST_VIEW_MODE ) {
                        tempMode++;
                    }
                    else {
                        tempMode = LCD_V_UD_MODE;
                    }
                    LCD_SetEditValue( 0xFF, tempMode);
                }
            }
            break;
        case BUTTON_AM:
            if ( LED_AM_PIN == 0 ) {
                TurnLED_AM_OFF();
            }
            else {
                TurnLED_AM_ON();
            }
            break;
        default:
            break;
        }
        // End process button

        if (LCD_UPDATE_EVENT) {
            LCD_UPDATE_EVENT = 0;
            countLCD_Repaint++;
            if ( countLCD_Repaint == LCD_TIME_REPAINT ) {
                LCD_Repaint(0);
                LCD_Update();
                countLCD_Repaint = 0;
            }
        }

        if (UART_RECEIVE_EVENT) {
            UART_RECEIVE_EVENT = 0;

            if ( Data_Input[0] == '*') {
                unIntTemp = ((unsigned int)Data_Input[1] << 8) | Data_Input[2];
                if (unIntTemp <= 999)
                    SetValueTipV( unIntTemp );

                unIntTemp = ((unsigned int)Data_Input[4] << 8) | Data_Input[5];
                if (unIntTemp <= 999)
                    SetValueTipI( unIntTemp );

                SetVisible_TOR( Data_Input[3] & 0x80 );
                SetVisible_ARC( Data_Input[3] & 0x40 );
                SetArrow( Data_Input[3] & 0x3F );
            }
            else
                if (Data_Input[0] == '>') {
                    REQUIRED_TRANSMIT = 0;
//                    LED_AM_PIN = 0;
                    for ( temp = 1; temp < 8; temp++ ) {
                        if (Data_Input[temp] != Data_Output[temp]) {
                            REQUIRED_TRANSMIT = 1;
//                            LED_AM_PIN = 1;
                            break;
                        }
                    }

                    if ( requiredInit ) {
                        unIntTemp = ((unsigned int)Data_Input[1] << 8) | Data_Input[2];
                        if ( unIntTemp <= 999 ) {
                            voltage_set_value = unIntTemp;
                            SetValueSetV(voltage_set_value);
                            value[1] = voltage_set_value / 100;
                            value[2] = ( voltage_set_value % 100 ) / 10;
                            value[3] = ( voltage_set_value % 100 ) % 10;
                        }

                        temp = Data_Input[3] & ~(1<<7);
                        if ( temp <= 99 ) {
                            compareAmpeValue = temp;
                            compareMode = Data_Input[3]>>7;
                            LCD_SubMode(compareMode);
                            value[4] = compareAmpeValue / 10;
                            value[5] = compareAmpeValue % 10;
                        }

                        unIntTemp = ((unsigned int)Data_Input[4] << 8) | Data_Input[5];
                        if ( unIntTemp <= 999 ) {
                            maxVol = unIntTemp;
                            value[6] = maxVol / 100;
                            value[7] = ( maxVol % 100 ) / 10;
                            value[8] = ( maxVol % 100 ) % 10;
                        }

                        unIntTemp = ((unsigned int)Data_Input[6] << 8) | Data_Input[7];
                        if ( unIntTemp <= 999 ) {
                            minVol = unIntTemp;
                            value[9] = minVol / 100;
                            value[10] = ( minVol % 100 ) / 10;
                            value[11] = ( minVol % 100 ) % 10;
                        }

                        Data_Output[1] = (unsigned char)(voltage_set_value >> 8);
                        Data_Output[2] = (unsigned char)voltage_set_value;
                        Data_Output[3] = compareAmpeValue | ( compareMode << 7 );
                        Data_Output[4] = (unsigned char)(maxVol >> 8);
                        Data_Output[5] = (unsigned char) maxVol;
                        Data_Output[6] = (unsigned char)(minVol >> 8);
                        Data_Output[7] = (unsigned char) minVol;
                        requiredInit++;
                    }
                }

            if ( requiredInit == 3 ) {
                LCD_SubMode(compareMode);
                LCD_SetMode( LCD_RUN_MODE );
                mode = LCD_RUN_MODE;
                requiredInit = 0;
            }
            CLRWDT();
            if ( REQUIRED_TRANSMIT || requiredInit || FLAG_VALUE_CHANGED ) {
                for ( count = 0; count < 9; count++ )
                    putch(Data_Output[count]);
                REQUIRED_TRANSMIT = 0;
                FLAG_VALUE_CHANGED = 0;
            }
            LCD_Update();
        }
    }
}
//======================================================================================
static void interrupt isr(void) {
    if ( TMR1IF && TMR1IE ) {
        TMR1IF = 0;
        TMR1H = (unsigned char) (LCD_UPDATE_PERIOD >> 8);
        TMR1L = (unsigned char) (LCD_UPDATE_PERIOD);
        LCD_UPDATE_EVENT = 1;
    }
    if ( RCIF && RCIE ) {
        RCIF = 0;
        globalTemp = RCREG;
//        putch(globalTemp);
        if (globalTemp == '*' || globalTemp == '>' ) {
            Data_Input[0] = globalTemp;
            countData = 1;
        }
        else
            if (globalTemp == '#') {
                lengthDataInput = countData;
                Data_Input[countData] = '\0';
                countData = 0;
                UART_RECEIVE_EVENT = 1;
            }
        else
            if ( countData!=0 && countData < 15 ) {
                Data_Input[countData++] = globalTemp;
            }
            else {
                countData = 0;
            }
    }
}

