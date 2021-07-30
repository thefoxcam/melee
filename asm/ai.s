.include "macros.inc"

.section .text  # 0x80005940 - 0x803B7240

.global AIRegisterDMACallback
AIRegisterDMACallback:
/* 803503E4 0034CFC4  7C 08 02 A6 */	mflr r0
/* 803503E8 0034CFC8  90 01 00 04 */	stw r0, 4(r1)
/* 803503EC 0034CFCC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 803503F0 0034CFD0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 803503F4 0034CFD4  93 C1 00 10 */	stw r30, 0x10(r1)
/* 803503F8 0034CFD8  7C 7E 1B 78 */	mr r30, r3
/* 803503FC 0034CFDC  83 ED BD D4 */	lwz r31, lbl_804D7474-_SDA_BASE_(r13)
/* 80350400 0034CFE0  4B FF 6F 65 */	bl OSDisableInterrupts
/* 80350404 0034CFE4  93 CD BD D4 */	stw r30, lbl_804D7474-_SDA_BASE_(r13)
/* 80350408 0034CFE8  4B FF 6F 85 */	bl OSRestoreInterrupts
/* 8035040C 0034CFEC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80350410 0034CFF0  7F E3 FB 78 */	mr r3, r31
/* 80350414 0034CFF4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80350418 0034CFF8  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8035041C 0034CFFC  7C 08 03 A6 */	mtlr r0
/* 80350420 0034D000  38 21 00 18 */	addi r1, r1, 0x18
/* 80350424 0034D004  4E 80 00 20 */	blr 

.global func_80350428
func_80350428:
/* 80350428 0034D008  7C 08 02 A6 */	mflr r0
/* 8035042C 0034D00C  90 01 00 04 */	stw r0, 4(r1)
/* 80350430 0034D010  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80350434 0034D014  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80350438 0034D018  3B E4 00 00 */	addi r31, r4, 0
/* 8035043C 0034D01C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80350440 0034D020  3B C3 00 00 */	addi r30, r3, 0
/* 80350444 0034D024  4B FF 6F 21 */	bl OSDisableInterrupts
/* 80350448 0034D028  3C 80 CC 00 */	lis r4, 0xCC005030@ha
/* 8035044C 0034D02C  A0 04 50 30 */	lhz r0, 0xCC005030@l(r4)
/* 80350450 0034D030  38 A4 50 00 */	addi r5, r4, 0x5000
/* 80350454 0034D034  38 C4 50 00 */	addi r6, r4, 0x5000
/* 80350458 0034D038  38 E4 50 00 */	addi r7, r4, 0x5000
/* 8035045C 0034D03C  54 04 00 2A */	rlwinm r4, r0, 0, 0, 0x15
/* 80350460 0034D040  57 C0 84 3E */	srwi r0, r30, 0x10
/* 80350464 0034D044  7C 80 03 78 */	or r0, r4, r0
/* 80350468 0034D048  B0 05 00 30 */	sth r0, 0x30(r5)
/* 8035046C 0034D04C  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 80350470 0034D050  A0 86 00 32 */	lhz r4, 0x32(r6)
/* 80350474 0034D054  54 84 06 DE */	rlwinm r4, r4, 0, 0x1b, 0xf
/* 80350478 0034D058  7C 80 03 78 */	or r0, r4, r0
/* 8035047C 0034D05C  B0 06 00 32 */	sth r0, 0x32(r6)
/* 80350480 0034D060  57 E0 DC 3E */	rlwinm r0, r31, 0x1b, 0x10, 0x1f
/* 80350484 0034D064  A0 87 00 36 */	lhz r4, 0x36(r7)
/* 80350488 0034D068  54 84 00 20 */	rlwinm r4, r4, 0, 0, 0x10
/* 8035048C 0034D06C  7C 80 03 78 */	or r0, r4, r0
/* 80350490 0034D070  B0 07 00 36 */	sth r0, 0x36(r7)
/* 80350494 0034D074  4B FF 6E F9 */	bl OSRestoreInterrupts
/* 80350498 0034D078  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8035049C 0034D07C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 803504A0 0034D080  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 803504A4 0034D084  7C 08 03 A6 */	mtlr r0
/* 803504A8 0034D088  38 21 00 18 */	addi r1, r1, 0x18
/* 803504AC 0034D08C  4E 80 00 20 */	blr 

.global func_803504B0
func_803504B0:
/* 803504B0 0034D090  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 803504B4 0034D094  38 63 50 00 */	addi r3, r3, 0xCC005000@l
/* 803504B8 0034D098  A0 03 00 36 */	lhz r0, 0x36(r3)
/* 803504BC 0034D09C  60 00 80 00 */	ori r0, r0, 0x8000
/* 803504C0 0034D0A0  B0 03 00 36 */	sth r0, 0x36(r3)
/* 803504C4 0034D0A4  4E 80 00 20 */	blr 

