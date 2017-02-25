//#include "GenericTypeDefs.h"
#include "p18f4431.h"
#include "adc.h"
#include "stdio.h"
#include "delays.h"
#include "timers.h"
#include "EEP.h"
#include "dthc_lcd_controller.h"
#include "usart.h"
#include "HardwareProfile - DTHCBoard.h"

//======================================================================================
#pragma config OSC   = HS
#pragma config WDTEN = ON  /* Watchdog Timer ON */
#pragma config WINEN = OFF  /* Watchdog Timer Enable Window OFF */
#pragma config WDPS  = 128  /* Watchdog Timer Postscaler */
#pragma config LVP   = OFF  /* Turns Low Volt Programming off   */

//======================================================================================
// Cac ham dieu khien lcd
//extern volatile char lcd_buf[16]; // bien mang xuat du lieu ra lcd
//extern void Initial_4bitLCD(void); // Initial LCD Interface
//extern void SetCursor(unsigned char); // Set Cursor Address
//extern void print_LCD(void); // Print String to LCD*/
//======================================================================================
#define VOL_DELTA_MAX               1
#define ARROW_SETV_BIGGER           UP_ARROW
#define ARROW_SETV_SMALLER          DOWN_ARROW
#define REQUIRED_SAMPLE             100
#define REQUIRED_AMPE_SAMPLE        50
//#define DELAY_TIME                  51536L              // 5ms
//======================================================================================
// Define for interrupt rountine process ADC signal
volatile unsigned int MAX_VOLTAGE;
volatile unsigned int MIN_VOLTAGE;
unsigned char tempARC_1, tempARC_2;

volatile unsigned long int adc_temp_value;
volatile unsigned char sampleCount;
volatile unsigned int voltage_set_value;

volatile unsigned long int adc_ampe_value;
volatile unsigned char ampeSampleCount;
volatile unsigned int ampe_value;
unsigned char compareAmpeMode;
float   tempFloat;

volatile unsigned long int adc_value;
volatile unsigned int voltage_value;
volatile unsigned char countLoop;
volatile int delta;

ARROW_STATE curArrow;
//======================================================================================
// Define for scanning button
unsigned char value[15];
unsigned char Data_Output[15], Command_Return[15];
volatile unsigned char Data_Input[15];
volatile unsigned char globalTemp, countData, lengthDataInput;
volatile unsigned char UART_RECEIVE_EVENT;
volatile unsigned char TIMER_PERIOD_100MS_EVENT;
unsigned char USART_START_TRANSMIT_EVENT;
unsigned char FLAG_REPEAT_COMMAND;
volatile unsigned char countTimer;
unsigned char compareAmpeValue;
//unsigned char GotButtonPressed;

