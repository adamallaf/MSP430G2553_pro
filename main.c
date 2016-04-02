/*
*   date: 03.03.2016
*
*   Author: Adam Allaf
*
*   Blinky, P1.0 & P1.6 (red & green LED).
*/
#include <msp430.h>

#define LED_DIR     P1DIR
#define LED_OUT     P1OUT

#define LED_RED     BIT0
#define LED_GREEN   BIT6


unsigned int i;


int main(){
    WDTCTL = WDTPW | WDTHOLD;
    DCOCTL = CALDCO_1MHZ;
    BCSCTL1 = CALBC1_1MHZ;
    LED_DIR |= LED_RED;
    LED_DIR |= LED_GREEN;
    LED_OUT &= ~LED_RED;
    LED_OUT |= LED_GREEN;
    for(;;){
        LED_OUT ^= LED_RED | LED_GREEN;
        i = 0;
        while(i < 0x8000) i++;
    }
    return 0;
}