.global func_803504C8
func_803504C8:
/* 803504C8 0034D0A8  7C 08 02 A6 */	mflr r0
/* 803504CC 0034D0AC  90 01 00 04 */	stw r0, 4(r1)
/* 803504D0 0034D0B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803504D4 0034D0B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803504D8 0034D0B8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803504DC 0034D0BC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803504E0 0034D0C0  7C 7D 1B 78 */	mr r29, r3
/* 803504E4 0034D0C4  48 00 00 BD */	bl func_803505A0
/* 803504E8 0034D0C8  7C 1D 18 40 */	cmplw r29, r3
/* 803504EC 0034D0CC  41 82 00 98 */	beq lbl_80350584
/* 803504F0 0034D0D0  48 00 02 89 */	bl func_80350778
/* 803504F4 0034D0D4  28 03 00 00 */	cmplwi r3, 0
/* 803504F8 0034D0D8  40 82 00 78 */	bne lbl_80350570
/* 803504FC 0034D0DC  28 1D 00 01 */	cmplwi r29, 1
/* 80350500 0034D0E0  40 82 00 70 */	bne lbl_80350570
/* 80350504 0034D0E4  48 00 02 CD */	bl func_803507D0
/* 80350508 0034D0E8  7C 7E 1B 78 */	mr r30, r3
/* 8035050C 0034D0EC  48 00 02 99 */	bl func_803507A4
/* 80350510 0034D0F0  3B A3 00 00 */	addi r29, r3, 0
/* 80350514 0034D0F4  38 60 00 00 */	li r3, 0
/* 80350518 0034D0F8  48 00 02 9D */	bl func_803507B4
/* 8035051C 0034D0FC  38 60 00 00 */	li r3, 0
/* 80350520 0034D100  48 00 02 69 */	bl func_80350788
/* 80350524 0034D104  4B FF 6E 41 */	bl OSDisableInterrupts
/* 80350528 0034D108  7C 7F 1B 78 */	mr r31, r3
/* 8035052C 0034D10C  48 00 05 7D */	bl func_80350AA8
/* 80350530 0034D110  3C 80 CC 00 */	lis r4, 0xCC006C00@ha
/* 80350534 0034D114  80 04 6C 00 */	lwz r0, 0xCC006C00@l(r4)
/* 80350538 0034D118  38 7F 00 00 */	addi r3, r31, 0
/* 8035053C 0034D11C  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80350540 0034D120  60 00 00 20 */	ori r0, r0, 0x20
/* 80350544 0034D124  90 04 6C 00 */	stw r0, 0x6c00(r4)
/* 80350548 0034D128  80 04 6C 00 */	lwz r0, 0x6c00(r4)
/* 8035054C 0034D12C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80350550 0034D130  60 00 00 01 */	ori r0, r0, 1
/* 80350554 0034D134  90 04 6C 00 */	stw r0, 0x6c00(r4)
/* 80350558 0034D138  4B FF 6E 35 */	bl OSRestoreInterrupts
/* 8035055C 0034D13C  7F C3 F3 78 */	mr r3, r30
/* 80350560 0034D140  48 00 02 29 */	bl func_80350788
/* 80350564 0034D144  7F A3 EB 78 */	mr r3, r29
/* 80350568 0034D148  48 00 02 4D */	bl func_803507B4
/* 8035056C 0034D14C  48 00 00 18 */	b lbl_80350584
lbl_80350570:
/* 80350570 0034D150  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 80350574 0034D154  80 03 6C 00 */	lwz r0, 0xCC006C00@l(r3)
/* 80350578 0034D158  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8035057C 0034D15C  7C 00 EB 78 */	or r0, r0, r29
/* 80350580 0034D160  90 03 6C 00 */	stw r0, 0x6c00(r3)
lbl_80350584:
/* 80350584 0034D164  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80350588 0034D168  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8035058C 0034D16C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80350590 0034D170  7C 08 03 A6 */	mtlr r0
/* 80350594 0034D174  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80350598 0034D178  38 21 00 20 */	addi r1, r1, 0x20
/* 8035059C 0034D17C  4E 80 00 20 */	blr 

.global func_803505A0
func_803505A0:
/* 803505A0 0034D180  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 803505A4 0034D184  80 03 6C 00 */	lwz r0, 0xCC006C00@l(r3)
/* 803505A8 0034D188  54 03 07 FE */	clrlwi r3, r0, 0x1f
/* 803505AC 0034D18C  4E 80 00 20 */	blr 

.global func_803505B0
func_803505B0:
/* 803505B0 0034D190  7C 08 02 A6 */	mflr r0
/* 803505B4 0034D194  90 01 00 04 */	stw r0, 4(r1)
/* 803505B8 0034D198  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 803505BC 0034D19C  BF 41 00 10 */	stmw r26, 0x10(r1)
/* 803505C0 0034D1A0  7C 7A 1B 78 */	mr r26, r3
/* 803505C4 0034D1A4  48 00 00 CD */	bl func_80350690
/* 803505C8 0034D1A8  7C 1A 18 40 */	cmplw r26, r3
/* 803505CC 0034D1AC  41 82 00 B0 */	beq lbl_8035067C
/* 803505D0 0034D1B0  3F E0 CC 00 */	lis r31, 0xCC006C00@ha
/* 803505D4 0034D1B4  80 1F 6C 00 */	lwz r0, 0xCC006C00@l(r31)
/* 803505D8 0034D1B8  28 1A 00 00 */	cmplwi r26, 0
/* 803505DC 0034D1BC  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 803505E0 0034D1C0  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 803505E4 0034D1C4  40 82 00 98 */	bne lbl_8035067C
/* 803505E8 0034D1C8  48 00 01 BD */	bl func_803507A4
/* 803505EC 0034D1CC  7C 7E 1B 78 */	mr r30, r3
/* 803505F0 0034D1D0  48 00 01 E1 */	bl func_803507D0
/* 803505F4 0034D1D4  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 803505F8 0034D1D8  3B A3 00 00 */	addi r29, r3, 0
/* 803505FC 0034D1DC  54 1B 07 FE */	clrlwi r27, r0, 0x1f
/* 80350600 0034D1E0  48 00 01 79 */	bl func_80350778
/* 80350604 0034D1E4  3B 83 00 00 */	addi r28, r3, 0
/* 80350608 0034D1E8  38 60 00 00 */	li r3, 0
/* 8035060C 0034D1EC  48 00 01 7D */	bl func_80350788
/* 80350610 0034D1F0  38 60 00 00 */	li r3, 0
/* 80350614 0034D1F4  48 00 01 A1 */	bl func_803507B4
/* 80350618 0034D1F8  4B FF 6D 4D */	bl OSDisableInterrupts
/* 8035061C 0034D1FC  7C 7A 1B 78 */	mr r26, r3
/* 80350620 0034D200  48 00 04 89 */	bl func_80350AA8
/* 80350624 0034D204  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 80350628 0034D208  57 80 08 3C */	slwi r0, r28, 1
/* 8035062C 0034D20C  38 7A 00 00 */	addi r3, r26, 0
/* 80350630 0034D210  54 84 06 F2 */	rlwinm r4, r4, 0, 0x1b, 0x19
/* 80350634 0034D214  60 84 00 20 */	ori r4, r4, 0x20
/* 80350638 0034D218  90 9F 6C 00 */	stw r4, 0x6c00(r31)
/* 8035063C 0034D21C  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 80350640 0034D220  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 80350644 0034D224  7C 80 03 78 */	or r0, r4, r0
/* 80350648 0034D228  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8035064C 0034D22C  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 80350650 0034D230  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80350654 0034D234  7C 00 DB 78 */	or r0, r0, r27
/* 80350658 0034D238  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8035065C 0034D23C  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 80350660 0034D240  60 00 00 40 */	ori r0, r0, 0x40
/* 80350664 0034D244  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 80350668 0034D248  4B FF 6D 25 */	bl OSRestoreInterrupts
/* 8035066C 0034D24C  7F C3 F3 78 */	mr r3, r30
/* 80350670 0034D250  48 00 01 19 */	bl func_80350788
/* 80350674 0034D254  7F A3 EB 78 */	mr r3, r29
/* 80350678 0034D258  48 00 01 3D */	bl func_803507B4
lbl_8035067C:
/* 8035067C 0034D25C  BB 41 00 10 */	lmw r26, 0x10(r1)
/* 80350680 0034D260  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80350684 0034D264  38 21 00 28 */	addi r1, r1, 0x28
/* 80350688 0034D268  7C 08 03 A6 */	mtlr r0
/* 8035068C 0034D26C  4E 80 00 20 */	blr 

