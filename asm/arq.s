.include "macros.inc"

.section .text  # 0x80005940 - 0x803B7240

.global __ARQServiceQueueLo
__ARQServiceQueueLo:
/* 80351EDC 0034EABC  7C 08 02 A6 */	mflr r0
/* 80351EE0 0034EAC0  90 01 00 04 */	stw r0, 4(r1)
/* 80351EE4 0034EAC4  94 21 FF F8 */	stwu r1, -8(r1)
/* 80351EE8 0034EAC8  80 0D BE 3C */	lwz r0, lbl_804D74DC-_SDA_BASE_(r13)
/* 80351EEC 0034EACC  28 00 00 00 */	cmplwi r0, 0
/* 80351EF0 0034EAD0  40 82 00 1C */	bne lbl_80351F0C
/* 80351EF4 0034EAD4  80 6D BE 30 */	lwz r3, lbl_804D74D0-_SDA_BASE_(r13)
/* 80351EF8 0034EAD8  28 03 00 00 */	cmplwi r3, 0
/* 80351EFC 0034EADC  41 82 00 10 */	beq lbl_80351F0C
/* 80351F00 0034EAE0  90 6D BE 3C */	stw r3, lbl_804D74DC-_SDA_BASE_(r13)
/* 80351F04 0034EAE4  80 03 00 00 */	lwz r0, 0(r3)
/* 80351F08 0034EAE8  90 0D BE 30 */	stw r0, lbl_804D74D0-_SDA_BASE_(r13)
lbl_80351F0C:
/* 80351F0C 0034EAEC  80 AD BE 3C */	lwz r5, lbl_804D74DC-_SDA_BASE_(r13)
/* 80351F10 0034EAF0  28 05 00 00 */	cmplwi r5, 0
/* 80351F14 0034EAF4  41 82 00 B8 */	beq lbl_80351FCC
/* 80351F18 0034EAF8  80 C5 00 18 */	lwz r6, 0x18(r5)
/* 80351F1C 0034EAFC  80 0D BE 48 */	lwz r0, lbl_804D74E8-_SDA_BASE_(r13)
/* 80351F20 0034EB00  7C 06 00 40 */	cmplw r6, r0
/* 80351F24 0034EB04  41 81 00 3C */	bgt lbl_80351F60
/* 80351F28 0034EB08  80 65 00 08 */	lwz r3, 8(r5)
/* 80351F2C 0034EB0C  28 03 00 00 */	cmplwi r3, 0
/* 80351F30 0034EB10  40 82 00 14 */	bne lbl_80351F44
/* 80351F34 0034EB14  80 85 00 10 */	lwz r4, 0x10(r5)
/* 80351F38 0034EB18  80 A5 00 14 */	lwz r5, 0x14(r5)
/* 80351F3C 0034EB1C  4B FF ED 95 */	bl ARStartDMA
/* 80351F40 0034EB20  48 00 00 10 */	b lbl_80351F50
lbl_80351F44:
/* 80351F44 0034EB24  80 85 00 14 */	lwz r4, 0x14(r5)
/* 80351F48 0034EB28  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 80351F4C 0034EB2C  4B FF ED 85 */	bl ARStartDMA
lbl_80351F50:
/* 80351F50 0034EB30  80 6D BE 3C */	lwz r3, lbl_804D74DC-_SDA_BASE_(r13)
/* 80351F54 0034EB34  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80351F58 0034EB38  90 0D BE 44 */	stw r0, lbl_804D74E4-_SDA_BASE_(r13)
/* 80351F5C 0034EB3C  48 00 00 34 */	b lbl_80351F90
lbl_80351F60:
/* 80351F60 0034EB40  80 65 00 08 */	lwz r3, 8(r5)
/* 80351F64 0034EB44  28 03 00 00 */	cmplwi r3, 0
/* 80351F68 0034EB48  40 82 00 18 */	bne lbl_80351F80
/* 80351F6C 0034EB4C  80 85 00 10 */	lwz r4, 0x10(r5)
/* 80351F70 0034EB50  7C 06 03 78 */	mr r6, r0
/* 80351F74 0034EB54  80 A5 00 14 */	lwz r5, 0x14(r5)
/* 80351F78 0034EB58  4B FF ED 59 */	bl ARStartDMA
/* 80351F7C 0034EB5C  48 00 00 14 */	b lbl_80351F90
lbl_80351F80:
/* 80351F80 0034EB60  80 85 00 14 */	lwz r4, 0x14(r5)
/* 80351F84 0034EB64  7C 06 03 78 */	mr r6, r0
/* 80351F88 0034EB68  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 80351F8C 0034EB6C  4B FF ED 45 */	bl ARStartDMA
lbl_80351F90:
/* 80351F90 0034EB70  80 6D BE 3C */	lwz r3, lbl_804D74DC-_SDA_BASE_(r13)
/* 80351F94 0034EB74  80 8D BE 48 */	lwz r4, lbl_804D74E8-_SDA_BASE_(r13)
/* 80351F98 0034EB78  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80351F9C 0034EB7C  7C 04 00 50 */	subf r0, r4, r0
/* 80351FA0 0034EB80  90 03 00 18 */	stw r0, 0x18(r3)
/* 80351FA4 0034EB84  80 8D BE 3C */	lwz r4, lbl_804D74DC-_SDA_BASE_(r13)
/* 80351FA8 0034EB88  80 0D BE 48 */	lwz r0, lbl_804D74E8-_SDA_BASE_(r13)
/* 80351FAC 0034EB8C  80 64 00 10 */	lwz r3, 0x10(r4)
/* 80351FB0 0034EB90  7C 03 02 14 */	add r0, r3, r0
/* 80351FB4 0034EB94  90 04 00 10 */	stw r0, 0x10(r4)
/* 80351FB8 0034EB98  80 8D BE 3C */	lwz r4, lbl_804D74DC-_SDA_BASE_(r13)
/* 80351FBC 0034EB9C  80 0D BE 48 */	lwz r0, lbl_804D74E8-_SDA_BASE_(r13)
/* 80351FC0 0034EBA0  80 64 00 14 */	lwz r3, 0x14(r4)
/* 80351FC4 0034EBA4  7C 03 02 14 */	add r0, r3, r0
/* 80351FC8 0034EBA8  90 04 00 14 */	stw r0, 0x14(r4)
lbl_80351FCC:
/* 80351FCC 0034EBAC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80351FD0 0034EBB0  38 21 00 08 */	addi r1, r1, 8
/* 80351FD4 0034EBB4  7C 08 03 A6 */	mtlr r0
/* 80351FD8 0034EBB8  4E 80 00 20 */	blr 
lbl_80351FDC:
/* 80351FDC 0034EBBC  4E 80 00 20 */	blr 
lbl_80351FE0:
/* 80351FE0 0034EBC0  7C 08 02 A6 */	mflr r0
/* 80351FE4 0034EBC4  90 01 00 04 */	stw r0, 4(r1)
/* 80351FE8 0034EBC8  94 21 FF F8 */	stwu r1, -8(r1)
/* 80351FEC 0034EBCC  81 8D BE 40 */	lwz r12, lbl_804D74E0-_SDA_BASE_(r13)
/* 80351FF0 0034EBD0  28 0C 00 00 */	cmplwi r12, 0
/* 80351FF4 0034EBD4  41 82 00 20 */	beq lbl_80352014
/* 80351FF8 0034EBD8  80 6D BE 38 */	lwz r3, lbl_804D74D8-_SDA_BASE_(r13)
/* 80351FFC 0034EBDC  7D 88 03 A6 */	mtlr r12
/* 80352000 0034EBE0  4E 80 00 21 */	blrl 
/* 80352004 0034EBE4  38 00 00 00 */	li r0, 0
/* 80352008 0034EBE8  90 0D BE 38 */	stw r0, lbl_804D74D8-_SDA_BASE_(r13)
/* 8035200C 0034EBEC  90 0D BE 40 */	stw r0, lbl_804D74E0-_SDA_BASE_(r13)
/* 80352010 0034EBF0  48 00 00 28 */	b lbl_80352038
lbl_80352014:
/* 80352014 0034EBF4  81 8D BE 44 */	lwz r12, lbl_804D74E4-_SDA_BASE_(r13)
/* 80352018 0034EBF8  28 0C 00 00 */	cmplwi r12, 0
/* 8035201C 0034EBFC  41 82 00 1C */	beq lbl_80352038
/* 80352020 0034EC00  80 6D BE 3C */	lwz r3, lbl_804D74DC-_SDA_BASE_(r13)
/* 80352024 0034EC04  7D 88 03 A6 */	mtlr r12
/* 80352028 0034EC08  4E 80 00 21 */	blrl 
/* 8035202C 0034EC0C  38 00 00 00 */	li r0, 0
/* 80352030 0034EC10  90 0D BE 3C */	stw r0, lbl_804D74DC-_SDA_BASE_(r13)
/* 80352034 0034EC14  90 0D BE 44 */	stw r0, lbl_804D74E4-_SDA_BASE_(r13)
lbl_80352038:
/* 80352038 0034EC18  80 CD BE 28 */	lwz r6, lbl_804D74C8-_SDA_BASE_(r13)
/* 8035203C 0034EC1C  28 06 00 00 */	cmplwi r6, 0
/* 80352040 0034EC20  41 82 00 4C */	beq lbl_8035208C
/* 80352044 0034EC24  80 66 00 08 */	lwz r3, 8(r6)
/* 80352048 0034EC28  28 03 00 00 */	cmplwi r3, 0
/* 8035204C 0034EC2C  40 82 00 18 */	bne lbl_80352064
/* 80352050 0034EC30  80 86 00 10 */	lwz r4, 0x10(r6)
/* 80352054 0034EC34  80 A6 00 14 */	lwz r5, 0x14(r6)
/* 80352058 0034EC38  80 C6 00 18 */	lwz r6, 0x18(r6)
/* 8035205C 0034EC3C  4B FF EC 75 */	bl ARStartDMA
/* 80352060 0034EC40  48 00 00 14 */	b lbl_80352074
lbl_80352064:
/* 80352064 0034EC44  80 86 00 14 */	lwz r4, 0x14(r6)
/* 80352068 0034EC48  80 A6 00 10 */	lwz r5, 0x10(r6)
/* 8035206C 0034EC4C  80 C6 00 18 */	lwz r6, 0x18(r6)
/* 80352070 0034EC50  4B FF EC 61 */	bl ARStartDMA
lbl_80352074:
/* 80352074 0034EC54  80 6D BE 28 */	lwz r3, lbl_804D74C8-_SDA_BASE_(r13)
/* 80352078 0034EC58  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8035207C 0034EC5C  90 0D BE 40 */	stw r0, lbl_804D74E0-_SDA_BASE_(r13)
/* 80352080 0034EC60  90 6D BE 38 */	stw r3, lbl_804D74D8-_SDA_BASE_(r13)
/* 80352084 0034EC64  80 03 00 00 */	lwz r0, 0(r3)
/* 80352088 0034EC68  90 0D BE 28 */	stw r0, lbl_804D74C8-_SDA_BASE_(r13)
lbl_8035208C:
/* 8035208C 0034EC6C  80 0D BE 38 */	lwz r0, lbl_804D74D8-_SDA_BASE_(r13)
/* 80352090 0034EC70  28 00 00 00 */	cmplwi r0, 0
/* 80352094 0034EC74  40 82 00 08 */	bne lbl_8035209C
/* 80352098 0034EC78  4B FF FE 45 */	bl __ARQServiceQueueLo
lbl_8035209C:
/* 8035209C 0034EC7C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803520A0 0034EC80  38 21 00 08 */	addi r1, r1, 8
/* 803520A4 0034EC84  7C 08 03 A6 */	mtlr r0
/* 803520A8 0034EC88  4E 80 00 20 */	blr 

