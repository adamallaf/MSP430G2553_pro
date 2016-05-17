/***********************
 * date:    17.05.2016
 * Author:  Adam Allaf
 ***********************/
	.file	"port1_isr.s"
	.arch   msp430g2553
	.cpu    430
	.mpy    none

	.text
/***********************
 * Interrupt Vector 2 Service Routine
 ***********************/
.global	__isr_2
__isr_2:
    xor.b   #1, &__P1OUT
    and.b   #0xf7, &__P1IFG
	reti
;; End of function 