.global func_80350690
func_80350690:
/* 80350690 0034D270  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 80350694 0034D274  80 03 6C 00 */	lwz r0, 0xCC006C00@l(r3)
/* 80350698 0034D278  54 00 D7 FE */	rlwinm r0, r0, 0x1a, 0x1f, 0x1f
/* 8035069C 0034D27C  68 03 00 01 */	xori r3, r0, 1
/* 803506A0 0034D280  4E 80 00 20 */	blr 

.global func_803506A4
func_803506A4:
/* 803506A4 0034D284  7C 08 02 A6 */	mflr r0
/* 803506A8 0034D288  90 01 00 04 */	stw r0, 4(r1)
/* 803506AC 0034D28C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803506B0 0034D290  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 803506B4 0034D294  7C 79 1B 78 */	mr r25, r3
/* 803506B8 0034D298  48 00 00 C1 */	bl func_80350778
/* 803506BC 0034D29C  7C 19 18 40 */	cmplw r25, r3
/* 803506C0 0034D2A0  41 82 00 A4 */	beq lbl_80350764
/* 803506C4 0034D2A4  3F E0 CC 00 */	lis r31, 0xCC006C00@ha
/* 803506C8 0034D2A8  80 1F 6C 00 */	lwz r0, 0xCC006C00@l(r31)
/* 803506CC 0034D2AC  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803506D0 0034D2B0  7C 1D 03 78 */	mr r29, r0
/* 803506D4 0034D2B4  48 00 00 D1 */	bl func_803507A4
/* 803506D8 0034D2B8  7C 7C 1B 78 */	mr r28, r3
/* 803506DC 0034D2BC  48 00 00 F5 */	bl func_803507D0
/* 803506E0 0034D2C0  3B 63 00 00 */	addi r27, r3, 0
/* 803506E4 0034D2C4  38 60 00 00 */	li r3, 0
/* 803506E8 0034D2C8  48 00 00 CD */	bl func_803507B4
/* 803506EC 0034D2CC  38 60 00 00 */	li r3, 0
/* 803506F0 0034D2D0  48 00 00 99 */	bl func_80350788
/* 803506F4 0034D2D4  80 7F 6C 00 */	lwz r3, 0x6c00(r31)
/* 803506F8 0034D2D8  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 803506FC 0034D2DC  54 7A 06 72 */	rlwinm r26, r3, 0, 0x19, 0x19
/* 80350700 0034D2E0  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80350704 0034D2E4  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 80350708 0034D2E8  4B FF 6C 5D */	bl OSDisableInterrupts
/* 8035070C 0034D2EC  7C 7E 1B 78 */	mr r30, r3
/* 80350710 0034D2F0  48 00 03 99 */	bl func_80350AA8
/* 80350714 0034D2F4  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 80350718 0034D2F8  57 20 08 3C */	slwi r0, r25, 1
/* 8035071C 0034D2FC  38 7E 00 00 */	addi r3, r30, 0
/* 80350720 0034D300  7C 84 D3 78 */	or r4, r4, r26
/* 80350724 0034D304  90 9F 6C 00 */	stw r4, 0x6c00(r31)
/* 80350728 0034D308  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 8035072C 0034D30C  54 84 06 F2 */	rlwinm r4, r4, 0, 0x1b, 0x19
/* 80350730 0034D310  60 84 00 20 */	ori r4, r4, 0x20
/* 80350734 0034D314  90 9F 6C 00 */	stw r4, 0x6c00(r31)
/* 80350738 0034D318  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 8035073C 0034D31C  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 80350740 0034D320  7C 80 03 78 */	or r0, r4, r0
/* 80350744 0034D324  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 80350748 0034D328  4B FF 6C 45 */	bl OSRestoreInterrupts
/* 8035074C 0034D32C  7F A3 EB 78 */	mr r3, r29
/* 80350750 0034D330  4B FF FD 79 */	bl func_803504C8
/* 80350754 0034D334  7F 83 E3 78 */	mr r3, r28
/* 80350758 0034D338  48 00 00 31 */	bl func_80350788
/* 8035075C 0034D33C  7F 63 DB 78 */	mr r3, r27
/* 80350760 0034D340  48 00 00 55 */	bl func_803507B4
lbl_80350764:
/* 80350764 0034D344  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 80350768 0034D348  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8035076C 0034D34C  38 21 00 30 */	addi r1, r1, 0x30
/* 80350770 0034D350  7C 08 03 A6 */	mtlr r0
/* 80350774 0034D354  4E 80 00 20 */	blr 

