/***********************
 * date:    17.05.2016
 * Author:  Adam Allaf
 ***********************/
    .arch   msp430g2553
    .cpu    430
    .mpy    none

    .text
/***********************
 * Interrupt Vector 2 Service Routine
 ***********************/
.global __isr_2
__isr_2:
    XOR.B   #1, &__P1OUT
    AND.B   #0xf7, &__P1IFG
    RETI

    .end