.global func_803520AC
func_803520AC:
/* 803520AC 0034EC8C  7C 08 02 A6 */	mflr r0
/* 803520B0 0034EC90  90 01 00 04 */	stw r0, 4(r1)
/* 803520B4 0034EC94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803520B8 0034EC98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803520BC 0034EC9C  80 0D BE 4C */	lwz r0, lbl_804D74EC-_SDA_BASE_(r13)
/* 803520C0 0034ECA0  2C 00 00 01 */	cmpwi r0, 1
/* 803520C4 0034ECA4  41 82 00 3C */	beq lbl_80352100
/* 803520C8 0034ECA8  3B E0 00 00 */	li r31, 0
/* 803520CC 0034ECAC  38 00 10 00 */	li r0, 0x1000
/* 803520D0 0034ECB0  93 ED BE 30 */	stw r31, lbl_804D74D0-_SDA_BASE_(r13)
/* 803520D4 0034ECB4  3C 60 80 35 */	lis r3, lbl_80351FE0@ha
/* 803520D8 0034ECB8  93 ED BE 28 */	stw r31, lbl_804D74C8-_SDA_BASE_(r13)
/* 803520DC 0034ECBC  38 63 1F E0 */	addi r3, r3, lbl_80351FE0@l
/* 803520E0 0034ECC0  90 0D BE 48 */	stw r0, lbl_804D74E8-_SDA_BASE_(r13)
/* 803520E4 0034ECC4  4B FF EB A9 */	bl func_80350C8C
/* 803520E8 0034ECC8  38 00 00 01 */	li r0, 1
/* 803520EC 0034ECCC  93 ED BE 38 */	stw r31, lbl_804D74D8-_SDA_BASE_(r13)
/* 803520F0 0034ECD0  93 ED BE 3C */	stw r31, lbl_804D74DC-_SDA_BASE_(r13)
/* 803520F4 0034ECD4  93 ED BE 40 */	stw r31, lbl_804D74E0-_SDA_BASE_(r13)
/* 803520F8 0034ECD8  93 ED BE 44 */	stw r31, lbl_804D74E4-_SDA_BASE_(r13)
/* 803520FC 0034ECDC  90 0D BE 4C */	stw r0, lbl_804D74EC-_SDA_BASE_(r13)
lbl_80352100:
/* 80352100 0034ECE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80352104 0034ECE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80352108 0034ECE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8035210C 0034ECEC  7C 08 03 A6 */	mtlr r0
/* 80352110 0034ECF0  4E 80 00 20 */	blr 