.global func_80350778
func_80350778:
/* 80350778 0034D358  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 8035077C 0034D35C  80 03 6C 00 */	lwz r0, 0xCC006C00@l(r3)
/* 80350780 0034D360  54 03 FF FE */	rlwinm r3, r0, 0x1f, 0x1f, 0x1f
/* 80350784 0034D364  4E 80 00 20 */	blr 

.global func_80350788
func_80350788:
/* 80350788 0034D368  3C 80 CC 00 */	lis r4, 0xCC006C00@ha
/* 8035078C 0034D36C  38 84 6C 00 */	addi r4, r4, 0xCC006C00@l
/* 80350790 0034D370  80 04 00 04 */	lwz r0, 4(r4)
/* 80350794 0034D374  54 00 00 2E */	rlwinm r0, r0, 0, 0, 0x17
/* 80350798 0034D378  50 60 06 3E */	rlwimi r0, r3, 0, 0x18, 0x1f
/* 8035079C 0034D37C  90 04 00 04 */	stw r0, 4(r4)
/* 803507A0 0034D380  4E 80 00 20 */	blr 

.global func_803507A4
func_803507A4:
/* 803507A4 0034D384  3C 60 CC 00 */	lis r3, 0xCC006C04@ha
/* 803507A8 0034D388  80 03 6C 04 */	lwz r0, 0xCC006C04@l(r3)
/* 803507AC 0034D38C  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 803507B0 0034D390  4E 80 00 20 */	blr 

.global func_803507B4
func_803507B4:
/* 803507B4 0034D394  3C 80 CC 00 */	lis r4, 0xCC006C00@ha
/* 803507B8 0034D398  38 84 6C 00 */	addi r4, r4, 0xCC006C00@l
/* 803507BC 0034D39C  80 04 00 04 */	lwz r0, 4(r4)
/* 803507C0 0034D3A0  54 00 06 1E */	rlwinm r0, r0, 0, 0x18, 0xf
/* 803507C4 0034D3A4  50 60 44 2E */	rlwimi r0, r3, 8, 0x10, 0x17
/* 803507C8 0034D3A8  90 04 00 04 */	stw r0, 4(r4)
/* 803507CC 0034D3AC  4E 80 00 20 */	blr 

.global func_803507D0
func_803507D0:
/* 803507D0 0034D3B0  3C 60 CC 00 */	lis r3, 0xCC006C04@ha
/* 803507D4 0034D3B4  80 03 6C 04 */	lwz r0, 0xCC006C04@l(r3)
/* 803507D8 0034D3B8  54 03 C6 3E */	rlwinm r3, r0, 0x18, 0x18, 0x1f
/* 803507DC 0034D3BC  4E 80 00 20 */	blr 

