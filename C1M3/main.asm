	.cpu cortex-m4
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.bss
	.align	2
g1:
	.space	4
	.size	g1, 4
	.global	g2
	.section	.rodata
	.align	2
	.type	g2, %object
	.size	g2, 4
g2:
	.word	45
	.global	g3
	.data
	.type	g3, %object
	.size	g3, 1
g3:
	.byte	12
	.global	g4
	.bss
	.type	g4, %object
	.size	g4, 1
g4:
	.space	1
	.text
	.align	1
	.global	main
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	main, %function
main:
.LFB0:
	.file 1 "main.c"
	.loc 1 33 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 36 16
	movs	r3, #12
	str	r3, [r7]
	.loc 1 38 16
	movs	r3, #45
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [r7, #4]
	.loc 1 40 6
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L2
	.loc 1 42 12
	mov	r3, #-1
	b	.L3
.L2:
	.loc 1 45 11
	movs	r4, #0
	.loc 1 45 3
	b	.L4
.L5:
	.loc 1 47 10 discriminator 3
	ldr	r0, [r7, #4]
	bl	func
	mov	r3, r0
	.loc 1 47 8 discriminator 3
	ldr	r2, .L6
	str	r3, [r2]
	.loc 1 45 27 discriminator 3
	ldr	r3, [r7]
	adds	r3, r3, #1
	str	r3, [r7]
.L4:
	.loc 1 45 19 discriminator 1
	movs	r3, #45
	.loc 1 45 3 discriminator 1
	cmp	r4, r3
	blt	.L5
	.loc 1 50 10
	movs	r3, #0
.L3:
	.loc 1 51 1
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 12
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r7, pc}
.L7:
	.align	2
.L6:
	.word	g1
	.cfi_endproc
.LFE0:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/lib/gcc/arm-none-eabi/9.2.1/include/stddef.h"
	.file 3 "/usr/include/newlib/sys/_types.h"
	.file 4 "/usr/include/newlib/sys/reent.h"
	.file 5 "/usr/include/newlib/sys/lock.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x9b2
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF118
	.byte	0xc
	.4byte	.LASF119
	.4byte	.LASF120
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.4byte	0x5d
	.uleb128 0x5
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x6
	.4byte	.LASF9
	.byte	0x2
	.2byte	0x15e
	.byte	0x17
	.4byte	0x6e
	.uleb128 0x7
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2e
	.byte	0xe
	.4byte	0x33
	.uleb128 0x7
	.4byte	.LASF11
	.byte	0x3
	.byte	0x74
	.byte	0xe
	.4byte	0x33
	.uleb128 0x8
	.byte	0x4
	.byte	0x3
	.byte	0xa5
	.byte	0x3
	.4byte	0xbc
	.uleb128 0x9
	.4byte	.LASF12
	.byte	0x3
	.byte	0xa7
	.byte	0xc
	.4byte	0x75
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x3
	.byte	0xa8
	.byte	0x13
	.4byte	0xbc
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0xcc
	.uleb128 0xb
	.4byte	0x6e
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.byte	0x3
	.byte	0xa2
	.byte	0x9
	.4byte	0xf0
	.uleb128 0xd
	.4byte	.LASF14
	.byte	0x3
	.byte	0xa4
	.byte	0x7
	.4byte	0x5d
	.byte	0
	.uleb128 0xd
	.4byte	.LASF15
	.byte	0x3
	.byte	0xa9
	.byte	0x5
	.4byte	0x9a
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x3
	.byte	0xaa
	.byte	0x3
	.4byte	0xcc
	.uleb128 0xe
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x4
	.byte	0x16
	.byte	0x19
	.4byte	0x4f
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.byte	0xc
	.byte	0xd
	.4byte	0x5d
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x4
	.byte	0x23
	.byte	0x1b
	.4byte	0x10a
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x18
	.byte	0x4
	.byte	0x34
	.byte	0x8
	.4byte	0x17c
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x4
	.byte	0x36
	.byte	0x13
	.4byte	0x17c
	.byte	0
	.uleb128 0x10
	.ascii	"_k\000"
	.byte	0x4
	.byte	0x37
	.byte	0x7
	.4byte	0x5d
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x4
	.byte	0x37
	.byte	0xb
	.4byte	0x5d
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x4
	.byte	0x37
	.byte	0x14
	.4byte	0x5d
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x4
	.byte	0x37
	.byte	0x1b
	.4byte	0x5d
	.byte	0x10
	.uleb128 0x10
	.ascii	"_x\000"
	.byte	0x4
	.byte	0x38
	.byte	0xb
	.4byte	0x182
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x122
	.uleb128 0xa
	.4byte	0xfe
	.4byte	0x192
	.uleb128 0xb
	.4byte	0x6e
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x24
	.byte	0x4
	.byte	0x3c
	.byte	0x8
	.4byte	0x215
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x4
	.byte	0x3e
	.byte	0x9
	.4byte	0x5d
	.byte	0
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x4
	.byte	0x3f
	.byte	0x9
	.4byte	0x5d
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.4byte	0x5d
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.4byte	0x5d
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.4byte	0x5d
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x4
	.byte	0x43
	.byte	0x9
	.4byte	0x5d
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x4
	.byte	0x44
	.byte	0x9
	.4byte	0x5d
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x4
	.byte	0x45
	.byte	0x9
	.4byte	0x5d
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x4
	.byte	0x46
	.byte	0x9
	.4byte	0x5d
	.byte	0x20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF35
	.2byte	0x108
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.4byte	0x25a
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x4
	.byte	0x50
	.byte	0xa
	.4byte	0x25a
	.byte	0
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x4
	.byte	0x51
	.byte	0x9
	.4byte	0x25a
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF38
	.byte	0x4
	.byte	0x53
	.byte	0xa
	.4byte	0xfe
	.2byte	0x100
	.uleb128 0x13
	.4byte	.LASF39
	.byte	0x4
	.byte	0x56
	.byte	0xa
	.4byte	0xfe
	.2byte	0x104
	.byte	0
	.uleb128 0xa
	.4byte	0xfc
	.4byte	0x26a
	.uleb128 0xb
	.4byte	0x6e
	.byte	0x1f
	.byte	0
	.uleb128 0x12
	.4byte	.LASF40
	.2byte	0x190
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.4byte	0x2ad
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x4
	.byte	0x63
	.byte	0x12
	.4byte	0x2ad
	.byte	0
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x4
	.byte	0x64
	.byte	0x6
	.4byte	0x5d
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x4
	.byte	0x66
	.byte	0x9
	.4byte	0x2b3
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x4
	.byte	0x67
	.byte	0x1e
	.4byte	0x215
	.byte	0x88
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x26a
	.uleb128 0xa
	.4byte	0x2c3
	.4byte	0x2c3
	.uleb128 0xb
	.4byte	0x6e
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x2c9
	.uleb128 0x14
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x8
	.byte	0x4
	.byte	0x7a
	.byte	0x8
	.4byte	0x2f2
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x4
	.byte	0x7b
	.byte	0x11
	.4byte	0x2f2
	.byte	0
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x4
	.byte	0x7c
	.byte	0x6
	.4byte	0x5d
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x41
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x68
	.byte	0x4
	.byte	0xba
	.byte	0x8
	.4byte	0x43b
	.uleb128 0x10
	.ascii	"_p\000"
	.byte	0x4
	.byte	0xbb
	.byte	0x12
	.4byte	0x2f2
	.byte	0
	.uleb128 0x10
	.ascii	"_r\000"
	.byte	0x4
	.byte	0xbc
	.byte	0x7
	.4byte	0x5d
	.byte	0x4
	.uleb128 0x10
	.ascii	"_w\000"
	.byte	0x4
	.byte	0xbd
	.byte	0x7
	.4byte	0x5d
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x4
	.byte	0xbe
	.byte	0x9
	.4byte	0x2c
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x4
	.byte	0xbf
	.byte	0x9
	.4byte	0x2c
	.byte	0xe
	.uleb128 0x10
	.ascii	"_bf\000"
	.byte	0x4
	.byte	0xc0
	.byte	0x11
	.4byte	0x2ca
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x4
	.byte	0xc1
	.byte	0x7
	.4byte	0x5d
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x4
	.byte	0xc8
	.byte	0xa
	.4byte	0xfc
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x4
	.byte	0xca
	.byte	0x1d
	.4byte	0x5bf
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x4
	.byte	0xcc
	.byte	0x1d
	.4byte	0x5e9
	.byte	0x24
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x4
	.byte	0xcf
	.byte	0xd
	.4byte	0x60d
	.byte	0x28
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x4
	.byte	0xd0
	.byte	0x9
	.4byte	0x627
	.byte	0x2c
	.uleb128 0x10
	.ascii	"_ub\000"
	.byte	0x4
	.byte	0xd3
	.byte	0x11
	.4byte	0x2ca
	.byte	0x30
	.uleb128 0x10
	.ascii	"_up\000"
	.byte	0x4
	.byte	0xd4
	.byte	0x12
	.4byte	0x2f2
	.byte	0x38
	.uleb128 0x10
	.ascii	"_ur\000"
	.byte	0x4
	.byte	0xd5
	.byte	0x7
	.4byte	0x5d
	.byte	0x3c
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x4
	.byte	0xd8
	.byte	0x11
	.4byte	0x62d
	.byte	0x40
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x4
	.byte	0xd9
	.byte	0x11
	.4byte	0x63d
	.byte	0x43
	.uleb128 0x10
	.ascii	"_lb\000"
	.byte	0x4
	.byte	0xdc
	.byte	0x11
	.4byte	0x2ca
	.byte	0x44
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x4
	.byte	0xdf
	.byte	0x7
	.4byte	0x5d
	.byte	0x4c
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x4
	.byte	0xe0
	.byte	0xa
	.4byte	0x82
	.byte	0x50
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x4
	.byte	0xe3
	.byte	0x12
	.4byte	0x459
	.byte	0x54
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x4
	.byte	0xe7
	.byte	0xc
	.4byte	0x116
	.byte	0x58
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x4
	.byte	0xe9
	.byte	0xe
	.4byte	0xf0
	.byte	0x5c
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x4
	.byte	0xea
	.byte	0x9
	.4byte	0x5d
	.byte	0x64
	.byte	0
	.uleb128 0x15
	.4byte	0x5d
	.4byte	0x459
	.uleb128 0x16
	.4byte	0x459
	.uleb128 0x16
	.4byte	0xfc
	.uleb128 0x16
	.4byte	0x5ad
	.uleb128 0x16
	.4byte	0x5d
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x464
	.uleb128 0x4
	.4byte	0x459
	.uleb128 0x17
	.4byte	.LASF63
	.2byte	0x428
	.byte	0x4
	.2byte	0x265
	.byte	0x8
	.4byte	0x5ad
	.uleb128 0x18
	.4byte	.LASF64
	.byte	0x4
	.2byte	0x267
	.byte	0x7
	.4byte	0x5d
	.byte	0
	.uleb128 0x18
	.4byte	.LASF65
	.byte	0x4
	.2byte	0x26c
	.byte	0xb
	.4byte	0x699
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF66
	.byte	0x4
	.2byte	0x26c
	.byte	0x14
	.4byte	0x699
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF67
	.byte	0x4
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x699
	.byte	0xc
	.uleb128 0x18
	.4byte	.LASF68
	.byte	0x4
	.2byte	0x26e
	.byte	0x8
	.4byte	0x5d
	.byte	0x10
	.uleb128 0x18
	.4byte	.LASF69
	.byte	0x4
	.2byte	0x26f
	.byte	0x8
	.4byte	0x899
	.byte	0x14
	.uleb128 0x18
	.4byte	.LASF70
	.byte	0x4
	.2byte	0x272
	.byte	0x7
	.4byte	0x5d
	.byte	0x30
	.uleb128 0x18
	.4byte	.LASF71
	.byte	0x4
	.2byte	0x273
	.byte	0x16
	.4byte	0x8ae
	.byte	0x34
	.uleb128 0x18
	.4byte	.LASF72
	.byte	0x4
	.2byte	0x275
	.byte	0x7
	.4byte	0x5d
	.byte	0x38
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0x4
	.2byte	0x277
	.byte	0xa
	.4byte	0x8bf
	.byte	0x3c
	.uleb128 0x18
	.4byte	.LASF74
	.byte	0x4
	.2byte	0x27a
	.byte	0x13
	.4byte	0x17c
	.byte	0x40
	.uleb128 0x18
	.4byte	.LASF75
	.byte	0x4
	.2byte	0x27b
	.byte	0x7
	.4byte	0x5d
	.byte	0x44
	.uleb128 0x18
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x27c
	.byte	0x13
	.4byte	0x17c
	.byte	0x48
	.uleb128 0x18
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x27d
	.byte	0x14
	.4byte	0x8c5
	.byte	0x4c
	.uleb128 0x18
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x280
	.byte	0x7
	.4byte	0x5d
	.byte	0x50
	.uleb128 0x18
	.4byte	.LASF79
	.byte	0x4
	.2byte	0x281
	.byte	0x9
	.4byte	0x5ad
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF80
	.byte	0x4
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x874
	.byte	0x58
	.uleb128 0x19
	.4byte	.LASF40
	.byte	0x4
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x2ad
	.2byte	0x148
	.uleb128 0x19
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x26a
	.2byte	0x14c
	.uleb128 0x19
	.4byte	.LASF82
	.byte	0x4
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x8d6
	.2byte	0x2dc
	.uleb128 0x19
	.4byte	.LASF83
	.byte	0x4
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x65a
	.2byte	0x2e0
	.uleb128 0x19
	.4byte	.LASF84
	.byte	0x4
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x8e2
	.2byte	0x2ec
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x5b3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF85
	.uleb128 0x4
	.4byte	0x5b3
	.uleb128 0x11
	.byte	0x4
	.4byte	0x43b
	.uleb128 0x15
	.4byte	0x5d
	.4byte	0x5e3
	.uleb128 0x16
	.4byte	0x459
	.uleb128 0x16
	.4byte	0xfc
	.uleb128 0x16
	.4byte	0x5e3
	.uleb128 0x16
	.4byte	0x5d
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x5ba
	.uleb128 0x11
	.byte	0x4
	.4byte	0x5c5
	.uleb128 0x15
	.4byte	0x8e
	.4byte	0x60d
	.uleb128 0x16
	.4byte	0x459
	.uleb128 0x16
	.4byte	0xfc
	.uleb128 0x16
	.4byte	0x8e
	.uleb128 0x16
	.4byte	0x5d
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x5ef
	.uleb128 0x15
	.4byte	0x5d
	.4byte	0x627
	.uleb128 0x16
	.4byte	0x459
	.uleb128 0x16
	.4byte	0xfc
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x613
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x63d
	.uleb128 0xb
	.4byte	0x6e
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x64d
	.uleb128 0xb
	.4byte	0x6e
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF86
	.byte	0x4
	.2byte	0x124
	.byte	0x1a
	.4byte	0x2f8
	.uleb128 0x1a
	.4byte	.LASF87
	.byte	0xc
	.byte	0x4
	.2byte	0x128
	.byte	0x8
	.4byte	0x693
	.uleb128 0x18
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x12a
	.byte	0x11
	.4byte	0x693
	.byte	0
	.uleb128 0x18
	.4byte	.LASF88
	.byte	0x4
	.2byte	0x12b
	.byte	0x7
	.4byte	0x5d
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF89
	.byte	0x4
	.2byte	0x12c
	.byte	0xb
	.4byte	0x699
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x65a
	.uleb128 0x11
	.byte	0x4
	.4byte	0x64d
	.uleb128 0x1a
	.4byte	.LASF90
	.byte	0xe
	.byte	0x4
	.2byte	0x144
	.byte	0x8
	.4byte	0x6d8
	.uleb128 0x18
	.4byte	.LASF91
	.byte	0x4
	.2byte	0x145
	.byte	0x12
	.4byte	0x6d8
	.byte	0
	.uleb128 0x18
	.4byte	.LASF92
	.byte	0x4
	.2byte	0x146
	.byte	0x12
	.4byte	0x6d8
	.byte	0x6
	.uleb128 0x18
	.4byte	.LASF93
	.byte	0x4
	.2byte	0x147
	.byte	0x12
	.4byte	0x48
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.4byte	0x48
	.4byte	0x6e8
	.uleb128 0xb
	.4byte	0x6e
	.byte	0x2
	.byte	0
	.uleb128 0x1b
	.byte	0xd0
	.byte	0x4
	.2byte	0x285
	.byte	0x7
	.4byte	0x7fd
	.uleb128 0x18
	.4byte	.LASF94
	.byte	0x4
	.2byte	0x287
	.byte	0x18
	.4byte	0x6e
	.byte	0
	.uleb128 0x18
	.4byte	.LASF95
	.byte	0x4
	.2byte	0x288
	.byte	0x12
	.4byte	0x5ad
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF96
	.byte	0x4
	.2byte	0x289
	.byte	0x10
	.4byte	0x7fd
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF97
	.byte	0x4
	.2byte	0x28a
	.byte	0x17
	.4byte	0x192
	.byte	0x24
	.uleb128 0x18
	.4byte	.LASF98
	.byte	0x4
	.2byte	0x28b
	.byte	0xf
	.4byte	0x5d
	.byte	0x48
	.uleb128 0x18
	.4byte	.LASF99
	.byte	0x4
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x56
	.byte	0x50
	.uleb128 0x18
	.4byte	.LASF100
	.byte	0x4
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x69f
	.byte	0x58
	.uleb128 0x18
	.4byte	.LASF101
	.byte	0x4
	.2byte	0x28e
	.byte	0x16
	.4byte	0xf0
	.byte	0x68
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x4
	.2byte	0x28f
	.byte	0x16
	.4byte	0xf0
	.byte	0x70
	.uleb128 0x18
	.4byte	.LASF103
	.byte	0x4
	.2byte	0x290
	.byte	0x16
	.4byte	0xf0
	.byte	0x78
	.uleb128 0x18
	.4byte	.LASF104
	.byte	0x4
	.2byte	0x291
	.byte	0x10
	.4byte	0x80d
	.byte	0x80
	.uleb128 0x18
	.4byte	.LASF105
	.byte	0x4
	.2byte	0x292
	.byte	0x10
	.4byte	0x81d
	.byte	0x88
	.uleb128 0x18
	.4byte	.LASF106
	.byte	0x4
	.2byte	0x293
	.byte	0xf
	.4byte	0x5d
	.byte	0xa0
	.uleb128 0x18
	.4byte	.LASF107
	.byte	0x4
	.2byte	0x294
	.byte	0x16
	.4byte	0xf0
	.byte	0xa4
	.uleb128 0x18
	.4byte	.LASF108
	.byte	0x4
	.2byte	0x295
	.byte	0x16
	.4byte	0xf0
	.byte	0xac
	.uleb128 0x18
	.4byte	.LASF109
	.byte	0x4
	.2byte	0x296
	.byte	0x16
	.4byte	0xf0
	.byte	0xb4
	.uleb128 0x18
	.4byte	.LASF110
	.byte	0x4
	.2byte	0x297
	.byte	0x16
	.4byte	0xf0
	.byte	0xbc
	.uleb128 0x18
	.4byte	.LASF111
	.byte	0x4
	.2byte	0x298
	.byte	0x16
	.4byte	0xf0
	.byte	0xc4
	.uleb128 0x18
	.4byte	.LASF112
	.byte	0x4
	.2byte	0x299
	.byte	0x8
	.4byte	0x5d
	.byte	0xcc
	.byte	0
	.uleb128 0xa
	.4byte	0x5b3
	.4byte	0x80d
	.uleb128 0xb
	.4byte	0x6e
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.4byte	0x5b3
	.4byte	0x81d
	.uleb128 0xb
	.4byte	0x6e
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	0x5b3
	.4byte	0x82d
	.uleb128 0xb
	.4byte	0x6e
	.byte	0x17
	.byte	0
	.uleb128 0x1b
	.byte	0xf0
	.byte	0x4
	.2byte	0x29e
	.byte	0x7
	.4byte	0x854
	.uleb128 0x18
	.4byte	.LASF113
	.byte	0x4
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x854
	.byte	0
	.uleb128 0x18
	.4byte	.LASF114
	.byte	0x4
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x864
	.byte	0x78
	.byte	0
	.uleb128 0xa
	.4byte	0x2f2
	.4byte	0x864
	.uleb128 0xb
	.4byte	0x6e
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.4byte	0x6e
	.4byte	0x874
	.uleb128 0xb
	.4byte	0x6e
	.byte	0x1d
	.byte	0
	.uleb128 0x1c
	.byte	0xf0
	.byte	0x4
	.2byte	0x283
	.byte	0x3
	.4byte	0x899
	.uleb128 0x1d
	.4byte	.LASF63
	.byte	0x4
	.2byte	0x29a
	.byte	0xb
	.4byte	0x6e8
	.uleb128 0x1d
	.4byte	.LASF115
	.byte	0x4
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x82d
	.byte	0
	.uleb128 0xa
	.4byte	0x5b3
	.4byte	0x8a9
	.uleb128 0xb
	.4byte	0x6e
	.byte	0x18
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF121
	.uleb128 0x11
	.byte	0x4
	.4byte	0x8a9
	.uleb128 0x1f
	.4byte	0x8bf
	.uleb128 0x16
	.4byte	0x459
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x8b4
	.uleb128 0x11
	.byte	0x4
	.4byte	0x17c
	.uleb128 0x1f
	.4byte	0x8d6
	.uleb128 0x16
	.4byte	0x5d
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x8dc
	.uleb128 0x11
	.byte	0x4
	.4byte	0x8cb
	.uleb128 0xa
	.4byte	0x64d
	.4byte	0x8f2
	.uleb128 0xb
	.4byte	0x6e
	.byte	0x2
	.byte	0
	.uleb128 0x20
	.4byte	.LASF116
	.byte	0x4
	.2byte	0x333
	.byte	0x17
	.4byte	0x459
	.uleb128 0x20
	.4byte	.LASF117
	.byte	0x4
	.2byte	0x334
	.byte	0x1d
	.4byte	0x45f
	.uleb128 0x21
	.ascii	"g1\000"
	.byte	0x1
	.byte	0x1a
	.byte	0xc
	.4byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	g1
	.uleb128 0x22
	.ascii	"g2\000"
	.byte	0x1
	.byte	0x1b
	.byte	0xb
	.4byte	0x64
	.uleb128 0x5
	.byte	0x3
	.4byte	g2
	.uleb128 0x22
	.ascii	"g3\000"
	.byte	0x1
	.byte	0x1c
	.byte	0x6
	.4byte	0x5b3
	.uleb128 0x5
	.byte	0x3
	.4byte	g3
	.uleb128 0x22
	.ascii	"g4\000"
	.byte	0x1
	.byte	0x1d
	.byte	0x6
	.4byte	0x5b3
	.uleb128 0x5
	.byte	0x3
	.4byte	g4
	.uleb128 0xa
	.4byte	0x5b3
	.4byte	0x960
	.uleb128 0xb
	.4byte	0x6e
	.byte	0x9
	.byte	0
	.uleb128 0x23
	.ascii	"g5\000"
	.byte	0x1
	.byte	0x1e
	.byte	0xd
	.4byte	0x950
	.uleb128 0x24
	.4byte	.LASF122
	.byte	0x1
	.byte	0x20
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9af
	.uleb128 0x21
	.ascii	"l1\000"
	.byte	0x1
	.byte	0x22
	.byte	0x10
	.4byte	0x5d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x21
	.ascii	"l2\000"
	.byte	0x1
	.byte	0x23
	.byte	0x9
	.4byte	0x9af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.ascii	"l3\000"
	.byte	0x1
	.byte	0x24
	.byte	0x10
	.4byte	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x5d
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
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
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF37:
	.ascii	"_dso_handle\000"
.LASF45:
	.ascii	"_size\000"
.LASF90:
	.ascii	"_rand48\000"
.LASF69:
	.ascii	"_emergency\000"
.LASF59:
	.ascii	"_data\000"
.LASF110:
	.ascii	"_wcrtomb_state\000"
.LASF111:
	.ascii	"_wcsrtombs_state\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF49:
	.ascii	"_lbfsize\000"
.LASF121:
	.ascii	"__locale_t\000"
.LASF108:
	.ascii	"_mbrtowc_state\000"
.LASF103:
	.ascii	"_wctomb_state\000"
.LASF26:
	.ascii	"__tm_sec\000"
.LASF3:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF55:
	.ascii	"_ubuf\000"
.LASF44:
	.ascii	"_base\000"
.LASF28:
	.ascii	"__tm_hour\000"
.LASF84:
	.ascii	"__sf\000"
.LASF35:
	.ascii	"_on_exit_args\000"
.LASF50:
	.ascii	"_cookie\000"
.LASF83:
	.ascii	"__sglue\000"
.LASF2:
	.ascii	"long int\000"
.LASF47:
	.ascii	"_flags\000"
.LASF39:
	.ascii	"_is_cxa\000"
.LASF65:
	.ascii	"_stdin\000"
.LASF57:
	.ascii	"_blksize\000"
.LASF79:
	.ascii	"_cvtbuf\000"
.LASF58:
	.ascii	"_offset\000"
.LASF109:
	.ascii	"_mbsrtowcs_state\000"
.LASF107:
	.ascii	"_mbrlen_state\000"
.LASF36:
	.ascii	"_fnargs\000"
.LASF42:
	.ascii	"_fns\000"
.LASF22:
	.ascii	"_sign\000"
.LASF19:
	.ascii	"_flock_t\000"
.LASF67:
	.ascii	"_stderr\000"
.LASF24:
	.ascii	"_Bigint\000"
.LASF98:
	.ascii	"_gamma_signgam\000"
.LASF51:
	.ascii	"_read\000"
.LASF75:
	.ascii	"_result_k\000"
.LASF120:
	.ascii	"/home/peter/ese/ese-coursera-course1/assessments/m3"
	.ascii	"\000"
.LASF25:
	.ascii	"__tm\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF13:
	.ascii	"__wchb\000"
.LASF66:
	.ascii	"_stdout\000"
.LASF78:
	.ascii	"_cvtlen\000"
.LASF6:
	.ascii	"long unsigned int\000"
.LASF48:
	.ascii	"_file\000"
.LASF88:
	.ascii	"_niobs\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF81:
	.ascii	"_atexit0\000"
.LASF105:
	.ascii	"_signal_buf\000"
.LASF96:
	.ascii	"_asctime_buf\000"
.LASF74:
	.ascii	"_result\000"
.LASF12:
	.ascii	"__wch\000"
.LASF119:
	.ascii	"main.c\000"
.LASF9:
	.ascii	"wint_t\000"
.LASF60:
	.ascii	"_lock\000"
.LASF62:
	.ascii	"_flags2\000"
.LASF52:
	.ascii	"_write\000"
.LASF31:
	.ascii	"__tm_year\000"
.LASF118:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -mcpu=cortex-m4 -mthumb -mfpu=fpv4"
	.ascii	"-sp-d16 -mfloat-abi=hard -march=armv7e-m+fp -g -O0 "
	.ascii	"-std=c99\000"
.LASF113:
	.ascii	"_nextf\000"
.LASF30:
	.ascii	"__tm_mon\000"
.LASF40:
	.ascii	"_atexit\000"
.LASF72:
	.ascii	"__sdidinit\000"
.LASF10:
	.ascii	"_off_t\000"
.LASF77:
	.ascii	"_freelist\000"
.LASF18:
	.ascii	"_LOCK_RECURSIVE_T\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF80:
	.ascii	"_new\000"
.LASF112:
	.ascii	"_h_errno\000"
.LASF1:
	.ascii	"short int\000"
.LASF33:
	.ascii	"__tm_yday\000"
.LASF43:
	.ascii	"__sbuf\000"
.LASF89:
	.ascii	"_iobs\000"
.LASF86:
	.ascii	"__FILE\000"
.LASF16:
	.ascii	"_mbstate_t\000"
.LASF46:
	.ascii	"__sFILE\000"
.LASF61:
	.ascii	"_mbstate\000"
.LASF99:
	.ascii	"_rand_next\000"
.LASF101:
	.ascii	"_mblen_state\000"
.LASF68:
	.ascii	"_inc\000"
.LASF41:
	.ascii	"_ind\000"
.LASF71:
	.ascii	"_locale\000"
.LASF73:
	.ascii	"__cleanup\000"
.LASF70:
	.ascii	"_unspecified_locale_info\000"
.LASF21:
	.ascii	"_maxwds\000"
.LASF63:
	.ascii	"_reent\000"
.LASF91:
	.ascii	"_seed\000"
.LASF14:
	.ascii	"__count\000"
.LASF15:
	.ascii	"__value\000"
.LASF53:
	.ascii	"_seek\000"
.LASF116:
	.ascii	"_impure_ptr\000"
.LASF11:
	.ascii	"_fpos_t\000"
.LASF64:
	.ascii	"_errno\000"
.LASF85:
	.ascii	"char\000"
.LASF27:
	.ascii	"__tm_min\000"
.LASF92:
	.ascii	"_mult\000"
.LASF20:
	.ascii	"_next\000"
.LASF95:
	.ascii	"_strtok_last\000"
.LASF38:
	.ascii	"_fntypes\000"
.LASF93:
	.ascii	"_add\000"
.LASF17:
	.ascii	"__ULong\000"
.LASF106:
	.ascii	"_getdate_err\000"
.LASF117:
	.ascii	"_global_impure_ptr\000"
.LASF94:
	.ascii	"_unused_rand\000"
.LASF23:
	.ascii	"_wds\000"
.LASF32:
	.ascii	"__tm_wday\000"
.LASF87:
	.ascii	"_glue\000"
.LASF114:
	.ascii	"_nmalloc\000"
.LASF104:
	.ascii	"_l64a_buf\000"
.LASF82:
	.ascii	"_sig_func\000"
.LASF56:
	.ascii	"_nbuf\000"
.LASF115:
	.ascii	"_unused\000"
.LASF34:
	.ascii	"__tm_isdst\000"
.LASF97:
	.ascii	"_localtime_buf\000"
.LASF54:
	.ascii	"_close\000"
.LASF100:
	.ascii	"_r48\000"
.LASF102:
	.ascii	"_mbtowc_state\000"
.LASF76:
	.ascii	"_p5s\000"
.LASF122:
	.ascii	"main\000"
.LASF29:
	.ascii	"__tm_mday\000"
	.ident	"GCC: (15:9-2019-q4-0ubuntu1) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
