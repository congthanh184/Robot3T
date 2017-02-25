//===========================================================================
// Cac ham de xuat data ra lcd1602 hoat dong o che do 4 bit
// Su dung truc tiep trong nhung truong trinh lon 
// Chi can thay doi ket noi phan cung
//============================================================================
#define _XTAL_FREQ	8000000UL                           // define for delay routine
#include "htc.h"
#include "HardwareProfile-THC_DisplayBoard.h"
#include "stdio.h" // Used "sprintf" Function


// Depending on the internal Clock Frequency
// Value is computed as following
// Time(us) x fclk (MHz) /4
// For fclk=8MHz

#ifdef USE_DELAY_KTCY
    #define LCD_INIT_DELAY		80		// Delay for Init LCD: 40ms (function Delay1K) --> 80000
    #define LCD_SPECIAL_DELAY	4		// Delay Between Special Commands 2ms (function Delay1K) --> 4000
    #define LCD_E_DELAY 		10		// Delay to validate E: 50us (function Delay10) --> 100
#else
    #define LCD_INIT_DELAY		40		// Delay for Init LCD: 40ms (function __delay_ms)
    #define LCD_SPECIAL_DELAY	2		// Delay Between Special Commands 2ms (function __delay_ms)
    #define LCD_E_DELAY 		20		// Delay to validate E: 15us (function __delay_us)
#endif

#if 0
    //============================================================================
    // Dinh nghia cac chan giao tiep voi lcd
    //============================================================================
    #define TRIS_DATA_PIN_4     TRISBbits.TRISB2 	        // Ket noi vao chan DB4
    #define TRIS_DATA_PIN_5     TRISBbits.TRISB3 	        // Ket noi vao chan DB5
    #define TRIS_DATA_PIN_6     TRISBbits.TRISB4 	        // Ket noi vao chan DB6
    #define TRIS_DATA_PIN_7     TRISBbits.TRISB5 	        // Ket noi vao chan DB7
    #define TRIS_RS             TRISBbits.TRISB0 			// Ket noi vao chan RS
    #define TRIS_RW             TRISCbits.TRISC5 			// Ket noi vao chan RW
    #define TRIS_E              TRISBbits.TRISB1 			// Ket noi vao chan E

    #define DATA_PIN_4          LATBbits.LATB2 			    // RC13 = D4 LCD
    #define DATA_PIN_5          LATBbits.LATB3 			    // RC14 = D5 LCD
    #define DATA_PIN_6          LATBbits.LATB4 			    // RD3 = D6 LCD
    #define DATA_PIN_7          LATBbits.LATB5 			    // RD2 = D7 LCD
    #define RS_PIN              LATBbits.LATB0 				// RB6 = RS LCD
    #define RW_PIN              LATCbits.LATC5 				// RB7 = RW LCD
    #define E_PIN               LATBbits.LATB1 				// RDB8 = E LCD

    #define READ_PIN_BUSY       PORTBbits.RB5               // Read LCD Busy Pin
#endif

//===========================================================================
// Khai bao cac thanh ghi dieu khien
//===========================================================================
#define DON 0x0F // Display on
#define DOFF 0x0B // Display off
#define CURSOR_ON 0x0F // Cursor on
#define CURSOR_OFF 0x0D // Cursor off
#define BLINK_ON 0x0F // Cursor Blink
#define BLINK_OFF 0x0E // Cursor No Blink
//=============================================================================
// Khai bao cac thanh ghi xuat du lieu
//=============================================================================
#define SHIFT_CUR_LEFT 0x13 // Cursor shifts to the left
#define SHIFT_CUR_RIGHT 0x17 // Cursor shifts to the right
#define SHIFT_DISP_LEFT 0x1B // Display shifts to the left
#define SHIFT_DISP_RIGHT 0x1F // Display shifts to the right