.global func_803507E0
func_803507E0:
/* 803507E0 0034D3C0  7C 08 02 A6 */	mflr r0
/* 803507E4 0034D3C4  90 01 00 04 */	stw r0, 4(r1)
/* 803507E8 0034D3C8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 803507EC 0034D3CC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 803507F0 0034D3D0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 803507F4 0034D3D4  3B C3 00 00 */	addi r30, r3, 0
/* 803507F8 0034D3D8  80 0D BD E0 */	lwz r0, lbl_804D7480-_SDA_BASE_(r13)
/* 803507FC 0034D3DC  2C 00 00 01 */	cmpwi r0, 1
/* 80350800 0034D3E0  41 82 01 2C */	beq lbl_8035092C
/* 80350804 0034D3E4  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 80350808 0034D3E8  80 03 00 F8 */	lwz r0, 0x800000F8@l(r3)
/* 8035080C 0034D3EC  3C 60 43 1C */	lis r3, 0x431BDE83@ha
/* 80350810 0034D3F0  3C 80 00 01 */	lis r4, 0x0000A428@ha
/* 80350814 0034D3F4  54 00 F0 BE */	srwi r0, r0, 2
/* 80350818 0034D3F8  38 63 DE 83 */	addi r3, r3, 0x431BDE83@l
/* 8035081C 0034D3FC  7C 03 00 16 */	mulhwu r0, r3, r0
/* 80350820 0034D400  54 09 8B FE */	srwi r9, r0, 0xf
/* 80350824 0034D404  38 A4 A4 28 */	addi r5, r4, 0x0000A428@l
/* 80350828 0034D408  38 64 A4 10 */	addi r3, r4, -23536
/* 8035082C 0034D40C  38 04 F6 18 */	addi r0, r4, -2536
/* 80350830 0034D410  3C 80 10 62 */	lis r4, 0x10624DD3@ha
/* 80350834 0034D414  7C E9 29 D6 */	mullw r7, r9, r5
/* 80350838 0034D418  39 44 4D D3 */	addi r10, r4, 0x10624DD3@l
/* 8035083C 0034D41C  7C A9 19 D6 */	mullw r5, r9, r3
/* 80350840 0034D420  7C 89 01 D6 */	mullw r4, r9, r0
/* 80350844 0034D424  1D 09 7B 24 */	mulli r8, r9, 0x7b24
/* 80350848 0034D428  1C 69 0B B8 */	mulli r3, r9, 0xbb8
/* 8035084C 0034D42C  7D 0A 40 16 */	mulhwu r8, r10, r8
/* 80350850 0034D430  7C EA 38 16 */	mulhwu r7, r10, r7
/* 80350854 0034D434  7C AA 28 16 */	mulhwu r5, r10, r5
/* 80350858 0034D438  7C 8A 20 16 */	mulhwu r4, r10, r4
/* 8035085C 0034D43C  7C 6A 18 16 */	mulhwu r3, r10, r3
/* 80350860 0034D440  55 08 BA 7E */	srwi r8, r8, 9
/* 80350864 0034D444  54 E7 BA 7E */	srwi r7, r7, 9
/* 80350868 0034D448  91 0D BD EC */	stw r8, lbl_804D748C-_SDA_BASE_(r13)
/* 8035086C 0034D44C  54 A5 BA 7E */	srwi r5, r5, 9
/* 80350870 0034D450  54 84 BA 7E */	srwi r4, r4, 9
/* 80350874 0034D454  90 ED BD F4 */	stw r7, lbl_804D7494-_SDA_BASE_(r13)
/* 80350878 0034D458  3B E0 00 00 */	li r31, 0
/* 8035087C 0034D45C  54 63 BA 7E */	srwi r3, r3, 9
/* 80350880 0034D460  90 AD BD FC */	stw r5, lbl_804D749C-_SDA_BASE_(r13)
/* 80350884 0034D464  3C C0 CC 00 */	lis r6, 0xCC006C00@ha
/* 80350888 0034D468  90 6D BE 0C */	stw r3, lbl_804D74AC-_SDA_BASE_(r13)
/* 8035088C 0034D46C  38 60 00 01 */	li r3, 1
/* 80350890 0034D470  80 06 6C 00 */	lwz r0, 0xCC006C00@l(r6)
/* 80350894 0034D474  90 8D BE 04 */	stw r4, lbl_804D74A4-_SDA_BASE_(r13)
/* 80350898 0034D478  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 8035089C 0034D47C  60 00 00 20 */	ori r0, r0, 0x20
/* 803508A0 0034D480  93 ED BD E8 */	stw r31, lbl_804D7488-_SDA_BASE_(r13)
/* 803508A4 0034D484  93 ED BD F0 */	stw r31, lbl_804D7490-_SDA_BASE_(r13)
/* 803508A8 0034D488  93 ED BD F8 */	stw r31, lbl_804D7498-_SDA_BASE_(r13)
/* 803508AC 0034D48C  93 ED BE 00 */	stw r31, lbl_804D74A0-_SDA_BASE_(r13)
/* 803508B0 0034D490  93 ED BE 08 */	stw r31, lbl_804D74A8-_SDA_BASE_(r13)
/* 803508B4 0034D494  80 A6 6C 04 */	lwz r5, 0x6c04(r6)
/* 803508B8 0034D498  90 06 6C 00 */	stw r0, 0x6c00(r6)
/* 803508BC 0034D49C  54 A0 06 1E */	rlwinm r0, r5, 0, 0x18, 0xf
/* 803508C0 0034D4A0  60 00 00 00 */	nop 
/* 803508C4 0034D4A4  90 06 6C 04 */	stw r0, 0x6c04(r6)
/* 803508C8 0034D4A8  80 06 6C 04 */	lwz r0, 0x6c04(r6)
/* 803508CC 0034D4AC  54 00 00 2E */	rlwinm r0, r0, 0, 0, 0x17
/* 803508D0 0034D4B0  60 00 00 00 */	nop 
/* 803508D4 0034D4B4  90 06 6C 04 */	stw r0, 0x6c04(r6)
/* 803508D8 0034D4B8  93 E6 6C 0C */	stw r31, 0x6c0c(r6)
/* 803508DC 0034D4BC  4B FF FD C9 */	bl func_803506A4
/* 803508E0 0034D4C0  38 60 00 00 */	li r3, 0
/* 803508E4 0034D4C4  4B FF FC CD */	bl func_803505B0
/* 803508E8 0034D4C8  3C 60 80 35 */	lis r3, lbl_803509C0@ha
/* 803508EC 0034D4CC  93 ED BD D0 */	stw r31, lbl_804D7470-_SDA_BASE_(r13)
/* 803508F0 0034D4D0  38 83 09 C0 */	addi r4, r3, lbl_803509C0@l
/* 803508F4 0034D4D4  93 ED BD D4 */	stw r31, lbl_804D7474-_SDA_BASE_(r13)
/* 803508F8 0034D4D8  38 60 00 05 */	li r3, 5
/* 803508FC 0034D4DC  93 CD BD D8 */	stw r30, lbl_804D7478-_SDA_BASE_(r13)
/* 80350900 0034D4E0  4B FF 6A B1 */	bl func_803473B0
/* 80350904 0034D4E4  3C 60 04 00 */	lis r3, 0x400
/* 80350908 0034D4E8  4B FF 6E AD */	bl func_803477B4
/* 8035090C 0034D4EC  3C 60 80 35 */	lis r3, lbl_80350944@ha
/* 80350910 0034D4F0  38 83 09 44 */	addi r4, r3, lbl_80350944@l
/* 80350914 0034D4F4  38 60 00 08 */	li r3, 8
/* 80350918 0034D4F8  4B FF 6A 99 */	bl func_803473B0
/* 8035091C 0034D4FC  3C 60 00 80 */	lis r3, 0x80
/* 80350920 0034D500  4B FF 6E 95 */	bl func_803477B4
/* 80350924 0034D504  38 00 00 01 */	li r0, 1
/* 80350928 0034D508  90 0D BD E0 */	stw r0, lbl_804D7480-_SDA_BASE_(r13)
lbl_8035092C:
/* 8035092C 0034D50C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80350930 0034D510  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80350934 0034D514  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80350938 0034D518  7C 08 03 A6 */	mtlr r0
/* 8035093C 0034D51C  38 21 00 18 */	addi r1, r1, 0x18
/* 80350940 0034D520  4E 80 00 20 */	blr 
lbl_80350944:
/* 80350944 0034D524  7C 08 02 A6 */	mflr r0
/* 80350948 0034D528  90 01 00 04 */	stw r0, 4(r1)
/* 8035094C 0034D52C  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 80350950 0034D530  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 80350954 0034D534  3F E0 CC 00 */	lis r31, 0xCC006C00@ha
/* 80350958 0034D538  80 1F 6C 00 */	lwz r0, 0xCC006C00@l(r31)
/* 8035095C 0034D53C  38 61 00 10 */	addi r3, r1, 0x10
/* 80350960 0034D540  93 C1 02 D8 */	stw r30, 0x2d8(r1)
/* 80350964 0034D544  60 00 00 08 */	ori r0, r0, 8
/* 80350968 0034D548  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8035096C 0034D54C  3B C4 00 00 */	addi r30, r4, 0
/* 80350970 0034D550  4B FF 48 E5 */	bl func_80345254
/* 80350974 0034D554  38 61 00 10 */	addi r3, r1, 0x10
/* 80350978 0034D558  4B FF 47 15 */	bl func_8034508C
/* 8035097C 0034D55C  81 8D BD D0 */	lwz r12, lbl_804D7470-_SDA_BASE_(r13)
/* 80350980 0034D560  28 0C 00 00 */	cmplwi r12, 0
/* 80350984 0034D564  41 82 00 14 */	beq lbl_80350998
/* 80350988 0034D568  38 7F 6C 00 */	addi r3, r31, 0x6c00
/* 8035098C 0034D56C  7D 88 03 A6 */	mtlr r12
/* 80350990 0034D570  80 63 00 08 */	lwz r3, 8(r3)
/* 80350994 0034D574  4E 80 00 21 */	blrl 
lbl_80350998:
/* 80350998 0034D578  38 61 00 10 */	addi r3, r1, 0x10
/* 8035099C 0034D57C  4B FF 48 B9 */	bl func_80345254
/* 803509A0 0034D580  7F C3 F3 78 */	mr r3, r30
/* 803509A4 0034D584  4B FF 46 E9 */	bl func_8034508C
/* 803509A8 0034D588  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 803509AC 0034D58C  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 803509B0 0034D590  83 C1 02 D8 */	lwz r30, 0x2d8(r1)
/* 803509B4 0034D594  7C 08 03 A6 */	mtlr r0
/* 803509B8 0034D598  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 803509BC 0034D59C  4E 80 00 20 */	blr 
lbl_803509C0:
/* 803509C0 0034D5A0  7C 08 02 A6 */	mflr r0
/* 803509C4 0034D5A4  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 803509C8 0034D5A8  90 01 00 04 */	stw r0, 4(r1)
/* 803509CC 0034D5AC  38 63 50 00 */	addi r3, r3, 0xCC005000@l
/* 803509D0 0034D5B0  38 00 FF 5F */	li r0, -161
/* 803509D4 0034D5B4  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 803509D8 0034D5B8  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 803509DC 0034D5BC  3B E4 00 00 */	addi r31, r4, 0
/* 803509E0 0034D5C0  A0 A3 00 0A */	lhz r5, 0xa(r3)
/* 803509E4 0034D5C4  7C A0 00 38 */	and r0, r5, r0
/* 803509E8 0034D5C8  60 00 00 08 */	ori r0, r0, 8
/* 803509EC 0034D5CC  B0 03 00 0A */	sth r0, 0xa(r3)
/* 803509F0 0034D5D0  38 61 00 10 */	addi r3, r1, 0x10
/* 803509F4 0034D5D4  4B FF 48 61 */	bl func_80345254
/* 803509F8 0034D5D8  38 61 00 10 */	addi r3, r1, 0x10
/* 803509FC 0034D5DC  4B FF 46 91 */	bl func_8034508C
/* 80350A00 0034D5E0  80 6D BD D4 */	lwz r3, lbl_804D7474-_SDA_BASE_(r13)
/* 80350A04 0034D5E4  28 03 00 00 */	cmplwi r3, 0
/* 80350A08 0034D5E8  41 82 00 24 */	beq lbl_80350A2C
/* 80350A0C 0034D5EC  80 0D BD D8 */	lwz r0, lbl_804D7478-_SDA_BASE_(r13)
/* 80350A10 0034D5F0  28 00 00 00 */	cmplwi r0, 0
/* 80350A14 0034D5F4  41 82 00 0C */	beq lbl_80350A20
/* 80350A18 0034D5F8  48 00 00 39 */	bl func_80350A50
/* 80350A1C 0034D5FC  48 00 00 10 */	b lbl_80350A2C
lbl_80350A20:
/* 80350A20 0034D600  39 83 00 00 */	addi r12, r3, 0
/* 80350A24 0034D604  7D 88 03 A6 */	mtlr r12
/* 80350A28 0034D608  4E 80 00 21 */	blrl 
lbl_80350A2C:
/* 80350A2C 0034D60C  38 61 00 10 */	addi r3, r1, 0x10
/* 80350A30 0034D610  4B FF 48 25 */	bl func_80345254
/* 80350A34 0034D614  7F E3 FB 78 */	mr r3, r31
/* 80350A38 0034D618  4B FF 46 55 */	bl func_8034508C
/* 80350A3C 0034D61C  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 80350A40 0034D620  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 80350A44 0034D624  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 80350A48 0034D628  7C 08 03 A6 */	mtlr r0
/* 80350A4C 0034D62C  4E 80 00 20 */	blr 