.global func_80352114
func_80352114:
/* 80352114 0034ECF4  7C 08 02 A6 */	mflr r0
/* 80352118 0034ECF8  28 0A 00 00 */	cmplwi r10, 0
/* 8035211C 0034ECFC  90 01 00 04 */	stw r0, 4(r1)
/* 80352120 0034ED00  38 00 00 00 */	li r0, 0
/* 80352124 0034ED04  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 80352128 0034ED08  93 E1 00 34 */	stw r31, 0x34(r1)
/* 8035212C 0034ED0C  93 C1 00 30 */	stw r30, 0x30(r1)
/* 80352130 0034ED10  3B C6 00 00 */	addi r30, r6, 0
/* 80352134 0034ED14  93 A1 00 2C */	stw r29, 0x2c(r1)
/* 80352138 0034ED18  3B A3 00 00 */	addi r29, r3, 0
/* 8035213C 0034ED1C  90 03 00 00 */	stw r0, 0(r3)
/* 80352140 0034ED20  90 83 00 04 */	stw r4, 4(r3)
/* 80352144 0034ED24  90 A3 00 08 */	stw r5, 8(r3)
/* 80352148 0034ED28  90 E3 00 10 */	stw r7, 0x10(r3)
/* 8035214C 0034ED2C  91 03 00 14 */	stw r8, 0x14(r3)
/* 80352150 0034ED30  91 23 00 18 */	stw r9, 0x18(r3)
/* 80352154 0034ED34  41 82 00 0C */	beq lbl_80352160
/* 80352158 0034ED38  91 5D 00 1C */	stw r10, 0x1c(r29)
/* 8035215C 0034ED3C  48 00 00 10 */	b lbl_8035216C
lbl_80352160:
/* 80352160 0034ED40  3C 60 80 35 */	lis r3, lbl_80351FDC@ha
/* 80352164 0034ED44  38 03 1F DC */	addi r0, r3, lbl_80351FDC@l
/* 80352168 0034ED48  90 1D 00 1C */	stw r0, 0x1c(r29)
lbl_8035216C:
/* 8035216C 0034ED4C  4B FF 51 F9 */	bl OSDisableInterrupts
/* 80352170 0034ED50  2C 1E 00 01 */	cmpwi r30, 1
/* 80352174 0034ED54  3B E3 00 00 */	addi r31, r3, 0
/* 80352178 0034ED58  41 82 00 38 */	beq lbl_803521B0
/* 8035217C 0034ED5C  40 80 00 54 */	bge lbl_803521D0
/* 80352180 0034ED60  2C 1E 00 00 */	cmpwi r30, 0
/* 80352184 0034ED64  40 80 00 08 */	bge lbl_8035218C
/* 80352188 0034ED68  48 00 00 48 */	b lbl_803521D0
lbl_8035218C:
/* 8035218C 0034ED6C  80 0D BE 30 */	lwz r0, lbl_804D74D0-_SDA_BASE_(r13)
/* 80352190 0034ED70  28 00 00 00 */	cmplwi r0, 0
/* 80352194 0034ED74  41 82 00 10 */	beq lbl_803521A4
/* 80352198 0034ED78  80 6D BE 34 */	lwz r3, lbl_804D74D4-_SDA_BASE_(r13)
/* 8035219C 0034ED7C  93 A3 00 00 */	stw r29, 0(r3)
/* 803521A0 0034ED80  48 00 00 08 */	b lbl_803521A8
lbl_803521A4:
/* 803521A4 0034ED84  93 AD BE 30 */	stw r29, lbl_804D74D0-_SDA_BASE_(r13)
lbl_803521A8:
/* 803521A8 0034ED88  93 AD BE 34 */	stw r29, lbl_804D74D4-_SDA_BASE_(r13)
/* 803521AC 0034ED8C  48 00 00 24 */	b lbl_803521D0
lbl_803521B0:
/* 803521B0 0034ED90  80 0D BE 28 */	lwz r0, lbl_804D74C8-_SDA_BASE_(r13)
/* 803521B4 0034ED94  28 00 00 00 */	cmplwi r0, 0
/* 803521B8 0034ED98  41 82 00 10 */	beq lbl_803521C8
/* 803521BC 0034ED9C  80 6D BE 2C */	lwz r3, lbl_804D74CC-_SDA_BASE_(r13)
/* 803521C0 0034EDA0  93 A3 00 00 */	stw r29, 0(r3)
/* 803521C4 0034EDA4  48 00 00 08 */	b lbl_803521CC
lbl_803521C8:
/* 803521C8 0034EDA8  93 AD BE 28 */	stw r29, lbl_804D74C8-_SDA_BASE_(r13)
lbl_803521CC:
/* 803521CC 0034EDAC  93 AD BE 2C */	stw r29, lbl_804D74CC-_SDA_BASE_(r13)
lbl_803521D0:
/* 803521D0 0034EDB0  80 0D BE 38 */	lwz r0, lbl_804D74D8-_SDA_BASE_(r13)
/* 803521D4 0034EDB4  28 00 00 00 */	cmplwi r0, 0
/* 803521D8 0034EDB8  40 82 00 74 */	bne lbl_8035224C
/* 803521DC 0034EDBC  80 0D BE 3C */	lwz r0, lbl_804D74DC-_SDA_BASE_(r13)
/* 803521E0 0034EDC0  28 00 00 00 */	cmplwi r0, 0
/* 803521E4 0034EDC4  40 82 00 68 */	bne lbl_8035224C
/* 803521E8 0034EDC8  80 CD BE 28 */	lwz r6, lbl_804D74C8-_SDA_BASE_(r13)
/* 803521EC 0034EDCC  28 06 00 00 */	cmplwi r6, 0
/* 803521F0 0034EDD0  41 82 00 4C */	beq lbl_8035223C
/* 803521F4 0034EDD4  80 66 00 08 */	lwz r3, 8(r6)
/* 803521F8 0034EDD8  28 03 00 00 */	cmplwi r3, 0
/* 803521FC 0034EDDC  40 82 00 18 */	bne lbl_80352214
/* 80352200 0034EDE0  80 86 00 10 */	lwz r4, 0x10(r6)
/* 80352204 0034EDE4  80 A6 00 14 */	lwz r5, 0x14(r6)
/* 80352208 0034EDE8  80 C6 00 18 */	lwz r6, 0x18(r6)
/* 8035220C 0034EDEC  4B FF EA C5 */	bl ARStartDMA
/* 80352210 0034EDF0  48 00 00 14 */	b lbl_80352224
lbl_80352214:
/* 80352214 0034EDF4  80 86 00 14 */	lwz r4, 0x14(r6)
/* 80352218 0034EDF8  80 A6 00 10 */	lwz r5, 0x10(r6)
/* 8035221C 0034EDFC  80 C6 00 18 */	lwz r6, 0x18(r6)
/* 80352220 0034EE00  4B FF EA B1 */	bl ARStartDMA
lbl_80352224:
/* 80352224 0034EE04  80 6D BE 28 */	lwz r3, lbl_804D74C8-_SDA_BASE_(r13)
/* 80352228 0034EE08  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8035222C 0034EE0C  90 0D BE 40 */	stw r0, lbl_804D74E0-_SDA_BASE_(r13)
/* 80352230 0034EE10  90 6D BE 38 */	stw r3, lbl_804D74D8-_SDA_BASE_(r13)
/* 80352234 0034EE14  80 03 00 00 */	lwz r0, 0(r3)
/* 80352238 0034EE18  90 0D BE 28 */	stw r0, lbl_804D74C8-_SDA_BASE_(r13)
lbl_8035223C:
/* 8035223C 0034EE1C  80 0D BE 38 */	lwz r0, lbl_804D74D8-_SDA_BASE_(r13)
/* 80352240 0034EE20  28 00 00 00 */	cmplwi r0, 0
/* 80352244 0034EE24  40 82 00 08 */	bne lbl_8035224C
/* 80352248 0034EE28  4B FF FC 95 */	bl __ARQServiceQueueLo
lbl_8035224C:
/* 8035224C 0034EE2C  7F E3 FB 78 */	mr r3, r31
/* 80352250 0034EE30  4B FF 51 3D */	bl OSRestoreInterrupts
/* 80352254 0034EE34  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80352258 0034EE38  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 8035225C 0034EE3C  83 C1 00 30 */	lwz r30, 0x30(r1)
/* 80352260 0034EE40  7C 08 03 A6 */	mtlr r0
/* 80352264 0034EE44  83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 80352268 0034EE48  38 21 00 38 */	addi r1, r1, 0x38
/* 8035226C 0034EE4C  4E 80 00 20 */	blr 