//======================================================================================
// Private Prototypes
void high_isr();
void ProcessADCSignal(void);
//======================================================================================
#pragma code high_vector=0x08
void interrupt_at_high_vector(void)
{
  _asm GOTO high_isr _endasm
}
//======================================================================================
#pragma code /* return to the default code section */
#pragma interrupt high_isr
void high_isr(void)
{
    if ( PIR1bits.RCIF && PIE1bits.RCIE ) {
        globalTemp = RCREG;
//        WriteUSART(globalTemp);
        if (globalTemp == '*') {
            Data_Input[0] = '*';
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

    if ( INTCONbits.TMR0IE && INTCONbits.TMR0IF ) {
        INTCONbits.TMR0IF = 0;      // clear timer0 overflow flag
        TMR0H = 0;
        TMR0L = 0;
        countTimer++;
        if ( countTimer >= 3 ) {
            countTimer = 0;
            TIMER_PERIOD_100MS_EVENT = 1;
        }
        T0CONbits.TMR0ON = 1;
    }    
}
//======================================================================================
void Init_ADC_Demo(void) {
    //ADC setup
    TRISA   = 0xFF;         //Set pin RA0 to input
    ANSEL0  = 0b00000011;	//Set RA0 to analog
    ANSEL1  = 0;

    ADCON0	= 0b00000001;	//single-shot conversion simultaneous mode 1 group A, B
	ADCON1	= 0b00000000;	//Use AVdd and AVss for references, don't use FIFO buffer
    ADCON2	= 0b10111100;	//R-justified, 36TAD aquisition time, TAD=2*TOSC, where TOSC=0.5 us (clock = FOSC/4)
	ADCON3	= 0b00000000;	//no triggers
    ADCHS	= 0b00000000;	//Use AN0 - AN1
}
//======================================================================================
unsigned int Get_ADC_Demo(void) {
    ADCON0bits.GO_DONE=1;		//Start A/D conversion process
	while(ADCON0bits.GO_DONE){}	//wait for process to finish       
    return (((unsigned int)ADRESH << 8) | ADRESL);
}
//======================================================================================
void Init_IO_Port(void) {
//    TRIS_BT_A_M = 1;
//    TRIS_BT_UP = 1;
//    TRIS_BT_DOWN = 1;
//    TRIS_BT_ENTER = 1;
    TRIS_ARC_OK = 0;
    TRIS_THC_UP = 0;
    TRIS_THC_DWN = 0;
    TRIS_TORCH = 1;
    TRIS_FIRE = 0;
    TRIS_PIC_IN = 1;
//    GotButtonPressed = 0;

    LAT_THC_DWN = 1;
    LAT_THC_UP = 1;
}

//ButtonState GetButton(void) {
//    ButtonState button = NONE_BUTTON;

//    if ( BT_ENTER == PRESS_STATE )
//        button = BUTTON_ENTER;
//    else
//        if ( BT_UP == PRESS_STATE )
//            button = BUTTON_UP;
//        else
//            if ( BT_DOWN == PRESS_STATE )
//                button = BUTTON_DOWN;
//            else
//                if ( BT_A_M == PRESS_STATE )
//                    button = BUTTON_AM;


//    if ( button != NONE_BUTTON ) {
////        if (button == lastButton) {
////            if ( GotButtonPressed < 20 ) {
////                GotButtonPressed++;
////                button = NONE_BUTTON;
////            }
////            else {
////                if (GotButtonPressed == 20)
////                    GotButtonPressed++;
////                else {
////                    button = NONE_BUTTON;
////                }
////            }
////        }
////        else {
////            lastButton = button;
////            button = NONE_BUTTON;
////            GotButtonPressed = 0;
////        }
//        if ( lastButton != button ) {
//            GotButtonPressed = 0;
//            lastButton = button;
//        }
//        if ( GotButtonPressed != 20 )
//            button = NONE_BUTTON;
//        if ( GotButtonPressed <= 20 )
//            GotButtonPressed++;
//    }
//    else {
//        GotButtonPressed = 0;
//    }

//    return button;
//}
//======================================================================================
void InitTimer(void) {
    OpenTimer0 ( TIMER_INT_ON & T0_16BIT &      // ENABLE TIMER0 INT - MODE 16BIT
                 T0_SOURCE_INT & T0_PS_1_1);
    WriteTimer0( 0 );                  // delay 5ms
    RCONbits.IPEN = 1;                          // enable priority levels on interrupts
    INTCON2bits.TMR0IP = 1;                     // High prority    
}
//======================================================================================
void Write_Data_EEP(void) {
    unsigned char i;
    for ( i = 0; i < 7; i++ )
        Write_b_eep( i+1, value[i+1]);
}

//======================================================================================
void InitializeSystem(void) {
    unsigned char temp;
    unsigned char i;

//    Init_All_Led();
    ClrWdt();                           // Clear Watchdog
	Init_ADC_Demo();
    Init_IO_Port();
    InitTimer();

    OpenUSART( USART_TX_INT_OFF &
               USART_RX_INT_ON  &
               USART_ASYNCH_MODE &
               USART_EIGHT_BIT  &
               USART_CONT_RX    &
               USART_BRGH_HIGH,
               51);

    countData = 0;
    IPR1bits.RCIP = 1;
    UART_RECEIVE_EVENT = 0;

    // init read write eep
    ClrWdt();                                   // Clear Watchdog
    temp = Read_b_eep( 0x00 );                  // Read EEP at 0x00
    if (temp == 'R') {                          // Got data
        for ( i = 0; i < 7; i++) {
            value[i+1] = Read_b_eep( i+1 );
        }
    }
    else {
        value[1] = 0;
        value[2] = 0;
        value[3] = 0;
        value[4] = (unsigned char)(300 >> 8);
        value[5] = (unsigned char) 300;
        value[6] = (unsigned char)(80 >> 8);
        value[7] = (unsigned char) 80;
        Write_b_eep( 0x00, 'R');                // Init data
        Write_Data_EEP();
    }
    value[0] = '>';
    value[8] = '#';    
    RCONbits.IPEN = 1;
    INTCONbits.GIE = 1;                         // enable all high priority interrupts
}
//======================================================================================
void Delay50US() {

}
//======================================================================================
int abs(int n) {
    if (n<0)
        return -n;
    else
        return n;
}
//======================================================================================
void VisibleTOR(unsigned char eTOR) {
    if (eTOR == 1)
        Data_Output[3] |= 0x80;
    else
        Data_Output[3] &= ~(0x80);
}
//======================================================================================
void VisibleARC(unsigned char eARC) {
    if (eARC == 1)
        Data_Output[3] |= 0x40;
    else
        Data_Output[3] &= ~(0x40);
}
//======================================================================================
void SetVisibleArrow(ARROW_STATE state) {
    Data_Output[3] &= (0b11000000);
    Data_Output[3] |= state;
}
//======================================================================================
void SetTipV(unsigned int value) {
    Data_Output[1] = (unsigned char) (value >> 8);
    Data_Output[2] = (unsigned char) value;
}
//======================================================================================
void ProcessADCSignal() {
//    adc_temp_value = adc_temp_value + Get_ADC_Demo();
    if( sampleCount >= REQUIRED_SAMPLE )
    {
        adc_value = adc_temp_value / sampleCount;
        voltage_value = (unsigned int)(adc_value * 300 / 1024);            //5)/1024)*100);
        SetTipV((unsigned int)voltage_value);

        if (compareAmpeMode == 0) {
            if ( voltage_value >= MIN_VOLTAGE && voltage_value <= MAX_VOLTAGE ) {
                tempARC_1 = 1;
                tempARC_2 = 1;
            }
            else {
                tempARC_1 = 0;
                tempARC_2 = 0;
            }
        }
        sampleCount=0;
        adc_temp_value =0;
    }

    if (  compareAmpeMode && (ampeSampleCount >= REQUIRED_AMPE_SAMPLE) ) {
        tempFloat = (float)adc_ampe_value / ampeSampleCount;
        tempFloat = tempFloat * 5 / 1024;
        tempFloat = 57.69*tempFloat - 49.23;
        if (tempFloat < 0)
            tempFloat = 0;
        ampe_value = (unsigned int) tempFloat;
        if (ampe_value >= compareAmpeValue) {
            tempARC_1 = 1;
            tempARC_2 = 1;
        }
        else {
            tempARC_1 = 0;
            tempARC_2 = 0;
        }
        Data_Output[4] = (unsigned char) (ampe_value >> 8);
        Data_Output[5] = (unsigned char) ampe_value;
        adc_ampe_value = 0;
        ampeSampleCount = 0;
    }

    if (PORT_PIC_IN == 1) {
        tempARC_1 = 0;
        tempARC_2 = 0;
        VisibleARC(0);
        LAT_ARC_OK = 0;
    }
    else {
        VisibleARC(tempARC_1);
        LAT_ARC_OK = tempARC_2;
    }

    if ( tempARC_1 != 0 ) {
        if ( voltage_value >= 50 && voltage_value <= 300 ) {
            delta = (int)voltage_value - (int)voltage_set_value;
            if (delta < 0 )
                delta = -delta;
            if ( delta <= VOL_DELTA_MAX ) {
                SetVisibleArrow( NONE_ARROW );
                LAT_THC_DWN = 0;
                LAT_THC_UP =  0;
            }
            else
            {
                if ( voltage_value < voltage_set_value ) {
                    curArrow = ARROW_SETV_BIGGER;
                    LAT_THC_UP = 1;
                    LAT_THC_DWN = 0;
                }
                else
                {
                    curArrow = ARROW_SETV_SMALLER;
                    LAT_THC_DWN = 1;
                    LAT_THC_UP = 0;
                }
                SetVisibleArrow( curArrow );
            }
        }
        else {
            LAT_THC_DWN = 0;
            LAT_THC_UP = 0;
            SetVisibleArrow( NONE_ARROW);
        }
    }
    else {
        LAT_THC_DWN = 0;
        LAT_THC_UP = 0;
        SetVisibleArrow( NONE_ARROW);
    }

}
//======================================================================================
void main() {
    // Define for ADC demo    
    unsigned char count;
    unsigned char countDataTransmit;
    unsigned char countCmdTransmit;
    unsigned char flag_data_change;
    unsigned int temp_data;
    unsigned char switchData;
    unsigned char temp_char;
    // End Define for ADC demo
    InitializeSystem();
    ClrWdt();                           // Clear Watchdog
    Delay10KTCYx(20);
    ClrWdt();                           // Clear Watchdog
    Delay10KTCYx(20);
    ClrWdt();                           // Clear Watchdog

    adc_value =0;
    adc_temp_value =0;
    voltage_value =0;

    // Init param
    voltage_set_value = ((unsigned int)value[1] << 8) | value[2];
    MAX_VOLTAGE = ((unsigned int)value[4] << 8) | value[5];
    MIN_VOLTAGE = ((unsigned int)value[6] << 8) | value[7];
    compareAmpeValue = value[3] & ~(1<<7);
    compareAmpeMode = value[3]>>7;

    // prepare data output
    Data_Output[0] = '*';
    Data_Output[1] = 0;                 // TipV
    Data_Output[2] = 0;
    Data_Output[3] = 0;                 // TOR _ ARC _ ARROW
    Data_Output[4] = 0;
    Data_Output[5] = 0;
    Data_Output[6] = '#';
    // end prepare data output

//    SetValueSetV(voltage_set_value);
    curArrow = NONE_ARROW;
    SetVisibleArrow(NONE_ARROW);
    SetValueTipV(0);
//    SetValueSetV(300);	
    VisibleTOR(0);	    
    VisibleARC(0);	    
//    LCD_SetMode( LCD_RUN_MODE);
    sampleCount = 0;
    adc_temp_value = 0;
    adc_ampe_value = 0;
    ampeSampleCount = 0;
    count = 0;
    USART_START_TRANSMIT_EVENT = 0;
    FLAG_REPEAT_COMMAND = 0;
    countDataTransmit = 0;
    switchData = 0;
//    SelChanConvADC(0);

    while(1){        
        ClrWdt();                       // Clear wathdog
        VisibleTOR(PORT_TORCH);
        LAT_FIRE = PORT_TORCH;

        if ( !ADCON0bits.GO_DONE ) {
            if (switchData == 0) {
                adc_temp_value += (((unsigned int)ADRESH << 8) | ADRESL);
                sampleCount++;
                switchData = 1;
                ADCON0bits.ACMOD0 = 1;
//                SelChanConvADC(1);
            }
            else {	            
                adc_ampe_value += (((unsigned int)ADRESH << 8) | ADRESL);
//                Data_Output[3] = (unsigned char) (adc_ampe_value >> 8);
//                Data_Output[4] = (unsigned char) adc_ampe_value;
                ampeSampleCount++;
                switchData = 0;
                ADCON0bits.ACMOD0 = 0;
//                SelChanConvADC(0);
            }
			ADCON0bits.GO_DONE=1;		//Start A/D conversion process	
            ProcessADCSignal();
        }

        ClrWdt();                           // Clear Watchdog
        VisibleTOR(PORT_TORCH);
        LAT_FIRE = PORT_TORCH;
        if ( UART_RECEIVE_EVENT ) {
            flag_data_change = 1;

            temp_data = ((unsigned int)Data_Input[1] << 8) | Data_Input[2];
            if (temp_data <= 999) {
                voltage_set_value = temp_data;
                value[1] = Data_Input[1];
                value[2] = Data_Input[2];                
            }

            temp_char = Data_Input[3] & ~(1<<7);
            if ( temp_char <= 99 ) {
                compareAmpeValue = temp_char;
                compareAmpeMode = Data_Input[3]>>7;
                value[3] = Data_Input[3];                
            }

            temp_data = ((unsigned int)Data_Input[4] << 8) | Data_Input[5];
            if ( temp_data <= 999 ) {
                MAX_VOLTAGE = temp_data;
                value[4] = Data_Input[4];
                value[5] = Data_Input[5];                
            }

            temp_data = ((unsigned int)Data_Input[6] << 8) | Data_Input[7];
            if ( temp_data <= 999 ) {
                MIN_VOLTAGE = temp_data;
                value[6] = Data_Input[6];
                value[7] = Data_Input[7];                
            }

            if (flag_data_change) {
                Write_Data_EEP();
            }
            FLAG_REPEAT_COMMAND = 1;
            countCmdTransmit = 0;
            UART_RECEIVE_EVENT = 0;
        }

        ClrWdt();                           // Clear Watchdog
        VisibleTOR(PORT_TORCH);
        LAT_FIRE = PORT_TORCH;
        if ( TIMER_PERIOD_100MS_EVENT ) {
            count ++;
            if ( count == 5 ) {
                USART_START_TRANSMIT_EVENT = 1;
                countDataTransmit = 0;
                count = 0;
            }
            TIMER_PERIOD_100MS_EVENT = 0;
        }

        VisibleTOR(PORT_TORCH);
        LAT_FIRE = PORT_TORCH;
        if ( USART_START_TRANSMIT_EVENT || FLAG_REPEAT_COMMAND ) {
            if ( !BusyUSART() ) {
                if (FLAG_REPEAT_COMMAND) {
                    WriteUSART( value[countCmdTransmit] );
                    if ( countCmdTransmit < 8 )
                        countCmdTransmit++;
                    else
                        FLAG_REPEAT_COMMAND = 0;
                }
                else {
                    WriteUSART( Data_Output[countDataTransmit] );
                    if ( countDataTransmit < 6 ) {
                        countDataTransmit++;
                    }
                    else {
                        USART_START_TRANSMIT_EVENT = 0;
                    }
                }
            }
        }

    }
}