.global func_80350A50
func_80350A50:
/* 80350A50 0034D630  7C 08 02 A6 */	mflr r0
/* 80350A54 0034D634  90 01 00 04 */	stw r0, 4(r1)
/* 80350A58 0034D638  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80350A5C 0034D63C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80350A60 0034D640  7C 7F 1B 78 */	mr r31, r3
/* 80350A64 0034D644  3C A0 80 4D */	lis r5, lbl_804D747C@ha
/* 80350A68 0034D648  38 A5 74 7C */	addi r5, r5, lbl_804D747C@l
/* 80350A6C 0034D64C  90 25 00 00 */	stw r1, 0(r5)
/* 80350A70 0034D650  3C A0 80 4D */	lis r5, lbl_804D7478@ha
/* 80350A74 0034D654  38 A5 74 78 */	addi r5, r5, lbl_804D7478@l
/* 80350A78 0034D658  80 25 00 00 */	lwz r1, 0(r5)
/* 80350A7C 0034D65C  38 21 FF F8 */	addi r1, r1, -8
/* 80350A80 0034D660  7F E8 03 A6 */	mtlr r31
/* 80350A84 0034D664  4E 80 00 21 */	blrl 
/* 80350A88 0034D668  3C A0 80 4D */	lis r5, lbl_804D747C@ha
/* 80350A8C 0034D66C  38 A5 74 7C */	addi r5, r5, lbl_804D747C@l
/* 80350A90 0034D670  80 25 00 00 */	lwz r1, 0(r5)
/* 80350A94 0034D674  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80350A98 0034D678  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80350A9C 0034D67C  38 21 00 18 */	addi r1, r1, 0x18
/* 80350AA0 0034D680  7C 08 03 A6 */	mtlr r0
/* 80350AA4 0034D684  4E 80 00 20 */	blr 

