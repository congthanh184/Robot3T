/********************************************************************
 FileName:     	  HardwareProfile - DTHCBoard.h
 Dependencies:   See INCLUDES section
 Processor:         PIC18 USB Microcontrollers
 Hardware:          DTHC_MAIN_BOARD
 Compiler:           Microchip C18
 Group:               3T Robotics Group
 
********************************************************************
 File Description:

 Change History:
  Rev   Date            Description
  1.0   24/04/2012   Initial release
 
********************************************************************/

#ifndef HARDWARE_PROFILE_DTHC_BOARD_H
#define HARDWARE_PROFILE_DTHC_BOARD_H


    #define CLOCK_FREQ 2000000

    /** LED ************************************************************/
//    #define     Init_All_Led()      TRISDbits.TRISD1 = 0
    
//    #define     TurnLED_AM_ON()     LATDbits.LATD0  = 0;
//    #define     TurnLED_AM_OFF()    LATDbits.LATD0  = 1;
//    #define     LAT_LED_AM          LATDbits.LATD0
    

//    #define     TRIS_BT_DOWN        TRISCbits.TRISC3
//    #define     TRIS_BT_UP          TRISCbits.TRISC2
//    #define     TRIS_BT_ENTER       TRISDbits.TRISD0
//    #define     TRIS_BT_A_M         TRISCbits.TRISC1

//    #define     BT_DOWN             PORTCbits.RC3
//    #define     BT_UP               PORTCbits.RC2
//    #define     BT_ENTER            PORTDbits.RD0
//    #define     BT_A_M              PORTCbits.RC1
    
//    #define     PRESS_STATE         0

    /** POT ************************************************************/    

    /** USB external transceiver interface (optional) ******************/
    
    /** I/O pin definitions ********************************************/
    #define     INPUT_PIN           1
    #define     OUTPUT_PIN          0

    #define     TRIS_ARC_OK         TRISAbits.RA5
    #define     TRIS_THC_UP         TRISDbits.RD2
    #define     TRIS_THC_DWN        TRISDbits.RD3
    #define     TRIS_TORCH          TRISDbits.RD4
    #define     TRIS_FIRE           TRISEbits.RE0
    #define     TRIS_PIC_IN         TRISDbits.RD5

    #define     LAT_ARC_OK          LATAbits.LATA5
    #define     LAT_THC_UP          LATDbits.LATD2
    #define     LAT_THC_DWN         LATDbits.LATD3
    #define     LAT_FIRE            LATEbits.LATE0

    #define     PORT_TORCH          PORTDbits.RD4
    #define     PORT_PIC_IN         PORTDbits.RD5
#endif  //HARDWARE_PROFILE_DTHC_BOARD_H