char lcd_buf[16]; // bien mang xuat du lieu ra lcd
static char saveLevelTemp;
//==============================================================================
// Cac ham dieu khien lcd
//===============================================================================
void Initial_4bitLCD(void); // Initial LCD Interface
void SetCursor(unsigned char); // Set Cursor Address
void WriteCmdLCD(unsigned char); // Write Command
void WriteDataLCD(unsigned char); // Write Data
void Delay_tW_LCD(void); // Enable Pulse Delay
char Read_BusyLCD(void); // Read LCD Busy
void print_LCD(void); // Print String to LCD
void Delay(unsigned long int); // Delay Time Function
void Clear_LCD(void); // Clear LCD Funcion
void Enable_Blink_LCD(unsigned char enable); // Enable/Disable Blink

//==============================================================================
// Init LCD Delay
//==============================================================================
void Lcd_Init_Delay (void)
{
#ifdef USE_DELAY_KTCY
    Delay1KTCYx(LCD_INIT_DELAY);
#else
    __delay_ms(LCD_INIT_DELAY);
#endif
}

//==============================================================================
// Between Command Delay
//==============================================================================
void Lcd_Special_Delay (void)
{
#ifdef USE_DELAY_KTCY
	Delay1KTCYx(LCD_SPECIAL_DELAY);
#else
    __delay_ms(LCD_SPECIAL_DELAY);
#endif
}

//==============================================================================
// Delay to validate Data/Command
//==============================================================================
void Lcd_E_Strobe_Delay(void)
{
#ifdef USE_DELAY_KTCY
	Delay10TCYx(LCD_E_DELAY);
#else
    __delay_us( LCD_E_DELAY );
#endif
}

//================================================================================
// Initial 4Bit LCD 
//================================================================================
void Initial_4bitLCD(void)
{
    ANSELH = 0;
    TRIS_DATA_PIN_4 = 0; // Set Port Direction = Output
    TRIS_DATA_PIN_5 = 0;
    TRIS_DATA_PIN_6 = 0;
    TRIS_DATA_PIN_7 = 0;
    TRIS_RS = 0;
    TRIS_RW = 0;
    TRIS_E = 0;
    RS_PIN = 0;
    RW_PIN = 0;
    E_PIN = 0;

    __delay_ms(100);

    DATA_PIN_4 = 1; // Start 4 Bit Initial
    DATA_PIN_5 = 1;
    DATA_PIN_6 = 0;
    DATA_PIN_7 = 0;
    RS_PIN = 0; // Instruction Select
    RW_PIN = 0; // Write Select
    E_PIN = 0; // Disable LCD Read/Write
    
    // Wait 15mS
    Lcd_Init_Delay();
    Lcd_Init_Delay();
    
    DATA_PIN_4 = 1; // Start 4 Bit Initial
    DATA_PIN_5 = 1;
    DATA_PIN_6 = 0;
    DATA_PIN_7 = 0;
    RS_PIN = 0; // Instruction Select
    RW_PIN = 0; // Write Select
    E_PIN = 1; // Strobe High Nibble
    Delay_tW_LCD(); // Enable Pulse Delay
    E_PIN = 0;
    
    // Wait 4.1mS
    Lcd_Special_Delay();
    Lcd_Special_Delay();
    Lcd_Special_Delay();
    
    DATA_PIN_4 = 1; // Start 4 Bit Initial
    DATA_PIN_5 = 1;
    DATA_PIN_6 = 0;
    DATA_PIN_7 = 0;
    RS_PIN = 0; // Instruction Select
    RW_PIN = 0; // Write Select
    E_PIN = 1; // Strobe High Nibble
    Delay_tW_LCD(); // Enable Pulse Delay
    E_PIN = 0;
    
    // Wait 100uS    
    Lcd_Special_Delay();
    TRIS_DATA_PIN_4 = 1; // Set Port Direction = INput
    TRIS_DATA_PIN_5 = 1;
    TRIS_DATA_PIN_6 = 1;
    TRIS_DATA_PIN_7 = 1;
    Delay_tW_LCD();

    WriteCmdLCD(0x32); // Start Function Set 4Bit LCD Interface
    Lcd_Special_Delay();
    WriteCmdLCD(0x28); // Function Set (DL=0 4-Bit,N=1 2 Line,F=0 5X7)
    Lcd_Special_Delay();
    WriteCmdLCD(0x0C); // Display on/off Control (Entry Display,Cursor off,Cursor not Blink)
    Lcd_Special_Delay();
    WriteCmdLCD(0x06); // Entry Mode Set (I/D=1 Increment,S=0 Cursor Shift)
    Lcd_Special_Delay();
    WriteCmdLCD(0x01); // Clear Display (Clear Display,Set DD RAM Address=0)

}