.global func_80350AA8
func_80350AA8:
/* 80350AA8 0034D688  7C 08 02 A6 */	mflr r0
/* 80350AAC 0034D68C  90 01 00 04 */	stw r0, 4(r1)
/* 80350AB0 0034D690  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80350AB4 0034D694  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 80350AB8 0034D698  38 80 00 00 */	li r4, 0
/* 80350ABC 0034D69C  38 60 00 00 */	li r3, 0
/* 80350AC0 0034D6A0  38 00 00 00 */	li r0, 0
/* 80350AC4 0034D6A4  3B 80 00 00 */	li r28, 0
/* 80350AC8 0034D6A8  3B A0 00 00 */	li r29, 0
/* 80350ACC 0034D6AC  48 00 00 04 */	b lbl_80350AD0
lbl_80350AD0:
/* 80350AD0 0034D6B0  3F E0 CC 00 */	lis r31, 0xcc00
/* 80350AD4 0034D6B4  48 00 00 04 */	b lbl_80350AD8
lbl_80350AD8:
/* 80350AD8 0034D6B8  48 00 01 64 */	b lbl_80350C3C
lbl_80350ADC:
/* 80350ADC 0034D6BC  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 80350AE0 0034D6C0  3B DF 6C 00 */	addi r30, r31, 0x6c00
/* 80350AE4 0034D6C4  3B DE 00 08 */	addi r30, r30, 8
/* 80350AE8 0034D6C8  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80350AEC 0034D6CC  60 00 00 20 */	ori r0, r0, 0x20
/* 80350AF0 0034D6D0  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 80350AF4 0034D6D4  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 80350AF8 0034D6D8  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80350AFC 0034D6DC  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 80350B00 0034D6E0  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 80350B04 0034D6E4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80350B08 0034D6E8  60 00 00 01 */	ori r0, r0, 1
/* 80350B0C 0034D6EC  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 80350B10 0034D6F0  80 7E 00 00 */	lwz r3, 0(r30)
/* 80350B14 0034D6F4  48 00 00 04 */	b lbl_80350B18
lbl_80350B18:
/* 80350B18 0034D6F8  48 00 00 04 */	b lbl_80350B1C
lbl_80350B1C:
/* 80350B1C 0034D6FC  80 1E 00 00 */	lwz r0, 0(r30)
/* 80350B20 0034D700  7C 03 00 40 */	cmplw r3, r0
/* 80350B24 0034D704  41 82 FF F8 */	beq lbl_80350B1C
/* 80350B28 0034D708  4B FF B8 C9 */	bl OSGetTime
/* 80350B2C 0034D70C  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 80350B30 0034D710  7C 9A 23 78 */	mr r26, r4
/* 80350B34 0034D714  7C 7B 1B 78 */	mr r27, r3
/* 80350B38 0034D718  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80350B3C 0034D71C  60 00 00 02 */	ori r0, r0, 2
/* 80350B40 0034D720  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 80350B44 0034D724  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 80350B48 0034D728  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80350B4C 0034D72C  60 00 00 01 */	ori r0, r0, 1
/* 80350B50 0034D730  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 80350B54 0034D734  80 7E 00 00 */	lwz r3, 0(r30)
/* 80350B58 0034D738  48 00 00 04 */	b lbl_80350B5C
lbl_80350B5C:
/* 80350B5C 0034D73C  48 00 00 04 */	b lbl_80350B60
lbl_80350B60:
/* 80350B60 0034D740  80 1E 00 00 */	lwz r0, 0(r30)
/* 80350B64 0034D744  7C 03 00 40 */	cmplw r3, r0
/* 80350B68 0034D748  41 82 FF F8 */	beq lbl_80350B60
/* 80350B6C 0034D74C  4B FF B8 85 */	bl OSGetTime
/* 80350B70 0034D750  7D 1A 20 10 */	subfc r8, r26, r4
/* 80350B74 0034D754  81 8D BD EC */	lwz r12, lbl_804D748C-_SDA_BASE_(r13)
/* 80350B78 0034D758  80 BF 6C 00 */	lwz r5, 0x6c00(r31)
/* 80350B7C 0034D75C  7C FB 19 10 */	subfe r7, r27, r3
/* 80350B80 0034D760  81 4D BE 0C */	lwz r10, lbl_804D74AC-_SDA_BASE_(r13)
/* 80350B84 0034D764  6C E7 80 00 */	xoris r7, r7, 0x8000
/* 80350B88 0034D768  54 A5 07 FA */	rlwinm r5, r5, 0, 0x1f, 0x1d
/* 80350B8C 0034D76C  81 6D BD E8 */	lwz r11, lbl_804D7488-_SDA_BASE_(r13)
/* 80350B90 0034D770  7C CA 60 10 */	subfc r6, r10, r12
/* 80350B94 0034D774  81 2D BE 08 */	lwz r9, lbl_804D74A8-_SDA_BASE_(r13)
/* 80350B98 0034D778  90 BF 6C 00 */	stw r5, 0x6c00(r31)
/* 80350B9C 0034D77C  7C 09 59 10 */	subfe r0, r9, r11
/* 80350BA0 0034D780  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 80350BA4 0034D784  7C 06 40 10 */	subfc r0, r6, r8
/* 80350BA8 0034D788  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 80350BAC 0034D78C  7C A5 39 10 */	subfe r5, r5, r7
/* 80350BB0 0034D790  7C A7 39 10 */	subfe r5, r7, r7
/* 80350BB4 0034D794  7C A5 00 D0 */	neg r5, r5
/* 80350BB8 0034D798  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80350BBC 0034D79C  2C 05 00 00 */	cmpwi r5, 0
/* 80350BC0 0034D7A0  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 80350BC4 0034D7A4  41 82 00 14 */	beq lbl_80350BD8
/* 80350BC8 0034D7A8  83 AD BD F8 */	lwz r29, lbl_804D7498-_SDA_BASE_(r13)
/* 80350BCC 0034D7AC  38 00 00 01 */	li r0, 1
/* 80350BD0 0034D7B0  83 8D BD FC */	lwz r28, lbl_804D749C-_SDA_BASE_(r13)
/* 80350BD4 0034D7B4  48 00 00 68 */	b lbl_80350C3C
lbl_80350BD8:
/* 80350BD8 0034D7B8  7C CC 50 14 */	addc r6, r12, r10
/* 80350BDC 0034D7BC  7C 0B 49 14 */	adde r0, r11, r9
/* 80350BE0 0034D7C0  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 80350BE4 0034D7C4  7C 06 40 10 */	subfc r0, r6, r8
/* 80350BE8 0034D7C8  7C A5 39 10 */	subfe r5, r5, r7
/* 80350BEC 0034D7CC  7C A7 39 10 */	subfe r5, r7, r7
/* 80350BF0 0034D7D0  7C A5 00 D0 */	neg r5, r5
/* 80350BF4 0034D7D4  2C 05 00 00 */	cmpwi r5, 0
/* 80350BF8 0034D7D8  40 82 00 40 */	bne lbl_80350C38
/* 80350BFC 0034D7DC  80 AD BD F4 */	lwz r5, lbl_804D7494-_SDA_BASE_(r13)
/* 80350C00 0034D7E0  80 0D BD F0 */	lwz r0, lbl_804D7490-_SDA_BASE_(r13)
/* 80350C04 0034D7E4  7C CA 28 10 */	subfc r6, r10, r5
/* 80350C08 0034D7E8  7C 09 01 10 */	subfe r0, r9, r0
/* 80350C0C 0034D7EC  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 80350C10 0034D7F0  7C 06 40 10 */	subfc r0, r6, r8
/* 80350C14 0034D7F4  7C A5 39 10 */	subfe r5, r5, r7
/* 80350C18 0034D7F8  7C A7 39 10 */	subfe r5, r7, r7
/* 80350C1C 0034D7FC  7C A5 00 D0 */	neg r5, r5
/* 80350C20 0034D800  2C 05 00 00 */	cmpwi r5, 0
/* 80350C24 0034D804  41 82 00 14 */	beq lbl_80350C38
/* 80350C28 0034D808  83 AD BE 00 */	lwz r29, lbl_804D74A0-_SDA_BASE_(r13)
/* 80350C2C 0034D80C  38 00 00 01 */	li r0, 1
/* 80350C30 0034D810  83 8D BE 04 */	lwz r28, lbl_804D74A4-_SDA_BASE_(r13)
/* 80350C34 0034D814  48 00 00 08 */	b lbl_80350C3C
lbl_80350C38:
/* 80350C38 0034D818  38 00 00 00 */	li r0, 0
lbl_80350C3C:
/* 80350C3C 0034D81C  28 00 00 00 */	cmplwi r0, 0
/* 80350C40 0034D820  41 82 FE 9C */	beq lbl_80350ADC
/* 80350C44 0034D824  7F 64 E0 14 */	addc r27, r4, r28
/* 80350C48 0034D828  7F 43 E9 14 */	adde r26, r3, r29
/* 80350C4C 0034D82C  48 00 00 04 */	b lbl_80350C50
lbl_80350C50:
/* 80350C50 0034D830  48 00 00 04 */	b lbl_80350C54
lbl_80350C54:
/* 80350C54 0034D834  4B FF B7 9D */	bl OSGetTime
/* 80350C58 0034D838  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 80350C5C 0034D83C  6F 43 80 00 */	xoris r3, r26, 0x8000
/* 80350C60 0034D840  7C 1B 20 10 */	subfc r0, r27, r4
/* 80350C64 0034D844  7C 63 29 10 */	subfe r3, r3, r5
/* 80350C68 0034D848  7C 65 29 10 */	subfe r3, r5, r5
/* 80350C6C 0034D84C  7C 63 00 D0 */	neg r3, r3
/* 80350C70 0034D850  2C 03 00 00 */	cmpwi r3, 0
/* 80350C74 0034D854  40 82 FF E0 */	bne lbl_80350C54
/* 80350C78 0034D858  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 80350C7C 0034D85C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80350C80 0034D860  38 21 00 30 */	addi r1, r1, 0x30
/* 80350C84 0034D864  7C 08 03 A6 */	mtlr r0
/* 80350C88 0034D868  4E 80 00 20 */	blr 

