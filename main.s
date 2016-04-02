	.file	"main.c"
	.arch msp430g2553
	.cpu 430
	.mpy none

	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.init9,"ax",@progbits
	.p2align 1,0
.global	main
	.type	main,@function
/***********************
 * Function `main' 
 ***********************/
main:
.LFB0:
	.file 1 "main.c"
	.loc 1 20 0
	.loc 1 21 0
	mov	#23168, &__WDTCTL
	.loc 1 22 0
	mov.b	&__CALDCO_1MHZ, &__DCOCTL
	.loc 1 23 0
	mov.b	&__CALBC1_1MHZ, &__BCSCTL1
	.loc 1 24 0
	bis.b	#1, &__P1DIR
	.loc 1 25 0
	bis.b	#64, &__P1DIR
	.loc 1 26 0
	and.b	#llo(-2), &__P1OUT
	.loc 1 27 0
	bis.b	#64, &__P1OUT
.L3:
	.loc 1 29 0
	xor.b	#65, &__P1OUT
	mov	#0, r15
.L2:
	.loc 1 29 0 is_stmt 0 discriminator 2
	add	#1, r15
	.loc 1 31 0 is_stmt 1 discriminator 2
	bit	#0x8000, r15
	jge	.L2
	jmp	.L3
.LFE0:
.Lfe1:
	.size	main,.Lfe1-main
;; End of function 

	.comm i,2,2
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -2
	.byte	0x0
	.byte	0xc
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x80
	.uleb128 0x1
	.p2align 1,0
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.2byte	.LFB0
	.2byte	.LFE0-.LFB0
	.p2align 1,0
.LEFDE0:
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/msp430/4.5.3/../../../../msp430/include/msp430g2553.h"
	.section	.debug_info
	.4byte	0x16e
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x1
	.4byte	.LASF17
	.4byte	.LASF18
	.2byte	0x0
	.2byte	0x0
	.4byte	.Ldebug_ranges0+0x0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.4byte	.LASF19
	.byte	0x1
	.byte	0x14
	.4byte	0x38
	.2byte	.LFB0
	.2byte	.LFE0
	.byte	0x2
	.byte	0x71
	.sleb128 2
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF1
	.byte	0x2
	.2byte	0x120
	.4byte	.LASF3
	.4byte	0x51
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.4byte	0x56
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF0
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0x2
	.2byte	0x122
	.4byte	.LASF4
	.4byte	0x51
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.2byte	0x1d6
	.4byte	.LASF6
	.4byte	0x51
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.2byte	0x1d8
	.4byte	.LASF8
	.4byte	0x51
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x2
	.2byte	0x384
	.4byte	.LASF10
	.4byte	0xa5
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.4byte	0xaa
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x2
	.2byte	0x3c0
	.4byte	.LASF13
	.4byte	0xc3
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.4byte	0x51
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x2
	.2byte	0x3c2
	.4byte	.LASF15
	.4byte	0xc3
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x11
	.4byte	0xaa
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF1
	.byte	0x2
	.2byte	0x120
	.4byte	.LASF3
	.4byte	0x51
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0x2
	.2byte	0x122
	.4byte	.LASF4
	.4byte	0x51
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.2byte	0x1d6
	.4byte	.LASF6
	.4byte	0x51
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.2byte	0x1d8
	.4byte	.LASF8
	.4byte	0x51
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x2
	.2byte	0x384
	.4byte	.LASF10
	.4byte	0xa5
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x2
	.2byte	0x3c0
	.4byte	.LASF13
	.4byte	0xc3
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x2
	.2byte	0x3c2
	.4byte	.LASF15
	.4byte	0xc3
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x11
	.4byte	0xaa
	.byte	0x1
	.byte	0x3
	.byte	0x3
	.2byte	i
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x1d
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x172
	.4byte	0x25
	.string	"main"
	.4byte	0x163
	.string	"i"
	.4byte	0x0
	.section	.debug_pubtypes,"",@progbits
	.4byte	0xe
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x172
	.4byte	0x0
	.section	.debug_aranges,"",@progbits
	.4byte	0x10
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x2
	.byte	0x0
	.2byte	.LFB0
	.2byte	.LFE0-.LFB0
	.2byte	0x0
	.2byte	0x0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.2byte	.LFB0
	.2byte	.LFE0
	.2byte	0x0
	.2byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF13:
	.string	"*__CALDCO_1MHZ"
.LASF16:
	.string	"GNU C 4.5.3"
.LASF2:
	.string	"BCSCTL1"
.LASF17:
	.string	"main.c"
.LASF8:
	.string	"*__P1DIR"
.LASF7:
	.string	"P1DIR"
.LASF10:
	.string	"*__WDTCTL"
.LASF1:
	.string	"DCOCTL"
.LASF14:
	.string	"CALBC1_1MHZ"
.LASF0:
	.string	"unsigned char"
.LASF12:
	.string	"CALDCO_1MHZ"
.LASF19:
	.string	"main"
.LASF11:
	.string	"unsigned int"
.LASF9:
	.string	"WDTCTL"
.LASF4:
	.string	"*__BCSCTL1"
.LASF18:
	.string	"/home/adam/Desktop/MSP430/MSP430G2553_pro"
.LASF15:
	.string	"*__CALBC1_1MHZ"
.LASF6:
	.string	"*__P1OUT"
.LASF3:
	.string	"*__DCOCTL"
.LASF5:
	.string	"P1OUT"
