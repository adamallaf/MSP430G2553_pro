/*
*   date:   02.04.2016
*   update: 18.05.2016
*
*   Author: Adam Allaf
*
*   Using timer0 to generate PWM on P1.6 (green LED)
*   & button on P1.3 to toggle P1.0 (red LED)
*   with cpu@1MHz in sleep mode (LPM0).
*/
#include <msp430.h>


volatile unsigned int updown, counter;


int main(){
    WDTCTL = WDTPW | WDTHOLD;   // stop watchdog

    // 1MHz clock
    BCSCTL1 = CALBC1_1MHZ;
    DCOCTL = CALDCO_1MHZ;

    P1SEL |= BIT6;
    P1SEL2 &= ~BIT6;

    P1DIR = 0;
    P1DIR |= BIT6 | BIT0;
    P1OUT &= ~BIT0;

    P1REN |= BIT3;      // enable pullup/pulldown resistor
    P1OUT |= BIT3;      // P1.3 is pulled up
    P1IE |= BIT3;       // Interrupt enable for P1.3
    P1IES |= BIT3;      // Interrupt edge enable, IFG set with a high to low transition
    P1IFG &= ~BIT3;     // clear P1.3 interrupt flag

    TA0CCR0 = 0x3e8;    // T = 1ms
    TA0CCR1 = 0x3e8;    // 100% duty cycle
    counter = 0x3e8;
    updown = 0;         // start counting down

    // timer0 init
    // ID_0 -> /1 divider
    // MC_1 -> up mode, count up to CCR0
    // TASSEL_2 -> SMCLK as timer clock source
    TA0CTL |= TASSEL_2 | ID_0 | MC_1 | TAIE;
    TA0CCTL0 |= CCIE;   // when timer count fron CCR0 ot 0x0 an interrupt is generated
    TA0CCTL1 |= OUTMOD_2;  // set/reset mode, set on CCR1 and reset on CCR0

    WRITE_SR(CPUOFF | GIE);     // set cpu in LPM0

    for(;;);
    return 0;
}


void __attribute__((interrupt(TIMER0_A0_VECTOR))) Timer0_A0_ISR()
{
    TA0CTL &= ~1;       // clear timer interrupt flag
    if(updown)
        counter++;
    else
        counter--;
    if((counter << 4) >= TA0CCR0)
        updown = 0;
    if(counter == 0)
        updown = 1;
    TA0CCR1 = counter << 4;
}