//=========================================================================================
// Enable Blink
//=========================================================================================
void Enable_Blink_LCD(unsigned char enable) {
    if (enable) {
        WriteCmdLCD(0x0E);
    }
    else {
        WriteCmdLCD(0x0C);
    }
    Lcd_Special_Delay();
}

//=========================================================================================
// Clear LCD 
//=========================================================================================
void Clear_LCD(void) {
    WriteCmdLCD(0x01); // Clear Display (Clear Display,Set DD RAM Address=0)
    Lcd_Special_Delay();
}
//=========================================================================================
// Set Cursor Address LCD 
//=========================================================================================
void SetCursor(unsigned char address)
{
    while(Read_BusyLCD()); // Wait LCD Ready

    TRIS_DATA_PIN_4 = 0; // Set Port Direction = Output
    TRIS_DATA_PIN_5 = 0;
    TRIS_DATA_PIN_6 = 0;
    TRIS_DATA_PIN_7 = 0;
    Delay_tW_LCD();

    RS_PIN = 0; // Select Instruction
    Delay_tW_LCD();
    RW_PIN = 0; // Write Select
    Delay_tW_LCD();
    DATA_PIN_7 = 1; // DB7 Must be 1 For Setting DDRam ADDR
    DATA_PIN_6 = ((address & 0x40)>>6);
    DATA_PIN_5 = ((address & 0x20)>>5);
    DATA_PIN_4 = ((address & 0x10)>>4);
    Delay_tW_LCD();

    E_PIN = 1; // Strobe High Nibble
    Delay_tW_LCD(); // Enable Pulse Delay
    E_PIN = 0;
    Delay_tW_LCD(); // Enable Pulse Delay

    DATA_PIN_7 = ((address & 0x08)>>3);
    DATA_PIN_6 = ((address & 0x04)>>2);
    DATA_PIN_5 = ((address & 0x02)>>1);
    DATA_PIN_4 = ((address & 0x01)>>0);
    Delay_tW_LCD();

    E_PIN = 1; // Strobe Low Nibble
    Delay_tW_LCD(); // Enable Pulse Delay
    E_PIN =0;
    Delay_tW_LCD(); // Enable Pulse Delay
}
//=========================================================================================
// Write Command to LCD 
//=========================================================================================
void WriteCmdLCD(unsigned char cmd)
{
    while(Read_BusyLCD()); // Wait LCD Ready

    TRIS_DATA_PIN_4 = 0; // Set Port Direction = Output
    TRIS_DATA_PIN_5 = 0;
    TRIS_DATA_PIN_6 = 0;
    TRIS_DATA_PIN_7 = 0;
    Delay_tW_LCD();

    RS_PIN = 0; // Select Instruction
    Delay_tW_LCD();
    RW_PIN = 0; // Write Select
    Delay_tW_LCD();

    DATA_PIN_7 = ((cmd & 0x80)>>7);
    DATA_PIN_6 = ((cmd & 0x40)>>6);
    DATA_PIN_5 = ((cmd & 0x20)>>5);
    DATA_PIN_4 = ((cmd & 0x10)>>4);
    Delay_tW_LCD();

    Delay_tW_LCD(); // Enable Pulse Delay    
    E_PIN = 1; // Strobe High Nibble
    Delay_tW_LCD(); // Enable Pulse Delay
    E_PIN = 0;    
    
    DATA_PIN_7 = ((cmd & 0x08)>>3);
    DATA_PIN_6 = ((cmd & 0x04)>>2);
    DATA_PIN_5 = ((cmd & 0x02)>>1);
    DATA_PIN_4 = (cmd & 0x01);
    Delay_tW_LCD(); // Enable Pulse Delay        
    E_PIN = 1; // Strobe Low Nibble
    Delay_tW_LCD(); // Enable Pulse Delay
    E_PIN = 0;    
    Delay_tW_LCD(); // Enable Pulse Delay
}

