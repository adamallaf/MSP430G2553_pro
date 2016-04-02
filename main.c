/*
*   date: 06.03.2016
*
*   Author: Adam Allaf
*
*   Using timer1 to generate PWM on P2.1.
*/
#include <msp430.h>


volatile unsigned int updown, counter;


int main(){
    WDTCTL = WDTPW | WDTHOLD;   // stop watchdog

    // 1MHz clock
    DCOCTL = CALDCO_1MHZ;
    BCSCTL1 = CALBC1_1MHZ;

    P2DIR |= BIT1;

    P2SEL |= BIT1;
    P2SEL2 &= ~BIT1;

    TA1CCR0 = 0x3e8;    // T = 1ms
    TA1CCR1 = 0x3e8;
    counter = 0x3e8;
    updown = 0;         // start counting down

    // timer1 init
    // ID_0 -> /1 divider
    // MC_1 -> up mode, count up to CCR0
    // TASSEL_2 -> SMCLK as timer clock source
    TA1CTL |= TASSEL_2 | ID_0 | MC_1 | TAIE;
    TA1CCTL0 |= CCIE;   // when timer count fron CCR0 ot 0x0 an interrupt is generated
    TA1CCTL1 |= OUTMOD_2;  // set/reset mode, set on CCR1 and reset on CCR0

    WRITE_SR(CPUOFF | GIE);     // set cpu in LMP0

    for(;;);
    return 0;
}


void __attribute__((interrupt(TIMER1_A0_VECTOR))) Timer1_A0_int()
{
    TA1CTL &= ~1;       // clear timer interrupt flag
    if(updown)
        counter++;
    else
        counter--;
    if(counter >= TA1CCR0)
        updown = 0;
    if(counter == 0)
        updown = 1;
    TA1CCR1 = counter;
}