.global func_80350C8C
func_80350C8C:
/* 80350C8C 0034D86C  7C 08 02 A6 */	mflr r0
/* 80350C90 0034D870  90 01 00 04 */	stw r0, 4(r1)
/* 80350C94 0034D874  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80350C98 0034D878  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80350C9C 0034D87C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80350CA0 0034D880  7C 7E 1B 78 */	mr r30, r3
/* 80350CA4 0034D884  83 ED BE 10 */	lwz r31, lbl_804D74B0-_SDA_BASE_(r13)
/* 80350CA8 0034D888  4B FF 66 BD */	bl OSDisableInterrupts
/* 80350CAC 0034D88C  93 CD BE 10 */	stw r30, lbl_804D74B0-_SDA_BASE_(r13)
/* 80350CB0 0034D890  4B FF 66 DD */	bl OSRestoreInterrupts
/* 80350CB4 0034D894  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80350CB8 0034D898  7F E3 FB 78 */	mr r3, r31
/* 80350CBC 0034D89C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80350CC0 0034D8A0  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80350CC4 0034D8A4  7C 08 03 A6 */	mtlr r0
/* 80350CC8 0034D8A8  38 21 00 18 */	addi r1, r1, 0x18
/* 80350CCC 0034D8AC  4E 80 00 20 */	blr 