//=========================================================================================
// Write Data to LCD
//=========================================================================================
void WriteDataLCD(unsigned char data)
{
    while(Read_BusyLCD()); // Wait LCD Ready

    TRIS_DATA_PIN_4 = 0; // Set Port Direction = Output
    TRIS_DATA_PIN_5 = 0;
    TRIS_DATA_PIN_6 = 0;
    TRIS_DATA_PIN_7 = 0;    
    Delay_tW_LCD();

    RS_PIN = 1; // Select Data
    Delay_tW_LCD();
    RW_PIN = 0; // Write Select
    Delay_tW_LCD();
    DATA_PIN_7 = ((data & 0x80)>>7);
    DATA_PIN_6 = ((data & 0x40)>>6);
    DATA_PIN_5 = ((data & 0x20)>>5);
    DATA_PIN_4 = ((data & 0x10)>>4);
    Delay_tW_LCD();
    E_PIN = 1; // Strobe High Nibble
    Delay_tW_LCD(); // Enable Pulse Delay
    E_PIN = 0;
    Delay_tW_LCD(); // Enable Pulse Delay
    
    DATA_PIN_7 = ((data & 0x08)>>3);
    DATA_PIN_6 = ((data & 0x04)>>2);
    DATA_PIN_5 = ((data & 0x02)>>1);
    DATA_PIN_4 = (data & 0x01);
    Delay_tW_LCD();
    E_PIN = 1; // Strobe Low Nibble
    Delay_tW_LCD(); // Enable Pulse Delay
    E_PIN = 0;   
    Delay_tW_LCD(); // Enable Pulse Delay
}
//=========================================================================================
// Pulse Delay Write LCD
//=========================================================================================
void Delay_tW_LCD(void) // Enable Pulse Delay
{
    //int i;
    //for(i=0;i<500;i++); // Wait 10uS
    __delay_us( LCD_E_DELAY );
    //Delay10TCYx(5);       ///2/ Delay 30 Tcy ~ 15uS        
}
//=========================================================================================
// Wait LCD Ready
//=========================================================================================
char Read_BusyLCD(void)
{

    //TRIS_DATA_PIN_7 = 1; // Set Port Direction = Input
    TRIS_DATA_PIN_4 = 1; // Set Port Direction = INput
    TRIS_DATA_PIN_5 = 1;
    TRIS_DATA_PIN_6 = 1;
    TRIS_DATA_PIN_7 = 1;

    RW_PIN = 1; // Read Function Select
    RS_PIN = 0; // Instruction Select
    Delay_tW_LCD(); // Enable Pulse Delay

    E_PIN = 1; // Enable Read
    Delay_tW_LCD(); // Enable Pulse Delay

    saveLevelTemp = READ_PIN_BUSY;

    E_PIN = 0; // Disable Read
    Delay_tW_LCD(); // Enable Pulse Delay
    E_PIN = 1;
    Delay_tW_LCD(); // Enable Pulse Delay
    E_PIN = 0;
    RW_PIN = 0;
    return saveLevelTemp;
}
//=========================================================================================
// Print String to LCD
//=========================================================================================

void print_LCD(void)
{
    char *p; // Pointer Buffer
    p = lcd_buf; // LCD Buffer

    do // Get char & Print Until null
    {
    WriteDataLCD(*p); // Write char to UART1
    p++; // Next char
    }
    while(*p != '\0'); // End of ASCII (null)

    return;
}
