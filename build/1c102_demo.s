
1c102_demo.elf:     file format elf32-loongarch
1c102_demo.elf


Disassembly of section .text:

1c000000 <_start>:
_start():
1c000000:	0015000d 	move	$r13,$r0
1c000004:	50002000 	b	32(0x20) # 1c000024 <LoopCopyDataInit>

1c000008 <CopyDataInit>:
CopyDataInit():
1c000008:	1438012f 	lu12i.w	$r15,114697(0x1c009)
1c00000c:	038be1ef 	ori	$r15,$r15,0x2f8
1c000010:	001035f0 	add.w	$r16,$r15,$r13
1c000014:	2880020f 	ld.w	$r15,$r16,0
1c000018:	00103590 	add.w	$r16,$r12,$r13
1c00001c:	2980020f 	st.w	$r15,$r16,0
1c000020:	028011ad 	addi.w	$r13,$r13,4(0x4)

1c000024 <LoopCopyDataInit>:
LoopCopyDataInit():
1c000024:	1500002c 	lu12i.w	$r12,-524287(0x80001)
1c000028:	0380018c 	ori	$r12,$r12,0x0
1c00002c:	1500002f 	lu12i.w	$r15,-524287(0x80001)
1c000030:	0380d1ef 	ori	$r15,$r15,0x34
1c000034:	0010358e 	add.w	$r14,$r12,$r13
1c000038:	5fffd1cf 	bne	$r14,$r15,-48(0x3ffd0) # 1c000008 <CopyDataInit>
1c00003c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c000040:	0380018c 	ori	$r12,$r12,0x0
1c000044:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c000048:	0389b1ad 	ori	$r13,$r13,0x26c
1c00004c:	580011ac 	beq	$r13,$r12,16(0x10) # 1c00005c <cpu_init_start>

1c000050 <LoopFillZerobss>:
LoopFillZerobss():
1c000050:	29800180 	st.w	$r0,$r12,0
1c000054:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000058:	5ffff9ac 	bne	$r13,$r12,-8(0x3fff8) # 1c000050 <LoopFillZerobss>

1c00005c <cpu_init_start>:
cpu_init_start():
1c00005c:	1438002c 	lu12i.w	$r12,114689(0x1c001)
1c000060:	0400302c 	csrwr	$r12,0xc
1c000064:	0015000c 	move	$r12,$r0
1c000068:	0400102c 	csrwr	$r12,0x4
1c00006c:	1400002c 	lu12i.w	$r12,1(0x1)
1c000070:	03bffd8c 	ori	$r12,$r12,0xfff
1c000074:	0400118c 	csrxchg	$r12,$r12,0x4
1c000078:	15ffe3ec 	lu12i.w	$r12,-225(0xfff1f)
1c00007c:	03bffd8c 	ori	$r12,$r12,0xfff
1c000080:	0406442c 	csrwr	$r12,0x191
1c000084:	14eca06c 	lu12i.w	$r12,484611(0x76503)
1c000088:	0388418c 	ori	$r12,$r12,0x210
1c00008c:	0406402c 	csrwr	$r12,0x190
1c000090:	0380200c 	ori	$r12,$r0,0x8
1c000094:	04000180 	csrxchg	$r0,$r12,0x0
1c000098:	15000023 	lu12i.w	$r3,-524287(0x80001)
1c00009c:	03bdf063 	ori	$r3,$r3,0xf7c
1c0000a0:	54132400 	bl	4900(0x1324) # 1c0013c4 <bsp_init>
1c0000a4:	03400000 	andi	$r0,$r0,0x0
1c0000a8:	4c000020 	jirl	$r0,$r1,0

1c0000ac <cpu_wait>:
cpu_wait():
1c0000ac:	06488000 	idle	0x0
1c0000b0:	4c000020 	jirl	$r0,$r1,0
	...

1c000800 <m4_flash_4k>:
m4_flash_4k():
1c000800:	140007ec 	lu12i.w	$r12,63(0x3f)
1c000804:	03be018c 	ori	$r12,$r12,0xf80
1c000808:	157fcc0d 	lu12i.w	$r13,-262560(0xbfe60)
1c00080c:	0014b08c 	and	$r12,$r4,$r12
1c000810:	038061af 	ori	$r15,$r13,0x18
1c000814:	02804010 	addi.w	$r16,$r0,16(0x10)
1c000818:	1540000e 	lu12i.w	$r14,-393216(0xa0000)
1c00081c:	298001f0 	st.w	$r16,$r15,0
1c000820:	0015398e 	or	$r14,$r12,$r14
1c000824:	298001ae 	st.w	$r14,$r13,0
1c000828:	1480000f 	lu12i.w	$r15,262144(0x40000)
1c00082c:	14b54aae 	lu12i.w	$r14,371285(0x5aa55)
1c000830:	0396a9ce 	ori	$r14,$r14,0x5aa
1c000834:	298001af 	st.w	$r15,$r13,0
1c000838:	15c0000f 	lu12i.w	$r15,-131072(0xe0000)
1c00083c:	2980008e 	st.w	$r14,$r4,0
1c000840:	00153d8c 	or	$r12,$r12,$r15
1c000844:	298001ac 	st.w	$r12,$r13,0
1c000848:	4c000020 	jirl	$r0,$r1,0
	...

1c001000 <DEFAULT_INT_HANDLER>:
DEFAULT_INT_HANDLER():
1c001000:	0400c435 	csrwr	$r21,0x31
1c001004:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c001008:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c00100c:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c001010:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c001014:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c001018:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c00101c:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001020:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001024:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c001028:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c00102c:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001030:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c001034:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001038:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c00103c:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001040:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c001044:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001048:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c00104c:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001050:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c001054:	0400140c 	csrrd	$r12,0x5
1c001058:	036ef18d 	andi	$r13,$r12,0xbbc
1c00105c:	400065a0 	beqz	$r13,100(0x64) # 1c0010c0 <exception_core_check>

1c001060 <exception_pmu>:
exception_pmu():
1c001060:	0340118d 	andi	$r13,$r12,0x4
1c001064:	44002da0 	bnez	$r13,44(0x2c) # 1c001090 <wake_label>
1c001068:	0340218d 	andi	$r13,$r12,0x8
1c00106c:	44002da0 	bnez	$r13,44(0x2c) # 1c001098 <touch_label>
1c001070:	0340418d 	andi	$r13,$r12,0x10
1c001074:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a0 <uart2_label>
1c001078:	0340818d 	andi	$r13,$r12,0x20
1c00107c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a8 <bcc_label>
1c001080:	0342018d 	andi	$r13,$r12,0x80
1c001084:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b0 <exint_label>
1c001088:	0360018d 	andi	$r13,$r12,0x800
1c00108c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b8 <timer_label>

1c001090 <wake_label>:
wake_label():
1c001090:	5439ac00 	bl	14764(0x39ac) # 1c004a3c <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	5439f400 	bl	14836(0x39f4) # 1c004a8c <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	543a8000 	bl	14976(0x3a80) # 1c004b20 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	543ab400 	bl	15028(0x3ab4) # 1c004b5c <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	5438d400 	bl	14548(0x38d4) # 1c004984 <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	543c2800 	bl	15400(0x3c28) # 1c004ce0 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	543b6c00 	bl	15212(0x3b6c) # 1c004c34 <intc_handler>
1c0010cc:	50000400 	b	4(0x4) # 1c0010d0 <exception_exit>

1c0010d0 <exception_exit>:
exception_exit():
1c0010d0:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0010d4:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0010d8:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0010dc:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0010e0:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0010e4:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0010e8:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0010ec:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0010f0:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0010f4:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0010f8:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0010fc:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c001100:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c001104:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c001108:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c00110c:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c001110:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001114:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001118:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c00111c:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c001120:	0400c415 	csrrd	$r21,0x31
1c001124:	06483800 	ertn

1c001128 <serial_out>:
serial_out():
1c001128:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c00112c:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c001130:	03408108 	andi	$r8,$r8,0x20
1c001134:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c001128 <serial_out>
1c001138:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00113c:	29000184 	st.b	$r4,$r12,0
1c001140:	4c000020 	jirl	$r0,$r1,0

1c001144 <outputaddr>:
outputaddr():
1c001144:	02bff063 	addi.w	$r3,$r3,-4(0xffc)
1c001148:	29800061 	st.w	$r1,$r3,0
1c00114c:	1cc80006 	pcaddu12i	$r6,409600(0x64000)
1c001150:	28bae0c6 	ld.w	$r6,$r6,-328(0xeb8)
1c001154:	15e0000d 	lu12i.w	$r13,-65536(0xf0000)
1c001158:	0380200e 	ori	$r14,$r0,0x8
1c00115c:	0380700f 	ori	$r15,$r0,0x1c
1c001160:	03800085 	ori	$r5,$r4,0x0
1c001164:	58002dc0 	beq	$r14,$r0,44(0x2c) # 1c001190 <outputaddr+0x4c>
1c001168:	0014b4ac 	and	$r12,$r5,$r13
1c00116c:	0017bd8c 	srl.w	$r12,$r12,$r15
1c001170:	0010198c 	add.w	$r12,$r12,$r6
1c001174:	2a000190 	ld.bu	$r16,$r12,0
1c001178:	03800204 	ori	$r4,$r16,0x0
1c00117c:	57ffafff 	bl	-84(0xfffffac) # 1c001128 <serial_out>
1c001180:	004491ad 	srli.w	$r13,$r13,0x4
1c001184:	02bff1ef 	addi.w	$r15,$r15,-4(0xffc)
1c001188:	02bffdce 	addi.w	$r14,$r14,-1(0xfff)
1c00118c:	53ffdbff 	b	-40(0xfffffd8) # 1c001164 <outputaddr+0x20>
1c001190:	03802804 	ori	$r4,$r0,0xa
1c001194:	57ff97ff 	bl	-108(0xfffff94) # 1c001128 <serial_out>
1c001198:	28800061 	ld.w	$r1,$r3,0
1c00119c:	02801063 	addi.w	$r3,$r3,4(0x4)
1c0011a0:	4c000020 	jirl	$r0,$r1,0

1c0011a4 <outputstring>:
outputstring():
1c0011a4:	00150089 	move	$r9,$r4
1c0011a8:	2a00012c 	ld.bu	$r12,$r9,0
1c0011ac:	58002580 	beq	$r12,$r0,36(0x24) # 1c0011d0 <outputstring+0x2c>
1c0011b0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011b4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011b8:	03408108 	andi	$r8,$r8,0x20
1c0011bc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011b0 <outputstring+0xc>
1c0011c0:	157fd007 	lu12i.w	$r7,-262528(0xbfe80)
1c0011c4:	290000ec 	st.b	$r12,$r7,0
1c0011c8:	02800529 	addi.w	$r9,$r9,1(0x1)
1c0011cc:	53ffdfff 	b	-36(0xfffffdc) # 1c0011a8 <outputstring+0x4>
1c0011d0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011d4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011d8:	03410108 	andi	$r8,$r8,0x40
1c0011dc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011d0 <outputstring+0x2c>
1c0011e0:	4c000020 	jirl	$r0,$r1,0

1c0011e4 <cpu_sleep>:
cpu_sleep():
1c0011e4:	0400c435 	csrwr	$r21,0x31
1c0011e8:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0011ec:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c0011f0:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c0011f4:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c0011f8:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c0011fc:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c001200:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001204:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001208:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c00120c:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c001210:	29bf62b7 	st.w	$r23,$r21,-40(0xfd8)
1c001214:	29bf52b8 	st.w	$r24,$r21,-44(0xfd4)
1c001218:	29bf42b9 	st.w	$r25,$r21,-48(0xfd0)
1c00121c:	29bf32ba 	st.w	$r26,$r21,-52(0xfcc)
1c001220:	29bf22bb 	st.w	$r27,$r21,-56(0xfc8)
1c001224:	29bf12bc 	st.w	$r28,$r21,-60(0xfc4)
1c001228:	29bf02bd 	st.w	$r29,$r21,-64(0xfc0)
1c00122c:	29bef2be 	st.w	$r30,$r21,-68(0xfbc)
1c001230:	29bee2bf 	st.w	$r31,$r21,-72(0xfb8)
1c001234:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001238:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c00123c:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001240:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c001244:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001248:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c00124c:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001250:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c001254:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001258:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c00125c:	29be32a2 	st.w	$r2,$r21,-116(0xf8c)
1c001260:	29be22b6 	st.w	$r22,$r21,-120(0xf88)
1c001264:	028002ac 	addi.w	$r12,$r21,0
1c001268:	0400c415 	csrrd	$r21,0x31
1c00126c:	29be1195 	st.w	$r21,$r12,-124(0xf84)
1c001270:	38720000 	dbar	0x0
1c001274:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c001278:	2880f1ac 	ld.w	$r12,$r13,60(0x3c)
1c00127c:	0340058c 	andi	$r12,$r12,0x1
1c001280:	43fff99f 	beqz	$r12,-8(0x7ffff8) # 1c001278 <cpu_sleep+0x94>
1c001284:	2980f1ac 	st.w	$r12,$r13,60(0x3c)
1c001288:	06488000 	idle	0x0

1c00128c <wakeup_reset>:
wakeup_reset():
1c00128c:	1cc80004 	pcaddu12i	$r4,409600(0x64000)
1c001290:	28b65084 	ld.w	$r4,$r4,-620(0xd94)
1c001294:	57ff13ff 	bl	-240(0xfffff10) # 1c0011a4 <outputstring>
1c001298:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c00129c:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0012a0:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0012a4:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0012a8:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0012ac:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0012b0:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0012b4:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0012b8:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0012bc:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0012c0:	28bf62b7 	ld.w	$r23,$r21,-40(0xfd8)
1c0012c4:	28bf52b8 	ld.w	$r24,$r21,-44(0xfd4)
1c0012c8:	28bf42b9 	ld.w	$r25,$r21,-48(0xfd0)
1c0012cc:	28bf32ba 	ld.w	$r26,$r21,-52(0xfcc)
1c0012d0:	28bf22bb 	ld.w	$r27,$r21,-56(0xfc8)
1c0012d4:	28bf12bc 	ld.w	$r28,$r21,-60(0xfc4)
1c0012d8:	28bf02bd 	ld.w	$r29,$r21,-64(0xfc0)
1c0012dc:	28bef2be 	ld.w	$r30,$r21,-68(0xfbc)
1c0012e0:	28bee2bf 	ld.w	$r31,$r21,-72(0xfb8)
1c0012e4:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0012e8:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c0012ec:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c0012f0:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c0012f4:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c0012f8:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c0012fc:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001300:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001304:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c001308:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c00130c:	28be32a2 	ld.w	$r2,$r21,-116(0xf8c)
1c001310:	28be22b6 	ld.w	$r22,$r21,-120(0xf88)
1c001314:	28be12b5 	ld.w	$r21,$r21,-124(0xf84)
1c001318:	0400c42c 	csrwr	$r12,0x31
1c00131c:	0380100c 	ori	$r12,$r0,0x4
1c001320:	0400018c 	csrxchg	$r12,$r12,0x0
1c001324:	0400c40c 	csrrd	$r12,0x31
1c001328:	4c000020 	jirl	$r0,$r1,0

1c00132c <GPIOInit>:
GPIOInit():
1c00132c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001330:	29803061 	st.w	$r1,$r3,12(0xc)
1c001334:	29802076 	st.w	$r22,$r3,8(0x8)
1c001338:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00133c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001340:	140001ec 	lu12i.w	$r12,15(0xf)
1c001344:	03bffd85 	ori	$r5,$r12,0xfff
1c001348:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00134c:	03804184 	ori	$r4,$r12,0x10
1c001350:	54017000 	bl	368(0x170) # 1c0014c0 <AFIO_RemapConfig>
1c001354:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001358:	140001ec 	lu12i.w	$r12,15(0xf)
1c00135c:	03bffd85 	ori	$r5,$r12,0xfff
1c001360:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001364:	03805184 	ori	$r4,$r12,0x14
1c001368:	54015800 	bl	344(0x158) # 1c0014c0 <AFIO_RemapConfig>
1c00136c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001370:	140001ec 	lu12i.w	$r12,15(0xf)
1c001374:	03bcfd85 	ori	$r5,$r12,0xf3f
1c001378:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00137c:	03806184 	ori	$r4,$r12,0x18
1c001380:	54014000 	bl	320(0x140) # 1c0014c0 <AFIO_RemapConfig>
1c001384:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001388:	02830005 	addi.w	$r5,$r0,192(0xc0)
1c00138c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001390:	03806184 	ori	$r4,$r12,0x18
1c001394:	54012c00 	bl	300(0x12c) # 1c0014c0 <AFIO_RemapConfig>
1c001398:	02800406 	addi.w	$r6,$r0,1(0x1)
1c00139c:	140001ec 	lu12i.w	$r12,15(0xf)
1c0013a0:	03bffd85 	ori	$r5,$r12,0xfff
1c0013a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0013a8:	03807184 	ori	$r4,$r12,0x1c
1c0013ac:	54011400 	bl	276(0x114) # 1c0014c0 <AFIO_RemapConfig>
1c0013b0:	03400000 	andi	$r0,$r0,0x0
1c0013b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0013b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0013bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0013c0:	4c000020 	jirl	$r0,$r1,0

1c0013c4 <bsp_init>:
bsp_init():
1c0013c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0013c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0013cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0013d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0013d4:	541e1000 	bl	7696(0x1e10) # 1c0031e4 <DisableInt>
1c0013d8:	541d3800 	bl	7480(0x1d38) # 1c003110 <SystemClockInit>
1c0013dc:	57ff53ff 	bl	-176(0xfffff50) # 1c00132c <GPIOInit>
1c0013e0:	54251000 	bl	9488(0x2510) # 1c0038f0 <WdgInit>
1c0013e4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0013e8:	54245000 	bl	9296(0x2450) # 1c003838 <WDG_SetWatchDog>
1c0013ec:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013f0:	03880184 	ori	$r4,$r12,0x200
1c0013f4:	54175c00 	bl	5980(0x175c) # 1c002b50 <Uart1_init>
1c0013f8:	541fe000 	bl	8160(0x1fe0) # 1c0033d8 <ls1x_logo>
1c0013fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001400:	0380118c 	ori	$r12,$r12,0x4
1c001404:	2880018e 	ld.w	$r14,$r12,0
1c001408:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00140c:	0380118c 	ori	$r12,$r12,0x4
1c001410:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c001414:	001535cd 	or	$r13,$r14,$r13
1c001418:	2980018d 	st.w	$r13,$r12,0
1c00141c:	541dec00 	bl	7660(0x1dec) # 1c003208 <EnableInt>
1c001420:	54208000 	bl	8320(0x2080) # 1c0034a0 <open_count>
1c001424:	02801804 	addi.w	$r4,$r0,6(0x6)
1c001428:	541e4800 	bl	7752(0x1e48) # 1c003270 <Wake_Set>
1c00142c:	54249800 	bl	9368(0x2498) # 1c0038c4 <WDG_DogFeed>
1c001430:	541eec00 	bl	7916(0x1eec) # 1c00331c <PMU_GetRstRrc>
1c001434:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001438:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00143c:	44003180 	bnez	$r12,48(0x30) # 1c00146c <bsp_init+0xa8>
1c001440:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c001444:	02b1f084 	addi.w	$r4,$r4,-900(0xc7c)
1c001448:	54074c00 	bl	1868(0x74c) # 1c001b94 <myprintf>
1c00144c:	541f3c00 	bl	7996(0x1f3c) # 1c003388 <PMU_GetBootSpiStatus>
1c001450:	0015008c 	move	$r12,$r4
1c001454:	40001180 	beqz	$r12,16(0x10) # 1c001464 <bsp_init+0xa0>
1c001458:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c00145c:	02b1d084 	addi.w	$r4,$r4,-908(0xc74)
1c001460:	54073400 	bl	1844(0x734) # 1c001b94 <myprintf>
1c001464:	543adc00 	bl	15068(0x3adc) # 1c004f40 <main>
1c001468:	50004000 	b	64(0x40) # 1c0014a8 <bsp_init+0xe4>
1c00146c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001470:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001474:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c00148c <bsp_init+0xc8>
1c001478:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c00147c:	02b18084 	addi.w	$r4,$r4,-928(0xc60)
1c001480:	54071400 	bl	1812(0x714) # 1c001b94 <myprintf>
1c001484:	543abc00 	bl	15036(0x3abc) # 1c004f40 <main>
1c001488:	50002000 	b	32(0x20) # 1c0014a8 <bsp_init+0xe4>
1c00148c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001490:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c001494:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0014a8 <bsp_init+0xe4>
1c001498:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c00149c:	02b14084 	addi.w	$r4,$r4,-944(0xc50)
1c0014a0:	5406f400 	bl	1780(0x6f4) # 1c001b94 <myprintf>
1c0014a4:	57fd43ff 	bl	-704(0xffffd40) # 1c0011e4 <cpu_sleep>
1c0014a8:	0015000c 	move	$r12,$r0
1c0014ac:	00150184 	move	$r4,$r12
1c0014b0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0014b4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0014b8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0014bc:	4c000020 	jirl	$r0,$r1,0

1c0014c0 <AFIO_RemapConfig>:
AFIO_RemapConfig():
1c0014c0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0014c4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0014c8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0014cc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0014d0:	001500ac 	move	$r12,$r5
1c0014d4:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0014d8:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c0014dc:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0014e0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0014e4:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0014e8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0014ec:	2880018c 	ld.w	$r12,$r12,0
1c0014f0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0014f4:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c0014f8:	50006c00 	b	108(0x6c) # 1c001564 <AFIO_RemapConfig+0xa4>
1c0014fc:	2a7f6acd 	ld.hu	$r13,$r22,-38(0xfda)
1c001500:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001504:	001831ac 	sra.w	$r12,$r13,$r12
1c001508:	0340058c 	andi	$r12,$r12,0x1
1c00150c:	40004d80 	beqz	$r12,76(0x4c) # 1c001558 <AFIO_RemapConfig+0x98>
1c001510:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001514:	0040858c 	slli.w	$r12,$r12,0x1
1c001518:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00151c:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c001520:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001524:	001731ac 	sll.w	$r12,$r13,$r12
1c001528:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c00152c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001530:	0014300c 	nor	$r12,$r0,$r12
1c001534:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001538:	0014b1ac 	and	$r12,$r13,$r12
1c00153c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001540:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c001544:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001548:	001731ac 	sll.w	$r12,$r13,$r12
1c00154c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001550:	001531ac 	or	$r12,$r13,$r12
1c001554:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001558:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c00155c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001560:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c001564:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c001568:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c00156c:	6fff918d 	bgeu	$r12,$r13,-112(0x3ff90) # 1c0014fc <AFIO_RemapConfig+0x3c>
1c001570:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001574:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001578:	2980018d 	st.w	$r13,$r12,0
1c00157c:	03400000 	andi	$r0,$r0,0x0
1c001580:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001584:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001588:	4c000020 	jirl	$r0,$r1,0

1c00158c <gpio_get_pin>:
gpio_get_pin():
1c00158c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001590:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001594:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001598:	0015008c 	move	$r12,$r4
1c00159c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0015a0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015a8:	0382018c 	ori	$r12,$r12,0x80
1c0015ac:	001031ac 	add.w	$r12,$r13,$r12
1c0015b0:	29000180 	st.b	$r0,$r12,0
1c0015b4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015bc:	0382018c 	ori	$r12,$r12,0x80
1c0015c0:	001031ac 	add.w	$r12,$r13,$r12
1c0015c4:	2a00018c 	ld.bu	$r12,$r12,0
1c0015c8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0015cc:	00150184 	move	$r4,$r12
1c0015d0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0015d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0015d8:	4c000020 	jirl	$r0,$r1,0

1c0015dc <gpio_write_pin>:
gpio_write_pin():
1c0015dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0015e0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0015e4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0015e8:	0015008c 	move	$r12,$r4
1c0015ec:	001500ad 	move	$r13,$r5
1c0015f0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0015f4:	001501ac 	move	$r12,$r13
1c0015f8:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0015fc:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c001600:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001604:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c001628 <gpio_write_pin+0x4c>
1c001608:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00160c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001610:	0382018c 	ori	$r12,$r12,0x80
1c001614:	001031ac 	add.w	$r12,$r13,$r12
1c001618:	0015018d 	move	$r13,$r12
1c00161c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c001620:	290001ac 	st.b	$r12,$r13,0
1c001624:	50002000 	b	32(0x20) # 1c001644 <gpio_write_pin+0x68>
1c001628:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00162c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001630:	0382018c 	ori	$r12,$r12,0x80
1c001634:	001031ac 	add.w	$r12,$r13,$r12
1c001638:	0015018d 	move	$r13,$r12
1c00163c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c001640:	290001ac 	st.b	$r12,$r13,0
1c001644:	03400000 	andi	$r0,$r0,0x0
1c001648:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00164c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001650:	4c000020 	jirl	$r0,$r1,0

1c001654 <gpio_pin_remap>:
gpio_pin_remap():
1c001654:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001658:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00165c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001660:	0015008c 	move	$r12,$r4
1c001664:	001500ad 	move	$r13,$r5
1c001668:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c00166c:	001501ac 	move	$r12,$r13
1c001670:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c001674:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001678:	0044918c 	srli.w	$r12,$r12,0x4
1c00167c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001680:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001684:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001688:	03403d8c 	andi	$r12,$r12,0xf
1c00168c:	0040858c 	slli.w	$r12,$r12,0x1
1c001690:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001694:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001698:	0280fc0c 	addi.w	$r12,$r0,63(0x3f)
1c00169c:	6801b58d 	bltu	$r12,$r13,436(0x1b4) # 1c001850 <gpio_pin_remap+0x1fc>
1c0016a0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016a4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0016a8:	580089ac 	beq	$r13,$r12,136(0x88) # 1c001730 <gpio_pin_remap+0xdc>
1c0016ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0016b0:	40002180 	beqz	$r12,32(0x20) # 1c0016d0 <gpio_pin_remap+0x7c>
1c0016b4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016b8:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0016bc:	5800d5ac 	beq	$r13,$r12,212(0xd4) # 1c001790 <gpio_pin_remap+0x13c>
1c0016c0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016c4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0016c8:	580129ac 	beq	$r13,$r12,296(0x128) # 1c0017f0 <gpio_pin_remap+0x19c>
1c0016cc:	50018800 	b	392(0x188) # 1c001854 <gpio_pin_remap+0x200>
1c0016d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016d4:	0380418c 	ori	$r12,$r12,0x10
1c0016d8:	2880018d 	ld.w	$r13,$r12,0
1c0016dc:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0016e0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0016e4:	001731cc 	sll.w	$r12,$r14,$r12
1c0016e8:	0014300c 	nor	$r12,$r0,$r12
1c0016ec:	0015018e 	move	$r14,$r12
1c0016f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016f4:	0380418c 	ori	$r12,$r12,0x10
1c0016f8:	0014b9ad 	and	$r13,$r13,$r14
1c0016fc:	2980018d 	st.w	$r13,$r12,0
1c001700:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001704:	0380418c 	ori	$r12,$r12,0x10
1c001708:	2880018d 	ld.w	$r13,$r12,0
1c00170c:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001710:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001714:	001731cc 	sll.w	$r12,$r14,$r12
1c001718:	0015018e 	move	$r14,$r12
1c00171c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001720:	0380418c 	ori	$r12,$r12,0x10
1c001724:	001539ad 	or	$r13,$r13,$r14
1c001728:	2980018d 	st.w	$r13,$r12,0
1c00172c:	50012800 	b	296(0x128) # 1c001854 <gpio_pin_remap+0x200>
1c001730:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001734:	0380518c 	ori	$r12,$r12,0x14
1c001738:	2880018d 	ld.w	$r13,$r12,0
1c00173c:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c001740:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001744:	001731cc 	sll.w	$r12,$r14,$r12
1c001748:	0014300c 	nor	$r12,$r0,$r12
1c00174c:	0015018e 	move	$r14,$r12
1c001750:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001754:	0380518c 	ori	$r12,$r12,0x14
1c001758:	0014b9ad 	and	$r13,$r13,$r14
1c00175c:	2980018d 	st.w	$r13,$r12,0
1c001760:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001764:	0380518c 	ori	$r12,$r12,0x14
1c001768:	2880018d 	ld.w	$r13,$r12,0
1c00176c:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001770:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001774:	001731cc 	sll.w	$r12,$r14,$r12
1c001778:	0015018e 	move	$r14,$r12
1c00177c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001780:	0380518c 	ori	$r12,$r12,0x14
1c001784:	001539ad 	or	$r13,$r13,$r14
1c001788:	2980018d 	st.w	$r13,$r12,0
1c00178c:	5000c800 	b	200(0xc8) # 1c001854 <gpio_pin_remap+0x200>
1c001790:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001794:	0380618c 	ori	$r12,$r12,0x18
1c001798:	2880018d 	ld.w	$r13,$r12,0
1c00179c:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0017a0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017a4:	001731cc 	sll.w	$r12,$r14,$r12
1c0017a8:	0014300c 	nor	$r12,$r0,$r12
1c0017ac:	0015018e 	move	$r14,$r12
1c0017b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017b4:	0380618c 	ori	$r12,$r12,0x18
1c0017b8:	0014b9ad 	and	$r13,$r13,$r14
1c0017bc:	2980018d 	st.w	$r13,$r12,0
1c0017c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017c4:	0380618c 	ori	$r12,$r12,0x18
1c0017c8:	2880018d 	ld.w	$r13,$r12,0
1c0017cc:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0017d0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017d4:	001731cc 	sll.w	$r12,$r14,$r12
1c0017d8:	0015018e 	move	$r14,$r12
1c0017dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017e0:	0380618c 	ori	$r12,$r12,0x18
1c0017e4:	001539ad 	or	$r13,$r13,$r14
1c0017e8:	2980018d 	st.w	$r13,$r12,0
1c0017ec:	50006800 	b	104(0x68) # 1c001854 <gpio_pin_remap+0x200>
1c0017f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017f4:	0380718c 	ori	$r12,$r12,0x1c
1c0017f8:	2880018d 	ld.w	$r13,$r12,0
1c0017fc:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c001800:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001804:	001731cc 	sll.w	$r12,$r14,$r12
1c001808:	0014300c 	nor	$r12,$r0,$r12
1c00180c:	0015018e 	move	$r14,$r12
1c001810:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001814:	0380718c 	ori	$r12,$r12,0x1c
1c001818:	0014b9ad 	and	$r13,$r13,$r14
1c00181c:	2980018d 	st.w	$r13,$r12,0
1c001820:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001824:	0380718c 	ori	$r12,$r12,0x1c
1c001828:	2880018d 	ld.w	$r13,$r12,0
1c00182c:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001830:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001834:	001731cc 	sll.w	$r12,$r14,$r12
1c001838:	0015018e 	move	$r14,$r12
1c00183c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001840:	0380718c 	ori	$r12,$r12,0x1c
1c001844:	001539ad 	or	$r13,$r13,$r14
1c001848:	2980018d 	st.w	$r13,$r12,0
1c00184c:	50000800 	b	8(0x8) # 1c001854 <gpio_pin_remap+0x200>
1c001850:	03400000 	andi	$r0,$r0,0x0
1c001854:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001858:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00185c:	4c000020 	jirl	$r0,$r1,0

1c001860 <gpio_set_direction>:
gpio_set_direction():
1c001860:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001864:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001868:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00186c:	0015008c 	move	$r12,$r4
1c001870:	001500ad 	move	$r13,$r5
1c001874:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c001878:	001501ac 	move	$r12,$r13
1c00187c:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c001880:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001884:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001888:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c00188c:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c001890:	6800658d 	bltu	$r12,$r13,100(0x64) # 1c0018f4 <gpio_set_direction+0x94>
1c001894:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001898:	0381018c 	ori	$r12,$r12,0x40
1c00189c:	2880018d 	ld.w	$r13,$r12,0
1c0018a0:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0018a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018a8:	001731cc 	sll.w	$r12,$r14,$r12
1c0018ac:	0014300c 	nor	$r12,$r0,$r12
1c0018b0:	0015018e 	move	$r14,$r12
1c0018b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018b8:	0381018c 	ori	$r12,$r12,0x40
1c0018bc:	0014b9ad 	and	$r13,$r13,$r14
1c0018c0:	2980018d 	st.w	$r13,$r12,0
1c0018c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018c8:	0381018c 	ori	$r12,$r12,0x40
1c0018cc:	2880018d 	ld.w	$r13,$r12,0
1c0018d0:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0018d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018d8:	001731cc 	sll.w	$r12,$r14,$r12
1c0018dc:	0015018e 	move	$r14,$r12
1c0018e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018e4:	0381018c 	ori	$r12,$r12,0x40
1c0018e8:	001539ad 	or	$r13,$r13,$r14
1c0018ec:	2980018d 	st.w	$r13,$r12,0
1c0018f0:	50008c00 	b	140(0x8c) # 1c00197c <gpio_set_direction+0x11c>
1c0018f4:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c0018f8:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c0018fc:	6c007d8d 	bgeu	$r12,$r13,124(0x7c) # 1c001978 <gpio_set_direction+0x118>
1c001900:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001904:	0281000c 	addi.w	$r12,$r0,64(0x40)
1c001908:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c001978 <gpio_set_direction+0x118>
1c00190c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001910:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c001914:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001918:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00191c:	0381418c 	ori	$r12,$r12,0x50
1c001920:	2880018d 	ld.w	$r13,$r12,0
1c001924:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001928:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00192c:	001731cc 	sll.w	$r12,$r14,$r12
1c001930:	0014300c 	nor	$r12,$r0,$r12
1c001934:	0015018e 	move	$r14,$r12
1c001938:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00193c:	0381418c 	ori	$r12,$r12,0x50
1c001940:	0014b9ad 	and	$r13,$r13,$r14
1c001944:	2980018d 	st.w	$r13,$r12,0
1c001948:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00194c:	0381418c 	ori	$r12,$r12,0x50
1c001950:	2880018d 	ld.w	$r13,$r12,0
1c001954:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001958:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00195c:	001731cc 	sll.w	$r12,$r14,$r12
1c001960:	0015018e 	move	$r14,$r12
1c001964:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001968:	0381418c 	ori	$r12,$r12,0x50
1c00196c:	001539ad 	or	$r13,$r13,$r14
1c001970:	2980018d 	st.w	$r13,$r12,0
1c001974:	50000800 	b	8(0x8) # 1c00197c <gpio_set_direction+0x11c>
1c001978:	03400000 	andi	$r0,$r0,0x0
1c00197c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001980:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001984:	4c000020 	jirl	$r0,$r1,0

1c001988 <myputchar>:
myputchar():
1c001988:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00198c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001990:	29806076 	st.w	$r22,$r3,24(0x18)
1c001994:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001998:	0015008c 	move	$r12,$r4
1c00199c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0019a0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0019a4:	00150185 	move	$r5,$r12
1c0019a8:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c0019ac:	540fe400 	bl	4068(0xfe4) # 1c002990 <UART_SendData>
1c0019b0:	03400000 	andi	$r0,$r0,0x0
1c0019b4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0019b8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0019bc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0019c0:	4c000020 	jirl	$r0,$r1,0

1c0019c4 <printbase>:
printbase():
1c0019c4:	02be4063 	addi.w	$r3,$r3,-112(0xf90)
1c0019c8:	2981b061 	st.w	$r1,$r3,108(0x6c)
1c0019cc:	2981a076 	st.w	$r22,$r3,104(0x68)
1c0019d0:	0281c076 	addi.w	$r22,$r3,112(0x70)
1c0019d4:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c0019d8:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c0019dc:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c0019e0:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c0019e4:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c0019e8:	40002580 	beqz	$r12,36(0x24) # 1c001a0c <printbase+0x48>
1c0019ec:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c0019f0:	64001d80 	bge	$r12,$r0,28(0x1c) # 1c001a0c <printbase+0x48>
1c0019f4:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c0019f8:	0011300c 	sub.w	$r12,$r0,$r12
1c0019fc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a00:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c001a04:	57ff87ff 	bl	-124(0xfffff84) # 1c001988 <myputchar>
1c001a08:	50000c00 	b	12(0xc) # 1c001a14 <printbase+0x50>
1c001a0c:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001a10:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a14:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001a18:	50005000 	b	80(0x50) # 1c001a68 <printbase+0xa4>
1c001a1c:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c001a20:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001a24:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001a28:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001a30 <printbase+0x6c>
1c001a2c:	002a0007 	break	0x7
1c001a30:	00005dcc 	ext.w.b	$r12,$r14
1c001a34:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001a38:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c001a3c:	001035cd 	add.w	$r13,$r14,$r13
1c001a40:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c001a44:	28be52cd 	ld.w	$r13,$r22,-108(0xf94)
1c001a48:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c001a4c:	002135cc 	div.wu	$r12,$r14,$r13
1c001a50:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001a58 <printbase+0x94>
1c001a54:	002a0007 	break	0x7
1c001a58:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a60:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001a64:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001a68:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001a6c:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c001a1c <printbase+0x58>
1c001a70:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001a74:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001a78:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c001a7c:	001231ad 	slt	$r13,$r13,$r12
1c001a80:	0013b5ce 	masknez	$r14,$r14,$r13
1c001a84:	0013358c 	maskeqz	$r12,$r12,$r13
1c001a88:	001531cc 	or	$r12,$r14,$r12
1c001a8c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001a90:	50007400 	b	116(0x74) # 1c001b04 <printbase+0x140>
1c001a94:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c001a98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a9c:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c001ab8 <printbase+0xf4>
1c001aa0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001aa4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001aa8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c001aac:	001031ac 	add.w	$r12,$r13,$r12
1c001ab0:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c001ab4:	50000800 	b	8(0x8) # 1c001abc <printbase+0xf8>
1c001ab8:	0015000c 	move	$r12,$r0
1c001abc:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001ac0:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c001ac4:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c001ac8:	6000198d 	blt	$r12,$r13,24(0x18) # 1c001ae0 <printbase+0x11c>
1c001acc:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001ad0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001ad4:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c001ad8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001adc:	50001400 	b	20(0x14) # 1c001af0 <printbase+0x12c>
1c001ae0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001ae4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001ae8:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c001aec:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001af0:	00150184 	move	$r4,$r12
1c001af4:	57fe97ff 	bl	-364(0xffffe94) # 1c001988 <myputchar>
1c001af8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001afc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001b00:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b04:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b08:	63ff8c0c 	blt	$r0,$r12,-116(0x3ff8c) # 1c001a94 <printbase+0xd0>
1c001b0c:	0015000c 	move	$r12,$r0
1c001b10:	00150184 	move	$r4,$r12
1c001b14:	2881b061 	ld.w	$r1,$r3,108(0x6c)
1c001b18:	2881a076 	ld.w	$r22,$r3,104(0x68)
1c001b1c:	0281c063 	addi.w	$r3,$r3,112(0x70)
1c001b20:	4c000020 	jirl	$r0,$r1,0

1c001b24 <puts>:
puts():
1c001b24:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001b28:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001b2c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001b30:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001b34:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001b38:	50003000 	b	48(0x30) # 1c001b68 <puts+0x44>
1c001b3c:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c001b40:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001b44:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001b50 <puts+0x2c>
1c001b48:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001b4c:	57fe3fff 	bl	-452(0xffffe3c) # 1c001988 <myputchar>
1c001b50:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001b54:	00150184 	move	$r4,$r12
1c001b58:	57fe33ff 	bl	-464(0xffffe30) # 1c001988 <myputchar>
1c001b5c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001b60:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001b64:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001b68:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001b6c:	2a00018c 	ld.bu	$r12,$r12,0
1c001b70:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001b74:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c001b78:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c001b3c <puts+0x18>
1c001b7c:	0015000c 	move	$r12,$r0
1c001b80:	00150184 	move	$r4,$r12
1c001b84:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001b88:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001b8c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001b90:	4c000020 	jirl	$r0,$r1,0

1c001b94 <myprintf>:
myprintf():
1c001b94:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c001b98:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c001b9c:	2980e076 	st.w	$r22,$r3,56(0x38)
1c001ba0:	02810076 	addi.w	$r22,$r3,64(0x40)
1c001ba4:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c001ba8:	298012c5 	st.w	$r5,$r22,4(0x4)
1c001bac:	298022c6 	st.w	$r6,$r22,8(0x8)
1c001bb0:	298032c7 	st.w	$r7,$r22,12(0xc)
1c001bb4:	298042c8 	st.w	$r8,$r22,16(0x10)
1c001bb8:	298052c9 	st.w	$r9,$r22,20(0x14)
1c001bbc:	298062ca 	st.w	$r10,$r22,24(0x18)
1c001bc0:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c001bc4:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c001bc8:	02bf918c 	addi.w	$r12,$r12,-28(0xfe4)
1c001bcc:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001bd0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001bd4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001bd8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001bdc:	50033000 	b	816(0x330) # 1c001f0c <myprintf+0x378>
1c001be0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001be4:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001be8:	001031ac 	add.w	$r12,$r13,$r12
1c001bec:	2a00018c 	ld.bu	$r12,$r12,0
1c001bf0:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c001bf4:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001bf8:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c001bfc:	5c02e5ac 	bne	$r13,$r12,740(0x2e4) # 1c001ee0 <myprintf+0x34c>
1c001c00:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001c04:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001c08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c0c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c10:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001c14:	001031ac 	add.w	$r12,$r13,$r12
1c001c18:	2800018c 	ld.b	$r12,$r12,0
1c001c1c:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c001c20:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c001c24:	6802adac 	bltu	$r13,$r12,684(0x2ac) # 1c001ed0 <myprintf+0x33c>
1c001c28:	0040898d 	slli.w	$r13,$r12,0x2
1c001c2c:	1c0000ac 	pcaddu12i	$r12,5(0x5)
1c001c30:	0293218c 	addi.w	$r12,$r12,1224(0x4c8)
1c001c34:	001031ac 	add.w	$r12,$r13,$r12
1c001c38:	2880018c 	ld.w	$r12,$r12,0
1c001c3c:	4c000180 	jirl	$r0,$r12,0
1c001c40:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c44:	2880018c 	ld.w	$r12,$r12,0
1c001c48:	00150184 	move	$r4,$r12
1c001c4c:	57fedbff 	bl	-296(0xffffed8) # 1c001b24 <puts>
1c001c50:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c54:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001c58:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001c5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c60:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c64:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001c68:	50029800 	b	664(0x298) # 1c001f00 <myprintf+0x36c>
1c001c6c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c70:	2880018c 	ld.w	$r12,$r12,0
1c001c74:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001c78:	00150184 	move	$r4,$r12
1c001c7c:	57fd0fff 	bl	-756(0xffffd0c) # 1c001988 <myputchar>
1c001c80:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c84:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001c88:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001c8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c90:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c94:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001c98:	50026800 	b	616(0x268) # 1c001f00 <myprintf+0x36c>
1c001c9c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001ca0:	2880018c 	ld.w	$r12,$r12,0
1c001ca4:	00150007 	move	$r7,$r0
1c001ca8:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001cac:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001cb0:	00150184 	move	$r4,$r12
1c001cb4:	57fd13ff 	bl	-752(0xffffd10) # 1c0019c4 <printbase>
1c001cb8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cbc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001cc0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001cc4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001cc8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ccc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001cd0:	50023000 	b	560(0x230) # 1c001f00 <myprintf+0x36c>
1c001cd4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cd8:	2880018c 	ld.w	$r12,$r12,0
1c001cdc:	02800407 	addi.w	$r7,$r0,1(0x1)
1c001ce0:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001ce4:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001ce8:	00150184 	move	$r4,$r12
1c001cec:	57fcdbff 	bl	-808(0xffffcd8) # 1c0019c4 <printbase>
1c001cf0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cf4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001cf8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001cfc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d00:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d04:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d08:	5001f800 	b	504(0x1f8) # 1c001f00 <myprintf+0x36c>
1c001d0c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d10:	2880018c 	ld.w	$r12,$r12,0
1c001d14:	00150007 	move	$r7,$r0
1c001d18:	02802006 	addi.w	$r6,$r0,8(0x8)
1c001d1c:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d20:	00150184 	move	$r4,$r12
1c001d24:	57fca3ff 	bl	-864(0xffffca0) # 1c0019c4 <printbase>
1c001d28:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d2c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d30:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d38:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d3c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d40:	5001c000 	b	448(0x1c0) # 1c001f00 <myprintf+0x36c>
1c001d44:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d48:	2880018c 	ld.w	$r12,$r12,0
1c001d4c:	00150007 	move	$r7,$r0
1c001d50:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001d54:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d58:	00150184 	move	$r4,$r12
1c001d5c:	57fc6bff 	bl	-920(0xffffc68) # 1c0019c4 <printbase>
1c001d60:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d64:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d68:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d70:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d74:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d78:	50018800 	b	392(0x188) # 1c001f00 <myprintf+0x36c>
1c001d7c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d80:	2880018c 	ld.w	$r12,$r12,0
1c001d84:	00150007 	move	$r7,$r0
1c001d88:	02804006 	addi.w	$r6,$r0,16(0x10)
1c001d8c:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d90:	00150184 	move	$r4,$r12
1c001d94:	57fc33ff 	bl	-976(0xffffc30) # 1c0019c4 <printbase>
1c001d98:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d9c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001da0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001da4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001da8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001dac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001db0:	50015000 	b	336(0x150) # 1c001f00 <myprintf+0x36c>
1c001db4:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001db8:	57fbd3ff 	bl	-1072(0xffffbd0) # 1c001988 <myputchar>
1c001dbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001dc0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001dc4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001dc8:	50013800 	b	312(0x138) # 1c001f00 <myprintf+0x36c>
1c001dcc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001dd0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001dd4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001dd8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001ddc:	50003c00 	b	60(0x3c) # 1c001e18 <myprintf+0x284>
1c001de0:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001de4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001de8:	001c31ad 	mul.w	$r13,$r13,$r12
1c001dec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001df0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001df4:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001df8:	001031cc 	add.w	$r12,$r14,$r12
1c001dfc:	2800018c 	ld.b	$r12,$r12,0
1c001e00:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001e04:	001031ac 	add.w	$r12,$r13,$r12
1c001e08:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001e0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e10:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e14:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e1c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e20:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001e24:	001031ac 	add.w	$r12,$r13,$r12
1c001e28:	2800018d 	ld.b	$r13,$r12,0
1c001e2c:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001e30:	67fdd98d 	bge	$r12,$r13,-552(0x3fdd8) # 1c001c08 <myprintf+0x74>
1c001e34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e38:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e3c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001e40:	001031ac 	add.w	$r12,$r13,$r12
1c001e44:	2800018d 	ld.b	$r13,$r12,0
1c001e48:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001e4c:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001de0 <myprintf+0x24c>
1c001e50:	53fdbbff 	b	-584(0xffffdb8) # 1c001c08 <myprintf+0x74>
1c001e54:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001e58:	50003c00 	b	60(0x3c) # 1c001e94 <myprintf+0x300>
1c001e5c:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001e60:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001e64:	001c31ad 	mul.w	$r13,$r13,$r12
1c001e68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e6c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e70:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001e74:	001031cc 	add.w	$r12,$r14,$r12
1c001e78:	2800018c 	ld.b	$r12,$r12,0
1c001e7c:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001e80:	001031ac 	add.w	$r12,$r13,$r12
1c001e84:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001e88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e8c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e90:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e98:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e9c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001ea0:	001031ac 	add.w	$r12,$r13,$r12
1c001ea4:	2800018d 	ld.b	$r13,$r12,0
1c001ea8:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001eac:	67fd5d8d 	bge	$r12,$r13,-676(0x3fd5c) # 1c001c08 <myprintf+0x74>
1c001eb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001eb4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001eb8:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001ebc:	001031ac 	add.w	$r12,$r13,$r12
1c001ec0:	2800018d 	ld.b	$r13,$r12,0
1c001ec4:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001ec8:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001e5c <myprintf+0x2c8>
1c001ecc:	53fd3fff 	b	-708(0xffffd3c) # 1c001c08 <myprintf+0x74>
1c001ed0:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001ed4:	57fab7ff 	bl	-1356(0xffffab4) # 1c001988 <myputchar>
1c001ed8:	03400000 	andi	$r0,$r0,0x0
1c001edc:	50002400 	b	36(0x24) # 1c001f00 <myprintf+0x36c>
1c001ee0:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001ee4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001ee8:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001ef4 <myprintf+0x360>
1c001eec:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001ef0:	57fa9bff 	bl	-1384(0xffffa98) # 1c001988 <myputchar>
1c001ef4:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c001ef8:	00150184 	move	$r4,$r12
1c001efc:	57fa8fff 	bl	-1396(0xffffa8c) # 1c001988 <myputchar>
1c001f00:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f04:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f08:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f10:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001f14:	001031ac 	add.w	$r12,$r13,$r12
1c001f18:	2800018c 	ld.b	$r12,$r12,0
1c001f1c:	47fcc59f 	bnez	$r12,-828(0x7ffcc4) # 1c001be0 <myprintf+0x4c>
1c001f20:	0015000c 	move	$r12,$r0
1c001f24:	00150184 	move	$r4,$r12
1c001f28:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c001f2c:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c001f30:	02818063 	addi.w	$r3,$r3,96(0x60)
1c001f34:	4c000020 	jirl	$r0,$r1,0

1c001f38 <vsputs>:
vsputs():
1c001f38:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001f3c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001f40:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001f44:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001f48:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001f4c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001f50:	28bf62c4 	ld.w	$r4,$r22,-40(0xfd8)
1c001f54:	5417d400 	bl	6100(0x17d4) # 1c003728 <strlen>
1c001f58:	0015008c 	move	$r12,$r4
1c001f5c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f60:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c001f64:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c001f68:	54176400 	bl	5988(0x1764) # 1c0036cc <strcpy>
1c001f6c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001f70:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f74:	001031ac 	add.w	$r12,$r13,$r12
1c001f78:	00150184 	move	$r4,$r12
1c001f7c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001f80:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001f84:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001f88:	4c000020 	jirl	$r0,$r1,0

1c001f8c <vsputchar>:
vsputchar():
1c001f8c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001f90:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001f94:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001f98:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001f9c:	001500ac 	move	$r12,$r5
1c001fa0:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c001fa4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fa8:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c001fac:	2900018d 	st.b	$r13,$r12,0
1c001fb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fb4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001fb8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001fbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fc0:	00150184 	move	$r4,$r12
1c001fc4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001fc8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001fcc:	4c000020 	jirl	$r0,$r1,0

1c001fd0 <vsprintbase>:
vsprintbase():
1c001fd0:	02be0063 	addi.w	$r3,$r3,-128(0xf80)
1c001fd4:	2981f061 	st.w	$r1,$r3,124(0x7c)
1c001fd8:	2981e076 	st.w	$r22,$r3,120(0x78)
1c001fdc:	02820076 	addi.w	$r22,$r3,128(0x80)
1c001fe0:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c001fe4:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c001fe8:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c001fec:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c001ff0:	29be32c8 	st.w	$r8,$r22,-116(0xf8c)
1c001ff4:	28be32cc 	ld.w	$r12,$r22,-116(0xf8c)
1c001ff8:	40002d80 	beqz	$r12,44(0x2c) # 1c002024 <vsprintbase+0x54>
1c001ffc:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c002000:	64002580 	bge	$r12,$r0,36(0x24) # 1c002024 <vsprintbase+0x54>
1c002004:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c002008:	0011300c 	sub.w	$r12,$r0,$r12
1c00200c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002010:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c002014:	28be72c4 	ld.w	$r4,$r22,-100(0xf9c)
1c002018:	57ff77ff 	bl	-140(0xfffff74) # 1c001f8c <vsputchar>
1c00201c:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c002020:	50000c00 	b	12(0xc) # 1c00202c <vsprintbase+0x5c>
1c002024:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c002028:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00202c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002030:	50005000 	b	80(0x50) # 1c002080 <vsprintbase+0xb0>
1c002034:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c002038:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c00203c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c002040:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002048 <vsprintbase+0x78>
1c002044:	002a0007 	break	0x7
1c002048:	00005dcc 	ext.w.b	$r12,$r14
1c00204c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002050:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c002054:	001035cd 	add.w	$r13,$r14,$r13
1c002058:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c00205c:	28be42cd 	ld.w	$r13,$r22,-112(0xf90)
1c002060:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c002064:	002135cc 	div.wu	$r12,$r14,$r13
1c002068:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002070 <vsprintbase+0xa0>
1c00206c:	002a0007 	break	0x7
1c002070:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002074:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002078:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00207c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002080:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002084:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c002034 <vsprintbase+0x64>
1c002088:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c00208c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002090:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c002094:	001231ad 	slt	$r13,$r13,$r12
1c002098:	0013b5ce 	masknez	$r14,$r14,$r13
1c00209c:	0013358c 	maskeqz	$r12,$r12,$r13
1c0020a0:	001531cc 	or	$r12,$r14,$r12
1c0020a4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0020a8:	50008400 	b	132(0x84) # 1c00212c <vsprintbase+0x15c>
1c0020ac:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0020b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020b4:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c0020d0 <vsprintbase+0x100>
1c0020b8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0020bc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0020c0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0020c4:	001031ac 	add.w	$r12,$r13,$r12
1c0020c8:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c0020cc:	50000800 	b	8(0x8) # 1c0020d4 <vsprintbase+0x104>
1c0020d0:	0015000c 	move	$r12,$r0
1c0020d4:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0020d8:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c0020dc:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c0020e0:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c0020fc <vsprintbase+0x12c>
1c0020e4:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0020e8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0020ec:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c0020f0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0020f4:	00005d8c 	ext.w.b	$r12,$r12
1c0020f8:	50001800 	b	24(0x18) # 1c002110 <vsprintbase+0x140>
1c0020fc:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c002100:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002104:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c002108:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00210c:	00005d8c 	ext.w.b	$r12,$r12
1c002110:	00150185 	move	$r5,$r12
1c002114:	28be72c4 	ld.w	$r4,$r22,-100(0xf9c)
1c002118:	57fe77ff 	bl	-396(0xffffe74) # 1c001f8c <vsputchar>
1c00211c:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c002120:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002124:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002128:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00212c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002130:	63ff7c0c 	blt	$r0,$r12,-132(0x3ff7c) # 1c0020ac <vsprintbase+0xdc>
1c002134:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c002138:	00150184 	move	$r4,$r12
1c00213c:	2881f061 	ld.w	$r1,$r3,124(0x7c)
1c002140:	2881e076 	ld.w	$r22,$r3,120(0x78)
1c002144:	02820063 	addi.w	$r3,$r3,128(0x80)
1c002148:	4c000020 	jirl	$r0,$r1,0

1c00214c <vsprintf>:
vsprintf():
1c00214c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002150:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002154:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002158:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00215c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002160:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c002164:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c002168:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00216c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002170:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002174:	50036c00 	b	876(0x36c) # 1c0024e0 <vsprintf+0x394>
1c002178:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00217c:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002180:	001031ac 	add.w	$r12,$r13,$r12
1c002184:	2a00018c 	ld.bu	$r12,$r12,0
1c002188:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c00218c:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c002190:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c002194:	5c0311ac 	bne	$r13,$r12,784(0x310) # 1c0024a4 <vsprintf+0x358>
1c002198:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00219c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0021a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0021a8:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0021ac:	001031ac 	add.w	$r12,$r13,$r12
1c0021b0:	2800018c 	ld.b	$r12,$r12,0
1c0021b4:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c0021b8:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c0021bc:	6802d1ac 	bltu	$r13,$r12,720(0x2d0) # 1c00248c <vsprintf+0x340>
1c0021c0:	0040898d 	slli.w	$r13,$r12,0x2
1c0021c4:	1c0000ac 	pcaddu12i	$r12,5(0x5)
1c0021c8:	0282018c 	addi.w	$r12,$r12,128(0x80)
1c0021cc:	001031ac 	add.w	$r12,$r13,$r12
1c0021d0:	2880018c 	ld.w	$r12,$r12,0
1c0021d4:	4c000180 	jirl	$r0,$r12,0
1c0021d8:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0021dc:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c0021e0:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0021e4:	2880018c 	ld.w	$r12,$r12,0
1c0021e8:	00150185 	move	$r5,$r12
1c0021ec:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0021f0:	57fd4bff 	bl	-696(0xffffd48) # 1c001f38 <vsputs>
1c0021f4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0021f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021fc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002200:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002204:	5002d000 	b	720(0x2d0) # 1c0024d4 <vsprintf+0x388>
1c002208:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c00220c:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002210:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002214:	2880018c 	ld.w	$r12,$r12,0
1c002218:	00005d8c 	ext.w.b	$r12,$r12
1c00221c:	00150185 	move	$r5,$r12
1c002220:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002224:	57fd6bff 	bl	-664(0xffffd68) # 1c001f8c <vsputchar>
1c002228:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00222c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002230:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002234:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002238:	50029c00 	b	668(0x29c) # 1c0024d4 <vsprintf+0x388>
1c00223c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002240:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002244:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002248:	2880018c 	ld.w	$r12,$r12,0
1c00224c:	00150008 	move	$r8,$r0
1c002250:	02802807 	addi.w	$r7,$r0,10(0xa)
1c002254:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c002258:	00150185 	move	$r5,$r12
1c00225c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002260:	57fd73ff 	bl	-656(0xffffd70) # 1c001fd0 <vsprintbase>
1c002264:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002268:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00226c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002270:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002274:	50026000 	b	608(0x260) # 1c0024d4 <vsprintf+0x388>
1c002278:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c00227c:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002280:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002284:	2880018c 	ld.w	$r12,$r12,0
1c002288:	02800408 	addi.w	$r8,$r0,1(0x1)
1c00228c:	02802807 	addi.w	$r7,$r0,10(0xa)
1c002290:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c002294:	00150185 	move	$r5,$r12
1c002298:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00229c:	57fd37ff 	bl	-716(0xffffd34) # 1c001fd0 <vsprintbase>
1c0022a0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0022a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022a8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022ac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022b0:	50022400 	b	548(0x224) # 1c0024d4 <vsprintf+0x388>
1c0022b4:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0022b8:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c0022bc:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0022c0:	2880018c 	ld.w	$r12,$r12,0
1c0022c4:	00150008 	move	$r8,$r0
1c0022c8:	02802007 	addi.w	$r7,$r0,8(0x8)
1c0022cc:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c0022d0:	00150185 	move	$r5,$r12
1c0022d4:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0022d8:	57fcfbff 	bl	-776(0xffffcf8) # 1c001fd0 <vsprintbase>
1c0022dc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0022e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022e8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022ec:	5001e800 	b	488(0x1e8) # 1c0024d4 <vsprintf+0x388>
1c0022f0:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0022f4:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c0022f8:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0022fc:	2880018c 	ld.w	$r12,$r12,0
1c002300:	00150008 	move	$r8,$r0
1c002304:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002308:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c00230c:	00150185 	move	$r5,$r12
1c002310:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002314:	57fcbfff 	bl	-836(0xffffcbc) # 1c001fd0 <vsprintbase>
1c002318:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00231c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002320:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002324:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002328:	5001ac00 	b	428(0x1ac) # 1c0024d4 <vsprintf+0x388>
1c00232c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002330:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002334:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002338:	2880018c 	ld.w	$r12,$r12,0
1c00233c:	00150008 	move	$r8,$r0
1c002340:	02804007 	addi.w	$r7,$r0,16(0x10)
1c002344:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c002348:	00150185 	move	$r5,$r12
1c00234c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002350:	57fc83ff 	bl	-896(0xffffc80) # 1c001fd0 <vsprintbase>
1c002354:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002358:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00235c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002360:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002364:	50017000 	b	368(0x170) # 1c0024d4 <vsprintf+0x388>
1c002368:	02809405 	addi.w	$r5,$r0,37(0x25)
1c00236c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002370:	57fc1fff 	bl	-996(0xffffc1c) # 1c001f8c <vsputchar>
1c002374:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002378:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00237c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002380:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002384:	50015000 	b	336(0x150) # 1c0024d4 <vsprintf+0x388>
1c002388:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00238c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002390:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002394:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002398:	50003c00 	b	60(0x3c) # 1c0023d4 <vsprintf+0x288>
1c00239c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0023a0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0023a4:	001c31ad 	mul.w	$r13,$r13,$r12
1c0023a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023b0:	28bf62ce 	ld.w	$r14,$r22,-40(0xfd8)
1c0023b4:	001031cc 	add.w	$r12,$r14,$r12
1c0023b8:	2800018c 	ld.b	$r12,$r12,0
1c0023bc:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c0023c0:	001031ac 	add.w	$r12,$r13,$r12
1c0023c4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0023c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023cc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023d0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0023d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023dc:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0023e0:	001031ac 	add.w	$r12,$r13,$r12
1c0023e4:	2800018d 	ld.b	$r13,$r12,0
1c0023e8:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c0023ec:	67fdb58d 	bge	$r12,$r13,-588(0x3fdb4) # 1c0021a0 <vsprintf+0x54>
1c0023f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023f4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023f8:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0023fc:	001031ac 	add.w	$r12,$r13,$r12
1c002400:	2800018d 	ld.b	$r13,$r12,0
1c002404:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c002408:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c00239c <vsprintf+0x250>
1c00240c:	53fd97ff 	b	-620(0xffffd94) # 1c0021a0 <vsprintf+0x54>
1c002410:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002414:	50003c00 	b	60(0x3c) # 1c002450 <vsprintf+0x304>
1c002418:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00241c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c002420:	001c31ad 	mul.w	$r13,$r13,$r12
1c002424:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002428:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00242c:	28bf62ce 	ld.w	$r14,$r22,-40(0xfd8)
1c002430:	001031cc 	add.w	$r12,$r14,$r12
1c002434:	2800018c 	ld.b	$r12,$r12,0
1c002438:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c00243c:	001031ac 	add.w	$r12,$r13,$r12
1c002440:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002444:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002448:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00244c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002450:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002454:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002458:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00245c:	001031ac 	add.w	$r12,$r13,$r12
1c002460:	2800018d 	ld.b	$r13,$r12,0
1c002464:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c002468:	67fd398d 	bge	$r12,$r13,-712(0x3fd38) # 1c0021a0 <vsprintf+0x54>
1c00246c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002470:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002474:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002478:	001031ac 	add.w	$r12,$r13,$r12
1c00247c:	2800018d 	ld.b	$r13,$r12,0
1c002480:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c002484:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c002418 <vsprintf+0x2cc>
1c002488:	53fd1bff 	b	-744(0xffffd18) # 1c0021a0 <vsprintf+0x54>
1c00248c:	02809405 	addi.w	$r5,$r0,37(0x25)
1c002490:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002494:	57fafbff 	bl	-1288(0xffffaf8) # 1c001f8c <vsputchar>
1c002498:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00249c:	03400000 	andi	$r0,$r0,0x0
1c0024a0:	50003400 	b	52(0x34) # 1c0024d4 <vsprintf+0x388>
1c0024a4:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c0024a8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0024ac:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0024c0 <vsprintf+0x374>
1c0024b0:	02803405 	addi.w	$r5,$r0,13(0xd)
1c0024b4:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0024b8:	57fad7ff 	bl	-1324(0xffffad4) # 1c001f8c <vsputchar>
1c0024bc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0024c0:	283f8ecc 	ld.b	$r12,$r22,-29(0xfe3)
1c0024c4:	00150185 	move	$r5,$r12
1c0024c8:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0024cc:	57fac3ff 	bl	-1344(0xffffac0) # 1c001f8c <vsputchar>
1c0024d0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0024d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0024d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0024dc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0024e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0024e4:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0024e8:	001031ac 	add.w	$r12,$r13,$r12
1c0024ec:	2800018c 	ld.b	$r12,$r12,0
1c0024f0:	47fc899f 	bnez	$r12,-888(0x7ffc88) # 1c002178 <vsprintf+0x2c>
1c0024f4:	00150005 	move	$r5,$r0
1c0024f8:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0024fc:	57fa93ff 	bl	-1392(0xffffa90) # 1c001f8c <vsputchar>
1c002500:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002504:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002508:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00250c:	001131ac 	sub.w	$r12,$r13,$r12
1c002510:	00150184 	move	$r4,$r12
1c002514:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002518:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00251c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002520:	4c000020 	jirl	$r0,$r1,0

1c002524 <sprintf>:
sprintf():
1c002524:	02bec063 	addi.w	$r3,$r3,-80(0xfb0)
1c002528:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00252c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002530:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002534:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002538:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00253c:	298022c6 	st.w	$r6,$r22,8(0x8)
1c002540:	298032c7 	st.w	$r7,$r22,12(0xc)
1c002544:	298042c8 	st.w	$r8,$r22,16(0x10)
1c002548:	298052c9 	st.w	$r9,$r22,20(0x14)
1c00254c:	298062ca 	st.w	$r10,$r22,24(0x18)
1c002550:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c002554:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c002558:	02bfa18c 	addi.w	$r12,$r12,-24(0xfe8)
1c00255c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002560:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002564:	00150186 	move	$r6,$r12
1c002568:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c00256c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002570:	57fbdfff 	bl	-1060(0xffffbdc) # 1c00214c <vsprintf>
1c002574:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002578:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00257c:	00150184 	move	$r4,$r12
1c002580:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002584:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002588:	02814063 	addi.w	$r3,$r3,80(0x50)
1c00258c:	4c000020 	jirl	$r0,$r1,0

1c002590 <UART_Init>:
UART_Init():
1c002590:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002594:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002598:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00259c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0025a0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0025a4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0025a8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0025ac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025b0:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0025b4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0025b8:	03403d8c 	andi	$r12,$r12,0xf
1c0025bc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0025c0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025c4:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0025c8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0025cc:	0044918c 	srli.w	$r12,$r12,0x4
1c0025d0:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c0025d4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0025d8:	40000d80 	beqz	$r12,12(0xc) # 1c0025e4 <UART_Init+0x54>
1c0025dc:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c0025e0:	44001980 	bnez	$r12,24(0x18) # 1c0025f8 <UART_Init+0x68>
1c0025e4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025e8:	0280e00d 	addi.w	$r13,$r0,56(0x38)
1c0025ec:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0025f0:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c0025f4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0025f8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0025fc:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c002600:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c002618 <UART_Init+0x88>
1c002604:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002608:	02808c0d 	addi.w	$r13,$r0,35(0x23)
1c00260c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c002610:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002614:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002618:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00261c:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c002620:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002624:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002628:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00262c:	580011ac 	beq	$r13,$r12,16(0x10) # 1c00263c <UART_Init+0xac>
1c002630:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002634:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c002638:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c002698 <UART_Init+0x108>
1c00263c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002640:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002644:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002648:	2880018c 	ld.w	$r12,$r12,0
1c00264c:	002131ae 	div.wu	$r14,$r13,$r12
1c002650:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002658 <UART_Init+0xc8>
1c002654:	002a0007 	break	0x7
1c002658:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00265c:	002135cc 	div.wu	$r12,$r14,$r13
1c002660:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002668 <UART_Init+0xd8>
1c002664:	002a0007 	break	0x7
1c002668:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00266c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002670:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002674:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002678:	2880018e 	ld.w	$r14,$r12,0
1c00267c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002680:	001c31ce 	mul.w	$r14,$r14,$r12
1c002684:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002688:	001c31cc 	mul.w	$r12,$r14,$r12
1c00268c:	001131ac 	sub.w	$r12,$r13,$r12
1c002690:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002694:	50005400 	b	84(0x54) # 1c0026e8 <UART_Init+0x158>
1c002698:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00269c:	2880018c 	ld.w	$r12,$r12,0
1c0026a0:	1400010d 	lu12i.w	$r13,8(0x8)
1c0026a4:	002131ae 	div.wu	$r14,$r13,$r12
1c0026a8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0026b0 <UART_Init+0x120>
1c0026ac:	002a0007 	break	0x7
1c0026b0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0026b4:	002135cc 	div.wu	$r12,$r14,$r13
1c0026b8:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0026c0 <UART_Init+0x130>
1c0026bc:	002a0007 	break	0x7
1c0026c0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0026c4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026c8:	2880018d 	ld.w	$r13,$r12,0
1c0026cc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0026d0:	001c31ad 	mul.w	$r13,$r13,$r12
1c0026d4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0026d8:	001c31ac 	mul.w	$r12,$r13,$r12
1c0026dc:	1400010d 	lu12i.w	$r13,8(0x8)
1c0026e0:	001131ac 	sub.w	$r12,$r13,$r12
1c0026e4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0026e8:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0026ec:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c0026f0:	001c31ad 	mul.w	$r13,$r13,$r12
1c0026f4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026f8:	2880018c 	ld.w	$r12,$r12,0
1c0026fc:	002131ae 	div.wu	$r14,$r13,$r12
1c002700:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002708 <UART_Init+0x178>
1c002704:	002a0007 	break	0x7
1c002708:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00270c:	002135cc 	div.wu	$r12,$r14,$r13
1c002710:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002718 <UART_Init+0x188>
1c002714:	002a0007 	break	0x7
1c002718:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00271c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002720:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002724:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002728:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c00272c:	001531ac 	or	$r12,$r13,$r12
1c002730:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002734:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002738:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00273c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002740:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002744:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002748:	2900018d 	st.b	$r13,$r12,0
1c00274c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002750:	0044a18c 	srli.w	$r12,$r12,0x8
1c002754:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002758:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00275c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002760:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002764:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002768:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00276c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002770:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002774:	2900098d 	st.b	$r13,$r12,2(0x2)
1c002778:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00277c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002780:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002784:	0341fd8c 	andi	$r12,$r12,0x7f
1c002788:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00278c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002790:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002794:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002798:	29000580 	st.b	$r0,$r12,1(0x1)
1c00279c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027a0:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0027a4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027a8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0027ac:	2a00298c 	ld.bu	$r12,$r12,10(0xa)
1c0027b0:	001531ac 	or	$r12,$r13,$r12
1c0027b4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027b8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027bc:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0027c0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027c4:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0027c8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027cc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0027d0:	2a00358c 	ld.bu	$r12,$r12,13(0xd)
1c0027d4:	001531ac 	or	$r12,$r13,$r12
1c0027d8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027e0:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0027e4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027e8:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0027ec:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027f0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0027f4:	2a00398c 	ld.bu	$r12,$r12,14(0xe)
1c0027f8:	001531ac 	or	$r12,$r13,$r12
1c0027fc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002800:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002804:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002808:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00280c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002810:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002814:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002818:	2a002d8c 	ld.bu	$r12,$r12,11(0xb)
1c00281c:	001531ac 	or	$r12,$r13,$r12
1c002820:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002824:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002828:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00282c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002830:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002834:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002838:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00283c:	2a003d8c 	ld.bu	$r12,$r12,15(0xf)
1c002840:	001531ac 	or	$r12,$r13,$r12
1c002844:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002848:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00284c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002850:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002854:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002858:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00285c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002860:	2a00318c 	ld.bu	$r12,$r12,12(0xc)
1c002864:	001531ac 	or	$r12,$r13,$r12
1c002868:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00286c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002870:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002874:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002878:	2a00018c 	ld.bu	$r12,$r12,0
1c00287c:	03400000 	andi	$r0,$r0,0x0
1c002880:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002884:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002888:	4c000020 	jirl	$r0,$r1,0

1c00288c <UART_StructInit>:
UART_StructInit():
1c00288c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002890:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002894:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002898:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00289c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028a0:	1400038d 	lu12i.w	$r13,28(0x1c)
1c0028a4:	038801ad 	ori	$r13,$r13,0x200
1c0028a8:	2980018d 	st.w	$r13,$r12,0
1c0028ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028b0:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c0028b4:	038801ad 	ori	$r13,$r13,0x200
1c0028b8:	2980118d 	st.w	$r13,$r12,4(0x4)
1c0028bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028c0:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c0028c4:	2900298d 	st.b	$r13,$r12,10(0xa)
1c0028c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028cc:	29002d80 	st.b	$r0,$r12,11(0xb)
1c0028d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028d4:	29003580 	st.b	$r0,$r12,13(0xd)
1c0028d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028dc:	29003180 	st.b	$r0,$r12,12(0xc)
1c0028e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028e4:	29003d80 	st.b	$r0,$r12,15(0xf)
1c0028e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028ec:	29003980 	st.b	$r0,$r12,14(0xe)
1c0028f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028f4:	29402180 	st.h	$r0,$r12,8(0x8)
1c0028f8:	03400000 	andi	$r0,$r0,0x0
1c0028fc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002900:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002904:	4c000020 	jirl	$r0,$r1,0

1c002908 <UART_ITConfig>:
UART_ITConfig():
1c002908:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00290c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002910:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002914:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002918:	001500ac 	move	$r12,$r5
1c00291c:	29bf92c6 	st.w	$r6,$r22,-28(0xfe4)
1c002920:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c002924:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002928:	40002980 	beqz	$r12,40(0x28) # 1c002950 <UART_ITConfig+0x48>
1c00292c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002930:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002934:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002938:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c00293c:	001531ac 	or	$r12,$r13,$r12
1c002940:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002944:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002948:	2900058d 	st.b	$r13,$r12,1(0x1)
1c00294c:	50003400 	b	52(0x34) # 1c002980 <UART_ITConfig+0x78>
1c002950:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002954:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002958:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00295c:	00005d8d 	ext.w.b	$r13,$r12
1c002960:	283faecc 	ld.b	$r12,$r22,-21(0xfeb)
1c002964:	0014300c 	nor	$r12,$r0,$r12
1c002968:	00005d8c 	ext.w.b	$r12,$r12
1c00296c:	0014b1ac 	and	$r12,$r13,$r12
1c002970:	00005d8c 	ext.w.b	$r12,$r12
1c002974:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002978:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00297c:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002980:	03400000 	andi	$r0,$r0,0x0
1c002984:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002988:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00298c:	4c000020 	jirl	$r0,$r1,0

1c002990 <UART_SendData>:
UART_SendData():
1c002990:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002994:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002998:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00299c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0029a0:	001500ac 	move	$r12,$r5
1c0029a4:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0029a8:	03400000 	andi	$r0,$r0,0x0
1c0029ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0029b0:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0029b4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0029b8:	0340818c 	andi	$r12,$r12,0x20
1c0029bc:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0029ac <UART_SendData+0x1c>
1c0029c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0029c4:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0029c8:	2900018d 	st.b	$r13,$r12,0
1c0029cc:	03400000 	andi	$r0,$r0,0x0
1c0029d0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0029d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0029d8:	4c000020 	jirl	$r0,$r1,0

1c0029dc <UART_ReceiveData>:
UART_ReceiveData():
1c0029dc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0029e0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0029e4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0029e8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0029ec:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0029f0:	03400000 	andi	$r0,$r0,0x0
1c0029f4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0029f8:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0029fc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002a00:	0340058c 	andi	$r12,$r12,0x1
1c002a04:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0029f4 <UART_ReceiveData+0x18>
1c002a08:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a0c:	2a00018c 	ld.bu	$r12,$r12,0
1c002a10:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002a14:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002a18:	00150184 	move	$r4,$r12
1c002a1c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002a20:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002a24:	4c000020 	jirl	$r0,$r1,0

1c002a28 <UART_GetFlagStatus>:
UART_GetFlagStatus():
1c002a28:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002a2c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002a30:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002a34:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002a38:	001500ac 	move	$r12,$r5
1c002a3c:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c002a40:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002a44:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a48:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002a4c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002a50:	0015018d 	move	$r13,$r12
1c002a54:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c002a58:	0012b00c 	sltu	$r12,$r0,$r12
1c002a5c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002a60:	0014b1ac 	and	$r12,$r13,$r12
1c002a64:	40001180 	beqz	$r12,16(0x10) # 1c002a74 <UART_GetFlagStatus+0x4c>
1c002a68:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002a6c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002a70:	50000800 	b	8(0x8) # 1c002a78 <UART_GetFlagStatus+0x50>
1c002a74:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002a78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002a7c:	00150184 	move	$r4,$r12
1c002a80:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002a84:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002a88:	4c000020 	jirl	$r0,$r1,0

1c002a8c <Uart0_init>:
Uart0_init():
1c002a8c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002a90:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002a94:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002a98:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002a9c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002aa0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002aa4:	02801804 	addi.w	$r4,$r0,6(0x6)
1c002aa8:	57ebafff 	bl	-5204(0xfffebac) # 1c001654 <gpio_pin_remap>
1c002aac:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002ab0:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c002ab4:	57eba3ff 	bl	-5216(0xfffeba0) # 1c001654 <gpio_pin_remap>
1c002ab8:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002abc:	00150184 	move	$r4,$r12
1c002ac0:	57fdcfff 	bl	-564(0xffffdcc) # 1c00288c <UART_StructInit>
1c002ac4:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002ac8:	2895218c 	ld.w	$r12,$r12,1352(0x548)
1c002acc:	2880018c 	ld.w	$r12,$r12,0
1c002ad0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002ad4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ad8:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002adc:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002ae0:	00150185 	move	$r5,$r12
1c002ae4:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002ae8:	57faabff 	bl	-1368(0xffffaa8) # 1c002590 <UART_Init>
1c002aec:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002af0:	0380098c 	ori	$r12,$r12,0x2
1c002af4:	2a00018c 	ld.bu	$r12,$r12,0
1c002af8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002afc:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002b00:	0380098c 	ori	$r12,$r12,0x2
1c002b04:	038021ad 	ori	$r13,$r13,0x8
1c002b08:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002b0c:	2900018d 	st.b	$r13,$r12,0
1c002b10:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002b14:	2a00018c 	ld.bu	$r12,$r12,0
1c002b18:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002b1c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002b20:	038021ad 	ori	$r13,$r13,0x8
1c002b24:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002b28:	2900018d 	st.b	$r13,$r12,0
1c002b2c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c002b30:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002b34:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002b38:	57fdd3ff 	bl	-560(0xffffdd0) # 1c002908 <UART_ITConfig>
1c002b3c:	03400000 	andi	$r0,$r0,0x0
1c002b40:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002b44:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002b48:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002b4c:	4c000020 	jirl	$r0,$r1,0

1c002b50 <Uart1_init>:
Uart1_init():
1c002b50:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002b54:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002b58:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002b5c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002b60:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002b64:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002b68:	02802004 	addi.w	$r4,$r0,8(0x8)
1c002b6c:	57eaebff 	bl	-5400(0xfffeae8) # 1c001654 <gpio_pin_remap>
1c002b70:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002b74:	02802404 	addi.w	$r4,$r0,9(0x9)
1c002b78:	57eadfff 	bl	-5412(0xfffeadc) # 1c001654 <gpio_pin_remap>
1c002b7c:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002b80:	00150184 	move	$r4,$r12
1c002b84:	57fd0bff 	bl	-760(0xffffd08) # 1c00288c <UART_StructInit>
1c002b88:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002b8c:	2892118c 	ld.w	$r12,$r12,1156(0x484)
1c002b90:	2880018c 	ld.w	$r12,$r12,0
1c002b94:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002b98:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002b9c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002ba0:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002ba4:	00150185 	move	$r5,$r12
1c002ba8:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002bac:	57f9e7ff 	bl	-1564(0xffff9e4) # 1c002590 <UART_Init>
1c002bb0:	02800406 	addi.w	$r6,$r0,1(0x1)
1c002bb4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002bb8:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002bbc:	57fd4fff 	bl	-692(0xffffd4c) # 1c002908 <UART_ITConfig>
1c002bc0:	03400000 	andi	$r0,$r0,0x0
1c002bc4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002bc8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002bcc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002bd0:	4c000020 	jirl	$r0,$r1,0

1c002bd4 <CLOCK_WaitForHSEStartUp>:
CLOCK_WaitForHSEStartUp():
1c002bd4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002bd8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002bdc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002be0:	1400006c 	lu12i.w	$r12,3(0x3)
1c002be4:	03ba018c 	ori	$r12,$r12,0xe80
1c002be8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002bec:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002bf0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bf4:	2880018d 	ld.w	$r13,$r12,0
1c002bf8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bfc:	038101ad 	ori	$r13,$r13,0x40
1c002c00:	2980018d 	st.w	$r13,$r12,0
1c002c04:	03400000 	andi	$r0,$r0,0x0
1c002c08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c0c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002c10:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002c14:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c002c08 <CLOCK_WaitForHSEStartUp+0x34>
1c002c18:	50001c00 	b	28(0x1c) # 1c002c34 <CLOCK_WaitForHSEStartUp+0x60>
1c002c1c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c20:	2880018e 	ld.w	$r14,$r12,0
1c002c24:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c28:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002c2c:	0014b5cd 	and	$r13,$r14,$r13
1c002c30:	2980018d 	st.w	$r13,$r12,0
1c002c34:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c38:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002c3c:	63ffe180 	blt	$r12,$r0,-32(0x3ffe0) # 1c002c1c <CLOCK_WaitForHSEStartUp+0x48>
1c002c40:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c44:	2880018d 	ld.w	$r13,$r12,0
1c002c48:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c4c:	038201ad 	ori	$r13,$r13,0x80
1c002c50:	2980018d 	st.w	$r13,$r12,0
1c002c54:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002c58:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002c5c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002c60:	00150184 	move	$r4,$r12
1c002c64:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002c68:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002c6c:	4c000020 	jirl	$r0,$r1,0

1c002c70 <CLOCK_WaitForLSEStartUp>:
CLOCK_WaitForLSEStartUp():
1c002c70:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002c74:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002c78:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002c7c:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002c80:	50008800 	b	136(0x88) # 1c002d08 <CLOCK_WaitForLSEStartUp+0x98>
1c002c84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c88:	2880018e 	ld.w	$r14,$r12,0
1c002c8c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c90:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002c94:	0014b5cd 	and	$r13,$r14,$r13
1c002c98:	2980018d 	st.w	$r13,$r12,0
1c002c9c:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002ca0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002ca4:	50001400 	b	20(0x14) # 1c002cb8 <CLOCK_WaitForLSEStartUp+0x48>
1c002ca8:	03400000 	andi	$r0,$r0,0x0
1c002cac:	03400000 	andi	$r0,$r0,0x0
1c002cb0:	03400000 	andi	$r0,$r0,0x0
1c002cb4:	03400000 	andi	$r0,$r0,0x0
1c002cb8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002cbc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002cc0:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002cc4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002ca8 <CLOCK_WaitForLSEStartUp+0x38>
1c002cc8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ccc:	2880018d 	ld.w	$r13,$r12,0
1c002cd0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cd4:	038081ad 	ori	$r13,$r13,0x20
1c002cd8:	2980018d 	st.w	$r13,$r12,0
1c002cdc:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002ce0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002ce4:	50001400 	b	20(0x14) # 1c002cf8 <CLOCK_WaitForLSEStartUp+0x88>
1c002ce8:	03400000 	andi	$r0,$r0,0x0
1c002cec:	03400000 	andi	$r0,$r0,0x0
1c002cf0:	03400000 	andi	$r0,$r0,0x0
1c002cf4:	03400000 	andi	$r0,$r0,0x0
1c002cf8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002cfc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002d00:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002d04:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002ce8 <CLOCK_WaitForLSEStartUp+0x78>
1c002d08:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d0c:	0380118c 	ori	$r12,$r12,0x4
1c002d10:	2880018d 	ld.w	$r13,$r12,0
1c002d14:	1420000c 	lu12i.w	$r12,65536(0x10000)
1c002d18:	0014b1ac 	and	$r12,$r13,$r12
1c002d1c:	43ff699f 	beqz	$r12,-152(0x7fff68) # 1c002c84 <CLOCK_WaitForLSEStartUp+0x14>
1c002d20:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d24:	0380118c 	ori	$r12,$r12,0x4
1c002d28:	2880018d 	ld.w	$r13,$r12,0
1c002d2c:	1440000c 	lu12i.w	$r12,131072(0x20000)
1c002d30:	0014b1ac 	and	$r12,$r13,$r12
1c002d34:	47ff519f 	bnez	$r12,-176(0x7fff50) # 1c002c84 <CLOCK_WaitForLSEStartUp+0x14>
1c002d38:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002d3c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002d40:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002d44:	00150184 	move	$r4,$r12
1c002d48:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002d4c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002d50:	4c000020 	jirl	$r0,$r1,0

1c002d54 <CLOCK_HSEConfig>:
CLOCK_HSEConfig():
1c002d54:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002d58:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002d5c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002d60:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002d64:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002d68:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002d6c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d70:	2880018e 	ld.w	$r14,$r12,0
1c002d74:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002d78:	0014300d 	nor	$r13,$r0,$r12
1c002d7c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d80:	0014b5cd 	and	$r13,$r14,$r13
1c002d84:	2980018d 	st.w	$r13,$r12,0
1c002d88:	1400002c 	lu12i.w	$r12,1(0x1)
1c002d8c:	03b4bd8c 	ori	$r12,$r12,0xd2f
1c002d90:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002d94:	50001400 	b	20(0x14) # 1c002da8 <CLOCK_HSEConfig+0x54>
1c002d98:	03400000 	andi	$r0,$r0,0x0
1c002d9c:	03400000 	andi	$r0,$r0,0x0
1c002da0:	03400000 	andi	$r0,$r0,0x0
1c002da4:	03400000 	andi	$r0,$r0,0x0
1c002da8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002dac:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002db0:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002db4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002d98 <CLOCK_HSEConfig+0x44>
1c002db8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002dbc:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002dc0:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002dd0 <CLOCK_HSEConfig+0x7c>
1c002dc4:	57fe13ff 	bl	-496(0xffffe10) # 1c002bd4 <CLOCK_WaitForHSEStartUp>
1c002dc8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002dcc:	50002400 	b	36(0x24) # 1c002df0 <CLOCK_HSEConfig+0x9c>
1c002dd0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002dd4:	2880018e 	ld.w	$r14,$r12,0
1c002dd8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ddc:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002de0:	0014b5cd 	and	$r13,$r14,$r13
1c002de4:	2980018d 	st.w	$r13,$r12,0
1c002de8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002dec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002df0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002df4:	00150184 	move	$r4,$r12
1c002df8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002dfc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002e00:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002e04:	4c000020 	jirl	$r0,$r1,0

1c002e08 <CLOCK_LSEConfig>:
CLOCK_LSEConfig():
1c002e08:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002e0c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002e10:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002e14:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002e18:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002e1c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002e20:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002e24:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c002e28:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002e38 <CLOCK_LSEConfig+0x30>
1c002e2c:	57fe47ff 	bl	-444(0xffffe44) # 1c002c70 <CLOCK_WaitForLSEStartUp>
1c002e30:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002e34:	50002400 	b	36(0x24) # 1c002e58 <CLOCK_LSEConfig+0x50>
1c002e38:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e3c:	2880018e 	ld.w	$r14,$r12,0
1c002e40:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e44:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002e48:	0014b5cd 	and	$r13,$r14,$r13
1c002e4c:	2980018d 	st.w	$r13,$r12,0
1c002e50:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002e54:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002e58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e5c:	00150184 	move	$r4,$r12
1c002e60:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002e64:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002e68:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002e6c:	4c000020 	jirl	$r0,$r1,0

1c002e70 <CLOCK_StructInit>:
CLOCK_StructInit():
1c002e70:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002e74:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002e78:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002e7c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002e80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e84:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c002e88:	2980018d 	st.w	$r13,$r12,0
1c002e8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e90:	0282000d 	addi.w	$r13,$r0,128(0x80)
1c002e94:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002e98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e9c:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c002ea0:	2980218d 	st.w	$r13,$r12,8(0x8)
1c002ea4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ea8:	29803180 	st.w	$r0,$r12,12(0xc)
1c002eac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002eb0:	29804180 	st.w	$r0,$r12,16(0x10)
1c002eb4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002eb8:	29805180 	st.w	$r0,$r12,20(0x14)
1c002ebc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ec0:	29806180 	st.w	$r0,$r12,24(0x18)
1c002ec4:	03400000 	andi	$r0,$r0,0x0
1c002ec8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002ecc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002ed0:	4c000020 	jirl	$r0,$r1,0

1c002ed4 <CLOCK_Init>:
CLOCK_Init():
1c002ed4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002ed8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002edc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002ee0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002ee4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002ee8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002eec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ef0:	2880018e 	ld.w	$r14,$r12,0
1c002ef4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ef8:	02b3fc0d 	addi.w	$r13,$r0,-769(0xcff)
1c002efc:	0014b5cd 	and	$r13,$r14,$r13
1c002f00:	2980018d 	st.w	$r13,$r12,0
1c002f04:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f08:	2880018e 	ld.w	$r14,$r12,0
1c002f0c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f10:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c002f14:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f18:	001535cd 	or	$r13,$r14,$r13
1c002f1c:	2980018d 	st.w	$r13,$r12,0
1c002f20:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f24:	2880018e 	ld.w	$r14,$r12,0
1c002f28:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f2c:	02bfbc0d 	addi.w	$r13,$r0,-17(0xfef)
1c002f30:	0014b5cd 	and	$r13,$r14,$r13
1c002f34:	2980018d 	st.w	$r13,$r12,0
1c002f38:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f3c:	2880018e 	ld.w	$r14,$r12,0
1c002f40:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f44:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c002f48:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f4c:	001535cd 	or	$r13,$r14,$r13
1c002f50:	2980018d 	st.w	$r13,$r12,0
1c002f54:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f58:	2880018e 	ld.w	$r14,$r12,0
1c002f5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f60:	15ffffed 	lu12i.w	$r13,-1(0xfffff)
1c002f64:	039ffdad 	ori	$r13,$r13,0x7ff
1c002f68:	0014b5cd 	and	$r13,$r14,$r13
1c002f6c:	2980018d 	st.w	$r13,$r12,0
1c002f70:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f74:	2880018e 	ld.w	$r14,$r12,0
1c002f78:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f7c:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c002f80:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f84:	001535cd 	or	$r13,$r14,$r13
1c002f88:	2980018d 	st.w	$r13,$r12,0
1c002f8c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f90:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002f94:	00150184 	move	$r4,$r12
1c002f98:	57fdbfff 	bl	-580(0xffffdbc) # 1c002d54 <CLOCK_HSEConfig>
1c002f9c:	0015008d 	move	$r13,$r4
1c002fa0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002fa4:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002fb0 <CLOCK_Init+0xdc>
1c002fa8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002fac:	50015000 	b	336(0x150) # 1c0030fc <CLOCK_Init+0x228>
1c002fb0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002fb4:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c002fb8:	00150184 	move	$r4,$r12
1c002fbc:	57fe4fff 	bl	-436(0xffffe4c) # 1c002e08 <CLOCK_LSEConfig>
1c002fc0:	0015008d 	move	$r13,$r4
1c002fc4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002fc8:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002fd4 <CLOCK_Init+0x100>
1c002fcc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002fd0:	50012c00 	b	300(0x12c) # 1c0030fc <CLOCK_Init+0x228>
1c002fd4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002fd8:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002fdc:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002fe0:	5800fdac 	beq	$r13,$r12,252(0xfc) # 1c0030dc <CLOCK_Init+0x208>
1c002fe4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002fe8:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c002fec:	4000a180 	beqz	$r12,160(0xa0) # 1c00308c <CLOCK_Init+0x1b8>
1c002ff0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ff4:	2880018e 	ld.w	$r14,$r12,0
1c002ff8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ffc:	15efffed 	lu12i.w	$r13,-32769(0xf7fff)
1c003000:	03bffdad 	ori	$r13,$r13,0xfff
1c003004:	0014b5cd 	and	$r13,$r14,$r13
1c003008:	2980018d 	st.w	$r13,$r12,0
1c00300c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003010:	2880018e 	ld.w	$r14,$r12,0
1c003014:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003018:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c00301c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003020:	001535cd 	or	$r13,$r14,$r13
1c003024:	2980018d 	st.w	$r13,$r12,0
1c003028:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c00302c:	0386c18c 	ori	$r12,$r12,0x1b0
1c003030:	2880018c 	ld.w	$r12,$r12,0
1c003034:	40004180 	beqz	$r12,64(0x40) # 1c003074 <CLOCK_Init+0x1a0>
1c003038:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c00303c:	0386c18c 	ori	$r12,$r12,0x1b0
1c003040:	2880018c 	ld.w	$r12,$r12,0
1c003044:	0040898e 	slli.w	$r14,$r12,0x2
1c003048:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00304c:	002031cd 	div.w	$r13,$r14,$r12
1c003050:	5c000980 	bne	$r12,$r0,8(0x8) # 1c003058 <CLOCK_Init+0x184>
1c003054:	002a0007 	break	0x7
1c003058:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c00305c:	001c31ac 	mul.w	$r12,$r13,$r12
1c003060:	0015018d 	move	$r13,$r12
1c003064:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003068:	02bf118c 	addi.w	$r12,$r12,-60(0xfc4)
1c00306c:	2980018d 	st.w	$r13,$r12,0
1c003070:	50008000 	b	128(0x80) # 1c0030f0 <CLOCK_Init+0x21c>
1c003074:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003078:	02bed18c 	addi.w	$r12,$r12,-76(0xfb4)
1c00307c:	1401458d 	lu12i.w	$r13,2604(0xa2c)
1c003080:	038fe1ad 	ori	$r13,$r13,0x3f8
1c003084:	2980018d 	st.w	$r13,$r12,0
1c003088:	50006800 	b	104(0x68) # 1c0030f0 <CLOCK_Init+0x21c>
1c00308c:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c003090:	0386c18c 	ori	$r12,$r12,0x1b0
1c003094:	2880018c 	ld.w	$r12,$r12,0
1c003098:	40002d80 	beqz	$r12,44(0x2c) # 1c0030c4 <CLOCK_Init+0x1f0>
1c00309c:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c0030a0:	0386c18c 	ori	$r12,$r12,0x1b0
1c0030a4:	2880018d 	ld.w	$r13,$r12,0
1c0030a8:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c0030ac:	001c31ac 	mul.w	$r12,$r13,$r12
1c0030b0:	0015018d 	move	$r13,$r12
1c0030b4:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0030b8:	02bdd18c 	addi.w	$r12,$r12,-140(0xf74)
1c0030bc:	2980018d 	st.w	$r13,$r12,0
1c0030c0:	50003000 	b	48(0x30) # 1c0030f0 <CLOCK_Init+0x21c>
1c0030c4:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0030c8:	02bd918c 	addi.w	$r12,$r12,-156(0xf64)
1c0030cc:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c0030d0:	038801ad 	ori	$r13,$r13,0x200
1c0030d4:	2980018d 	st.w	$r13,$r12,0
1c0030d8:	50001800 	b	24(0x18) # 1c0030f0 <CLOCK_Init+0x21c>
1c0030dc:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0030e0:	02bd318c 	addi.w	$r12,$r12,-180(0xf4c)
1c0030e4:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c0030e8:	038801ad 	ori	$r13,$r13,0x200
1c0030ec:	2980018d 	st.w	$r13,$r12,0
1c0030f0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0030f4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0030f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0030fc:	00150184 	move	$r4,$r12
1c003100:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003104:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003108:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00310c:	4c000020 	jirl	$r0,$r1,0

1c003110 <SystemClockInit>:
SystemClockInit():
1c003110:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003114:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003118:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00311c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003120:	29bf52c0 	st.w	$r0,$r22,-44(0xfd4)
1c003124:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c003128:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c00312c:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c003130:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c003134:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003138:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00313c:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003140:	00150184 	move	$r4,$r12
1c003144:	57fd2fff 	bl	-724(0xffffd2c) # 1c002e70 <CLOCK_StructInit>
1c003148:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c00314c:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c003150:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c003154:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c003158:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c00315c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c003160:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c003164:	0284000c 	addi.w	$r12,$r0,256(0x100)
1c003168:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00316c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003170:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003174:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003178:	00150184 	move	$r4,$r12
1c00317c:	57fd5bff 	bl	-680(0xffffd58) # 1c002ed4 <CLOCK_Init>
1c003180:	0015008d 	move	$r13,$r4
1c003184:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003188:	58000dac 	beq	$r13,$r12,12(0xc) # 1c003194 <SystemClockInit+0x84>
1c00318c:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c003190:	50000800 	b	8(0x8) # 1c003198 <SystemClockInit+0x88>
1c003194:	0015000c 	move	$r12,$r0
1c003198:	00150184 	move	$r4,$r12
1c00319c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0031a0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0031a4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0031a8:	4c000020 	jirl	$r0,$r1,0

1c0031ac <IsGlobalIntOpen>:
IsGlobalIntOpen():
1c0031ac:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0031b0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0031b4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0031b8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0031bc:	0400000c 	csrrd	$r12,0x0
1c0031c0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0031c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0031c8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0031cc:	0340118c 	andi	$r12,$r12,0x4
1c0031d0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0031d4:	00150184 	move	$r4,$r12
1c0031d8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0031dc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0031e0:	4c000020 	jirl	$r0,$r1,0

1c0031e4 <DisableInt>:
DisableInt():
1c0031e4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0031e8:	29803076 	st.w	$r22,$r3,12(0xc)
1c0031ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0031f0:	0380100c 	ori	$r12,$r0,0x4
1c0031f4:	04000180 	csrxchg	$r0,$r12,0x0
1c0031f8:	03400000 	andi	$r0,$r0,0x0
1c0031fc:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003200:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003204:	4c000020 	jirl	$r0,$r1,0

1c003208 <EnableInt>:
EnableInt():
1c003208:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00320c:	29803076 	st.w	$r22,$r3,12(0xc)
1c003210:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003214:	0380100c 	ori	$r12,$r0,0x4
1c003218:	0400018c 	csrxchg	$r12,$r12,0x0
1c00321c:	03400000 	andi	$r0,$r0,0x0
1c003220:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003224:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003228:	4c000020 	jirl	$r0,$r1,0

1c00322c <Set_Timer_stop>:
Set_Timer_stop():
1c00322c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003230:	29803076 	st.w	$r22,$r3,12(0xc)
1c003234:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003238:	04010420 	csrwr	$r0,0x41
1c00323c:	03400000 	andi	$r0,$r0,0x0
1c003240:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003244:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003248:	4c000020 	jirl	$r0,$r1,0

1c00324c <Set_Timer_clear>:
Set_Timer_clear():
1c00324c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003250:	29803076 	st.w	$r22,$r3,12(0xc)
1c003254:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003258:	0380040c 	ori	$r12,$r0,0x1
1c00325c:	0401102c 	csrwr	$r12,0x44
1c003260:	03400000 	andi	$r0,$r0,0x0
1c003264:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003268:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00326c:	4c000020 	jirl	$r0,$r1,0

1c003270 <Wake_Set>:
Wake_Set():
1c003270:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003274:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003278:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00327c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003280:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003284:	40006980 	beqz	$r12,104(0x68) # 1c0032ec <Wake_Set+0x7c>
1c003288:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00328c:	0040a18c 	slli.w	$r12,$r12,0x8
1c003290:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003294:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003298:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00329c:	0380218c 	ori	$r12,$r12,0x8
1c0032a0:	2880018d 	ld.w	$r13,$r12,0
1c0032a4:	14001fec 	lu12i.w	$r12,255(0xff)
1c0032a8:	03bffd8c 	ori	$r12,$r12,0xfff
1c0032ac:	0014b1ac 	and	$r12,$r13,$r12
1c0032b0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0032b4:	001031ac 	add.w	$r12,$r13,$r12
1c0032b8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0032bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032c0:	0380318c 	ori	$r12,$r12,0xc
1c0032c4:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0032c8:	2980018d 	st.w	$r13,$r12,0
1c0032cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032d0:	0380118c 	ori	$r12,$r12,0x4
1c0032d4:	2880018d 	ld.w	$r13,$r12,0
1c0032d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032dc:	0380118c 	ori	$r12,$r12,0x4
1c0032e0:	038601ad 	ori	$r13,$r13,0x180
1c0032e4:	2980018d 	st.w	$r13,$r12,0
1c0032e8:	50002400 	b	36(0x24) # 1c00330c <Wake_Set+0x9c>
1c0032ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032f0:	0380118c 	ori	$r12,$r12,0x4
1c0032f4:	2880018e 	ld.w	$r14,$r12,0
1c0032f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032fc:	0380118c 	ori	$r12,$r12,0x4
1c003300:	02b9fc0d 	addi.w	$r13,$r0,-385(0xe7f)
1c003304:	0014b5cd 	and	$r13,$r14,$r13
1c003308:	2980018d 	st.w	$r13,$r12,0
1c00330c:	03400000 	andi	$r0,$r0,0x0
1c003310:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003314:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003318:	4c000020 	jirl	$r0,$r1,0

1c00331c <PMU_GetRstRrc>:
PMU_GetRstRrc():
1c00331c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003320:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003324:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003328:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00332c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003330:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003334:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003338:	0014b1ac 	and	$r12,$r13,$r12
1c00333c:	44000d80 	bnez	$r12,12(0xc) # 1c003348 <PMU_GetRstRrc+0x2c>
1c003340:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003344:	50003000 	b	48(0x30) # 1c003374 <PMU_GetRstRrc+0x58>
1c003348:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00334c:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003350:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003354:	0014b1ad 	and	$r13,$r13,$r12
1c003358:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c00335c:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c00336c <PMU_GetRstRrc+0x50>
1c003360:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c003364:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003368:	50000c00 	b	12(0xc) # 1c003374 <PMU_GetRstRrc+0x58>
1c00336c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003370:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003374:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003378:	00150184 	move	$r4,$r12
1c00337c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003380:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003384:	4c000020 	jirl	$r0,$r1,0

1c003388 <PMU_GetBootSpiStatus>:
PMU_GetBootSpiStatus():
1c003388:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00338c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003390:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003394:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003398:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00339c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0033a0:	0380198c 	ori	$r12,$r12,0x6
1c0033a4:	2a00018c 	ld.bu	$r12,$r12,0
1c0033a8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0033ac:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0033b0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0033b4:	0340058c 	andi	$r12,$r12,0x1
1c0033b8:	40000d80 	beqz	$r12,12(0xc) # 1c0033c4 <PMU_GetBootSpiStatus+0x3c>
1c0033bc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0033c0:	50000800 	b	8(0x8) # 1c0033c8 <PMU_GetBootSpiStatus+0x40>
1c0033c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0033c8:	00150184 	move	$r4,$r12
1c0033cc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0033d0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0033d4:	4c000020 	jirl	$r0,$r1,0

1c0033d8 <ls1x_logo>:
ls1x_logo():
1c0033d8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0033dc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0033e0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0033e4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0033e8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0033ec:	02beb084 	addi.w	$r4,$r4,-84(0xfac)
1c0033f0:	57e7a7ff 	bl	-6236(0xfffe7a4) # 1c001b94 <myprintf>
1c0033f4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0033f8:	02be9084 	addi.w	$r4,$r4,-92(0xfa4)
1c0033fc:	57e79bff 	bl	-6248(0xfffe798) # 1c001b94 <myprintf>
1c003400:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003404:	02bff084 	addi.w	$r4,$r4,-4(0xffc)
1c003408:	57e78fff 	bl	-6260(0xfffe78c) # 1c001b94 <myprintf>
1c00340c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003410:	02815084 	addi.w	$r4,$r4,84(0x54)
1c003414:	57e783ff 	bl	-6272(0xfffe780) # 1c001b94 <myprintf>
1c003418:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00341c:	0282b084 	addi.w	$r4,$r4,172(0xac)
1c003420:	57e777ff 	bl	-6284(0xfffe774) # 1c001b94 <myprintf>
1c003424:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003428:	02841084 	addi.w	$r4,$r4,260(0x104)
1c00342c:	57e76bff 	bl	-6296(0xfffe768) # 1c001b94 <myprintf>
1c003430:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003434:	02857084 	addi.w	$r4,$r4,348(0x15c)
1c003438:	57e75fff 	bl	-6308(0xfffe75c) # 1c001b94 <myprintf>
1c00343c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003440:	0286d084 	addi.w	$r4,$r4,436(0x1b4)
1c003444:	57e753ff 	bl	-6320(0xfffe750) # 1c001b94 <myprintf>
1c003448:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00344c:	02883084 	addi.w	$r4,$r4,524(0x20c)
1c003450:	57e747ff 	bl	-6332(0xfffe744) # 1c001b94 <myprintf>
1c003454:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003458:	02899084 	addi.w	$r4,$r4,612(0x264)
1c00345c:	57e73bff 	bl	-6344(0xfffe738) # 1c001b94 <myprintf>
1c003460:	03400000 	andi	$r0,$r0,0x0
1c003464:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003468:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00346c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003470:	4c000020 	jirl	$r0,$r1,0

1c003474 <get_count>:
get_count():
1c003474:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003478:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00347c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003480:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003484:	0000600c 	rdtimel.w	$r12,$r0
1c003488:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00348c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003490:	00150184 	move	$r4,$r12
1c003494:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003498:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00349c:	4c000020 	jirl	$r0,$r1,0

1c0034a0 <open_count>:
open_count():
1c0034a0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0034a4:	29803076 	st.w	$r22,$r3,12(0xc)
1c0034a8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0034ac:	0380400c 	ori	$r12,$r0,0x10
1c0034b0:	0402bd80 	csrxchg	$r0,$r12,0xaf
1c0034b4:	03400000 	andi	$r0,$r0,0x0
1c0034b8:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0034bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0034c0:	4c000020 	jirl	$r0,$r1,0

1c0034c4 <start_count>:
start_count():
1c0034c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0034c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0034cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0034d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0034d4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0034d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034dc:	29800180 	st.w	$r0,$r12,0
1c0034e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034e4:	29801180 	st.w	$r0,$r12,4(0x4)
1c0034e8:	57ff8fff 	bl	-116(0xfffff8c) # 1c003474 <get_count>
1c0034ec:	0015008d 	move	$r13,$r4
1c0034f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034f4:	2980018d 	st.w	$r13,$r12,0
1c0034f8:	03400000 	andi	$r0,$r0,0x0
1c0034fc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003500:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003504:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003508:	4c000020 	jirl	$r0,$r1,0

1c00350c <stop_count>:
stop_count():
1c00350c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003510:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003514:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003518:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00351c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003520:	57ff57ff 	bl	-172(0xfffff54) # 1c003474 <get_count>
1c003524:	0015008d 	move	$r13,$r4
1c003528:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00352c:	2980118d 	st.w	$r13,$r12,4(0x4)
1c003530:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003534:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003538:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00353c:	2880018c 	ld.w	$r12,$r12,0
1c003540:	68001dac 	bltu	$r13,$r12,28(0x1c) # 1c00355c <stop_count+0x50>
1c003544:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003548:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c00354c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003550:	2880018c 	ld.w	$r12,$r12,0
1c003554:	001131ac 	sub.w	$r12,$r13,$r12
1c003558:	50002800 	b	40(0x28) # 1c003580 <stop_count+0x74>
1c00355c:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c003560:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003564:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003568:	2880018c 	ld.w	$r12,$r12,0
1c00356c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003570:	001131ad 	sub.w	$r13,$r13,$r12
1c003574:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003578:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c00357c:	001031ac 	add.w	$r12,$r13,$r12
1c003580:	00150184 	move	$r4,$r12
1c003584:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003588:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00358c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003590:	4c000020 	jirl	$r0,$r1,0

1c003594 <delay_cycle>:
delay_cycle():
1c003594:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003598:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00359c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0035a0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0035a4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0035a8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0035ac:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0035b0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0035b4:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c0035b8:	00150184 	move	$r4,$r12
1c0035bc:	57ff0bff 	bl	-248(0xfffff08) # 1c0034c4 <start_count>
1c0035c0:	50001400 	b	20(0x14) # 1c0035d4 <delay_cycle+0x40>
1c0035c4:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c0035c8:	00150184 	move	$r4,$r12
1c0035cc:	57ff43ff 	bl	-192(0xfffff40) # 1c00350c <stop_count>
1c0035d0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0035d4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0035d8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0035dc:	6bffe9ac 	bltu	$r13,$r12,-24(0x3ffe8) # 1c0035c4 <delay_cycle+0x30>
1c0035e0:	03400000 	andi	$r0,$r0,0x0
1c0035e4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0035e8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0035ec:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0035f0:	4c000020 	jirl	$r0,$r1,0

1c0035f4 <delay_us>:
delay_us():
1c0035f4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0035f8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0035fc:	29806076 	st.w	$r22,$r3,24(0x18)
1c003600:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003604:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003608:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00360c:	00408d8c 	slli.w	$r12,$r12,0x3
1c003610:	00150184 	move	$r4,$r12
1c003614:	57ff83ff 	bl	-128(0xfffff80) # 1c003594 <delay_cycle>
1c003618:	03400000 	andi	$r0,$r0,0x0
1c00361c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003620:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003624:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003628:	4c000020 	jirl	$r0,$r1,0

1c00362c <delay_ms>:
delay_ms():
1c00362c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003630:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003634:	29806076 	st.w	$r22,$r3,24(0x18)
1c003638:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00363c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003640:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003644:	1400002c 	lu12i.w	$r12,1(0x1)
1c003648:	03bd018c 	ori	$r12,$r12,0xf40
1c00364c:	001c31ac 	mul.w	$r12,$r13,$r12
1c003650:	00150184 	move	$r4,$r12
1c003654:	57ff43ff 	bl	-192(0xfffff40) # 1c003594 <delay_cycle>
1c003658:	03400000 	andi	$r0,$r0,0x0
1c00365c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003660:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003664:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003668:	4c000020 	jirl	$r0,$r1,0

1c00366c <memset>:
memset():
1c00366c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003670:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003674:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003678:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00367c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c003680:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c003684:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003688:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00368c:	50001c00 	b	28(0x1c) # 1c0036a8 <memset+0x3c>
1c003690:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003694:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c003698:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c00369c:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0036a0:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0036a4:	2900018d 	st.b	$r13,$r12,0
1c0036a8:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0036ac:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0036b0:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0036b4:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c003690 <memset+0x24>
1c0036b8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0036bc:	00150184 	move	$r4,$r12
1c0036c0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0036c4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0036c8:	4c000020 	jirl	$r0,$r1,0

1c0036cc <strcpy>:
strcpy():
1c0036cc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0036d0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0036d4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0036d8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0036dc:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0036e0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0036e4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0036e8:	03400000 	andi	$r0,$r0,0x0
1c0036ec:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0036f0:	028005ac 	addi.w	$r12,$r13,1(0x1)
1c0036f4:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0036f8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0036fc:	0280058e 	addi.w	$r14,$r12,1(0x1)
1c003700:	29bf72ce 	st.w	$r14,$r22,-36(0xfdc)
1c003704:	280001ad 	ld.b	$r13,$r13,0
1c003708:	2900018d 	st.b	$r13,$r12,0
1c00370c:	2800018c 	ld.b	$r12,$r12,0
1c003710:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c0036ec <strcpy+0x20>
1c003714:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003718:	00150184 	move	$r4,$r12
1c00371c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003720:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003724:	4c000020 	jirl	$r0,$r1,0

1c003728 <strlen>:
strlen():
1c003728:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00372c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003730:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003734:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003738:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00373c:	50001000 	b	16(0x10) # 1c00374c <strlen+0x24>
1c003740:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003744:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003748:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00374c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003750:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c003754:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c003758:	2800018c 	ld.b	$r12,$r12,0
1c00375c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003740 <strlen+0x18>
1c003760:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003764:	00150184 	move	$r4,$r12
1c003768:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00376c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003770:	4c000020 	jirl	$r0,$r1,0

1c003774 <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c003774:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003778:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00377c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003780:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003784:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c003788:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00378c:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c003790:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003794:	001531ad 	or	$r13,$r13,$r12
1c003798:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00379c:	2980318d 	st.w	$r13,$r12,12(0xc)
1c0037a0:	03400000 	andi	$r0,$r0,0x0
1c0037a4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0037a8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0037ac:	4c000020 	jirl	$r0,$r1,0

1c0037b0 <WDG_getOddValue>:
WDG_getOddValue():
1c0037b0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0037b4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0037b8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0037bc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0037c0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0037c4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0037c8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0037cc:	50003800 	b	56(0x38) # 1c003804 <WDG_getOddValue+0x54>
1c0037d0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0037d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037d8:	001731ac 	sll.w	$r12,$r13,$r12
1c0037dc:	0015018d 	move	$r13,$r12
1c0037e0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0037e4:	0014b1ac 	and	$r12,$r13,$r12
1c0037e8:	40001180 	beqz	$r12,16(0x10) # 1c0037f8 <WDG_getOddValue+0x48>
1c0037ec:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0037f0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0037f4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0037f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037fc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003800:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003804:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003808:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c00380c:	67ffc58d 	bge	$r12,$r13,-60(0x3ffc4) # 1c0037d0 <WDG_getOddValue+0x20>
1c003810:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003814:	0340058c 	andi	$r12,$r12,0x1
1c003818:	44000d80 	bnez	$r12,12(0xc) # 1c003824 <WDG_getOddValue+0x74>
1c00381c:	1400010c 	lu12i.w	$r12,8(0x8)
1c003820:	50000800 	b	8(0x8) # 1c003828 <WDG_getOddValue+0x78>
1c003824:	0015000c 	move	$r12,$r0
1c003828:	00150184 	move	$r4,$r12
1c00382c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003830:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003834:	4c000020 	jirl	$r0,$r1,0

1c003838 <WDG_SetWatchDog>:
WDG_SetWatchDog():
1c003838:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00383c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003840:	29806076 	st.w	$r22,$r3,24(0x18)
1c003844:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003848:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00384c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003850:	140000ec 	lu12i.w	$r12,7(0x7)
1c003854:	03bffd8c 	ori	$r12,$r12,0xfff
1c003858:	0014b1ac 	and	$r12,$r13,$r12
1c00385c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003860:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c003864:	57ff4fff 	bl	-180(0xfffff4c) # 1c0037b0 <WDG_getOddValue>
1c003868:	0015008c 	move	$r12,$r4
1c00386c:	0015018d 	move	$r13,$r12
1c003870:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003874:	0015358c 	or	$r12,$r12,$r13
1c003878:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00387c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003880:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c003884:	0396a9ad 	ori	$r13,$r13,0x5aa
1c003888:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c00388c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003890:	0014300c 	nor	$r12,$r0,$r12
1c003894:	0040c18c 	slli.w	$r12,$r12,0x10
1c003898:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00389c:	001531ac 	or	$r12,$r13,$r12
1c0038a0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0038a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0038a8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0038ac:	2980c18d 	st.w	$r13,$r12,48(0x30)
1c0038b0:	03400000 	andi	$r0,$r0,0x0
1c0038b4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0038b8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0038bc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0038c0:	4c000020 	jirl	$r0,$r1,0

1c0038c4 <WDG_DogFeed>:
WDG_DogFeed():
1c0038c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0038c8:	29803076 	st.w	$r22,$r3,12(0xc)
1c0038cc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0038d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0038d4:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c0038d8:	0396a9ad 	ori	$r13,$r13,0x5aa
1c0038dc:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c0038e0:	03400000 	andi	$r0,$r0,0x0
1c0038e4:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0038e8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0038ec:	4c000020 	jirl	$r0,$r1,0

1c0038f0 <WdgInit>:
WdgInit():
1c0038f0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0038f4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0038f8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0038fc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003900:	150000ec 	lu12i.w	$r12,-524281(0x80007)
1c003904:	03bffd84 	ori	$r4,$r12,0xfff
1c003908:	57ff33ff 	bl	-208(0xfffff30) # 1c003838 <WDG_SetWatchDog>
1c00390c:	03400000 	andi	$r0,$r0,0x0
1c003910:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003914:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003918:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00391c:	4c000020 	jirl	$r0,$r1,0

1c003920 <Adc_powerOn>:
Adc_powerOn():
1c003920:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003924:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003928:	29806076 	st.w	$r22,$r3,24(0x18)
1c00392c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003930:	57f87fff 	bl	-1924(0xffff87c) # 1c0031ac <IsGlobalIntOpen>
1c003934:	0015008c 	move	$r12,$r4
1c003938:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00393c:	57f8abff 	bl	-1880(0xffff8a8) # 1c0031e4 <DisableInt>
1c003940:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c003944:	288001ac 	ld.w	$r12,$r13,0
1c003948:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c00394c:	007041cc 	bstrins.w	$r12,$r14,0x10,0x10
1c003950:	298001ac 	st.w	$r12,$r13,0
1c003954:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003958:	40000980 	beqz	$r12,8(0x8) # 1c003960 <Adc_powerOn+0x40>
1c00395c:	57f8afff 	bl	-1876(0xffff8ac) # 1c003208 <EnableInt>
1c003960:	03400000 	andi	$r0,$r0,0x0
1c003964:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003968:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00396c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003970:	4c000020 	jirl	$r0,$r1,0

1c003974 <Adc_open>:
Adc_open():
1c003974:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003978:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00397c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003980:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003984:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003988:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00398c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003990:	001731ac 	sll.w	$r12,$r13,$r12
1c003994:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003998:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00399c:	0340058c 	andi	$r12,$r12,0x1
1c0039a0:	40003580 	beqz	$r12,52(0x34) # 1c0039d4 <Adc_open+0x60>
1c0039a4:	57f80bff 	bl	-2040(0xffff808) # 1c0031ac <IsGlobalIntOpen>
1c0039a8:	0015008c 	move	$r12,$r4
1c0039ac:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0039b0:	57f837ff 	bl	-1996(0xffff834) # 1c0031e4 <DisableInt>
1c0039b4:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c0039b8:	288001ac 	ld.w	$r12,$r13,0
1c0039bc:	0071440c 	bstrins.w	$r12,$r0,0x11,0x11
1c0039c0:	298001ac 	st.w	$r12,$r13,0
1c0039c4:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c0039c8:	40004980 	beqz	$r12,72(0x48) # 1c003a10 <Adc_open+0x9c>
1c0039cc:	57f83fff 	bl	-1988(0xffff83c) # 1c003208 <EnableInt>
1c0039d0:	50004000 	b	64(0x40) # 1c003a10 <Adc_open+0x9c>
1c0039d4:	57f7dbff 	bl	-2088(0xffff7d8) # 1c0031ac <IsGlobalIntOpen>
1c0039d8:	0015008c 	move	$r12,$r4
1c0039dc:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c0039e0:	57f807ff 	bl	-2044(0xffff804) # 1c0031e4 <DisableInt>
1c0039e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039e8:	0044918c 	srli.w	$r12,$r12,0x4
1c0039ec:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c0039f0:	03403d8c 	andi	$r12,$r12,0xf
1c0039f4:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c0039f8:	288001ac 	ld.w	$r12,$r13,0
1c0039fc:	007751cc 	bstrins.w	$r12,$r14,0x17,0x14
1c003a00:	298001ac 	st.w	$r12,$r13,0
1c003a04:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c003a08:	40000980 	beqz	$r12,8(0x8) # 1c003a10 <Adc_open+0x9c>
1c003a0c:	57f7ffff 	bl	-2052(0xffff7fc) # 1c003208 <EnableInt>
1c003a10:	03400000 	andi	$r0,$r0,0x0
1c003a14:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003a18:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003a1c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003a20:	4c000020 	jirl	$r0,$r1,0

1c003a24 <Adc_Measure>:
Adc_Measure():
1c003a24:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003a28:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003a2c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003a30:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003a34:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c003a38:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c003a3c:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c003a40:	50008400 	b	132(0x84) # 1c003ac4 <Adc_Measure+0xa0>
1c003a44:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003a48:	0381b18c 	ori	$r12,$r12,0x6c
1c003a4c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c003a50:	038401ad 	ori	$r13,$r13,0x100
1c003a54:	2980018d 	st.w	$r13,$r12,0
1c003a58:	03400000 	andi	$r0,$r0,0x0
1c003a5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003a60:	0381b18c 	ori	$r12,$r12,0x6c
1c003a64:	2880018c 	ld.w	$r12,$r12,0
1c003a68:	0344018c 	andi	$r12,$r12,0x100
1c003a6c:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c003a5c <Adc_Measure+0x38>
1c003a70:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003a74:	0381c18c 	ori	$r12,$r12,0x70
1c003a78:	2880018c 	ld.w	$r12,$r12,0
1c003a7c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003a80:	037ffd8c 	andi	$r12,$r12,0xfff
1c003a84:	297fa2cc 	st.h	$r12,$r22,-24(0xfe8)
1c003a88:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c003a8c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c003a90:	6c00298d 	bgeu	$r12,$r13,40(0x28) # 1c003ab8 <Adc_Measure+0x94>
1c003a94:	2a7faacd 	ld.hu	$r13,$r22,-22(0xfea)
1c003a98:	2a7fa2cc 	ld.hu	$r12,$r22,-24(0xfe8)
1c003a9c:	001031ac 	add.w	$r12,$r13,$r12
1c003aa0:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c003aa4:	2a7fa2cd 	ld.hu	$r13,$r22,-24(0xfe8)
1c003aa8:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c003aac:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c003ab8 <Adc_Measure+0x94>
1c003ab0:	2a7fa2cc 	ld.hu	$r12,$r22,-24(0xfe8)
1c003ab4:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c003ab8:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003abc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003ac0:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003ac4:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c003ac8:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c003acc:	6fff798d 	bgeu	$r12,$r13,-136(0x3ff78) # 1c003a44 <Adc_Measure+0x20>
1c003ad0:	2a7faacd 	ld.hu	$r13,$r22,-22(0xfea)
1c003ad4:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c003ad8:	001131ad 	sub.w	$r13,$r13,$r12
1c003adc:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c003ae0:	002031ae 	div.w	$r14,$r13,$r12
1c003ae4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c003aec <Adc_Measure+0xc8>
1c003ae8:	002a0007 	break	0x7
1c003aec:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c003af0:	00150184 	move	$r4,$r12
1c003af4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003af8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003afc:	4c000020 	jirl	$r0,$r1,0

1c003b00 <Adc_getVoltage>:
Adc_getVoltage():
1c003b00:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003b04:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003b08:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003b0c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003b10:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003b14:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c003b18:	57ff0fff 	bl	-244(0xfffff0c) # 1c003a24 <Adc_Measure>
1c003b1c:	0015008c 	move	$r12,$r4
1c003b20:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003b24:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c003b28:	57feffff 	bl	-260(0xffffefc) # 1c003a24 <Adc_Measure>
1c003b2c:	0015008c 	move	$r12,$r4
1c003b30:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003b34:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003b38:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c003b3c:	001c31ad 	mul.w	$r13,$r13,$r12
1c003b40:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003b44:	002131ae 	div.wu	$r14,$r13,$r12
1c003b48:	5c000980 	bne	$r12,$r0,8(0x8) # 1c003b50 <Adc_getVoltage+0x50>
1c003b4c:	002a0007 	break	0x7
1c003b50:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c003b54:	00150184 	move	$r4,$r12
1c003b58:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003b5c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003b60:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003b64:	4c000020 	jirl	$r0,$r1,0

1c003b68 <TOUCH_GetBaseVal>:
TOUCH_GetBaseVal():
1c003b68:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003b6c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003b70:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003b74:	0015008c 	move	$r12,$r4
1c003b78:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003b7c:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003b80:	0040898c 	slli.w	$r12,$r12,0x2
1c003b84:	0015018d 	move	$r13,$r12
1c003b88:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003b8c:	0381018c 	ori	$r12,$r12,0x40
1c003b90:	001031ac 	add.w	$r12,$r13,$r12
1c003b94:	2880018c 	ld.w	$r12,$r12,0
1c003b98:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003b9c:	037ffd8c 	andi	$r12,$r12,0xfff
1c003ba0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003ba4:	00150184 	move	$r4,$r12
1c003ba8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003bac:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003bb0:	4c000020 	jirl	$r0,$r1,0

1c003bb4 <TOUCH_GetCountValue>:
TOUCH_GetCountValue():
1c003bb4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003bb8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003bbc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003bc0:	0015008c 	move	$r12,$r4
1c003bc4:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003bc8:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003bcc:	0040898c 	slli.w	$r12,$r12,0x2
1c003bd0:	0015018d 	move	$r13,$r12
1c003bd4:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003bd8:	0382018c 	ori	$r12,$r12,0x80
1c003bdc:	001031ac 	add.w	$r12,$r13,$r12
1c003be0:	2880018c 	ld.w	$r12,$r12,0
1c003be4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003be8:	037ffd8c 	andi	$r12,$r12,0xfff
1c003bec:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003bf0:	00150184 	move	$r4,$r12
1c003bf4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003bf8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003bfc:	4c000020 	jirl	$r0,$r1,0

1c003c00 <Printf_KeyChannel>:
Printf_KeyChannel():
1c003c00:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003c04:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003c08:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003c0c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003c10:	0015008c 	move	$r12,$r4
1c003c14:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c003c18:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003c1c:	50003400 	b	52(0x34) # 1c003c50 <Printf_KeyChannel+0x50>
1c003c20:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c003c24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c28:	001831ac 	sra.w	$r12,$r13,$r12
1c003c2c:	0340058c 	andi	$r12,$r12,0x1
1c003c30:	40001580 	beqz	$r12,20(0x14) # 1c003c44 <Printf_KeyChannel+0x44>
1c003c34:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c003c38:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003c3c:	02ab9084 	addi.w	$r4,$r4,-1308(0xae4)
1c003c40:	57df57ff 	bl	-8364(0xfffdf54) # 1c001b94 <myprintf>
1c003c44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c48:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003c4c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003c50:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003c54:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003c58:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c003c20 <Printf_KeyChannel+0x20>
1c003c5c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003c60:	02ab1084 	addi.w	$r4,$r4,-1340(0xac4)
1c003c64:	57df33ff 	bl	-8400(0xfffdf30) # 1c001b94 <myprintf>
1c003c68:	03400000 	andi	$r0,$r0,0x0
1c003c6c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003c70:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003c74:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003c78:	4c000020 	jirl	$r0,$r1,0

1c003c7c <Printf_KeyType>:
Printf_KeyType():
1c003c7c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003c80:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003c84:	29806076 	st.w	$r22,$r3,24(0x18)
1c003c88:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003c8c:	0015008c 	move	$r12,$r4
1c003c90:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003c94:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003c98:	0340058c 	andi	$r12,$r12,0x1
1c003c9c:	40001180 	beqz	$r12,16(0x10) # 1c003cac <Printf_KeyType+0x30>
1c003ca0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003ca4:	02aa1084 	addi.w	$r4,$r4,-1404(0xa84)
1c003ca8:	57deefff 	bl	-8468(0xfffdeec) # 1c001b94 <myprintf>
1c003cac:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003cb0:	0340098c 	andi	$r12,$r12,0x2
1c003cb4:	40001180 	beqz	$r12,16(0x10) # 1c003cc4 <Printf_KeyType+0x48>
1c003cb8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003cbc:	02a9d084 	addi.w	$r4,$r4,-1420(0xa74)
1c003cc0:	57ded7ff 	bl	-8492(0xfffded4) # 1c001b94 <myprintf>
1c003cc4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003cc8:	0340118c 	andi	$r12,$r12,0x4
1c003ccc:	40001180 	beqz	$r12,16(0x10) # 1c003cdc <Printf_KeyType+0x60>
1c003cd0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003cd4:	02a99084 	addi.w	$r4,$r4,-1436(0xa64)
1c003cd8:	57debfff 	bl	-8516(0xfffdebc) # 1c001b94 <myprintf>
1c003cdc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003ce0:	0340218c 	andi	$r12,$r12,0x8
1c003ce4:	40001180 	beqz	$r12,16(0x10) # 1c003cf4 <Printf_KeyType+0x78>
1c003ce8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003cec:	02a96084 	addi.w	$r4,$r4,-1448(0xa58)
1c003cf0:	57dea7ff 	bl	-8540(0xfffdea4) # 1c001b94 <myprintf>
1c003cf4:	03400000 	andi	$r0,$r0,0x0
1c003cf8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003cfc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003d00:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003d04:	4c000020 	jirl	$r0,$r1,0

1c003d08 <Printf_KeyVal>:
Printf_KeyVal():
1c003d08:	02bd4063 	addi.w	$r3,$r3,-176(0xf50)
1c003d0c:	2982b061 	st.w	$r1,$r3,172(0xac)
1c003d10:	2982a076 	st.w	$r22,$r3,168(0xa8)
1c003d14:	0282c076 	addi.w	$r22,$r3,176(0xb0)
1c003d18:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003d1c:	5000d800 	b	216(0xd8) # 1c003df4 <Printf_KeyVal+0xec>
1c003d20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d24:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003d28:	00150184 	move	$r4,$r12
1c003d2c:	57fe8bff 	bl	-376(0xffffe88) # 1c003bb4 <TOUCH_GetCountValue>
1c003d30:	0015008c 	move	$r12,$r4
1c003d34:	0015018d 	move	$r13,$r12
1c003d38:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d3c:	0040898c 	slli.w	$r12,$r12,0x2
1c003d40:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003d44:	001031cc 	add.w	$r12,$r14,$r12
1c003d48:	29bdb18d 	st.w	$r13,$r12,-148(0xf6c)
1c003d4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d50:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003d54:	00150184 	move	$r4,$r12
1c003d58:	57fe13ff 	bl	-496(0xffffe10) # 1c003b68 <TOUCH_GetBaseVal>
1c003d5c:	0015008c 	move	$r12,$r4
1c003d60:	0015018d 	move	$r13,$r12
1c003d64:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d68:	0040898c 	slli.w	$r12,$r12,0x2
1c003d6c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003d70:	001031cc 	add.w	$r12,$r14,$r12
1c003d74:	29be718d 	st.w	$r13,$r12,-100(0xf9c)
1c003d78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d7c:	0040898c 	slli.w	$r12,$r12,0x2
1c003d80:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003d84:	001031ac 	add.w	$r12,$r13,$r12
1c003d88:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003d8c:	40004980 	beqz	$r12,72(0x48) # 1c003dd4 <Printf_KeyVal+0xcc>
1c003d90:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d94:	0040898c 	slli.w	$r12,$r12,0x2
1c003d98:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003d9c:	001031ac 	add.w	$r12,$r13,$r12
1c003da0:	28be718d 	ld.w	$r13,$r12,-100(0xf9c)
1c003da4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003da8:	0040898c 	slli.w	$r12,$r12,0x2
1c003dac:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003db0:	001031cc 	add.w	$r12,$r14,$r12
1c003db4:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003db8:	001131ad 	sub.w	$r13,$r13,$r12
1c003dbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003dc0:	0040898c 	slli.w	$r12,$r12,0x2
1c003dc4:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003dc8:	001031cc 	add.w	$r12,$r14,$r12
1c003dcc:	29bf318d 	st.w	$r13,$r12,-52(0xfcc)
1c003dd0:	50001800 	b	24(0x18) # 1c003de8 <Printf_KeyVal+0xe0>
1c003dd4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003dd8:	0040898c 	slli.w	$r12,$r12,0x2
1c003ddc:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003de0:	001031ac 	add.w	$r12,$r13,$r12
1c003de4:	29bf3180 	st.w	$r0,$r12,-52(0xfcc)
1c003de8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003dec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003df0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003df4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003df8:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003dfc:	67ff258d 	bge	$r12,$r13,-220(0x3ff24) # 1c003d20 <Printf_KeyVal+0x18>
1c003e00:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003e04:	02a53084 	addi.w	$r4,$r4,-1716(0x94c)
1c003e08:	57dd8fff 	bl	-8820(0xfffdd8c) # 1c001b94 <myprintf>
1c003e0c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003e10:	02a5a084 	addi.w	$r4,$r4,-1688(0x968)
1c003e14:	57dd83ff 	bl	-8832(0xfffdd80) # 1c001b94 <myprintf>
1c003e18:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003e1c:	50003400 	b	52(0x34) # 1c003e50 <Printf_KeyVal+0x148>
1c003e20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e24:	0040898c 	slli.w	$r12,$r12,0x2
1c003e28:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003e2c:	001031ac 	add.w	$r12,$r13,$r12
1c003e30:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003e34:	00150185 	move	$r5,$r12
1c003e38:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003e3c:	02a51084 	addi.w	$r4,$r4,-1724(0x944)
1c003e40:	57dd57ff 	bl	-8876(0xfffdd54) # 1c001b94 <myprintf>
1c003e44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e48:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003e4c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003e50:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003e54:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003e58:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003e20 <Printf_KeyVal+0x118>
1c003e5c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003e60:	02a4a084 	addi.w	$r4,$r4,-1752(0x928)
1c003e64:	57dd33ff 	bl	-8912(0xfffdd30) # 1c001b94 <myprintf>
1c003e68:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003e6c:	50003400 	b	52(0x34) # 1c003ea0 <Printf_KeyVal+0x198>
1c003e70:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e74:	0040898c 	slli.w	$r12,$r12,0x2
1c003e78:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003e7c:	001031ac 	add.w	$r12,$r13,$r12
1c003e80:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003e84:	00150185 	move	$r5,$r12
1c003e88:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003e8c:	02a3d084 	addi.w	$r4,$r4,-1804(0x8f4)
1c003e90:	57dd07ff 	bl	-8956(0xfffdd04) # 1c001b94 <myprintf>
1c003e94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e98:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003e9c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003ea0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003ea4:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003ea8:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003e70 <Printf_KeyVal+0x168>
1c003eac:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003eb0:	02a39084 	addi.w	$r4,$r4,-1820(0x8e4)
1c003eb4:	57dce3ff 	bl	-8992(0xfffdce0) # 1c001b94 <myprintf>
1c003eb8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003ebc:	50007400 	b	116(0x74) # 1c003f30 <Printf_KeyVal+0x228>
1c003ec0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ec4:	0040898c 	slli.w	$r12,$r12,0x2
1c003ec8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003ecc:	001031ac 	add.w	$r12,$r13,$r12
1c003ed0:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003ed4:	64002d80 	bge	$r12,$r0,44(0x2c) # 1c003f00 <Printf_KeyVal+0x1f8>
1c003ed8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003edc:	0040898c 	slli.w	$r12,$r12,0x2
1c003ee0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003ee4:	001031ac 	add.w	$r12,$r13,$r12
1c003ee8:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003eec:	00150185 	move	$r5,$r12
1c003ef0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003ef4:	02a2b084 	addi.w	$r4,$r4,-1876(0x8ac)
1c003ef8:	57dc9fff 	bl	-9060(0xfffdc9c) # 1c001b94 <myprintf>
1c003efc:	50002800 	b	40(0x28) # 1c003f24 <Printf_KeyVal+0x21c>
1c003f00:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f04:	0040898c 	slli.w	$r12,$r12,0x2
1c003f08:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003f0c:	001031ac 	add.w	$r12,$r13,$r12
1c003f10:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003f14:	00150185 	move	$r5,$r12
1c003f18:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003f1c:	02a23084 	addi.w	$r4,$r4,-1908(0x88c)
1c003f20:	57dc77ff 	bl	-9100(0xfffdc74) # 1c001b94 <myprintf>
1c003f24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f28:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003f2c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003f30:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003f34:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003f38:	67ff898d 	bge	$r12,$r13,-120(0x3ff88) # 1c003ec0 <Printf_KeyVal+0x1b8>
1c003f3c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003f40:	029f9084 	addi.w	$r4,$r4,2020(0x7e4)
1c003f44:	57dc53ff 	bl	-9136(0xfffdc50) # 1c001b94 <myprintf>
1c003f48:	03400000 	andi	$r0,$r0,0x0
1c003f4c:	2882b061 	ld.w	$r1,$r3,172(0xac)
1c003f50:	2882a076 	ld.w	$r22,$r3,168(0xa8)
1c003f54:	0282c063 	addi.w	$r3,$r3,176(0xb0)
1c003f58:	4c000020 	jirl	$r0,$r1,0

1c003f5c <TIM_GetITStatus>:
TIM_GetITStatus():
1c003f5c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003f60:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003f64:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003f68:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003f6c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003f70:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003f74:	2880018d 	ld.w	$r13,$r12,0
1c003f78:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003f7c:	0014b1ac 	and	$r12,$r13,$r12
1c003f80:	40001180 	beqz	$r12,16(0x10) # 1c003f90 <TIM_GetITStatus+0x34>
1c003f84:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003f88:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003f8c:	50000800 	b	8(0x8) # 1c003f94 <TIM_GetITStatus+0x38>
1c003f90:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003f94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f98:	00150184 	move	$r4,$r12
1c003f9c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003fa0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003fa4:	4c000020 	jirl	$r0,$r1,0

1c003fa8 <TIM_ClearIT>:
TIM_ClearIT():
1c003fa8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003fac:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003fb0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003fb4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003fb8:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003fbc:	2880018e 	ld.w	$r14,$r12,0
1c003fc0:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003fc4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003fc8:	001535cd 	or	$r13,$r14,$r13
1c003fcc:	2980018d 	st.w	$r13,$r12,0
1c003fd0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003fd4:	03800d8c 	ori	$r12,$r12,0x3
1c003fd8:	2a00018c 	ld.bu	$r12,$r12,0
1c003fdc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003fe0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003fe4:	03800d8c 	ori	$r12,$r12,0x3
1c003fe8:	038005ad 	ori	$r13,$r13,0x1
1c003fec:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003ff0:	2900018d 	st.b	$r13,$r12,0
1c003ff4:	03400000 	andi	$r0,$r0,0x0
1c003ff8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003ffc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004000:	4c000020 	jirl	$r0,$r1,0

1c004004 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c004004:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004008:	29803061 	st.w	$r1,$r3,12(0xc)
1c00400c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004010:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004014:	1c000086 	pcaddu12i	$r6,4(0x4)
1c004018:	02a4d0c6 	addi.w	$r6,$r6,-1740(0x934)
1c00401c:	02804805 	addi.w	$r5,$r0,18(0x12)
1c004020:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004024:	029e3084 	addi.w	$r4,$r4,1932(0x78c)
1c004028:	57db6fff 	bl	-9364(0xfffdb6c) # 1c001b94 <myprintf>
1c00402c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004030:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004034:	03808184 	ori	$r4,$r12,0x20
1c004038:	57f73fff 	bl	-2244(0xffff73c) # 1c003774 <EXTI_ClearITPendingBit>
1c00403c:	03400000 	andi	$r0,$r0,0x0
1c004040:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004044:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004048:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00404c:	4c000020 	jirl	$r0,$r1,0

1c004050 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c004050:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004054:	29803061 	st.w	$r1,$r3,12(0xc)
1c004058:	29802076 	st.w	$r22,$r3,8(0x8)
1c00405c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004060:	1c000086 	pcaddu12i	$r6,4(0x4)
1c004064:	02a400c6 	addi.w	$r6,$r6,-1792(0x900)
1c004068:	02805c05 	addi.w	$r5,$r0,23(0x17)
1c00406c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004070:	029d0084 	addi.w	$r4,$r4,1856(0x740)
1c004074:	57db23ff 	bl	-9440(0xfffdb20) # 1c001b94 <myprintf>
1c004078:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00407c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004080:	03808184 	ori	$r4,$r12,0x20
1c004084:	57f6f3ff 	bl	-2320(0xffff6f0) # 1c003774 <EXTI_ClearITPendingBit>
1c004088:	03400000 	andi	$r0,$r0,0x0
1c00408c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004090:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004094:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004098:	4c000020 	jirl	$r0,$r1,0

1c00409c <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c00409c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0040a0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0040a4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0040a8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0040ac:	1c000086 	pcaddu12i	$r6,4(0x4)
1c0040b0:	02a330c6 	addi.w	$r6,$r6,-1844(0x8cc)
1c0040b4:	02807005 	addi.w	$r5,$r0,28(0x1c)
1c0040b8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0040bc:	029bd084 	addi.w	$r4,$r4,1780(0x6f4)
1c0040c0:	57dad7ff 	bl	-9516(0xfffdad4) # 1c001b94 <myprintf>
1c0040c4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0040c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0040cc:	03808184 	ori	$r4,$r12,0x20
1c0040d0:	57f6a7ff 	bl	-2396(0xffff6a4) # 1c003774 <EXTI_ClearITPendingBit>
1c0040d4:	03400000 	andi	$r0,$r0,0x0
1c0040d8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0040dc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0040e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0040e4:	4c000020 	jirl	$r0,$r1,0

1c0040e8 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c0040e8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0040ec:	29803061 	st.w	$r1,$r3,12(0xc)
1c0040f0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0040f4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0040f8:	1c000086 	pcaddu12i	$r6,4(0x4)
1c0040fc:	02a260c6 	addi.w	$r6,$r6,-1896(0x898)
1c004100:	02808405 	addi.w	$r5,$r0,33(0x21)
1c004104:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004108:	029aa084 	addi.w	$r4,$r4,1704(0x6a8)
1c00410c:	57da8bff 	bl	-9592(0xfffda88) # 1c001b94 <myprintf>
1c004110:	02802005 	addi.w	$r5,$r0,8(0x8)
1c004114:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004118:	03808184 	ori	$r4,$r12,0x20
1c00411c:	57f65bff 	bl	-2472(0xffff658) # 1c003774 <EXTI_ClearITPendingBit>
1c004120:	03400000 	andi	$r0,$r0,0x0
1c004124:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004128:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00412c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004130:	4c000020 	jirl	$r0,$r1,0

1c004134 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c004134:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004138:	29803061 	st.w	$r1,$r3,12(0xc)
1c00413c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004140:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004144:	1c000086 	pcaddu12i	$r6,4(0x4)
1c004148:	02a190c6 	addi.w	$r6,$r6,-1948(0x864)
1c00414c:	02809805 	addi.w	$r5,$r0,38(0x26)
1c004150:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004154:	02997084 	addi.w	$r4,$r4,1628(0x65c)
1c004158:	57da3fff 	bl	-9668(0xfffda3c) # 1c001b94 <myprintf>
1c00415c:	02804005 	addi.w	$r5,$r0,16(0x10)
1c004160:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004164:	03808184 	ori	$r4,$r12,0x20
1c004168:	57f60fff 	bl	-2548(0xffff60c) # 1c003774 <EXTI_ClearITPendingBit>
1c00416c:	03400000 	andi	$r0,$r0,0x0
1c004170:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004174:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004178:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00417c:	4c000020 	jirl	$r0,$r1,0

1c004180 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c004180:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004184:	29803061 	st.w	$r1,$r3,12(0xc)
1c004188:	29802076 	st.w	$r22,$r3,8(0x8)
1c00418c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004190:	1c000086 	pcaddu12i	$r6,4(0x4)
1c004194:	02a0c0c6 	addi.w	$r6,$r6,-2000(0x830)
1c004198:	0280ac05 	addi.w	$r5,$r0,43(0x2b)
1c00419c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0041a0:	02984084 	addi.w	$r4,$r4,1552(0x610)
1c0041a4:	57d9f3ff 	bl	-9744(0xfffd9f0) # 1c001b94 <myprintf>
1c0041a8:	02808005 	addi.w	$r5,$r0,32(0x20)
1c0041ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0041b0:	03808184 	ori	$r4,$r12,0x20
1c0041b4:	57f5c3ff 	bl	-2624(0xffff5c0) # 1c003774 <EXTI_ClearITPendingBit>
1c0041b8:	03400000 	andi	$r0,$r0,0x0
1c0041bc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0041c0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0041c4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0041c8:	4c000020 	jirl	$r0,$r1,0

1c0041cc <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c0041cc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0041d0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0041d4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0041d8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0041dc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0041e0:	029ff0c6 	addi.w	$r6,$r6,2044(0x7fc)
1c0041e4:	0280c005 	addi.w	$r5,$r0,48(0x30)
1c0041e8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0041ec:	02971084 	addi.w	$r4,$r4,1476(0x5c4)
1c0041f0:	57d9a7ff 	bl	-9820(0xfffd9a4) # 1c001b94 <myprintf>
1c0041f4:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0041f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0041fc:	03808184 	ori	$r4,$r12,0x20
1c004200:	57f577ff 	bl	-2700(0xffff574) # 1c003774 <EXTI_ClearITPendingBit>
1c004204:	03400000 	andi	$r0,$r0,0x0
1c004208:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00420c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004210:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004214:	4c000020 	jirl	$r0,$r1,0

1c004218 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c004218:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00421c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004220:	29802076 	st.w	$r22,$r3,8(0x8)
1c004224:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004228:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00422c:	029f20c6 	addi.w	$r6,$r6,1992(0x7c8)
1c004230:	0280d405 	addi.w	$r5,$r0,53(0x35)
1c004234:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004238:	0295e084 	addi.w	$r4,$r4,1400(0x578)
1c00423c:	57d95bff 	bl	-9896(0xfffd958) # 1c001b94 <myprintf>
1c004240:	02820005 	addi.w	$r5,$r0,128(0x80)
1c004244:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004248:	03808184 	ori	$r4,$r12,0x20
1c00424c:	57f52bff 	bl	-2776(0xffff528) # 1c003774 <EXTI_ClearITPendingBit>
1c004250:	03400000 	andi	$r0,$r0,0x0
1c004254:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004258:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00425c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004260:	4c000020 	jirl	$r0,$r1,0

1c004264 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c004264:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004268:	29803061 	st.w	$r1,$r3,12(0xc)
1c00426c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004270:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004274:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004278:	029e50c6 	addi.w	$r6,$r6,1940(0x794)
1c00427c:	0280e805 	addi.w	$r5,$r0,58(0x3a)
1c004280:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004284:	0294b084 	addi.w	$r4,$r4,1324(0x52c)
1c004288:	57d90fff 	bl	-9972(0xfffd90c) # 1c001b94 <myprintf>
1c00428c:	02840005 	addi.w	$r5,$r0,256(0x100)
1c004290:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004294:	03808184 	ori	$r4,$r12,0x20
1c004298:	57f4dfff 	bl	-2852(0xffff4dc) # 1c003774 <EXTI_ClearITPendingBit>
1c00429c:	03400000 	andi	$r0,$r0,0x0
1c0042a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0042a4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0042a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0042ac:	4c000020 	jirl	$r0,$r1,0

1c0042b0 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c0042b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0042b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0042b8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0042bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0042c0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0042c4:	029d80c6 	addi.w	$r6,$r6,1888(0x760)
1c0042c8:	0280fc05 	addi.w	$r5,$r0,63(0x3f)
1c0042cc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0042d0:	02938084 	addi.w	$r4,$r4,1248(0x4e0)
1c0042d4:	57d8c3ff 	bl	-10048(0xfffd8c0) # 1c001b94 <myprintf>
1c0042d8:	02880005 	addi.w	$r5,$r0,512(0x200)
1c0042dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0042e0:	03808184 	ori	$r4,$r12,0x20
1c0042e4:	57f493ff 	bl	-2928(0xffff490) # 1c003774 <EXTI_ClearITPendingBit>
1c0042e8:	03400000 	andi	$r0,$r0,0x0
1c0042ec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0042f0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0042f4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0042f8:	4c000020 	jirl	$r0,$r1,0

1c0042fc <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c0042fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004300:	29803061 	st.w	$r1,$r3,12(0xc)
1c004304:	29802076 	st.w	$r22,$r3,8(0x8)
1c004308:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00430c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004310:	029cb0c6 	addi.w	$r6,$r6,1836(0x72c)
1c004314:	02811005 	addi.w	$r5,$r0,68(0x44)
1c004318:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00431c:	02925084 	addi.w	$r4,$r4,1172(0x494)
1c004320:	57d877ff 	bl	-10124(0xfffd874) # 1c001b94 <myprintf>
1c004324:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c004328:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00432c:	03808184 	ori	$r4,$r12,0x20
1c004330:	57f447ff 	bl	-3004(0xffff444) # 1c003774 <EXTI_ClearITPendingBit>
1c004334:	03400000 	andi	$r0,$r0,0x0
1c004338:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00433c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004340:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004344:	4c000020 	jirl	$r0,$r1,0

1c004348 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c004348:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00434c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004350:	29802076 	st.w	$r22,$r3,8(0x8)
1c004354:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004358:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00435c:	029be0c6 	addi.w	$r6,$r6,1784(0x6f8)
1c004360:	02812405 	addi.w	$r5,$r0,73(0x49)
1c004364:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004368:	02912084 	addi.w	$r4,$r4,1096(0x448)
1c00436c:	57d82bff 	bl	-10200(0xfffd828) # 1c001b94 <myprintf>
1c004370:	03a00005 	ori	$r5,$r0,0x800
1c004374:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004378:	03808184 	ori	$r4,$r12,0x20
1c00437c:	57f3fbff 	bl	-3080(0xffff3f8) # 1c003774 <EXTI_ClearITPendingBit>
1c004380:	03400000 	andi	$r0,$r0,0x0
1c004384:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004388:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00438c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004390:	4c000020 	jirl	$r0,$r1,0

1c004394 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c004394:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004398:	29803061 	st.w	$r1,$r3,12(0xc)
1c00439c:	29802076 	st.w	$r22,$r3,8(0x8)
1c0043a0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0043a4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0043a8:	029b10c6 	addi.w	$r6,$r6,1732(0x6c4)
1c0043ac:	02813805 	addi.w	$r5,$r0,78(0x4e)
1c0043b0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0043b4:	028ff084 	addi.w	$r4,$r4,1020(0x3fc)
1c0043b8:	57d7dfff 	bl	-10276(0xfffd7dc) # 1c001b94 <myprintf>
1c0043bc:	14000025 	lu12i.w	$r5,1(0x1)
1c0043c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0043c4:	03808184 	ori	$r4,$r12,0x20
1c0043c8:	57f3afff 	bl	-3156(0xffff3ac) # 1c003774 <EXTI_ClearITPendingBit>
1c0043cc:	03400000 	andi	$r0,$r0,0x0
1c0043d0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0043d4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0043d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0043dc:	4c000020 	jirl	$r0,$r1,0

1c0043e0 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c0043e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0043e4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0043e8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0043ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0043f0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0043f4:	029a40c6 	addi.w	$r6,$r6,1680(0x690)
1c0043f8:	02814c05 	addi.w	$r5,$r0,83(0x53)
1c0043fc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004400:	028ec084 	addi.w	$r4,$r4,944(0x3b0)
1c004404:	57d793ff 	bl	-10352(0xfffd790) # 1c001b94 <myprintf>
1c004408:	14000045 	lu12i.w	$r5,2(0x2)
1c00440c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004410:	03808184 	ori	$r4,$r12,0x20
1c004414:	57f363ff 	bl	-3232(0xffff360) # 1c003774 <EXTI_ClearITPendingBit>
1c004418:	03400000 	andi	$r0,$r0,0x0
1c00441c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004420:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004424:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004428:	4c000020 	jirl	$r0,$r1,0

1c00442c <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c00442c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004430:	29803061 	st.w	$r1,$r3,12(0xc)
1c004434:	29802076 	st.w	$r22,$r3,8(0x8)
1c004438:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00443c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004440:	029970c6 	addi.w	$r6,$r6,1628(0x65c)
1c004444:	02816005 	addi.w	$r5,$r0,88(0x58)
1c004448:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00444c:	028d9084 	addi.w	$r4,$r4,868(0x364)
1c004450:	57d747ff 	bl	-10428(0xfffd744) # 1c001b94 <myprintf>
1c004454:	14000085 	lu12i.w	$r5,4(0x4)
1c004458:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00445c:	03808184 	ori	$r4,$r12,0x20
1c004460:	57f317ff 	bl	-3308(0xffff314) # 1c003774 <EXTI_ClearITPendingBit>
1c004464:	03400000 	andi	$r0,$r0,0x0
1c004468:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00446c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004470:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004474:	4c000020 	jirl	$r0,$r1,0

1c004478 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c004478:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00447c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004480:	29802076 	st.w	$r22,$r3,8(0x8)
1c004484:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004488:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00448c:	0298a0c6 	addi.w	$r6,$r6,1576(0x628)
1c004490:	02817405 	addi.w	$r5,$r0,93(0x5d)
1c004494:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004498:	028c6084 	addi.w	$r4,$r4,792(0x318)
1c00449c:	57d6fbff 	bl	-10504(0xfffd6f8) # 1c001b94 <myprintf>
1c0044a0:	14000105 	lu12i.w	$r5,8(0x8)
1c0044a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0044a8:	03808184 	ori	$r4,$r12,0x20
1c0044ac:	57f2cbff 	bl	-3384(0xffff2c8) # 1c003774 <EXTI_ClearITPendingBit>
1c0044b0:	03400000 	andi	$r0,$r0,0x0
1c0044b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0044b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0044bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0044c0:	4c000020 	jirl	$r0,$r1,0

1c0044c4 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c0044c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0044c8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0044cc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0044d0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0044d4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0044d8:	0297d0c6 	addi.w	$r6,$r6,1524(0x5f4)
1c0044dc:	02818c05 	addi.w	$r5,$r0,99(0x63)
1c0044e0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0044e4:	028b3084 	addi.w	$r4,$r4,716(0x2cc)
1c0044e8:	57d6afff 	bl	-10580(0xfffd6ac) # 1c001b94 <myprintf>
1c0044ec:	14000205 	lu12i.w	$r5,16(0x10)
1c0044f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0044f4:	03808184 	ori	$r4,$r12,0x20
1c0044f8:	57f27fff 	bl	-3460(0xffff27c) # 1c003774 <EXTI_ClearITPendingBit>
1c0044fc:	03400000 	andi	$r0,$r0,0x0
1c004500:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004504:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004508:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00450c:	4c000020 	jirl	$r0,$r1,0

1c004510 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c004510:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004514:	29803061 	st.w	$r1,$r3,12(0xc)
1c004518:	29802076 	st.w	$r22,$r3,8(0x8)
1c00451c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004520:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004524:	029700c6 	addi.w	$r6,$r6,1472(0x5c0)
1c004528:	0281a005 	addi.w	$r5,$r0,104(0x68)
1c00452c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004530:	028a0084 	addi.w	$r4,$r4,640(0x280)
1c004534:	57d663ff 	bl	-10656(0xfffd660) # 1c001b94 <myprintf>
1c004538:	14000405 	lu12i.w	$r5,32(0x20)
1c00453c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004540:	03808184 	ori	$r4,$r12,0x20
1c004544:	57f233ff 	bl	-3536(0xffff230) # 1c003774 <EXTI_ClearITPendingBit>
1c004548:	03400000 	andi	$r0,$r0,0x0
1c00454c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004550:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004554:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004558:	4c000020 	jirl	$r0,$r1,0

1c00455c <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c00455c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004560:	29803061 	st.w	$r1,$r3,12(0xc)
1c004564:	29802076 	st.w	$r22,$r3,8(0x8)
1c004568:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00456c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004570:	029630c6 	addi.w	$r6,$r6,1420(0x58c)
1c004574:	0281b405 	addi.w	$r5,$r0,109(0x6d)
1c004578:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00457c:	0288d084 	addi.w	$r4,$r4,564(0x234)
1c004580:	57d617ff 	bl	-10732(0xfffd614) # 1c001b94 <myprintf>
1c004584:	14000805 	lu12i.w	$r5,64(0x40)
1c004588:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00458c:	03808184 	ori	$r4,$r12,0x20
1c004590:	57f1e7ff 	bl	-3612(0xffff1e4) # 1c003774 <EXTI_ClearITPendingBit>
1c004594:	03400000 	andi	$r0,$r0,0x0
1c004598:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00459c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0045a0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0045a4:	4c000020 	jirl	$r0,$r1,0

1c0045a8 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c0045a8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045ac:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045b0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045b4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045b8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0045bc:	029560c6 	addi.w	$r6,$r6,1368(0x558)
1c0045c0:	0281c805 	addi.w	$r5,$r0,114(0x72)
1c0045c4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0045c8:	0287a084 	addi.w	$r4,$r4,488(0x1e8)
1c0045cc:	57d5cbff 	bl	-10808(0xfffd5c8) # 1c001b94 <myprintf>
1c0045d0:	14001005 	lu12i.w	$r5,128(0x80)
1c0045d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0045d8:	03808184 	ori	$r4,$r12,0x20
1c0045dc:	57f19bff 	bl	-3688(0xffff198) # 1c003774 <EXTI_ClearITPendingBit>
1c0045e0:	03400000 	andi	$r0,$r0,0x0
1c0045e4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0045e8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0045ec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0045f0:	4c000020 	jirl	$r0,$r1,0

1c0045f4 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c0045f4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045f8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045fc:	29802076 	st.w	$r22,$r3,8(0x8)
1c004600:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004604:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004608:	029490c6 	addi.w	$r6,$r6,1316(0x524)
1c00460c:	0281dc05 	addi.w	$r5,$r0,119(0x77)
1c004610:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004614:	02867084 	addi.w	$r4,$r4,412(0x19c)
1c004618:	57d57fff 	bl	-10884(0xfffd57c) # 1c001b94 <myprintf>
1c00461c:	14002005 	lu12i.w	$r5,256(0x100)
1c004620:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004624:	03808184 	ori	$r4,$r12,0x20
1c004628:	57f14fff 	bl	-3764(0xffff14c) # 1c003774 <EXTI_ClearITPendingBit>
1c00462c:	03400000 	andi	$r0,$r0,0x0
1c004630:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004634:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004638:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00463c:	4c000020 	jirl	$r0,$r1,0

1c004640 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c004640:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004644:	29803061 	st.w	$r1,$r3,12(0xc)
1c004648:	29802076 	st.w	$r22,$r3,8(0x8)
1c00464c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004650:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004654:	0293c0c6 	addi.w	$r6,$r6,1264(0x4f0)
1c004658:	0281f005 	addi.w	$r5,$r0,124(0x7c)
1c00465c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004660:	02854084 	addi.w	$r4,$r4,336(0x150)
1c004664:	57d533ff 	bl	-10960(0xfffd530) # 1c001b94 <myprintf>
1c004668:	14004005 	lu12i.w	$r5,512(0x200)
1c00466c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004670:	03808184 	ori	$r4,$r12,0x20
1c004674:	57f103ff 	bl	-3840(0xffff100) # 1c003774 <EXTI_ClearITPendingBit>
1c004678:	03400000 	andi	$r0,$r0,0x0
1c00467c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004680:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004684:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004688:	4c000020 	jirl	$r0,$r1,0

1c00468c <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c00468c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004690:	29803061 	st.w	$r1,$r3,12(0xc)
1c004694:	29802076 	st.w	$r22,$r3,8(0x8)
1c004698:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00469c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0046a0:	0292f0c6 	addi.w	$r6,$r6,1212(0x4bc)
1c0046a4:	02820405 	addi.w	$r5,$r0,129(0x81)
1c0046a8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0046ac:	02841084 	addi.w	$r4,$r4,260(0x104)
1c0046b0:	57d4e7ff 	bl	-11036(0xfffd4e4) # 1c001b94 <myprintf>
1c0046b4:	14008005 	lu12i.w	$r5,1024(0x400)
1c0046b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0046bc:	03808184 	ori	$r4,$r12,0x20
1c0046c0:	57f0b7ff 	bl	-3916(0xffff0b4) # 1c003774 <EXTI_ClearITPendingBit>
1c0046c4:	03400000 	andi	$r0,$r0,0x0
1c0046c8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0046cc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0046d0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0046d4:	4c000020 	jirl	$r0,$r1,0

1c0046d8 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c0046d8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0046dc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0046e0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0046e4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0046e8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0046ec:	029220c6 	addi.w	$r6,$r6,1160(0x488)
1c0046f0:	02821805 	addi.w	$r5,$r0,134(0x86)
1c0046f4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0046f8:	0282e084 	addi.w	$r4,$r4,184(0xb8)
1c0046fc:	57d49bff 	bl	-11112(0xfffd498) # 1c001b94 <myprintf>
1c004700:	14010005 	lu12i.w	$r5,2048(0x800)
1c004704:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004708:	03808184 	ori	$r4,$r12,0x20
1c00470c:	57f06bff 	bl	-3992(0xffff068) # 1c003774 <EXTI_ClearITPendingBit>
1c004710:	03400000 	andi	$r0,$r0,0x0
1c004714:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004718:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00471c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004720:	4c000020 	jirl	$r0,$r1,0

1c004724 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c004724:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004728:	29803061 	st.w	$r1,$r3,12(0xc)
1c00472c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004730:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004734:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004738:	029150c6 	addi.w	$r6,$r6,1108(0x454)
1c00473c:	02822c05 	addi.w	$r5,$r0,139(0x8b)
1c004740:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004744:	0281b084 	addi.w	$r4,$r4,108(0x6c)
1c004748:	57d44fff 	bl	-11188(0xfffd44c) # 1c001b94 <myprintf>
1c00474c:	14020005 	lu12i.w	$r5,4096(0x1000)
1c004750:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004754:	03808184 	ori	$r4,$r12,0x20
1c004758:	57f01fff 	bl	-4068(0xffff01c) # 1c003774 <EXTI_ClearITPendingBit>
1c00475c:	03400000 	andi	$r0,$r0,0x0
1c004760:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004764:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004768:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00476c:	4c000020 	jirl	$r0,$r1,0

1c004770 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c004770:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004774:	29803061 	st.w	$r1,$r3,12(0xc)
1c004778:	29802076 	st.w	$r22,$r3,8(0x8)
1c00477c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004780:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004784:	029080c6 	addi.w	$r6,$r6,1056(0x420)
1c004788:	02824005 	addi.w	$r5,$r0,144(0x90)
1c00478c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004790:	02808084 	addi.w	$r4,$r4,32(0x20)
1c004794:	57d403ff 	bl	-11264(0xfffd400) # 1c001b94 <myprintf>
1c004798:	14040005 	lu12i.w	$r5,8192(0x2000)
1c00479c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0047a0:	03808184 	ori	$r4,$r12,0x20
1c0047a4:	57efd3ff 	bl	-4144(0xfffefd0) # 1c003774 <EXTI_ClearITPendingBit>
1c0047a8:	03400000 	andi	$r0,$r0,0x0
1c0047ac:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0047b0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0047b4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0047b8:	4c000020 	jirl	$r0,$r1,0

1c0047bc <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c0047bc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0047c0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0047c4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0047c8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0047cc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0047d0:	028fb0c6 	addi.w	$r6,$r6,1004(0x3ec)
1c0047d4:	02825405 	addi.w	$r5,$r0,149(0x95)
1c0047d8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0047dc:	02bf5084 	addi.w	$r4,$r4,-44(0xfd4)
1c0047e0:	57d3b7ff 	bl	-11340(0xfffd3b4) # 1c001b94 <myprintf>
1c0047e4:	14080005 	lu12i.w	$r5,16384(0x4000)
1c0047e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0047ec:	03808184 	ori	$r4,$r12,0x20
1c0047f0:	57ef87ff 	bl	-4220(0xfffef84) # 1c003774 <EXTI_ClearITPendingBit>
1c0047f4:	03400000 	andi	$r0,$r0,0x0
1c0047f8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0047fc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004800:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004804:	4c000020 	jirl	$r0,$r1,0

1c004808 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c004808:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00480c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004810:	29802076 	st.w	$r22,$r3,8(0x8)
1c004814:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004818:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00481c:	028ee0c6 	addi.w	$r6,$r6,952(0x3b8)
1c004820:	02826805 	addi.w	$r5,$r0,154(0x9a)
1c004824:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004828:	02be2084 	addi.w	$r4,$r4,-120(0xf88)
1c00482c:	57d36bff 	bl	-11416(0xfffd368) # 1c001b94 <myprintf>
1c004830:	14100005 	lu12i.w	$r5,32768(0x8000)
1c004834:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004838:	03808184 	ori	$r4,$r12,0x20
1c00483c:	57ef3bff 	bl	-4296(0xfffef38) # 1c003774 <EXTI_ClearITPendingBit>
1c004840:	03400000 	andi	$r0,$r0,0x0
1c004844:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004848:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00484c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004850:	4c000020 	jirl	$r0,$r1,0

1c004854 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c004854:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004858:	29803061 	st.w	$r1,$r3,12(0xc)
1c00485c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004860:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004864:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004868:	028e10c6 	addi.w	$r6,$r6,900(0x384)
1c00486c:	02827c05 	addi.w	$r5,$r0,159(0x9f)
1c004870:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004874:	02bcf084 	addi.w	$r4,$r4,-196(0xf3c)
1c004878:	57d31fff 	bl	-11492(0xfffd31c) # 1c001b94 <myprintf>
1c00487c:	14200005 	lu12i.w	$r5,65536(0x10000)
1c004880:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004884:	03808184 	ori	$r4,$r12,0x20
1c004888:	57eeefff 	bl	-4372(0xfffeeec) # 1c003774 <EXTI_ClearITPendingBit>
1c00488c:	03400000 	andi	$r0,$r0,0x0
1c004890:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004894:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004898:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00489c:	4c000020 	jirl	$r0,$r1,0

1c0048a0 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c0048a0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0048a4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0048a8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0048ac:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0048b0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0048b4:	028d40c6 	addi.w	$r6,$r6,848(0x350)
1c0048b8:	02829405 	addi.w	$r5,$r0,165(0xa5)
1c0048bc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0048c0:	02bbc084 	addi.w	$r4,$r4,-272(0xef0)
1c0048c4:	57d2d3ff 	bl	-11568(0xfffd2d0) # 1c001b94 <myprintf>
1c0048c8:	14400005 	lu12i.w	$r5,131072(0x20000)
1c0048cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0048d0:	03808184 	ori	$r4,$r12,0x20
1c0048d4:	57eea3ff 	bl	-4448(0xfffeea0) # 1c003774 <EXTI_ClearITPendingBit>
1c0048d8:	03400000 	andi	$r0,$r0,0x0
1c0048dc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0048e0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0048e4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0048e8:	4c000020 	jirl	$r0,$r1,0

1c0048ec <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c0048ec:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0048f0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0048f4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0048f8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0048fc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004900:	028c70c6 	addi.w	$r6,$r6,796(0x31c)
1c004904:	0282a805 	addi.w	$r5,$r0,170(0xaa)
1c004908:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00490c:	02ba9084 	addi.w	$r4,$r4,-348(0xea4)
1c004910:	57d287ff 	bl	-11644(0xfffd284) # 1c001b94 <myprintf>
1c004914:	14800005 	lu12i.w	$r5,262144(0x40000)
1c004918:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00491c:	03808184 	ori	$r4,$r12,0x20
1c004920:	57ee57ff 	bl	-4524(0xfffee54) # 1c003774 <EXTI_ClearITPendingBit>
1c004924:	03400000 	andi	$r0,$r0,0x0
1c004928:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00492c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004930:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004934:	4c000020 	jirl	$r0,$r1,0

1c004938 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c004938:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00493c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004940:	29802076 	st.w	$r22,$r3,8(0x8)
1c004944:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004948:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00494c:	028ba0c6 	addi.w	$r6,$r6,744(0x2e8)
1c004950:	0282bc05 	addi.w	$r5,$r0,175(0xaf)
1c004954:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004958:	02b96084 	addi.w	$r4,$r4,-424(0xe58)
1c00495c:	57d23bff 	bl	-11720(0xfffd238) # 1c001b94 <myprintf>
1c004960:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c004964:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004968:	03808184 	ori	$r4,$r12,0x20
1c00496c:	57ee0bff 	bl	-4600(0xfffee08) # 1c003774 <EXTI_ClearITPendingBit>
1c004970:	03400000 	andi	$r0,$r0,0x0
1c004974:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004978:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00497c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004980:	4c000020 	jirl	$r0,$r1,0

1c004984 <ext_handler>:
ext_handler():
1c004984:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004988:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00498c:	29806076 	st.w	$r22,$r3,24(0x18)
1c004990:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004994:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004998:	0380f18c 	ori	$r12,$r12,0x3c
1c00499c:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c0049a0:	2980018d 	st.w	$r13,$r12,0
1c0049a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0049a8:	0380818c 	ori	$r12,$r12,0x20
1c0049ac:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c0049b0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0049b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0049b8:	0380818c 	ori	$r12,$r12,0x20
1c0049bc:	2880018c 	ld.w	$r12,$r12,0
1c0049c0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0049c4:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0049c8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0049cc:	0014b1ac 	and	$r12,$r13,$r12
1c0049d0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0049d4:	03400000 	andi	$r0,$r0,0x0
1c0049d8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0049dc:	50004000 	b	64(0x40) # 1c004a1c <ext_handler+0x98>
1c0049e0:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0049e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0049e8:	0017b1ac 	srl.w	$r12,$r13,$r12
1c0049ec:	0340058c 	andi	$r12,$r12,0x1
1c0049f0:	40002180 	beqz	$r12,32(0x20) # 1c004a10 <ext_handler+0x8c>
1c0049f4:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c0049f8:	02ba41ad 	addi.w	$r13,$r13,-368(0xe90)
1c0049fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a00:	0040898c 	slli.w	$r12,$r12,0x2
1c004a04:	001031ac 	add.w	$r12,$r13,$r12
1c004a08:	2880018c 	ld.w	$r12,$r12,0
1c004a0c:	4c000181 	jirl	$r1,$r12,0
1c004a10:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a14:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004a18:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004a1c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004a20:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c004a24:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c0049e0 <ext_handler+0x5c>
1c004a28:	03400000 	andi	$r0,$r0,0x0
1c004a2c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004a30:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004a34:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004a38:	4c000020 	jirl	$r0,$r1,0

1c004a3c <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c004a3c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004a40:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004a44:	29806076 	st.w	$r22,$r3,24(0x18)
1c004a48:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004a4c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a50:	0380f18c 	ori	$r12,$r12,0x3c
1c004a54:	1400020d 	lu12i.w	$r13,16(0x10)
1c004a58:	2980018d 	st.w	$r13,$r12,0
1c004a5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a60:	0380118c 	ori	$r12,$r12,0x4
1c004a64:	2880018c 	ld.w	$r12,$r12,0
1c004a68:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004a6c:	57ee5bff 	bl	-4520(0xfffee58) # 1c0038c4 <WDG_DogFeed>
1c004a70:	02801804 	addi.w	$r4,$r0,6(0x6)
1c004a74:	57e7ffff 	bl	-6148(0xfffe7fc) # 1c003270 <Wake_Set>
1c004a78:	03400000 	andi	$r0,$r0,0x0
1c004a7c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004a80:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004a84:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004a88:	4c000020 	jirl	$r0,$r1,0

1c004a8c <TOUCH>:
TOUCH():
1c004a8c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004a90:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004a94:	29806076 	st.w	$r22,$r3,24(0x18)
1c004a98:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004a9c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004aa0:	0380118c 	ori	$r12,$r12,0x4
1c004aa4:	2880018c 	ld.w	$r12,$r12,0
1c004aa8:	0044c18c 	srli.w	$r12,$r12,0x10
1c004aac:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004ab0:	037ffd8c 	andi	$r12,$r12,0xfff
1c004ab4:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c004ab8:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004abc:	0380118c 	ori	$r12,$r12,0x4
1c004ac0:	2880018c 	ld.w	$r12,$r12,0
1c004ac4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004ac8:	03403d8c 	andi	$r12,$r12,0xf
1c004acc:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c004ad0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ad4:	0380f18c 	ori	$r12,$r12,0x3c
1c004ad8:	1400040d 	lu12i.w	$r13,32(0x20)
1c004adc:	2980018d 	st.w	$r13,$r12,0
1c004ae0:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004ae4:	0380118c 	ori	$r12,$r12,0x4
1c004ae8:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c004aec:	2980018d 	st.w	$r13,$r12,0
1c004af0:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c004af4:	00150184 	move	$r4,$r12
1c004af8:	57f187ff 	bl	-3708(0xffff184) # 1c003c7c <Printf_KeyType>
1c004afc:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c004b00:	00150184 	move	$r4,$r12
1c004b04:	57f0ffff 	bl	-3844(0xffff0fc) # 1c003c00 <Printf_KeyChannel>
1c004b08:	57f203ff 	bl	-3584(0xffff200) # 1c003d08 <Printf_KeyVal>
1c004b0c:	03400000 	andi	$r0,$r0,0x0
1c004b10:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004b14:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004b18:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004b1c:	4c000020 	jirl	$r0,$r1,0

1c004b20 <UART2_INT>:
UART2_INT():
1c004b20:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004b24:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004b28:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004b2c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b30:	0380f18c 	ori	$r12,$r12,0x3c
1c004b34:	1400080d 	lu12i.w	$r13,64(0x40)
1c004b38:	2980018d 	st.w	$r13,$r12,0
1c004b3c:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c004b40:	0380098c 	ori	$r12,$r12,0x2
1c004b44:	2a00018c 	ld.bu	$r12,$r12,0
1c004b48:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004b4c:	03400000 	andi	$r0,$r0,0x0
1c004b50:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004b54:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004b58:	4c000020 	jirl	$r0,$r1,0

1c004b5c <BAT_FAIL>:
BAT_FAIL():
1c004b5c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004b60:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004b64:	29806076 	st.w	$r22,$r3,24(0x18)
1c004b68:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004b6c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b70:	0380118c 	ori	$r12,$r12,0x4
1c004b74:	2880018c 	ld.w	$r12,$r12,0
1c004b78:	0044cd8c 	srli.w	$r12,$r12,0x13
1c004b7c:	03407d8c 	andi	$r12,$r12,0x1f
1c004b80:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004b84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b88:	0380118c 	ori	$r12,$r12,0x4
1c004b8c:	2880018e 	ld.w	$r14,$r12,0
1c004b90:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b94:	0380f18c 	ori	$r12,$r12,0x3c
1c004b98:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c004b9c:	0014b5cd 	and	$r13,$r14,$r13
1c004ba0:	2980018d 	st.w	$r13,$r12,0
1c004ba4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004ba8:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004bac:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c004c1c <BAT_FAIL+0xc0>
1c004bb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004bb4:	0040898d 	slli.w	$r13,$r12,0x2
1c004bb8:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c004bbc:	02b5318c 	addi.w	$r12,$r12,-692(0xd4c)
1c004bc0:	001031ac 	add.w	$r12,$r13,$r12
1c004bc4:	2880018c 	ld.w	$r12,$r12,0
1c004bc8:	4c000180 	jirl	$r0,$r12,0
1c004bcc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004bd0:	02b09084 	addi.w	$r4,$r4,-988(0xc24)
1c004bd4:	57cfc3ff 	bl	-12352(0xfffcfc0) # 1c001b94 <myprintf>
1c004bd8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004bdc:	0380118c 	ori	$r12,$r12,0x4
1c004be0:	29800180 	st.w	$r0,$r12,0
1c004be4:	50003c00 	b	60(0x3c) # 1c004c20 <BAT_FAIL+0xc4>
1c004be8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004bec:	02b0c084 	addi.w	$r4,$r4,-976(0xc30)
1c004bf0:	57cfa7ff 	bl	-12380(0xfffcfa4) # 1c001b94 <myprintf>
1c004bf4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004bf8:	0380118c 	ori	$r12,$r12,0x4
1c004bfc:	2880018e 	ld.w	$r14,$r12,0
1c004c00:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c04:	0380118c 	ori	$r12,$r12,0x4
1c004c08:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c004c0c:	03bffdad 	ori	$r13,$r13,0xfff
1c004c10:	0014b5cd 	and	$r13,$r14,$r13
1c004c14:	2980018d 	st.w	$r13,$r12,0
1c004c18:	50000800 	b	8(0x8) # 1c004c20 <BAT_FAIL+0xc4>
1c004c1c:	03400000 	andi	$r0,$r0,0x0
1c004c20:	03400000 	andi	$r0,$r0,0x0
1c004c24:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004c28:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004c2c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004c30:	4c000020 	jirl	$r0,$r1,0

1c004c34 <intc_handler>:
intc_handler():
1c004c34:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004c38:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004c3c:	29806076 	st.w	$r22,$r3,24(0x18)
1c004c40:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004c44:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004c48:	0380158c 	ori	$r12,$r12,0x5
1c004c4c:	2a00018c 	ld.bu	$r12,$r12,0
1c004c50:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004c54:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004c58:	0340058c 	andi	$r12,$r12,0x1
1c004c5c:	40002980 	beqz	$r12,40(0x28) # 1c004c84 <intc_handler+0x50>
1c004c60:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004c64:	57f2fbff 	bl	-3336(0xffff2f8) # 1c003f5c <TIM_GetITStatus>
1c004c68:	0015008c 	move	$r12,$r4
1c004c6c:	40001980 	beqz	$r12,24(0x18) # 1c004c84 <intc_handler+0x50>
1c004c70:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004c74:	57f337ff 	bl	-3276(0xffff334) # 1c003fa8 <TIM_ClearIT>
1c004c78:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004c7c:	02af1084 	addi.w	$r4,$r4,-1084(0xbc4)
1c004c80:	57cf17ff 	bl	-12524(0xfffcf14) # 1c001b94 <myprintf>
1c004c84:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004c88:	0340118c 	andi	$r12,$r12,0x4
1c004c8c:	40001580 	beqz	$r12,20(0x14) # 1c004ca0 <intc_handler+0x6c>
1c004c90:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004c94:	03800d8c 	ori	$r12,$r12,0x3
1c004c98:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c004c9c:	2900018d 	st.b	$r13,$r12,0
1c004ca0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004ca4:	0340218c 	andi	$r12,$r12,0x8
1c004ca8:	40001580 	beqz	$r12,20(0x14) # 1c004cbc <intc_handler+0x88>
1c004cac:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004cb0:	03800d8c 	ori	$r12,$r12,0x3
1c004cb4:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c004cb8:	2900018d 	st.b	$r13,$r12,0
1c004cbc:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004cc0:	03800d8c 	ori	$r12,$r12,0x3
1c004cc4:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c004cc8:	2900018d 	st.b	$r13,$r12,0
1c004ccc:	03400000 	andi	$r0,$r0,0x0
1c004cd0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004cd4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004cd8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004cdc:	4c000020 	jirl	$r0,$r1,0

1c004ce0 <TIMER_HANDLER>:
TIMER_HANDLER():
1c004ce0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004ce4:	29803061 	st.w	$r1,$r3,12(0xc)
1c004ce8:	29802076 	st.w	$r22,$r3,8(0x8)
1c004cec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004cf0:	57e55fff 	bl	-6820(0xfffe55c) # 1c00324c <Set_Timer_clear>
1c004cf4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004cf8:	02adc084 	addi.w	$r4,$r4,-1168(0xb70)
1c004cfc:	57ce9bff 	bl	-12648(0xfffce98) # 1c001b94 <myprintf>
1c004d00:	57e52fff 	bl	-6868(0xfffe52c) # 1c00322c <Set_Timer_stop>
1c004d04:	03400000 	andi	$r0,$r0,0x0
1c004d08:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004d0c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004d10:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004d14:	4c000020 	jirl	$r0,$r1,0

1c004d18 <ProcessUartCommand>:
ProcessUartCommand():
1c004d18:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004d1c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004d20:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004d24:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004d28:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004d2c:	001500ac 	move	$r12,$r5
1c004d30:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c004d34:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004d38:	02bc5084 	addi.w	$r4,$r4,-236(0xf14)
1c004d3c:	57ce5bff 	bl	-12712(0xfffce58) # 1c001b94 <myprintf>
1c004d40:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004d44:	50003000 	b	48(0x30) # 1c004d74 <ProcessUartCommand+0x5c>
1c004d48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004d4c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004d50:	001031ac 	add.w	$r12,$r13,$r12
1c004d54:	2a00018c 	ld.bu	$r12,$r12,0
1c004d58:	00150185 	move	$r5,$r12
1c004d5c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004d60:	02bc0084 	addi.w	$r4,$r4,-256(0xf00)
1c004d64:	57ce33ff 	bl	-12752(0xfffce30) # 1c001b94 <myprintf>
1c004d68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004d6c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004d70:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004d74:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c004d78:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004d7c:	63ffcdac 	blt	$r13,$r12,-52(0x3ffcc) # 1c004d48 <ProcessUartCommand+0x30>
1c004d80:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004d84:	02bb8084 	addi.w	$r4,$r4,-288(0xee0)
1c004d88:	57ce0fff 	bl	-12788(0xfffce0c) # 1c001b94 <myprintf>
1c004d8c:	2a3f6ecd 	ld.bu	$r13,$r22,-37(0xfdb)
1c004d90:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c004d94:	5c018dac 	bne	$r13,$r12,396(0x18c) # 1c004f20 <ProcessUartCommand+0x208>
1c004d98:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004d9c:	2a00018d 	ld.bu	$r13,$r12,0
1c004da0:	0281500c 	addi.w	$r12,$r0,84(0x54)
1c004da4:	5c017dac 	bne	$r13,$r12,380(0x17c) # 1c004f20 <ProcessUartCommand+0x208>
1c004da8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004dac:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c004db0:	2a00018d 	ld.bu	$r13,$r12,0
1c004db4:	0281200c 	addi.w	$r12,$r0,72(0x48)
1c004db8:	5c0169ac 	bne	$r13,$r12,360(0x168) # 1c004f20 <ProcessUartCommand+0x208>
1c004dbc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004dc0:	0280198c 	addi.w	$r12,$r12,6(0x6)
1c004dc4:	2a00018d 	ld.bu	$r13,$r12,0
1c004dc8:	02814c0c 	addi.w	$r12,$r0,83(0x53)
1c004dcc:	5c0155ac 	bne	$r13,$r12,340(0x154) # 1c004f20 <ProcessUartCommand+0x208>
1c004dd0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004dd4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004dd8:	2a00018d 	ld.bu	$r13,$r12,0
1c004ddc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004de0:	001c31ac 	mul.w	$r12,$r13,$r12
1c004de4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004de8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004dec:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c004df0:	2a00018c 	ld.bu	$r12,$r12,0
1c004df4:	001031ac 	add.w	$r12,$r13,$r12
1c004df8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004dfc:	02bfc18c 	addi.w	$r12,$r12,-16(0xff0)
1c004e00:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c004e04:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004e08:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004e0c:	2a00018d 	ld.bu	$r13,$r12,0
1c004e10:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004e14:	001c31ac 	mul.w	$r12,$r13,$r12
1c004e18:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004e1c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004e20:	0280158c 	addi.w	$r12,$r12,5(0x5)
1c004e24:	2a00018c 	ld.bu	$r12,$r12,0
1c004e28:	001031ac 	add.w	$r12,$r13,$r12
1c004e2c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004e30:	02bfc18c 	addi.w	$r12,$r12,-16(0xff0)
1c004e34:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c004e38:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004e3c:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c004e40:	2a00018d 	ld.bu	$r13,$r12,0
1c004e44:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004e48:	001c31ac 	mul.w	$r12,$r13,$r12
1c004e4c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004e50:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004e54:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c004e58:	2a00018c 	ld.bu	$r12,$r12,0
1c004e5c:	001031ac 	add.w	$r12,$r13,$r12
1c004e60:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004e64:	02bfc18c 	addi.w	$r12,$r12,-16(0xff0)
1c004e68:	293fa6cc 	st.b	$r12,$r22,-23(0xfe9)
1c004e6c:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c004e70:	40002180 	beqz	$r12,32(0x20) # 1c004e90 <ProcessUartCommand+0x178>
1c004e74:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c004e78:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c004e7c:	6800158d 	bltu	$r12,$r13,20(0x14) # 1c004e90 <ProcessUartCommand+0x178>
1c004e80:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004e84:	0286b18c 	addi.w	$r12,$r12,428(0x1ac)
1c004e88:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c004e8c:	2900018d 	st.b	$r13,$r12,0
1c004e90:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c004e94:	40002180 	beqz	$r12,32(0x20) # 1c004eb4 <ProcessUartCommand+0x19c>
1c004e98:	2a3faacd 	ld.bu	$r13,$r22,-22(0xfea)
1c004e9c:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c004ea0:	6800158d 	bltu	$r12,$r13,20(0x14) # 1c004eb4 <ProcessUartCommand+0x19c>
1c004ea4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004ea8:	0286258c 	addi.w	$r12,$r12,393(0x189)
1c004eac:	2a3faacd 	ld.bu	$r13,$r22,-22(0xfea)
1c004eb0:	2900018d 	st.b	$r13,$r12,0
1c004eb4:	2a3fa6cc 	ld.bu	$r12,$r22,-23(0xfe9)
1c004eb8:	40002180 	beqz	$r12,32(0x20) # 1c004ed8 <ProcessUartCommand+0x1c0>
1c004ebc:	2a3fa6cd 	ld.bu	$r13,$r22,-23(0xfe9)
1c004ec0:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c004ec4:	6800158d 	bltu	$r12,$r13,20(0x14) # 1c004ed8 <ProcessUartCommand+0x1c0>
1c004ec8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004ecc:	0285998c 	addi.w	$r12,$r12,358(0x166)
1c004ed0:	2a3fa6cd 	ld.bu	$r13,$r22,-23(0xfe9)
1c004ed4:	2900018d 	st.b	$r13,$r12,0
1c004ed8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004edc:	0285518c 	addi.w	$r12,$r12,340(0x154)
1c004ee0:	2a00018c 	ld.bu	$r12,$r12,0
1c004ee4:	0015018d 	move	$r13,$r12
1c004ee8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004eec:	0285158c 	addi.w	$r12,$r12,325(0x145)
1c004ef0:	2a00018c 	ld.bu	$r12,$r12,0
1c004ef4:	0015018e 	move	$r14,$r12
1c004ef8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004efc:	0284d98c 	addi.w	$r12,$r12,310(0x136)
1c004f00:	2a00018c 	ld.bu	$r12,$r12,0
1c004f04:	00150187 	move	$r7,$r12
1c004f08:	001501c6 	move	$r6,$r14
1c004f0c:	001501a5 	move	$r5,$r13
1c004f10:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004f14:	02b55084 	addi.w	$r4,$r4,-684(0xd54)
1c004f18:	57cc7fff 	bl	-13188(0xfffcc7c) # 1c001b94 <myprintf>
1c004f1c:	50001000 	b	16(0x10) # 1c004f2c <ProcessUartCommand+0x214>
1c004f20:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004f24:	02b5b084 	addi.w	$r4,$r4,-660(0xd6c)
1c004f28:	57cc6fff 	bl	-13204(0xfffcc6c) # 1c001b94 <myprintf>
1c004f2c:	03400000 	andi	$r0,$r0,0x0
1c004f30:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004f34:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004f38:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004f3c:	4c000020 	jirl	$r0,$r1,0

1c004f40 <main>:
main():
1c004f40:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c004f44:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c004f48:	2980e076 	st.w	$r22,$r3,56(0x38)
1c004f4c:	2980d077 	st.w	$r23,$r3,52(0x34)
1c004f50:	02810076 	addi.w	$r22,$r3,64(0x40)
1c004f54:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c004f58:	29bf22c5 	st.w	$r5,$r22,-56(0xfc8)
1c004f5c:	57e1b7ff 	bl	-7756(0xfffe1b4) # 1c003110 <SystemClockInit>
1c004f60:	57c3cfff 	bl	-15412(0xfffc3cc) # 1c00132c <GPIOInit>
1c004f64:	541bbc00 	bl	7100(0x1bbc) # 1c006b20 <RGB_LED_Init>
1c004f68:	54110000 	bl	4352(0x1100) # 1c006068 <LED_Init>
1c004f6c:	54112c00 	bl	4396(0x112c) # 1c006098 <KEY_Init>
1c004f70:	54094c00 	bl	2380(0x94c) # 1c0058bc <BEEP_Init>
1c004f74:	54130c00 	bl	4876(0x130c) # 1c006280 <OLED_Init>
1c004f78:	5410b400 	bl	4276(0x10b4) # 1c00602c <FAN_Init>
1c004f7c:	57e28fff 	bl	-7540(0xfffe28c) # 1c003208 <EnableInt>
1c004f80:	541c5800 	bl	7256(0x1c58) # 1c006bd8 <Smoke_Init>
1c004f84:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004f88:	28824084 	ld.w	$r4,$r4,144(0x90)
1c004f8c:	541c0000 	bl	7168(0x1c00) # 1c006b8c <Queue_Init>
1c004f90:	1400038c 	lu12i.w	$r12,28(0x1c)
1c004f94:	03880184 	ori	$r4,$r12,0x200
1c004f98:	57dbbbff 	bl	-9288(0xfffdbb8) # 1c002b50 <Uart1_init>
1c004f9c:	1400038c 	lu12i.w	$r12,28(0x1c)
1c004fa0:	03880184 	ori	$r4,$r12,0x200
1c004fa4:	57daebff 	bl	-9496(0xfffdae8) # 1c002a8c <Uart0_init>
1c004fa8:	57e97bff 	bl	-5768(0xfffe978) # 1c003920 <Adc_powerOn>
1c004fac:	02801804 	addi.w	$r4,$r0,6(0x6)
1c004fb0:	57e9c7ff 	bl	-5692(0xfffe9c4) # 1c003974 <Adc_open>
1c004fb4:	541f0400 	bl	7940(0x1f04) # 1c006eb8 <YUYIN_Init>
1c004fb8:	03400000 	andi	$r0,$r0,0x0
1c004fbc:	54103000 	bl	4144(0x1030) # 1c005fec <DHT11_Init>
1c004fc0:	0015008c 	move	$r12,$r4
1c004fc4:	47fff99f 	bnez	$r12,-8(0x7ffff8) # 1c004fbc <main+0x7c>
1c004fc8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004fcc:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c004fd0:	57da5bff 	bl	-9640(0xfffda58) # 1c002a28 <UART_GetFlagStatus>
1c004fd4:	0015008c 	move	$r12,$r4
1c004fd8:	4000a980 	beqz	$r12,168(0xa8) # 1c005080 <main+0x140>
1c004fdc:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004fe0:	0281900c 	addi.w	$r12,$r0,100(0x64)
1c004fe4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004fe8:	50005400 	b	84(0x54) # 1c00503c <main+0xfc>
1c004fec:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004ff0:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c004ff4:	57da37ff 	bl	-9676(0xfffda34) # 1c002a28 <UART_GetFlagStatus>
1c004ff8:	0015008c 	move	$r12,$r4
1c004ffc:	40002d80 	beqz	$r12,44(0x2c) # 1c005028 <main+0xe8>
1c005000:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005004:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c005008:	293fbecd 	st.b	$r13,$r22,-17(0xfef)
1c00500c:	00150197 	move	$r23,$r12
1c005010:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c005014:	57d9cbff 	bl	-9784(0xfffd9c8) # 1c0029dc <UART_ReceiveData>
1c005018:	0015008c 	move	$r12,$r4
1c00501c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c005020:	00105dad 	add.w	$r13,$r13,$r23
1c005024:	293fb1ac 	st.b	$r12,$r13,-20(0xfec)
1c005028:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00502c:	57e603ff 	bl	-6656(0xfffe600) # 1c00362c <delay_ms>
1c005030:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005034:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c005038:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00503c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005040:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c005044:	68000d8d 	bltu	$r12,$r13,12(0xc) # 1c005050 <main+0x110>
1c005048:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00504c:	47ffa19f 	bnez	$r12,-96(0x7fffa0) # 1c004fec <main+0xac>
1c005050:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005054:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c005058:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c005074 <main+0x134>
1c00505c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005060:	02bf72cd 	addi.w	$r13,$r22,-36(0xfdc)
1c005064:	00150185 	move	$r5,$r12
1c005068:	001501a4 	move	$r4,$r13
1c00506c:	57fcafff 	bl	-852(0xffffcac) # 1c004d18 <ProcessUartCommand>
1c005070:	50001000 	b	16(0x10) # 1c005080 <main+0x140>
1c005074:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005078:	02b0d084 	addi.w	$r4,$r4,-972(0xc34)
1c00507c:	57cb1bff 	bl	-13544(0xfffcb18) # 1c001b94 <myprintf>
1c005080:	1cc7ff85 	pcaddu12i	$r5,409596(0x63ffc)
1c005084:	28be20a5 	ld.w	$r5,$r5,-120(0xf88)
1c005088:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c00508c:	28be2084 	ld.w	$r4,$r4,-120(0xf88)
1c005090:	540e5000 	bl	3664(0xe50) # 1c005ee0 <DHT11_Read_Data>
1c005094:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005098:	28be4084 	ld.w	$r4,$r4,-112(0xf90)
1c00509c:	541d5000 	bl	7504(0x1d50) # 1c006dec <Smoke_Read_Data>
1c0050a0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0050a4:	28bdc18c 	ld.w	$r12,$r12,-144(0xf70)
1c0050a8:	2a40018d 	ld.hu	$r13,$r12,0
1c0050ac:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0050b0:	002131ae 	div.wu	$r14,$r13,$r12
1c0050b4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0050bc <main+0x17c>
1c0050b8:	002a0007 	break	0x7
1c0050bc:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c0050c0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0050c4:	28bd418c 	ld.w	$r12,$r12,-176(0xf50)
1c0050c8:	2940018d 	st.h	$r13,$r12,0
1c0050cc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0050d0:	28bcf18c 	ld.w	$r12,$r12,-196(0xf3c)
1c0050d4:	2a40018d 	ld.hu	$r13,$r12,0
1c0050d8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0050dc:	002131ae 	div.wu	$r14,$r13,$r12
1c0050e0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0050e8 <main+0x1a8>
1c0050e4:	002a0007 	break	0x7
1c0050e8:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c0050ec:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0050f0:	28bc718c 	ld.w	$r12,$r12,-228(0xf1c)
1c0050f4:	2940018d 	st.h	$r13,$r12,0
1c0050f8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0050fc:	28bc618c 	ld.w	$r12,$r12,-232(0xf18)
1c005100:	2a40018c 	ld.hu	$r12,$r12,0
1c005104:	0015018d 	move	$r13,$r12
1c005108:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00510c:	28bc018c 	ld.w	$r12,$r12,-256(0xf00)
1c005110:	2a40018c 	ld.hu	$r12,$r12,0
1c005114:	0015018e 	move	$r14,$r12
1c005118:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00511c:	28bc318c 	ld.w	$r12,$r12,-244(0xf0c)
1c005120:	2a40018c 	ld.hu	$r12,$r12,0
1c005124:	00150187 	move	$r7,$r12
1c005128:	001501c6 	move	$r6,$r14
1c00512c:	001501a5 	move	$r5,$r13
1c005130:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005134:	02ae6084 	addi.w	$r4,$r4,-1128(0xb98)
1c005138:	57ca5fff 	bl	-13732(0xfffca5c) # 1c001b94 <myprintf>
1c00513c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005140:	02bb118c 	addi.w	$r12,$r12,-316(0xec4)
1c005144:	29000180 	st.b	$r0,$r12,0
1c005148:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00514c:	02bb9d8c 	addi.w	$r12,$r12,-281(0xee7)
1c005150:	2a00018c 	ld.bu	$r12,$r12,0
1c005154:	40013980 	beqz	$r12,312(0x138) # 1c00528c <main+0x34c>
1c005158:	54108c00 	bl	4236(0x108c) # 1c0061e4 <OLED_Clear>
1c00515c:	02802007 	addi.w	$r7,$r0,8(0x8)
1c005160:	1c000066 	pcaddu12i	$r6,3(0x3)
1c005164:	02ae40c6 	addi.w	$r6,$r6,-1136(0xb90)
1c005168:	00150005 	move	$r5,$r0
1c00516c:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c005170:	54174000 	bl	5952(0x1740) # 1c0068b0 <OLED_Show_Str>
1c005174:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005178:	28ba718c 	ld.w	$r12,$r12,-356(0xe9c)
1c00517c:	2a40018c 	ld.hu	$r12,$r12,0
1c005180:	00150186 	move	$r6,$r12
1c005184:	1c000065 	pcaddu12i	$r5,3(0x3)
1c005188:	02add0a5 	addi.w	$r5,$r5,-1164(0xb74)
1c00518c:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005190:	28ba4084 	ld.w	$r4,$r4,-368(0xe90)
1c005194:	57d393ff 	bl	-11376(0xfffd390) # 1c002524 <sprintf>
1c005198:	02802007 	addi.w	$r7,$r0,8(0x8)
1c00519c:	1cc7ff86 	pcaddu12i	$r6,409596(0x63ffc)
1c0051a0:	28ba00c6 	ld.w	$r6,$r6,-384(0xe80)
1c0051a4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0051a8:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0051ac:	54170400 	bl	5892(0x1704) # 1c0068b0 <OLED_Show_Str>
1c0051b0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0051b4:	28b9618c 	ld.w	$r12,$r12,-424(0xe58)
1c0051b8:	2a40018c 	ld.hu	$r12,$r12,0
1c0051bc:	00150186 	move	$r6,$r12
1c0051c0:	1c000065 	pcaddu12i	$r5,3(0x3)
1c0051c4:	02ad10a5 	addi.w	$r5,$r5,-1212(0xb44)
1c0051c8:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0051cc:	28b95084 	ld.w	$r4,$r4,-428(0xe54)
1c0051d0:	57d357ff 	bl	-11436(0xfffd354) # 1c002524 <sprintf>
1c0051d4:	02802007 	addi.w	$r7,$r0,8(0x8)
1c0051d8:	1cc7ff86 	pcaddu12i	$r6,409596(0x63ffc)
1c0051dc:	28b910c6 	ld.w	$r6,$r6,-444(0xe44)
1c0051e0:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0051e4:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0051e8:	5416c800 	bl	5832(0x16c8) # 1c0068b0 <OLED_Show_Str>
1c0051ec:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0051f0:	28b8e18c 	ld.w	$r12,$r12,-456(0xe38)
1c0051f4:	2a40018c 	ld.hu	$r12,$r12,0
1c0051f8:	00150186 	move	$r6,$r12
1c0051fc:	1c000065 	pcaddu12i	$r5,3(0x3)
1c005200:	02ac60a5 	addi.w	$r5,$r5,-1256(0xb18)
1c005204:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005208:	28b86084 	ld.w	$r4,$r4,-488(0xe18)
1c00520c:	57d31bff 	bl	-11496(0xfffd318) # 1c002524 <sprintf>
1c005210:	02802007 	addi.w	$r7,$r0,8(0x8)
1c005214:	1cc7ff86 	pcaddu12i	$r6,409596(0x63ffc)
1c005218:	28b820c6 	ld.w	$r6,$r6,-504(0xe08)
1c00521c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c005220:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005224:	54168c00 	bl	5772(0x168c) # 1c0068b0 <OLED_Show_Str>
1c005228:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00522c:	28b7a18c 	ld.w	$r12,$r12,-536(0xde8)
1c005230:	2a40018c 	ld.hu	$r12,$r12,0
1c005234:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005238:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00523c:	02b7258c 	addi.w	$r12,$r12,-567(0xdc9)
1c005240:	2900018d 	st.b	$r13,$r12,0
1c005244:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005248:	28b7118c 	ld.w	$r12,$r12,-572(0xdc4)
1c00524c:	2a40018c 	ld.hu	$r12,$r12,0
1c005250:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005254:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005258:	02b6b98c 	addi.w	$r12,$r12,-594(0xdae)
1c00525c:	2900018d 	st.b	$r13,$r12,0
1c005260:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005264:	28b7118c 	ld.w	$r12,$r12,-572(0xdc4)
1c005268:	2a40018c 	ld.hu	$r12,$r12,0
1c00526c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005270:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005274:	02b64d8c 	addi.w	$r12,$r12,-621(0xd93)
1c005278:	2900018d 	st.b	$r13,$r12,0
1c00527c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005280:	02b6cd8c 	addi.w	$r12,$r12,-589(0xdb3)
1c005284:	29000180 	st.b	$r0,$r12,0
1c005288:	5001b400 	b	436(0x1b4) # 1c00543c <main+0x4fc>
1c00528c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005290:	02b5d58c 	addi.w	$r12,$r12,-651(0xd75)
1c005294:	2a00018c 	ld.bu	$r12,$r12,0
1c005298:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00529c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0052a0:	28b5d18c 	ld.w	$r12,$r12,-652(0xd74)
1c0052a4:	2a40018c 	ld.hu	$r12,$r12,0
1c0052a8:	580075ac 	beq	$r13,$r12,116(0x74) # 1c00531c <main+0x3dc>
1c0052ac:	02802007 	addi.w	$r7,$r0,8(0x8)
1c0052b0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0052b4:	02a9d0c6 	addi.w	$r6,$r6,-1420(0xa74)
1c0052b8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0052bc:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0052c0:	5415f000 	bl	5616(0x15f0) # 1c0068b0 <OLED_Show_Str>
1c0052c4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0052c8:	28b5318c 	ld.w	$r12,$r12,-692(0xd4c)
1c0052cc:	2a40018c 	ld.hu	$r12,$r12,0
1c0052d0:	00150186 	move	$r6,$r12
1c0052d4:	1c000065 	pcaddu12i	$r5,3(0x3)
1c0052d8:	02a890a5 	addi.w	$r5,$r5,-1500(0xa24)
1c0052dc:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0052e0:	28b50084 	ld.w	$r4,$r4,-704(0xd40)
1c0052e4:	57d243ff 	bl	-11712(0xfffd240) # 1c002524 <sprintf>
1c0052e8:	02802007 	addi.w	$r7,$r0,8(0x8)
1c0052ec:	1cc7ff86 	pcaddu12i	$r6,409596(0x63ffc)
1c0052f0:	28b4c0c6 	ld.w	$r6,$r6,-720(0xd30)
1c0052f4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0052f8:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0052fc:	5415b400 	bl	5556(0x15b4) # 1c0068b0 <OLED_Show_Str>
1c005300:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005304:	28b4418c 	ld.w	$r12,$r12,-752(0xd10)
1c005308:	2a40018c 	ld.hu	$r12,$r12,0
1c00530c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005310:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005314:	02b3c58c 	addi.w	$r12,$r12,-783(0xcf1)
1c005318:	2900018d 	st.b	$r13,$r12,0
1c00531c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005320:	02b3998c 	addi.w	$r12,$r12,-794(0xce6)
1c005324:	2a00018c 	ld.bu	$r12,$r12,0
1c005328:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00532c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005330:	28b3718c 	ld.w	$r12,$r12,-804(0xcdc)
1c005334:	2a40018c 	ld.hu	$r12,$r12,0
1c005338:	580075ac 	beq	$r13,$r12,116(0x74) # 1c0053ac <main+0x46c>
1c00533c:	02802007 	addi.w	$r7,$r0,8(0x8)
1c005340:	1c000066 	pcaddu12i	$r6,3(0x3)
1c005344:	02a790c6 	addi.w	$r6,$r6,-1564(0x9e4)
1c005348:	02801005 	addi.w	$r5,$r0,4(0x4)
1c00534c:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005350:	54156000 	bl	5472(0x1560) # 1c0068b0 <OLED_Show_Str>
1c005354:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005358:	28b2d18c 	ld.w	$r12,$r12,-844(0xcb4)
1c00535c:	2a40018c 	ld.hu	$r12,$r12,0
1c005360:	00150186 	move	$r6,$r12
1c005364:	1c000065 	pcaddu12i	$r5,3(0x3)
1c005368:	02a680a5 	addi.w	$r5,$r5,-1632(0x9a0)
1c00536c:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005370:	28b2c084 	ld.w	$r4,$r4,-848(0xcb0)
1c005374:	57d1b3ff 	bl	-11856(0xfffd1b0) # 1c002524 <sprintf>
1c005378:	02802007 	addi.w	$r7,$r0,8(0x8)
1c00537c:	1cc7ff86 	pcaddu12i	$r6,409596(0x63ffc)
1c005380:	28b280c6 	ld.w	$r6,$r6,-864(0xca0)
1c005384:	02801005 	addi.w	$r5,$r0,4(0x4)
1c005388:	02801004 	addi.w	$r4,$r0,4(0x4)
1c00538c:	54152400 	bl	5412(0x1524) # 1c0068b0 <OLED_Show_Str>
1c005390:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005394:	28b1e18c 	ld.w	$r12,$r12,-904(0xc78)
1c005398:	2a40018c 	ld.hu	$r12,$r12,0
1c00539c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0053a0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0053a4:	02b1898c 	addi.w	$r12,$r12,-926(0xc62)
1c0053a8:	2900018d 	st.b	$r13,$r12,0
1c0053ac:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0053b0:	02b15d8c 	addi.w	$r12,$r12,-937(0xc57)
1c0053b4:	2a00018c 	ld.bu	$r12,$r12,0
1c0053b8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0053bc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0053c0:	28b1a18c 	ld.w	$r12,$r12,-920(0xc68)
1c0053c4:	2a40018c 	ld.hu	$r12,$r12,0
1c0053c8:	580075ac 	beq	$r13,$r12,116(0x74) # 1c00543c <main+0x4fc>
1c0053cc:	02802007 	addi.w	$r7,$r0,8(0x8)
1c0053d0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0053d4:	02a550c6 	addi.w	$r6,$r6,-1708(0x954)
1c0053d8:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0053dc:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0053e0:	5414d000 	bl	5328(0x14d0) # 1c0068b0 <OLED_Show_Str>
1c0053e4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0053e8:	28b1018c 	ld.w	$r12,$r12,-960(0xc40)
1c0053ec:	2a40018c 	ld.hu	$r12,$r12,0
1c0053f0:	00150186 	move	$r6,$r12
1c0053f4:	1c000065 	pcaddu12i	$r5,3(0x3)
1c0053f8:	02a480a5 	addi.w	$r5,$r5,-1760(0x920)
1c0053fc:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005400:	28b08084 	ld.w	$r4,$r4,-992(0xc20)
1c005404:	57d123ff 	bl	-12000(0xfffd120) # 1c002524 <sprintf>
1c005408:	02802007 	addi.w	$r7,$r0,8(0x8)
1c00540c:	1cc7ff86 	pcaddu12i	$r6,409596(0x63ffc)
1c005410:	28b040c6 	ld.w	$r6,$r6,-1008(0xc10)
1c005414:	02801805 	addi.w	$r5,$r0,6(0x6)
1c005418:	02801004 	addi.w	$r4,$r0,4(0x4)
1c00541c:	54149400 	bl	5268(0x1494) # 1c0068b0 <OLED_Show_Str>
1c005420:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005424:	28b0118c 	ld.w	$r12,$r12,-1020(0xc04)
1c005428:	2a40018c 	ld.hu	$r12,$r12,0
1c00542c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005430:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005434:	02af4d8c 	addi.w	$r12,$r12,-1069(0xbd3)
1c005438:	2900018d 	st.b	$r13,$r12,0
1c00543c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005440:	02afc18c 	addi.w	$r12,$r12,-1040(0xbf0)
1c005444:	2a00018c 	ld.bu	$r12,$r12,0
1c005448:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00544c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005450:	28af118c 	ld.w	$r12,$r12,-1084(0xbc4)
1c005454:	2a40018c 	ld.hu	$r12,$r12,0
1c005458:	6c0025ac 	bgeu	$r13,$r12,36(0x24) # 1c00547c <main+0x53c>
1c00545c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005460:	02ae918c 	addi.w	$r12,$r12,-1116(0xba4)
1c005464:	2a00018c 	ld.bu	$r12,$r12,0
1c005468:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00546c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005470:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005474:	02ae418c 	addi.w	$r12,$r12,-1136(0xb90)
1c005478:	2900018d 	st.b	$r13,$r12,0
1c00547c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005480:	02aec58c 	addi.w	$r12,$r12,-1103(0xbb1)
1c005484:	2a00018c 	ld.bu	$r12,$r12,0
1c005488:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00548c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005490:	28adf18c 	ld.w	$r12,$r12,-1156(0xb7c)
1c005494:	2a40018c 	ld.hu	$r12,$r12,0
1c005498:	6c00258d 	bgeu	$r12,$r13,36(0x24) # 1c0054bc <main+0x57c>
1c00549c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0054a0:	02ad918c 	addi.w	$r12,$r12,-1180(0xb64)
1c0054a4:	2a00018c 	ld.bu	$r12,$r12,0
1c0054a8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0054ac:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0054b0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0054b4:	02ad418c 	addi.w	$r12,$r12,-1200(0xb50)
1c0054b8:	2900018d 	st.b	$r13,$r12,0
1c0054bc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0054c0:	02adc98c 	addi.w	$r12,$r12,-1166(0xb72)
1c0054c4:	2a00018c 	ld.bu	$r12,$r12,0
1c0054c8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0054cc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0054d0:	28ad618c 	ld.w	$r12,$r12,-1192(0xb58)
1c0054d4:	2a40018c 	ld.hu	$r12,$r12,0
1c0054d8:	6c0025ac 	bgeu	$r13,$r12,36(0x24) # 1c0054fc <main+0x5bc>
1c0054dc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0054e0:	02ac918c 	addi.w	$r12,$r12,-1244(0xb24)
1c0054e4:	2a00018c 	ld.bu	$r12,$r12,0
1c0054e8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0054ec:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0054f0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0054f4:	02ac418c 	addi.w	$r12,$r12,-1264(0xb10)
1c0054f8:	2900018d 	st.b	$r13,$r12,0
1c0054fc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005500:	02ac118c 	addi.w	$r12,$r12,-1276(0xb04)
1c005504:	2a00018c 	ld.bu	$r12,$r12,0
1c005508:	44003580 	bnez	$r12,52(0x34) # 1c00553c <main+0x5fc>
1c00550c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005510:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c005514:	57c0cbff 	bl	-16184(0xfffc0c8) # 1c0015dc <gpio_write_pin>
1c005518:	00150005 	move	$r5,$r0
1c00551c:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c005520:	57c0bfff 	bl	-16196(0xfffc0bc) # 1c0015dc <gpio_write_pin>
1c005524:	00150005 	move	$r5,$r0
1c005528:	02805004 	addi.w	$r4,$r0,20(0x14)
1c00552c:	57c0b3ff 	bl	-16208(0xfffc0b0) # 1c0015dc <gpio_write_pin>
1c005530:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005534:	541a0800 	bl	6664(0x1a08) # 1c006f3c <YUYIN_Ctrl>
1c005538:	5000bc00 	b	188(0xbc) # 1c0055f4 <main+0x6b4>
1c00553c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005540:	02ab118c 	addi.w	$r12,$r12,-1340(0xac4)
1c005544:	2a00018d 	ld.bu	$r13,$r12,0
1c005548:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00554c:	5c002dac 	bne	$r13,$r12,44(0x2c) # 1c005578 <main+0x638>
1c005550:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005554:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c005558:	57c087ff 	bl	-16252(0xfffc084) # 1c0015dc <gpio_write_pin>
1c00555c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005560:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c005564:	57c07bff 	bl	-16264(0xfffc078) # 1c0015dc <gpio_write_pin>
1c005568:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00556c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005570:	57c06fff 	bl	-16276(0xfffc06c) # 1c0015dc <gpio_write_pin>
1c005574:	50008000 	b	128(0x80) # 1c0055f4 <main+0x6b4>
1c005578:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00557c:	02aa218c 	addi.w	$r12,$r12,-1400(0xa88)
1c005580:	2a00018d 	ld.bu	$r13,$r12,0
1c005584:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c005588:	580019ac 	beq	$r13,$r12,24(0x18) # 1c0055a0 <main+0x660>
1c00558c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005590:	02a9d18c 	addi.w	$r12,$r12,-1420(0xa74)
1c005594:	2a00018d 	ld.bu	$r13,$r12,0
1c005598:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00559c:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c0055d0 <main+0x690>
1c0055a0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0055a4:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c0055a8:	57c037ff 	bl	-16332(0xfffc034) # 1c0015dc <gpio_write_pin>
1c0055ac:	00150005 	move	$r5,$r0
1c0055b0:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c0055b4:	57c02bff 	bl	-16344(0xfffc028) # 1c0015dc <gpio_write_pin>
1c0055b8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0055bc:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0055c0:	57c01fff 	bl	-16356(0xfffc01c) # 1c0015dc <gpio_write_pin>
1c0055c4:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0055c8:	54197400 	bl	6516(0x1974) # 1c006f3c <YUYIN_Ctrl>
1c0055cc:	50002800 	b	40(0x28) # 1c0055f4 <main+0x6b4>
1c0055d0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0055d4:	02a8c18c 	addi.w	$r12,$r12,-1488(0xa30)
1c0055d8:	2a00018d 	ld.bu	$r13,$r12,0
1c0055dc:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0055e0:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0055f4 <main+0x6b4>
1c0055e4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0055e8:	54031000 	bl	784(0x310) # 1c0058f8 <BEEP_on>
1c0055ec:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0055f0:	54194c00 	bl	6476(0x194c) # 1c006f3c <YUYIN_Ctrl>
1c0055f4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0055f8:	02a8e18c 	addi.w	$r12,$r12,-1480(0xa38)
1c0055fc:	2a00018c 	ld.bu	$r12,$r12,0
1c005600:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005604:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005608:	28a8318c 	ld.w	$r12,$r12,-1524(0xa0c)
1c00560c:	2a40018c 	ld.hu	$r12,$r12,0
1c005610:	6c0011ac 	bgeu	$r13,$r12,16(0x10) # 1c005620 <main+0x6e0>
1c005614:	00150005 	move	$r5,$r0
1c005618:	02808804 	addi.w	$r4,$r0,34(0x22)
1c00561c:	57bfc3ff 	bl	-16448(0xfffbfc0) # 1c0015dc <gpio_write_pin>
1c005620:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005624:	02a8318c 	addi.w	$r12,$r12,-1524(0xa0c)
1c005628:	2a00018c 	ld.bu	$r12,$r12,0
1c00562c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005630:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005634:	28a7818c 	ld.w	$r12,$r12,-1568(0x9e0)
1c005638:	2a40018c 	ld.hu	$r12,$r12,0
1c00563c:	6800598d 	bltu	$r12,$r13,88(0x58) # 1c005694 <main+0x754>
1c005640:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005644:	02a7b58c 	addi.w	$r12,$r12,-1555(0x9ed)
1c005648:	2a00018c 	ld.bu	$r12,$r12,0
1c00564c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005650:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005654:	28a6e18c 	ld.w	$r12,$r12,-1608(0x9b8)
1c005658:	2a40018c 	ld.hu	$r12,$r12,0
1c00565c:	6800398d 	bltu	$r12,$r13,56(0x38) # 1c005694 <main+0x754>
1c005660:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005664:	02a7398c 	addi.w	$r12,$r12,-1586(0x9ce)
1c005668:	2a00018c 	ld.bu	$r12,$r12,0
1c00566c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005670:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005674:	28a6d18c 	ld.w	$r12,$r12,-1612(0x9b4)
1c005678:	2a40018c 	ld.hu	$r12,$r12,0
1c00567c:	680019ac 	bltu	$r13,$r12,24(0x18) # 1c005694 <main+0x754>
1c005680:	00150005 	move	$r5,$r0
1c005684:	02808804 	addi.w	$r4,$r0,34(0x22)
1c005688:	57bf57ff 	bl	-16556(0xfffbf54) # 1c0015dc <gpio_write_pin>
1c00568c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005690:	5418ac00 	bl	6316(0x18ac) # 1c006f3c <YUYIN_Ctrl>
1c005694:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005698:	02a6618c 	addi.w	$r12,$r12,-1640(0x998)
1c00569c:	2a00018c 	ld.bu	$r12,$r12,0
1c0056a0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0056a4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0056a8:	28a5b18c 	ld.w	$r12,$r12,-1684(0x96c)
1c0056ac:	2a40018c 	ld.hu	$r12,$r12,0
1c0056b0:	6c00198d 	bgeu	$r12,$r13,24(0x18) # 1c0056c8 <main+0x788>
1c0056b4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0056b8:	02808804 	addi.w	$r4,$r0,34(0x22)
1c0056bc:	57bf23ff 	bl	-16608(0xfffbf20) # 1c0015dc <gpio_write_pin>
1c0056c0:	00150004 	move	$r4,$r0
1c0056c4:	54023400 	bl	564(0x234) # 1c0058f8 <BEEP_on>
1c0056c8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0056cc:	02a5958c 	addi.w	$r12,$r12,-1691(0x965)
1c0056d0:	2a00018c 	ld.bu	$r12,$r12,0
1c0056d4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0056d8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0056dc:	28a4c18c 	ld.w	$r12,$r12,-1744(0x930)
1c0056e0:	2a40018c 	ld.hu	$r12,$r12,0
1c0056e4:	680059ac 	bltu	$r13,$r12,88(0x58) # 1c00573c <main+0x7fc>
1c0056e8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0056ec:	02a5118c 	addi.w	$r12,$r12,-1724(0x944)
1c0056f0:	2a00018c 	ld.bu	$r12,$r12,0
1c0056f4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0056f8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0056fc:	28a4618c 	ld.w	$r12,$r12,-1768(0x918)
1c005700:	2a40018c 	ld.hu	$r12,$r12,0
1c005704:	680039ac 	bltu	$r13,$r12,56(0x38) # 1c00573c <main+0x7fc>
1c005708:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00570c:	02a4998c 	addi.w	$r12,$r12,-1754(0x926)
1c005710:	2a00018c 	ld.bu	$r12,$r12,0
1c005714:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005718:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00571c:	28a4318c 	ld.w	$r12,$r12,-1780(0x90c)
1c005720:	2a40018c 	ld.hu	$r12,$r12,0
1c005724:	680019ac 	bltu	$r13,$r12,24(0x18) # 1c00573c <main+0x7fc>
1c005728:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00572c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005730:	57beafff 	bl	-16724(0xfffbeac) # 1c0015dc <gpio_write_pin>
1c005734:	02800804 	addi.w	$r4,$r0,2(0x2)
1c005738:	54180400 	bl	6148(0x1804) # 1c006f3c <YUYIN_Ctrl>
1c00573c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005740:	02a3c58c 	addi.w	$r12,$r12,-1807(0x8f1)
1c005744:	2a00018c 	ld.bu	$r12,$r12,0
1c005748:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00574c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005750:	28a2f18c 	ld.w	$r12,$r12,-1860(0x8bc)
1c005754:	2a40018c 	ld.hu	$r12,$r12,0
1c005758:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c005764 <main+0x824>
1c00575c:	00150004 	move	$r4,$r0
1c005760:	54019800 	bl	408(0x198) # 1c0058f8 <BEEP_on>
1c005764:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005768:	02a3298c 	addi.w	$r12,$r12,-1846(0x8ca)
1c00576c:	2a00018c 	ld.bu	$r12,$r12,0
1c005770:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005774:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005778:	28a2c18c 	ld.w	$r12,$r12,-1872(0x8b0)
1c00577c:	2a40018c 	ld.hu	$r12,$r12,0
1c005780:	6c0011ac 	bgeu	$r13,$r12,16(0x10) # 1c005790 <main+0x850>
1c005784:	00150005 	move	$r5,$r0
1c005788:	02808804 	addi.w	$r4,$r0,34(0x22)
1c00578c:	57be53ff 	bl	-16816(0xfffbe50) # 1c0015dc <gpio_write_pin>
1c005790:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005794:	02a2798c 	addi.w	$r12,$r12,-1890(0x89e)
1c005798:	2a00018c 	ld.bu	$r12,$r12,0
1c00579c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0057a0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0057a4:	28a2118c 	ld.w	$r12,$r12,-1916(0x884)
1c0057a8:	2a40018c 	ld.hu	$r12,$r12,0
1c0057ac:	6800598d 	bltu	$r12,$r13,88(0x58) # 1c005804 <main+0x8c4>
1c0057b0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0057b4:	02a1f18c 	addi.w	$r12,$r12,-1924(0x87c)
1c0057b8:	2a00018c 	ld.bu	$r12,$r12,0
1c0057bc:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0057c0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0057c4:	28a1418c 	ld.w	$r12,$r12,-1968(0x850)
1c0057c8:	2a40018c 	ld.hu	$r12,$r12,0
1c0057cc:	680039ac 	bltu	$r13,$r12,56(0x38) # 1c005804 <main+0x8c4>
1c0057d0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0057d4:	02a1758c 	addi.w	$r12,$r12,-1955(0x85d)
1c0057d8:	2a00018c 	ld.bu	$r12,$r12,0
1c0057dc:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0057e0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0057e4:	28a0a18c 	ld.w	$r12,$r12,-2008(0x828)
1c0057e8:	2a40018c 	ld.hu	$r12,$r12,0
1c0057ec:	6800198d 	bltu	$r12,$r13,24(0x18) # 1c005804 <main+0x8c4>
1c0057f0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0057f4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0057f8:	57bde7ff 	bl	-16924(0xfffbde4) # 1c0015dc <gpio_write_pin>
1c0057fc:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c005800:	54173c00 	bl	5948(0x173c) # 1c006f3c <YUYIN_Ctrl>
1c005804:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005808:	02a0a98c 	addi.w	$r12,$r12,-2006(0x82a)
1c00580c:	2a00018c 	ld.bu	$r12,$r12,0
1c005810:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005814:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005818:	28a0418c 	ld.w	$r12,$r12,-2032(0x810)
1c00581c:	2a40018c 	ld.hu	$r12,$r12,0
1c005820:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c00582c <main+0x8ec>
1c005824:	00150004 	move	$r4,$r0
1c005828:	5400d000 	bl	208(0xd0) # 1c0058f8 <BEEP_on>
1c00582c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005830:	02a0018c 	addi.w	$r12,$r12,-2048(0x800)
1c005834:	2a00018c 	ld.bu	$r12,$r12,0
1c005838:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00583c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005840:	289f518c 	ld.w	$r12,$r12,2004(0x7d4)
1c005844:	2a40018c 	ld.hu	$r12,$r12,0
1c005848:	6bf781ac 	bltu	$r13,$r12,-2176(0x3f780) # 1c004fc8 <main+0x88>
1c00584c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005850:	029f858c 	addi.w	$r12,$r12,2017(0x7e1)
1c005854:	2a00018c 	ld.bu	$r12,$r12,0
1c005858:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00585c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005860:	289eb18c 	ld.w	$r12,$r12,1964(0x7ac)
1c005864:	2a40018c 	ld.hu	$r12,$r12,0
1c005868:	6bf7618d 	bltu	$r12,$r13,-2208(0x3f760) # 1c004fc8 <main+0x88>
1c00586c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005870:	029f098c 	addi.w	$r12,$r12,1986(0x7c2)
1c005874:	2a00018c 	ld.bu	$r12,$r12,0
1c005878:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00587c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005880:	289ea18c 	ld.w	$r12,$r12,1960(0x7a8)
1c005884:	2a40018c 	ld.hu	$r12,$r12,0
1c005888:	6bf741ac 	bltu	$r13,$r12,-2240(0x3f740) # 1c004fc8 <main+0x88>
1c00588c:	00150004 	move	$r4,$r0
1c005890:	54006800 	bl	104(0x68) # 1c0058f8 <BEEP_on>
1c005894:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005898:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c00589c:	57bd43ff 	bl	-17088(0xfffbd40) # 1c0015dc <gpio_write_pin>
1c0058a0:	00150005 	move	$r5,$r0
1c0058a4:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c0058a8:	57bd37ff 	bl	-17100(0xfffbd34) # 1c0015dc <gpio_write_pin>
1c0058ac:	00150005 	move	$r5,$r0
1c0058b0:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0058b4:	57bd2bff 	bl	-17112(0xfffbd28) # 1c0015dc <gpio_write_pin>
1c0058b8:	53f713ff 	b	-2288(0xffff710) # 1c004fc8 <main+0x88>

1c0058bc <BEEP_Init>:
BEEP_Init():
1c0058bc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0058c0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0058c4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0058c8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0058cc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0058d0:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c0058d4:	57bf8fff 	bl	-16500(0xfffbf8c) # 1c001860 <gpio_set_direction>
1c0058d8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0058dc:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c0058e0:	57bcffff 	bl	-17156(0xfffbcfc) # 1c0015dc <gpio_write_pin>
1c0058e4:	03400000 	andi	$r0,$r0,0x0
1c0058e8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0058ec:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0058f0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0058f4:	4c000020 	jirl	$r0,$r1,0

1c0058f8 <BEEP_on>:
BEEP_on():
1c0058f8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0058fc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005900:	29806076 	st.w	$r22,$r3,24(0x18)
1c005904:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005908:	0015008c 	move	$r12,$r4
1c00590c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005910:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005914:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005918:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c005928 <BEEP_on+0x30>
1c00591c:	00150005 	move	$r5,$r0
1c005920:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c005924:	57bcbbff 	bl	-17224(0xfffbcb8) # 1c0015dc <gpio_write_pin>
1c005928:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00592c:	44001180 	bnez	$r12,16(0x10) # 1c00593c <BEEP_on+0x44>
1c005930:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005934:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c005938:	57bca7ff 	bl	-17244(0xfffbca4) # 1c0015dc <gpio_write_pin>
1c00593c:	03400000 	andi	$r0,$r0,0x0
1c005940:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005944:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005948:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00594c:	4c000020 	jirl	$r0,$r1,0

1c005950 <IIC_Delay>:
IIC_Delay():
1c005950:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005954:	29807076 	st.w	$r22,$r3,28(0x1c)
1c005958:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00595c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005960:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005964:	50001000 	b	16(0x10) # 1c005974 <IIC_Delay+0x24>
1c005968:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00596c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c005970:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005974:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005978:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c005968 <IIC_Delay+0x18>
1c00597c:	03400000 	andi	$r0,$r0,0x0
1c005980:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c005984:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005988:	4c000020 	jirl	$r0,$r1,0

1c00598c <IIC_Init>:
IIC_Init():
1c00598c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005990:	29803061 	st.w	$r1,$r3,12(0xc)
1c005994:	29802076 	st.w	$r22,$r3,8(0x8)
1c005998:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00599c:	00150005 	move	$r5,$r0
1c0059a0:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0059a4:	57bcb3ff 	bl	-17232(0xfffbcb0) # 1c001654 <gpio_pin_remap>
1c0059a8:	00150005 	move	$r5,$r0
1c0059ac:	02801404 	addi.w	$r4,$r0,5(0x5)
1c0059b0:	57bca7ff 	bl	-17244(0xfffbca4) # 1c001654 <gpio_pin_remap>
1c0059b4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0059b8:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0059bc:	57bea7ff 	bl	-16732(0xfffbea4) # 1c001860 <gpio_set_direction>
1c0059c0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0059c4:	02801404 	addi.w	$r4,$r0,5(0x5)
1c0059c8:	57be9bff 	bl	-16744(0xfffbe98) # 1c001860 <gpio_set_direction>
1c0059cc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0059d0:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0059d4:	57bc0bff 	bl	-17400(0xfffbc08) # 1c0015dc <gpio_write_pin>
1c0059d8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0059dc:	02801404 	addi.w	$r4,$r0,5(0x5)
1c0059e0:	57bbffff 	bl	-17412(0xfffbbfc) # 1c0015dc <gpio_write_pin>
1c0059e4:	03400000 	andi	$r0,$r0,0x0
1c0059e8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0059ec:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0059f0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0059f4:	4c000020 	jirl	$r0,$r1,0

1c0059f8 <SDA_IN>:
SDA_IN():
1c0059f8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0059fc:	29803061 	st.w	$r1,$r3,12(0xc)
1c005a00:	29802076 	st.w	$r22,$r3,8(0x8)
1c005a04:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005a08:	00150005 	move	$r5,$r0
1c005a0c:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005a10:	57be53ff 	bl	-16816(0xfffbe50) # 1c001860 <gpio_set_direction>
1c005a14:	03400000 	andi	$r0,$r0,0x0
1c005a18:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005a1c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005a20:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005a24:	4c000020 	jirl	$r0,$r1,0

1c005a28 <SDA_OUT>:
SDA_OUT():
1c005a28:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005a2c:	29803061 	st.w	$r1,$r3,12(0xc)
1c005a30:	29802076 	st.w	$r22,$r3,8(0x8)
1c005a34:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005a38:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005a3c:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005a40:	57be23ff 	bl	-16864(0xfffbe20) # 1c001860 <gpio_set_direction>
1c005a44:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005a48:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005a4c:	57bb93ff 	bl	-17520(0xfffbb90) # 1c0015dc <gpio_write_pin>
1c005a50:	03400000 	andi	$r0,$r0,0x0
1c005a54:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005a58:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005a5c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005a60:	4c000020 	jirl	$r0,$r1,0

1c005a64 <IIC_Start>:
IIC_Start():
1c005a64:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005a68:	29803061 	st.w	$r1,$r3,12(0xc)
1c005a6c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005a70:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005a74:	57ffb7ff 	bl	-76(0xfffffb4) # 1c005a28 <SDA_OUT>
1c005a78:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005a7c:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005a80:	57bb5fff 	bl	-17572(0xfffbb5c) # 1c0015dc <gpio_write_pin>
1c005a84:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005a88:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005a8c:	57bb53ff 	bl	-17584(0xfffbb50) # 1c0015dc <gpio_write_pin>
1c005a90:	57fec3ff 	bl	-320(0xffffec0) # 1c005950 <IIC_Delay>
1c005a94:	00150005 	move	$r5,$r0
1c005a98:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005a9c:	57bb43ff 	bl	-17600(0xfffbb40) # 1c0015dc <gpio_write_pin>
1c005aa0:	57feb3ff 	bl	-336(0xffffeb0) # 1c005950 <IIC_Delay>
1c005aa4:	00150005 	move	$r5,$r0
1c005aa8:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005aac:	57bb33ff 	bl	-17616(0xfffbb30) # 1c0015dc <gpio_write_pin>
1c005ab0:	03400000 	andi	$r0,$r0,0x0
1c005ab4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005ab8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005abc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005ac0:	4c000020 	jirl	$r0,$r1,0

1c005ac4 <IIC_Stop>:
IIC_Stop():
1c005ac4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005ac8:	29803061 	st.w	$r1,$r3,12(0xc)
1c005acc:	29802076 	st.w	$r22,$r3,8(0x8)
1c005ad0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005ad4:	57ff57ff 	bl	-172(0xfffff54) # 1c005a28 <SDA_OUT>
1c005ad8:	00150005 	move	$r5,$r0
1c005adc:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005ae0:	57baffff 	bl	-17668(0xfffbafc) # 1c0015dc <gpio_write_pin>
1c005ae4:	00150005 	move	$r5,$r0
1c005ae8:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005aec:	57baf3ff 	bl	-17680(0xfffbaf0) # 1c0015dc <gpio_write_pin>
1c005af0:	57fe63ff 	bl	-416(0xffffe60) # 1c005950 <IIC_Delay>
1c005af4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005af8:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005afc:	57bae3ff 	bl	-17696(0xfffbae0) # 1c0015dc <gpio_write_pin>
1c005b00:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005b04:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005b08:	57bad7ff 	bl	-17708(0xfffbad4) # 1c0015dc <gpio_write_pin>
1c005b0c:	57fe47ff 	bl	-444(0xffffe44) # 1c005950 <IIC_Delay>
1c005b10:	03400000 	andi	$r0,$r0,0x0
1c005b14:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005b18:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005b1c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005b20:	4c000020 	jirl	$r0,$r1,0

1c005b24 <IIC_Wait_Ack>:
IIC_Wait_Ack():
1c005b24:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005b28:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005b2c:	29806076 	st.w	$r22,$r3,24(0x18)
1c005b30:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005b34:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005b38:	57fec3ff 	bl	-320(0xffffec0) # 1c0059f8 <SDA_IN>
1c005b3c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005b40:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005b44:	57ba9bff 	bl	-17768(0xfffba98) # 1c0015dc <gpio_write_pin>
1c005b48:	57fe0bff 	bl	-504(0xffffe08) # 1c005950 <IIC_Delay>
1c005b4c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005b50:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005b54:	57ba8bff 	bl	-17784(0xfffba88) # 1c0015dc <gpio_write_pin>
1c005b58:	57fdfbff 	bl	-520(0xffffdf8) # 1c005950 <IIC_Delay>
1c005b5c:	50002800 	b	40(0x28) # 1c005b84 <IIC_Wait_Ack+0x60>
1c005b60:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005b64:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005b68:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005b6c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005b70:	0283e80c 	addi.w	$r12,$r0,250(0xfa)
1c005b74:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c005b84 <IIC_Wait_Ack+0x60>
1c005b78:	57ff4fff 	bl	-180(0xfffff4c) # 1c005ac4 <IIC_Stop>
1c005b7c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005b80:	50002400 	b	36(0x24) # 1c005ba4 <IIC_Wait_Ack+0x80>
1c005b84:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005b88:	57ba07ff 	bl	-17916(0xfffba04) # 1c00158c <gpio_get_pin>
1c005b8c:	0015008c 	move	$r12,$r4
1c005b90:	47ffd19f 	bnez	$r12,-48(0x7fffd0) # 1c005b60 <IIC_Wait_Ack+0x3c>
1c005b94:	00150005 	move	$r5,$r0
1c005b98:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005b9c:	57ba43ff 	bl	-17856(0xfffba40) # 1c0015dc <gpio_write_pin>
1c005ba0:	0015000c 	move	$r12,$r0
1c005ba4:	00150184 	move	$r4,$r12
1c005ba8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005bac:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005bb0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005bb4:	4c000020 	jirl	$r0,$r1,0

1c005bb8 <IIC_Send_Byte>:
IIC_Send_Byte():
1c005bb8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005bbc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005bc0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005bc4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005bc8:	0015008c 	move	$r12,$r4
1c005bcc:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005bd0:	57fe5bff 	bl	-424(0xffffe58) # 1c005a28 <SDA_OUT>
1c005bd4:	00150005 	move	$r5,$r0
1c005bd8:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005bdc:	57ba03ff 	bl	-17920(0xfffba00) # 1c0015dc <gpio_write_pin>
1c005be0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005be4:	50006000 	b	96(0x60) # 1c005c44 <IIC_Send_Byte+0x8c>
1c005be8:	283f7ecc 	ld.b	$r12,$r22,-33(0xfdf)
1c005bec:	64001580 	bge	$r12,$r0,20(0x14) # 1c005c00 <IIC_Send_Byte+0x48>
1c005bf0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005bf4:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005bf8:	57b9e7ff 	bl	-17948(0xfffb9e4) # 1c0015dc <gpio_write_pin>
1c005bfc:	50001000 	b	16(0x10) # 1c005c0c <IIC_Send_Byte+0x54>
1c005c00:	00150005 	move	$r5,$r0
1c005c04:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005c08:	57b9d7ff 	bl	-17964(0xfffb9d4) # 1c0015dc <gpio_write_pin>
1c005c0c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c005c10:	0040858c 	slli.w	$r12,$r12,0x1
1c005c14:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005c18:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005c1c:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005c20:	57b9bfff 	bl	-17988(0xfffb9bc) # 1c0015dc <gpio_write_pin>
1c005c24:	57fd2fff 	bl	-724(0xffffd2c) # 1c005950 <IIC_Delay>
1c005c28:	00150005 	move	$r5,$r0
1c005c2c:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005c30:	57b9afff 	bl	-18004(0xfffb9ac) # 1c0015dc <gpio_write_pin>
1c005c34:	57fd1fff 	bl	-740(0xffffd1c) # 1c005950 <IIC_Delay>
1c005c38:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005c3c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005c40:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005c44:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005c48:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005c4c:	6fff9d8d 	bgeu	$r12,$r13,-100(0x3ff9c) # 1c005be8 <IIC_Send_Byte+0x30>
1c005c50:	03400000 	andi	$r0,$r0,0x0
1c005c54:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005c58:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005c5c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005c60:	4c000020 	jirl	$r0,$r1,0

1c005c64 <DHT11_Rst>:
DHT11_Rst():
1c005c64:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005c68:	29803061 	st.w	$r1,$r3,12(0xc)
1c005c6c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005c70:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005c74:	54007000 	bl	112(0x70) # 1c005ce4 <DHT11_IO_Out>
1c005c78:	00150005 	move	$r5,$r0
1c005c7c:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005c80:	57b95fff 	bl	-18084(0xfffb95c) # 1c0015dc <gpio_write_pin>
1c005c84:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005c88:	57d9a7ff 	bl	-9820(0xfffd9a4) # 1c00362c <delay_ms>
1c005c8c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005c90:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005c94:	57b94bff 	bl	-18104(0xfffb948) # 1c0015dc <gpio_write_pin>
1c005c98:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c005c9c:	57d95bff 	bl	-9896(0xfffd958) # 1c0035f4 <delay_us>
1c005ca0:	03400000 	andi	$r0,$r0,0x0
1c005ca4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005ca8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005cac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005cb0:	4c000020 	jirl	$r0,$r1,0

1c005cb4 <DHT11_IO_In>:
DHT11_IO_In():
1c005cb4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005cb8:	29803061 	st.w	$r1,$r3,12(0xc)
1c005cbc:	29802076 	st.w	$r22,$r3,8(0x8)
1c005cc0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005cc4:	00150005 	move	$r5,$r0
1c005cc8:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005ccc:	57bb97ff 	bl	-17516(0xfffbb94) # 1c001860 <gpio_set_direction>
1c005cd0:	03400000 	andi	$r0,$r0,0x0
1c005cd4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005cd8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005cdc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005ce0:	4c000020 	jirl	$r0,$r1,0

1c005ce4 <DHT11_IO_Out>:
DHT11_IO_Out():
1c005ce4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005ce8:	29803061 	st.w	$r1,$r3,12(0xc)
1c005cec:	29802076 	st.w	$r22,$r3,8(0x8)
1c005cf0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005cf4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005cf8:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005cfc:	57bb67ff 	bl	-17564(0xfffbb64) # 1c001860 <gpio_set_direction>
1c005d00:	03400000 	andi	$r0,$r0,0x0
1c005d04:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005d08:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005d0c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005d10:	4c000020 	jirl	$r0,$r1,0

1c005d14 <DHT11_Check>:
DHT11_Check():
1c005d14:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005d18:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005d1c:	29806076 	st.w	$r22,$r3,24(0x18)
1c005d20:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005d24:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005d28:	57ff8fff 	bl	-116(0xfffff8c) # 1c005cb4 <DHT11_IO_In>
1c005d2c:	50001000 	b	16(0x10) # 1c005d3c <DHT11_Check+0x28>
1c005d30:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005d34:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005d38:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005d3c:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005d40:	57b84fff 	bl	-18356(0xfffb84c) # 1c00158c <gpio_get_pin>
1c005d44:	0015008c 	move	$r12,$r4
1c005d48:	40001180 	beqz	$r12,16(0x10) # 1c005d58 <DHT11_Check+0x44>
1c005d4c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005d50:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c005d54:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c005d30 <DHT11_Check+0x1c>
1c005d58:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005d5c:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c005d60:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c005d6c <DHT11_Check+0x58>
1c005d64:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005d68:	50004c00 	b	76(0x4c) # 1c005db4 <DHT11_Check+0xa0>
1c005d6c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005d70:	50001000 	b	16(0x10) # 1c005d80 <DHT11_Check+0x6c>
1c005d74:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005d78:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005d7c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005d80:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005d84:	57b80bff 	bl	-18424(0xfffb808) # 1c00158c <gpio_get_pin>
1c005d88:	0015008c 	move	$r12,$r4
1c005d8c:	44001180 	bnez	$r12,16(0x10) # 1c005d9c <DHT11_Check+0x88>
1c005d90:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005d94:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c005d98:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c005d74 <DHT11_Check+0x60>
1c005d9c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005da0:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c005da4:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c005db0 <DHT11_Check+0x9c>
1c005da8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005dac:	50000800 	b	8(0x8) # 1c005db4 <DHT11_Check+0xa0>
1c005db0:	0015000c 	move	$r12,$r0
1c005db4:	00150184 	move	$r4,$r12
1c005db8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005dbc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005dc0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005dc4:	4c000020 	jirl	$r0,$r1,0

1c005dc8 <DHT11_Read_Bit>:
DHT11_Read_Bit():
1c005dc8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005dcc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005dd0:	29806076 	st.w	$r22,$r3,24(0x18)
1c005dd4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005dd8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005ddc:	50001000 	b	16(0x10) # 1c005dec <DHT11_Read_Bit+0x24>
1c005de0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005de4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005de8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005dec:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005df0:	57b79fff 	bl	-18532(0xfffb79c) # 1c00158c <gpio_get_pin>
1c005df4:	0015008c 	move	$r12,$r4
1c005df8:	40001180 	beqz	$r12,16(0x10) # 1c005e08 <DHT11_Read_Bit+0x40>
1c005dfc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005e00:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c005e04:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c005de0 <DHT11_Read_Bit+0x18>
1c005e08:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005e0c:	50001000 	b	16(0x10) # 1c005e1c <DHT11_Read_Bit+0x54>
1c005e10:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005e14:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005e18:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005e1c:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005e20:	57b76fff 	bl	-18580(0xfffb76c) # 1c00158c <gpio_get_pin>
1c005e24:	0015008c 	move	$r12,$r4
1c005e28:	44001180 	bnez	$r12,16(0x10) # 1c005e38 <DHT11_Read_Bit+0x70>
1c005e2c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005e30:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c005e34:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c005e10 <DHT11_Read_Bit+0x48>
1c005e38:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c005e3c:	57d7bbff 	bl	-10312(0xfffd7b8) # 1c0035f4 <delay_us>
1c005e40:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005e44:	57b74bff 	bl	-18616(0xfffb748) # 1c00158c <gpio_get_pin>
1c005e48:	0015008c 	move	$r12,$r4
1c005e4c:	40000d80 	beqz	$r12,12(0xc) # 1c005e58 <DHT11_Read_Bit+0x90>
1c005e50:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005e54:	50000800 	b	8(0x8) # 1c005e5c <DHT11_Read_Bit+0x94>
1c005e58:	0015000c 	move	$r12,$r0
1c005e5c:	00150184 	move	$r4,$r12
1c005e60:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005e64:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005e68:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005e6c:	4c000020 	jirl	$r0,$r1,0

1c005e70 <DHT11_Read_Byte>:
DHT11_Read_Byte():
1c005e70:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005e74:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005e78:	29806076 	st.w	$r22,$r3,24(0x18)
1c005e7c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005e80:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005e84:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005e88:	50003400 	b	52(0x34) # 1c005ebc <DHT11_Read_Byte+0x4c>
1c005e8c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005e90:	0040858c 	slli.w	$r12,$r12,0x1
1c005e94:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005e98:	57ff33ff 	bl	-208(0xfffff30) # 1c005dc8 <DHT11_Read_Bit>
1c005e9c:	0015008c 	move	$r12,$r4
1c005ea0:	0015018d 	move	$r13,$r12
1c005ea4:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005ea8:	001531ac 	or	$r12,$r13,$r12
1c005eac:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005eb0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005eb4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005eb8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005ebc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005ec0:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005ec4:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c005e8c <DHT11_Read_Byte+0x1c>
1c005ec8:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005ecc:	00150184 	move	$r4,$r12
1c005ed0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005ed4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005ed8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005edc:	4c000020 	jirl	$r0,$r1,0

1c005ee0 <DHT11_Read_Data>:
DHT11_Read_Data():
1c005ee0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005ee4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005ee8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005eec:	29809077 	st.w	$r23,$r3,36(0x24)
1c005ef0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005ef4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005ef8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005efc:	57fd6bff 	bl	-664(0xffffd68) # 1c005c64 <DHT11_Rst>
1c005f00:	57fe17ff 	bl	-492(0xffffe14) # 1c005d14 <DHT11_Check>
1c005f04:	0015008c 	move	$r12,$r4
1c005f08:	4400c180 	bnez	$r12,192(0xc0) # 1c005fc8 <DHT11_Read_Data+0xe8>
1c005f0c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005f10:	50002800 	b	40(0x28) # 1c005f38 <DHT11_Read_Data+0x58>
1c005f14:	2a3fbed7 	ld.bu	$r23,$r22,-17(0xfef)
1c005f18:	57ff5bff 	bl	-168(0xfffff58) # 1c005e70 <DHT11_Read_Byte>
1c005f1c:	0015008c 	move	$r12,$r4
1c005f20:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c005f24:	00105dad 	add.w	$r13,$r13,$r23
1c005f28:	293fe1ac 	st.b	$r12,$r13,-8(0xff8)
1c005f2c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005f30:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005f34:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005f38:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005f3c:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c005f40:	6fffd58d 	bgeu	$r12,$r13,-44(0x3ffd4) # 1c005f14 <DHT11_Read_Data+0x34>
1c005f44:	2a3fa2cc 	ld.bu	$r12,$r22,-24(0xfe8)
1c005f48:	0015018d 	move	$r13,$r12
1c005f4c:	2a3fa6cc 	ld.bu	$r12,$r22,-23(0xfe9)
1c005f50:	001031ac 	add.w	$r12,$r13,$r12
1c005f54:	2a3faacd 	ld.bu	$r13,$r22,-22(0xfea)
1c005f58:	0010358c 	add.w	$r12,$r12,$r13
1c005f5c:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c005f60:	0010358c 	add.w	$r12,$r12,$r13
1c005f64:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c005f68:	5c00698d 	bne	$r12,$r13,104(0x68) # 1c005fd0 <DHT11_Read_Data+0xf0>
1c005f6c:	2a3fa2cc 	ld.bu	$r12,$r22,-24(0xfe8)
1c005f70:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005f74:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005f78:	001c31ac 	mul.w	$r12,$r13,$r12
1c005f7c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005f80:	2a3fa6cc 	ld.bu	$r12,$r22,-23(0xfe9)
1c005f84:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005f88:	001031ac 	add.w	$r12,$r13,$r12
1c005f8c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005f90:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005f94:	2940018d 	st.h	$r13,$r12,0
1c005f98:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c005f9c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005fa0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005fa4:	001c31ac 	mul.w	$r12,$r13,$r12
1c005fa8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005fac:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c005fb0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005fb4:	001031ac 	add.w	$r12,$r13,$r12
1c005fb8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005fbc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005fc0:	2940018d 	st.h	$r13,$r12,0
1c005fc4:	50000c00 	b	12(0xc) # 1c005fd0 <DHT11_Read_Data+0xf0>
1c005fc8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005fcc:	50000800 	b	8(0x8) # 1c005fd4 <DHT11_Read_Data+0xf4>
1c005fd0:	0015000c 	move	$r12,$r0
1c005fd4:	00150184 	move	$r4,$r12
1c005fd8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005fdc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005fe0:	28809077 	ld.w	$r23,$r3,36(0x24)
1c005fe4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005fe8:	4c000020 	jirl	$r0,$r1,0

1c005fec <DHT11_Init>:
DHT11_Init():
1c005fec:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005ff0:	29803061 	st.w	$r1,$r3,12(0xc)
1c005ff4:	29802076 	st.w	$r22,$r3,8(0x8)
1c005ff8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005ffc:	00150005 	move	$r5,$r0
1c006000:	02804404 	addi.w	$r4,$r0,17(0x11)
1c006004:	57b653ff 	bl	-18864(0xfffb650) # 1c001654 <gpio_pin_remap>
1c006008:	57fcdfff 	bl	-804(0xffffcdc) # 1c005ce4 <DHT11_IO_Out>
1c00600c:	57fc5bff 	bl	-936(0xffffc58) # 1c005c64 <DHT11_Rst>
1c006010:	57fd07ff 	bl	-764(0xffffd04) # 1c005d14 <DHT11_Check>
1c006014:	0015008c 	move	$r12,$r4
1c006018:	00150184 	move	$r4,$r12
1c00601c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006020:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006024:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006028:	4c000020 	jirl	$r0,$r1,0

1c00602c <FAN_Init>:
FAN_Init():
1c00602c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006030:	29803061 	st.w	$r1,$r3,12(0xc)
1c006034:	29802076 	st.w	$r22,$r3,8(0x8)
1c006038:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00603c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006040:	02808804 	addi.w	$r4,$r0,34(0x22)
1c006044:	57b81fff 	bl	-18404(0xfffb81c) # 1c001860 <gpio_set_direction>
1c006048:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00604c:	02808804 	addi.w	$r4,$r0,34(0x22)
1c006050:	57b58fff 	bl	-19060(0xfffb58c) # 1c0015dc <gpio_write_pin>
1c006054:	03400000 	andi	$r0,$r0,0x0
1c006058:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00605c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006060:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006064:	4c000020 	jirl	$r0,$r1,0

1c006068 <LED_Init>:
LED_Init():
1c006068:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00606c:	29803061 	st.w	$r1,$r3,12(0xc)
1c006070:	29802076 	st.w	$r22,$r3,8(0x8)
1c006074:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006078:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00607c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c006080:	57b7e3ff 	bl	-18464(0xfffb7e0) # 1c001860 <gpio_set_direction>
1c006084:	03400000 	andi	$r0,$r0,0x0
1c006088:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00608c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006090:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006094:	4c000020 	jirl	$r0,$r1,0

1c006098 <KEY_Init>:
KEY_Init():
1c006098:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00609c:	29803061 	st.w	$r1,$r3,12(0xc)
1c0060a0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0060a4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0060a8:	00150005 	move	$r5,$r0
1c0060ac:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0060b0:	57b7b3ff 	bl	-18512(0xfffb7b0) # 1c001860 <gpio_set_direction>
1c0060b4:	03400000 	andi	$r0,$r0,0x0
1c0060b8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0060bc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0060c0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0060c4:	4c000020 	jirl	$r0,$r1,0

1c0060c8 <OLED_Hardware_Init>:
OLED_Hardware_Init():
1c0060c8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0060cc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0060d0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0060d4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0060d8:	57f8b7ff 	bl	-1868(0xffff8b4) # 1c00598c <IIC_Init>
1c0060dc:	03400000 	andi	$r0,$r0,0x0
1c0060e0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0060e4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0060e8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0060ec:	4c000020 	jirl	$r0,$r1,0

1c0060f0 <OLED_WR_Byte>:
OLED_WR_Byte():
1c0060f0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0060f4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0060f8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0060fc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006100:	0015008c 	move	$r12,$r4
1c006104:	001500ad 	move	$r13,$r5
1c006108:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00610c:	001501ac 	move	$r12,$r13
1c006110:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c006114:	57f953ff 	bl	-1712(0xffff950) # 1c005a64 <IIC_Start>
1c006118:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c00611c:	57fa9fff 	bl	-1380(0xffffa9c) # 1c005bb8 <IIC_Send_Byte>
1c006120:	57fa07ff 	bl	-1532(0xffffa04) # 1c005b24 <IIC_Wait_Ack>
1c006124:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006128:	00150184 	move	$r4,$r12
1c00612c:	57fa8fff 	bl	-1396(0xffffa8c) # 1c005bb8 <IIC_Send_Byte>
1c006130:	57f9f7ff 	bl	-1548(0xffff9f4) # 1c005b24 <IIC_Wait_Ack>
1c006134:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006138:	00150184 	move	$r4,$r12
1c00613c:	57fa7fff 	bl	-1412(0xffffa7c) # 1c005bb8 <IIC_Send_Byte>
1c006140:	57f9e7ff 	bl	-1564(0xffff9e4) # 1c005b24 <IIC_Wait_Ack>
1c006144:	57f983ff 	bl	-1664(0xffff980) # 1c005ac4 <IIC_Stop>
1c006148:	03400000 	andi	$r0,$r0,0x0
1c00614c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006150:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006154:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006158:	4c000020 	jirl	$r0,$r1,0

1c00615c <OLED_Set_Pos>:
OLED_Set_Pos():
1c00615c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006160:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006164:	29806076 	st.w	$r22,$r3,24(0x18)
1c006168:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00616c:	0015008c 	move	$r12,$r4
1c006170:	001500ad 	move	$r13,$r5
1c006174:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006178:	001501ac 	move	$r12,$r13
1c00617c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c006180:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006184:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c006188:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00618c:	00150005 	move	$r5,$r0
1c006190:	00150184 	move	$r4,$r12
1c006194:	57ff5fff 	bl	-164(0xfffff5c) # 1c0060f0 <OLED_WR_Byte>
1c006198:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00619c:	0044918c 	srli.w	$r12,$r12,0x4
1c0061a0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0061a4:	0380418c 	ori	$r12,$r12,0x10
1c0061a8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0061ac:	00150005 	move	$r5,$r0
1c0061b0:	00150184 	move	$r4,$r12
1c0061b4:	57ff3fff 	bl	-196(0xfffff3c) # 1c0060f0 <OLED_WR_Byte>
1c0061b8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0061bc:	03403d8c 	andi	$r12,$r12,0xf
1c0061c0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0061c4:	00150005 	move	$r5,$r0
1c0061c8:	00150184 	move	$r4,$r12
1c0061cc:	57ff27ff 	bl	-220(0xfffff24) # 1c0060f0 <OLED_WR_Byte>
1c0061d0:	03400000 	andi	$r0,$r0,0x0
1c0061d4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0061d8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0061dc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0061e0:	4c000020 	jirl	$r0,$r1,0

1c0061e4 <OLED_Clear>:
OLED_Clear():
1c0061e4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0061e8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0061ec:	29806076 	st.w	$r22,$r3,24(0x18)
1c0061f0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0061f4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0061f8:	50006800 	b	104(0x68) # 1c006260 <OLED_Clear+0x7c>
1c0061fc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006200:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c006204:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006208:	00150005 	move	$r5,$r0
1c00620c:	00150184 	move	$r4,$r12
1c006210:	57fee3ff 	bl	-288(0xffffee0) # 1c0060f0 <OLED_WR_Byte>
1c006214:	00150005 	move	$r5,$r0
1c006218:	02800804 	addi.w	$r4,$r0,2(0x2)
1c00621c:	57fed7ff 	bl	-300(0xffffed4) # 1c0060f0 <OLED_WR_Byte>
1c006220:	00150005 	move	$r5,$r0
1c006224:	02804004 	addi.w	$r4,$r0,16(0x10)
1c006228:	57fecbff 	bl	-312(0xffffec8) # 1c0060f0 <OLED_WR_Byte>
1c00622c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c006230:	50001c00 	b	28(0x1c) # 1c00624c <OLED_Clear+0x68>
1c006234:	02810005 	addi.w	$r5,$r0,64(0x40)
1c006238:	00150004 	move	$r4,$r0
1c00623c:	57feb7ff 	bl	-332(0xffffeb4) # 1c0060f0 <OLED_WR_Byte>
1c006240:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006244:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006248:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c00624c:	283fbacc 	ld.b	$r12,$r22,-18(0xfee)
1c006250:	67ffe580 	bge	$r12,$r0,-28(0x3ffe4) # 1c006234 <OLED_Clear+0x50>
1c006254:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006258:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00625c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006260:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006264:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c006268:	6fff958d 	bgeu	$r12,$r13,-108(0x3ff94) # 1c0061fc <OLED_Clear+0x18>
1c00626c:	03400000 	andi	$r0,$r0,0x0
1c006270:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006274:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006278:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00627c:	4c000020 	jirl	$r0,$r1,0

1c006280 <OLED_Init>:
OLED_Init():
1c006280:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006284:	29803061 	st.w	$r1,$r3,12(0xc)
1c006288:	29802076 	st.w	$r22,$r3,8(0x8)
1c00628c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006290:	57fe3bff 	bl	-456(0xffffe38) # 1c0060c8 <OLED_Hardware_Init>
1c006294:	02819004 	addi.w	$r4,$r0,100(0x64)
1c006298:	57d397ff 	bl	-11372(0xfffd394) # 1c00362c <delay_ms>
1c00629c:	57ff4bff 	bl	-184(0xfffff48) # 1c0061e4 <OLED_Clear>
1c0062a0:	00150005 	move	$r5,$r0
1c0062a4:	00150004 	move	$r4,$r0
1c0062a8:	57feb7ff 	bl	-332(0xffffeb4) # 1c00615c <OLED_Set_Pos>
1c0062ac:	00150005 	move	$r5,$r0
1c0062b0:	0282b804 	addi.w	$r4,$r0,174(0xae)
1c0062b4:	57fe3fff 	bl	-452(0xffffe3c) # 1c0060f0 <OLED_WR_Byte>
1c0062b8:	00150005 	move	$r5,$r0
1c0062bc:	00150004 	move	$r4,$r0
1c0062c0:	57fe33ff 	bl	-464(0xffffe30) # 1c0060f0 <OLED_WR_Byte>
1c0062c4:	00150005 	move	$r5,$r0
1c0062c8:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0062cc:	57fe27ff 	bl	-476(0xffffe24) # 1c0060f0 <OLED_WR_Byte>
1c0062d0:	00150005 	move	$r5,$r0
1c0062d4:	02810004 	addi.w	$r4,$r0,64(0x40)
1c0062d8:	57fe1bff 	bl	-488(0xffffe18) # 1c0060f0 <OLED_WR_Byte>
1c0062dc:	00150005 	move	$r5,$r0
1c0062e0:	02820404 	addi.w	$r4,$r0,129(0x81)
1c0062e4:	57fe0fff 	bl	-500(0xffffe0c) # 1c0060f0 <OLED_WR_Byte>
1c0062e8:	00150005 	move	$r5,$r0
1c0062ec:	02833c04 	addi.w	$r4,$r0,207(0xcf)
1c0062f0:	57fe03ff 	bl	-512(0xffffe00) # 1c0060f0 <OLED_WR_Byte>
1c0062f4:	00150005 	move	$r5,$r0
1c0062f8:	02828404 	addi.w	$r4,$r0,161(0xa1)
1c0062fc:	57fdf7ff 	bl	-524(0xffffdf4) # 1c0060f0 <OLED_WR_Byte>
1c006300:	00150005 	move	$r5,$r0
1c006304:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c006308:	57fdebff 	bl	-536(0xffffde8) # 1c0060f0 <OLED_WR_Byte>
1c00630c:	00150005 	move	$r5,$r0
1c006310:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c006314:	57fddfff 	bl	-548(0xffffddc) # 1c0060f0 <OLED_WR_Byte>
1c006318:	00150005 	move	$r5,$r0
1c00631c:	0282a004 	addi.w	$r4,$r0,168(0xa8)
1c006320:	57fdd3ff 	bl	-560(0xffffdd0) # 1c0060f0 <OLED_WR_Byte>
1c006324:	00150005 	move	$r5,$r0
1c006328:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c00632c:	57fdc7ff 	bl	-572(0xffffdc4) # 1c0060f0 <OLED_WR_Byte>
1c006330:	00150005 	move	$r5,$r0
1c006334:	02820404 	addi.w	$r4,$r0,129(0x81)
1c006338:	57fdbbff 	bl	-584(0xffffdb8) # 1c0060f0 <OLED_WR_Byte>
1c00633c:	00150005 	move	$r5,$r0
1c006340:	0283fc04 	addi.w	$r4,$r0,255(0xff)
1c006344:	57fdafff 	bl	-596(0xffffdac) # 1c0060f0 <OLED_WR_Byte>
1c006348:	00150005 	move	$r5,$r0
1c00634c:	02834c04 	addi.w	$r4,$r0,211(0xd3)
1c006350:	57fda3ff 	bl	-608(0xffffda0) # 1c0060f0 <OLED_WR_Byte>
1c006354:	00150005 	move	$r5,$r0
1c006358:	00150004 	move	$r4,$r0
1c00635c:	57fd97ff 	bl	-620(0xffffd94) # 1c0060f0 <OLED_WR_Byte>
1c006360:	00150005 	move	$r5,$r0
1c006364:	02835404 	addi.w	$r4,$r0,213(0xd5)
1c006368:	57fd8bff 	bl	-632(0xffffd88) # 1c0060f0 <OLED_WR_Byte>
1c00636c:	00150005 	move	$r5,$r0
1c006370:	02820004 	addi.w	$r4,$r0,128(0x80)
1c006374:	57fd7fff 	bl	-644(0xffffd7c) # 1c0060f0 <OLED_WR_Byte>
1c006378:	00150005 	move	$r5,$r0
1c00637c:	02836404 	addi.w	$r4,$r0,217(0xd9)
1c006380:	57fd73ff 	bl	-656(0xffffd70) # 1c0060f0 <OLED_WR_Byte>
1c006384:	00150005 	move	$r5,$r0
1c006388:	0283c404 	addi.w	$r4,$r0,241(0xf1)
1c00638c:	57fd67ff 	bl	-668(0xffffd64) # 1c0060f0 <OLED_WR_Byte>
1c006390:	00150005 	move	$r5,$r0
1c006394:	02836804 	addi.w	$r4,$r0,218(0xda)
1c006398:	57fd5bff 	bl	-680(0xffffd58) # 1c0060f0 <OLED_WR_Byte>
1c00639c:	00150005 	move	$r5,$r0
1c0063a0:	02804804 	addi.w	$r4,$r0,18(0x12)
1c0063a4:	57fd4fff 	bl	-692(0xffffd4c) # 1c0060f0 <OLED_WR_Byte>
1c0063a8:	00150005 	move	$r5,$r0
1c0063ac:	02836c04 	addi.w	$r4,$r0,219(0xdb)
1c0063b0:	57fd43ff 	bl	-704(0xffffd40) # 1c0060f0 <OLED_WR_Byte>
1c0063b4:	00150005 	move	$r5,$r0
1c0063b8:	02810004 	addi.w	$r4,$r0,64(0x40)
1c0063bc:	57fd37ff 	bl	-716(0xffffd34) # 1c0060f0 <OLED_WR_Byte>
1c0063c0:	00150005 	move	$r5,$r0
1c0063c4:	02808004 	addi.w	$r4,$r0,32(0x20)
1c0063c8:	57fd2bff 	bl	-728(0xffffd28) # 1c0060f0 <OLED_WR_Byte>
1c0063cc:	00150005 	move	$r5,$r0
1c0063d0:	02800804 	addi.w	$r4,$r0,2(0x2)
1c0063d4:	57fd1fff 	bl	-740(0xffffd1c) # 1c0060f0 <OLED_WR_Byte>
1c0063d8:	00150005 	move	$r5,$r0
1c0063dc:	02823404 	addi.w	$r4,$r0,141(0x8d)
1c0063e0:	57fd13ff 	bl	-752(0xffffd10) # 1c0060f0 <OLED_WR_Byte>
1c0063e4:	00150005 	move	$r5,$r0
1c0063e8:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0063ec:	57fd07ff 	bl	-764(0xffffd04) # 1c0060f0 <OLED_WR_Byte>
1c0063f0:	00150005 	move	$r5,$r0
1c0063f4:	02829004 	addi.w	$r4,$r0,164(0xa4)
1c0063f8:	57fcfbff 	bl	-776(0xffffcf8) # 1c0060f0 <OLED_WR_Byte>
1c0063fc:	00150005 	move	$r5,$r0
1c006400:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c006404:	57fcefff 	bl	-788(0xffffcec) # 1c0060f0 <OLED_WR_Byte>
1c006408:	00150005 	move	$r5,$r0
1c00640c:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c006410:	57fce3ff 	bl	-800(0xffffce0) # 1c0060f0 <OLED_WR_Byte>
1c006414:	00150005 	move	$r5,$r0
1c006418:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c00641c:	57fcd7ff 	bl	-812(0xffffcd4) # 1c0060f0 <OLED_WR_Byte>
1c006420:	57fdc7ff 	bl	-572(0xffffdc4) # 1c0061e4 <OLED_Clear>
1c006424:	00150005 	move	$r5,$r0
1c006428:	00150004 	move	$r4,$r0
1c00642c:	57fd33ff 	bl	-720(0xffffd30) # 1c00615c <OLED_Set_Pos>
1c006430:	03400000 	andi	$r0,$r0,0x0
1c006434:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006438:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00643c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006440:	4c000020 	jirl	$r0,$r1,0

1c006444 <OLED_ShowChar>:
OLED_ShowChar():
1c006444:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006448:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00644c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006450:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006454:	0015008c 	move	$r12,$r4
1c006458:	001500af 	move	$r15,$r5
1c00645c:	001500ce 	move	$r14,$r6
1c006460:	001500ed 	move	$r13,$r7
1c006464:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c006468:	001501ec 	move	$r12,$r15
1c00646c:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c006470:	001501cc 	move	$r12,$r14
1c006474:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c006478:	001501ac 	move	$r12,$r13
1c00647c:	293f6acc 	st.b	$r12,$r22,-38(0xfda)
1c006480:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006484:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c006488:	2a3f6acd 	ld.bu	$r13,$r22,-38(0xfda)
1c00648c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006490:	58000dac 	beq	$r13,$r12,12(0xc) # 1c00649c <OLED_ShowChar+0x58>
1c006494:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006498:	293f6acc 	st.b	$r12,$r22,-38(0xfda)
1c00649c:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c0064a0:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c0064a4:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c0064a8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0064ac:	50009800 	b	152(0x98) # 1c006544 <OLED_ShowChar+0x100>
1c0064b0:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0064b4:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c0064b8:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0064bc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0064c0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0064c4:	001031ac 	add.w	$r12,$r13,$r12
1c0064c8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0064cc:	00150185 	move	$r5,$r12
1c0064d0:	001501c4 	move	$r4,$r14
1c0064d4:	57fc8bff 	bl	-888(0xffffc88) # 1c00615c <OLED_Set_Pos>
1c0064d8:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0064dc:	50004800 	b	72(0x48) # 1c006524 <OLED_ShowChar+0xe0>
1c0064e0:	2a3f6ecd 	ld.bu	$r13,$r22,-37(0xfdb)
1c0064e4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0064e8:	00408d8e 	slli.w	$r14,$r12,0x3
1c0064ec:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0064f0:	001031cc 	add.w	$r12,$r14,$r12
1c0064f4:	1c00004e 	pcaddu12i	$r14,2(0x2)
1c0064f8:	02a111ce 	addi.w	$r14,$r14,-1980(0x844)
1c0064fc:	004091ad 	slli.w	$r13,$r13,0x4
1c006500:	001035cd 	add.w	$r13,$r14,$r13
1c006504:	001031ac 	add.w	$r12,$r13,$r12
1c006508:	2a00018c 	ld.bu	$r12,$r12,0
1c00650c:	02810005 	addi.w	$r5,$r0,64(0x40)
1c006510:	00150184 	move	$r4,$r12
1c006514:	57fbdfff 	bl	-1060(0xffffbdc) # 1c0060f0 <OLED_WR_Byte>
1c006518:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00651c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006520:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c006524:	2a3f6acc 	ld.bu	$r12,$r22,-38(0xfda)
1c006528:	0044858c 	srli.w	$r12,$r12,0x1
1c00652c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006530:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c006534:	6bffadac 	bltu	$r13,$r12,-84(0x3ffac) # 1c0064e0 <OLED_ShowChar+0x9c>
1c006538:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00653c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006540:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006544:	2a3f6acc 	ld.bu	$r12,$r22,-38(0xfda)
1c006548:	00448d8c 	srli.w	$r12,$r12,0x3
1c00654c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006550:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006554:	6bff5dac 	bltu	$r13,$r12,-164(0x3ff5c) # 1c0064b0 <OLED_ShowChar+0x6c>
1c006558:	03400000 	andi	$r0,$r0,0x0
1c00655c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006560:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006564:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006568:	4c000020 	jirl	$r0,$r1,0

1c00656c <OLED_DrawFont16>:
OLED_DrawFont16():
1c00656c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006570:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006574:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006578:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00657c:	0015008c 	move	$r12,$r4
1c006580:	001500ad 	move	$r13,$r5
1c006584:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c006588:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c00658c:	001501ac 	move	$r12,$r13
1c006590:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c006594:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006598:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c00659c:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c0065a0:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c0065a4:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c0065a8:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c0065ac:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c0065b0:	50013800 	b	312(0x138) # 1c0066e8 <OLED_DrawFont16+0x17c>
1c0065b4:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c0065b8:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c0065bc:	02b5c1ad 	addi.w	$r13,$r13,-656(0xd70)
1c0065c0:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c0065c4:	001c31cc 	mul.w	$r12,$r14,$r12
1c0065c8:	001031ac 	add.w	$r12,$r13,$r12
1c0065cc:	2a00018d 	ld.bu	$r13,$r12,0
1c0065d0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0065d4:	2a00018c 	ld.bu	$r12,$r12,0
1c0065d8:	5c0105ac 	bne	$r13,$r12,260(0x104) # 1c0066dc <OLED_DrawFont16+0x170>
1c0065dc:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c0065e0:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c0065e4:	02b521ad 	addi.w	$r13,$r13,-696(0xd48)
1c0065e8:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c0065ec:	001c31cc 	mul.w	$r12,$r14,$r12
1c0065f0:	001031ac 	add.w	$r12,$r13,$r12
1c0065f4:	2a00058d 	ld.bu	$r13,$r12,1(0x1)
1c0065f8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0065fc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006600:	2a00018c 	ld.bu	$r12,$r12,0
1c006604:	5c00d9ac 	bne	$r13,$r12,216(0xd8) # 1c0066dc <OLED_DrawFont16+0x170>
1c006608:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c00660c:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c006610:	02b471ad 	addi.w	$r13,$r13,-740(0xd1c)
1c006614:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c006618:	001c31cc 	mul.w	$r12,$r14,$r12
1c00661c:	001031ac 	add.w	$r12,$r13,$r12
1c006620:	2a00098d 	ld.bu	$r13,$r12,2(0x2)
1c006624:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006628:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00662c:	2a00018c 	ld.bu	$r12,$r12,0
1c006630:	5c00adac 	bne	$r13,$r12,172(0xac) # 1c0066dc <OLED_DrawFont16+0x170>
1c006634:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c006638:	50009400 	b	148(0x94) # 1c0066cc <OLED_DrawFont16+0x160>
1c00663c:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c006640:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c006644:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c006648:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00664c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006650:	001031ac 	add.w	$r12,$r13,$r12
1c006654:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006658:	00150185 	move	$r5,$r12
1c00665c:	001501c4 	move	$r4,$r14
1c006660:	57faffff 	bl	-1284(0xffffafc) # 1c00615c <OLED_Set_Pos>
1c006664:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006668:	50004c00 	b	76(0x4c) # 1c0066b4 <OLED_DrawFont16+0x148>
1c00666c:	2a7fb2cf 	ld.hu	$r15,$r22,-20(0xfec)
1c006670:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006674:	0040918d 	slli.w	$r13,$r12,0x4
1c006678:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00667c:	001031ad 	add.w	$r13,$r13,$r12
1c006680:	1c00004e 	pcaddu12i	$r14,2(0x2)
1c006684:	02b2a1ce 	addi.w	$r14,$r14,-856(0xca8)
1c006688:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c00668c:	001c31ec 	mul.w	$r12,$r15,$r12
1c006690:	001031cc 	add.w	$r12,$r14,$r12
1c006694:	0010358c 	add.w	$r12,$r12,$r13
1c006698:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c00669c:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0066a0:	00150184 	move	$r4,$r12
1c0066a4:	57fa4fff 	bl	-1460(0xffffa4c) # 1c0060f0 <OLED_WR_Byte>
1c0066a8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0066ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0066b0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0066b4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0066b8:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0066bc:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c00666c <OLED_DrawFont16+0x100>
1c0066c0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0066c4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0066c8:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0066cc:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c0066d0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0066d4:	6fff698d 	bgeu	$r12,$r13,-152(0x3ff68) # 1c00663c <OLED_DrawFont16+0xd0>
1c0066d8:	50001c00 	b	28(0x1c) # 1c0066f4 <OLED_DrawFont16+0x188>
1c0066dc:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0066e0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0066e4:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0066e8:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c0066ec:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c0066f0:	6bfec5ac 	bltu	$r13,$r12,-316(0x3fec4) # 1c0065b4 <OLED_DrawFont16+0x48>
1c0066f4:	03400000 	andi	$r0,$r0,0x0
1c0066f8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0066fc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006700:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006704:	4c000020 	jirl	$r0,$r1,0

1c006708 <OLED_DrawFont32>:
OLED_DrawFont32():
1c006708:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00670c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006710:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006714:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006718:	0015008c 	move	$r12,$r4
1c00671c:	001500ad 	move	$r13,$r5
1c006720:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c006724:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c006728:	001501ac 	move	$r12,$r13
1c00672c:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c006730:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006734:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c006738:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c00673c:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c006740:	0280540c 	addi.w	$r12,$r0,21(0x15)
1c006744:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c006748:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c00674c:	50014400 	b	324(0x144) # 1c006890 <OLED_DrawFont32+0x188>
1c006750:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c006754:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c006758:	02af51ad 	addi.w	$r13,$r13,-1068(0xbd4)
1c00675c:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c006760:	001c31cc 	mul.w	$r12,$r14,$r12
1c006764:	001031ac 	add.w	$r12,$r13,$r12
1c006768:	2a00018c 	ld.bu	$r12,$r12,0
1c00676c:	0015018d 	move	$r13,$r12
1c006770:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006774:	2800018c 	ld.b	$r12,$r12,0
1c006778:	5c010dac 	bne	$r13,$r12,268(0x10c) # 1c006884 <OLED_DrawFont32+0x17c>
1c00677c:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c006780:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c006784:	02aea1ad 	addi.w	$r13,$r13,-1112(0xba8)
1c006788:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c00678c:	001c31cc 	mul.w	$r12,$r14,$r12
1c006790:	001031ac 	add.w	$r12,$r13,$r12
1c006794:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c006798:	0015018d 	move	$r13,$r12
1c00679c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0067a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0067a4:	2800018c 	ld.b	$r12,$r12,0
1c0067a8:	5c00ddac 	bne	$r13,$r12,220(0xdc) # 1c006884 <OLED_DrawFont32+0x17c>
1c0067ac:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c0067b0:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c0067b4:	02ade1ad 	addi.w	$r13,$r13,-1160(0xb78)
1c0067b8:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c0067bc:	001c31cc 	mul.w	$r12,$r14,$r12
1c0067c0:	001031ac 	add.w	$r12,$r13,$r12
1c0067c4:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c0067c8:	0015018d 	move	$r13,$r12
1c0067cc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0067d0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0067d4:	2800018c 	ld.b	$r12,$r12,0
1c0067d8:	5c00adac 	bne	$r13,$r12,172(0xac) # 1c006884 <OLED_DrawFont32+0x17c>
1c0067dc:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0067e0:	50009400 	b	148(0x94) # 1c006874 <OLED_DrawFont32+0x16c>
1c0067e4:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0067e8:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c0067ec:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0067f0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0067f4:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0067f8:	001031ac 	add.w	$r12,$r13,$r12
1c0067fc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006800:	00150185 	move	$r5,$r12
1c006804:	001501c4 	move	$r4,$r14
1c006808:	57f957ff 	bl	-1708(0xffff954) # 1c00615c <OLED_Set_Pos>
1c00680c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006810:	50004c00 	b	76(0x4c) # 1c00685c <OLED_DrawFont32+0x154>
1c006814:	2a7fb2cf 	ld.hu	$r15,$r22,-20(0xfec)
1c006818:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00681c:	0040958d 	slli.w	$r13,$r12,0x5
1c006820:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006824:	001031ad 	add.w	$r13,$r13,$r12
1c006828:	1c00004e 	pcaddu12i	$r14,2(0x2)
1c00682c:	028041ce 	addi.w	$r14,$r14,16(0x10)
1c006830:	02820c0c 	addi.w	$r12,$r0,131(0x83)
1c006834:	001c31ec 	mul.w	$r12,$r15,$r12
1c006838:	001031cc 	add.w	$r12,$r14,$r12
1c00683c:	0010358c 	add.w	$r12,$r12,$r13
1c006840:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c006844:	02810005 	addi.w	$r5,$r0,64(0x40)
1c006848:	00150184 	move	$r4,$r12
1c00684c:	57f8a7ff 	bl	-1884(0xffff8a4) # 1c0060f0 <OLED_WR_Byte>
1c006850:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006854:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006858:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00685c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006860:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c006864:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c006814 <OLED_DrawFont32+0x10c>
1c006868:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00686c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006870:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c006874:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c006878:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00687c:	6fff698d 	bgeu	$r12,$r13,-152(0x3ff68) # 1c0067e4 <OLED_DrawFont32+0xdc>
1c006880:	50001c00 	b	28(0x1c) # 1c00689c <OLED_DrawFont32+0x194>
1c006884:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c006888:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00688c:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c006890:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c006894:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c006898:	6bfeb9ac 	bltu	$r13,$r12,-328(0x3feb8) # 1c006750 <OLED_DrawFont32+0x48>
1c00689c:	03400000 	andi	$r0,$r0,0x0
1c0068a0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0068a4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0068a8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0068ac:	4c000020 	jirl	$r0,$r1,0

1c0068b0 <OLED_Show_Str>:
OLED_Show_Str():
1c0068b0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0068b4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0068b8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0068bc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0068c0:	0015008c 	move	$r12,$r4
1c0068c4:	001500ae 	move	$r14,$r5
1c0068c8:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c0068cc:	001500ed 	move	$r13,$r7
1c0068d0:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0068d4:	001501cc 	move	$r12,$r14
1c0068d8:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c0068dc:	001501ac 	move	$r12,$r13
1c0068e0:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c0068e4:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0068e8:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0068ec:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0068f0:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c0068f4:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c0068f8:	580209ac 	beq	$r13,$r12,520(0x208) # 1c006b00 <OLED_Show_Str+0x250>
1c0068fc:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006900:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c006904:	5001fc00 	b	508(0x1fc) # 1c006b00 <OLED_Show_Str+0x250>
1c006908:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00690c:	44012580 	bnez	$r12,292(0x124) # 1c006a30 <OLED_Show_Str+0x180>
1c006910:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c006914:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c006918:	0044858c 	srli.w	$r12,$r12,0x1
1c00691c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006920:	0015018e 	move	$r14,$r12
1c006924:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c006928:	0011398c 	sub.w	$r12,$r12,$r14
1c00692c:	64002d8d 	bge	$r12,$r13,44(0x2c) # 1c006958 <OLED_Show_Str+0xa8>
1c006930:	297f7ac0 	st.h	$r0,$r22,-34(0xfde)
1c006934:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c006938:	00448d8c 	srli.w	$r12,$r12,0x3
1c00693c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006940:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006944:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c006948:	001031ac 	add.w	$r12,$r13,$r12
1c00694c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006950:	03401d8c 	andi	$r12,$r12,0x7
1c006954:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c006958:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c00695c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c006960:	00448d8c 	srli.w	$r12,$r12,0x3
1c006964:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006968:	0015018e 	move	$r14,$r12
1c00696c:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c006970:	0011398c 	sub.w	$r12,$r12,$r14
1c006974:	6400098d 	bge	$r12,$r13,8(0x8) # 1c00697c <OLED_Show_Str+0xcc>
1c006978:	297f72c0 	st.h	$r0,$r22,-36(0xfdc)
1c00697c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006980:	2800018c 	ld.b	$r12,$r12,0
1c006984:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c006988:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c00698c:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c00699c <OLED_Show_Str+0xec>
1c006990:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006994:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006998:	50016800 	b	360(0x168) # 1c006b00 <OLED_Show_Str+0x250>
1c00699c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0069a0:	2800018d 	ld.b	$r13,$r12,0
1c0069a4:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c0069a8:	5c0031ac 	bne	$r13,$r12,48(0x30) # 1c0069d8 <OLED_Show_Str+0x128>
1c0069ac:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0069b0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0069b4:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0069b8:	001031ac 	add.w	$r12,$r13,$r12
1c0069bc:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c0069c0:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0069c4:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0069c8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0069cc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0069d0:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0069d4:	50004c00 	b	76(0x4c) # 1c006a20 <OLED_Show_Str+0x170>
1c0069d8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0069dc:	2800018c 	ld.b	$r12,$r12,0
1c0069e0:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c0069e4:	2a3f5ecf 	ld.bu	$r15,$r22,-41(0xfd7)
1c0069e8:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c0069ec:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0069f0:	001501e7 	move	$r7,$r15
1c0069f4:	001501c6 	move	$r6,$r14
1c0069f8:	001501a5 	move	$r5,$r13
1c0069fc:	00150184 	move	$r4,$r12
1c006a00:	57fa47ff 	bl	-1468(0xffffa44) # 1c006444 <OLED_ShowChar>
1c006a04:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c006a08:	0044858c 	srli.w	$r12,$r12,0x1
1c006a0c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006a10:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006a14:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c006a18:	001031ac 	add.w	$r12,$r13,$r12
1c006a1c:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c006a20:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006a24:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006a28:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c006a2c:	5000d400 	b	212(0xd4) # 1c006b00 <OLED_Show_Str+0x250>
1c006a30:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c006a34:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c006a38:	0282000e 	addi.w	$r14,$r0,128(0x80)
1c006a3c:	001131cc 	sub.w	$r12,$r14,$r12
1c006a40:	64002d8d 	bge	$r12,$r13,44(0x2c) # 1c006a6c <OLED_Show_Str+0x1bc>
1c006a44:	297f7ac0 	st.h	$r0,$r22,-34(0xfde)
1c006a48:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c006a4c:	00448d8c 	srli.w	$r12,$r12,0x3
1c006a50:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006a54:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006a58:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c006a5c:	001031ac 	add.w	$r12,$r13,$r12
1c006a60:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006a64:	03401d8c 	andi	$r12,$r12,0x7
1c006a68:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c006a6c:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c006a70:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c006a74:	00448d8c 	srli.w	$r12,$r12,0x3
1c006a78:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006a7c:	0015018e 	move	$r14,$r12
1c006a80:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c006a84:	0011398c 	sub.w	$r12,$r12,$r14
1c006a88:	6400098d 	bge	$r12,$r13,8(0x8) # 1c006a90 <OLED_Show_Str+0x1e0>
1c006a8c:	297f72c0 	st.h	$r0,$r22,-36(0xfdc)
1c006a90:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006a94:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c006a98:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c006a9c:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c006abc <OLED_Show_Str+0x20c>
1c006aa0:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c006aa4:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c006aa8:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c006aac:	001501a5 	move	$r5,$r13
1c006ab0:	00150184 	move	$r4,$r12
1c006ab4:	57fc57ff 	bl	-940(0xffffc54) # 1c006708 <OLED_DrawFont32>
1c006ab8:	50002800 	b	40(0x28) # 1c006ae0 <OLED_Show_Str+0x230>
1c006abc:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c006ac0:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006ac4:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c006ae0 <OLED_Show_Str+0x230>
1c006ac8:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c006acc:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c006ad0:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c006ad4:	001501a5 	move	$r5,$r13
1c006ad8:	00150184 	move	$r4,$r12
1c006adc:	57fa93ff 	bl	-1392(0xffffa90) # 1c00656c <OLED_DrawFont16>
1c006ae0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006ae4:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c006ae8:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c006aec:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c006af0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006af4:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c006af8:	001031ac 	add.w	$r12,$r13,$r12
1c006afc:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c006b00:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006b04:	2800018c 	ld.b	$r12,$r12,0
1c006b08:	47fe019f 	bnez	$r12,-512(0x7ffe00) # 1c006908 <OLED_Show_Str+0x58>
1c006b0c:	03400000 	andi	$r0,$r0,0x0
1c006b10:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006b14:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006b18:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006b1c:	4c000020 	jirl	$r0,$r1,0

1c006b20 <RGB_LED_Init>:
RGB_LED_Init():
1c006b20:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006b24:	29803061 	st.w	$r1,$r3,12(0xc)
1c006b28:	29802076 	st.w	$r22,$r3,8(0x8)
1c006b2c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006b30:	00150005 	move	$r5,$r0
1c006b34:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c006b38:	57ab1fff 	bl	-21732(0xfffab1c) # 1c001654 <gpio_pin_remap>
1c006b3c:	00150005 	move	$r5,$r0
1c006b40:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c006b44:	57ab13ff 	bl	-21744(0xfffab10) # 1c001654 <gpio_pin_remap>
1c006b48:	00150005 	move	$r5,$r0
1c006b4c:	02807c04 	addi.w	$r4,$r0,31(0x1f)
1c006b50:	57ab07ff 	bl	-21756(0xfffab04) # 1c001654 <gpio_pin_remap>
1c006b54:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006b58:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c006b5c:	57ad07ff 	bl	-21244(0xfffad04) # 1c001860 <gpio_set_direction>
1c006b60:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006b64:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c006b68:	57acfbff 	bl	-21256(0xfffacf8) # 1c001860 <gpio_set_direction>
1c006b6c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006b70:	02807c04 	addi.w	$r4,$r0,31(0x1f)
1c006b74:	57acefff 	bl	-21268(0xfffacec) # 1c001860 <gpio_set_direction>
1c006b78:	03400000 	andi	$r0,$r0,0x0
1c006b7c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006b80:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006b84:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006b88:	4c000020 	jirl	$r0,$r1,0

1c006b8c <Queue_Init>:
Queue_Init():
1c006b8c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006b90:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006b94:	29806076 	st.w	$r22,$r3,24(0x18)
1c006b98:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006b9c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006ba0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006ba4:	44000d80 	bnez	$r12,12(0xc) # 1c006bb0 <Queue_Init+0x24>
1c006ba8:	0015000c 	move	$r12,$r0
1c006bac:	50001800 	b	24(0x18) # 1c006bc4 <Queue_Init+0x38>
1c006bb0:	0284c006 	addi.w	$r6,$r0,304(0x130)
1c006bb4:	00150005 	move	$r5,$r0
1c006bb8:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c006bbc:	57cab3ff 	bl	-13648(0xfffcab0) # 1c00366c <memset>
1c006bc0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006bc4:	00150184 	move	$r4,$r12
1c006bc8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006bcc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006bd0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006bd4:	4c000020 	jirl	$r0,$r1,0

1c006bd8 <Smoke_Init>:
Smoke_Init():
1c006bd8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006bdc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006be0:	29806076 	st.w	$r22,$r3,24(0x18)
1c006be4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006be8:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c006bec:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c006bf0:	297fa2c0 	st.h	$r0,$r22,-24(0xfe8)
1c006bf4:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c006bf8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006bfc:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c006c00:	02801804 	addi.w	$r4,$r0,6(0x6)
1c006c04:	57cd73ff 	bl	-12944(0xfffcd70) # 1c003974 <Adc_open>
1c006c08:	02801804 	addi.w	$r4,$r0,6(0x6)
1c006c0c:	57cef7ff 	bl	-12556(0xfffcef4) # 1c003b00 <Adc_getVoltage>
1c006c10:	0015008c 	move	$r12,$r4
1c006c14:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c006c18:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c006c1c:	50008800 	b	136(0x88) # 1c006ca4 <Smoke_Init+0xcc>
1c006c20:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c006c24:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006c28:	0040858c 	slli.w	$r12,$r12,0x1
1c006c2c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c006c30:	001031cc 	add.w	$r12,$r14,$r12
1c006c34:	2a7fc18c 	ld.hu	$r12,$r12,-16(0xff0)
1c006c38:	001131ad 	sub.w	$r13,$r13,$r12
1c006c3c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006c40:	288f718c 	ld.w	$r12,$r12,988(0x3dc)
1c006c44:	2980018d 	st.w	$r13,$r12,0
1c006c48:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006c4c:	028fa18c 	addi.w	$r12,$r12,1000(0x3e8)
1c006c50:	2880018c 	ld.w	$r12,$r12,0
1c006c54:	0011300d 	sub.w	$r13,$r0,$r12
1c006c58:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006c5c:	288f018c 	ld.w	$r12,$r12,960(0x3c0)
1c006c60:	2880018c 	ld.w	$r12,$r12,0
1c006c64:	6000358d 	blt	$r12,$r13,52(0x34) # 1c006c98 <Smoke_Init+0xc0>
1c006c68:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006c6c:	288ec18c 	ld.w	$r12,$r12,944(0x3b0)
1c006c70:	2880018d 	ld.w	$r13,$r12,0
1c006c74:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006c78:	028ef18c 	addi.w	$r12,$r12,956(0x3bc)
1c006c7c:	2880018c 	ld.w	$r12,$r12,0
1c006c80:	6000198d 	blt	$r12,$r13,24(0x18) # 1c006c98 <Smoke_Init+0xc0>
1c006c84:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006c88:	028e118c 	addi.w	$r12,$r12,900(0x384)
1c006c8c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c006c90:	2980018d 	st.w	$r13,$r12,0
1c006c94:	50001c00 	b	28(0x1c) # 1c006cb0 <Smoke_Init+0xd8>
1c006c98:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006c9c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006ca0:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c006ca4:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c006ca8:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006cac:	6fff758d 	bgeu	$r12,$r13,-140(0x3ff74) # 1c006c20 <Smoke_Init+0x48>
1c006cb0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006cb4:	028d618c 	addi.w	$r12,$r12,856(0x358)
1c006cb8:	2880018c 	ld.w	$r12,$r12,0
1c006cbc:	44004d80 	bnez	$r12,76(0x4c) # 1c006d08 <Smoke_Init+0x130>
1c006cc0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006cc4:	0040858c 	slli.w	$r12,$r12,0x1
1c006cc8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c006ccc:	001031ac 	add.w	$r12,$r13,$r12
1c006cd0:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c006cd4:	297fc18d 	st.h	$r13,$r12,-16(0xff0)
1c006cd8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006cdc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006ce0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006ce4:	2a3fbece 	ld.bu	$r14,$r22,-17(0xfef)
1c006ce8:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c006cec:	0021b5cc 	mod.wu	$r12,$r14,$r13
1c006cf0:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c006cf8 <Smoke_Init+0x120>
1c006cf4:	002a0007 	break	0x7
1c006cf8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006cfc:	0287d004 	addi.w	$r4,$r0,500(0x1f4)
1c006d00:	57c92fff 	bl	-14036(0xfffc92c) # 1c00362c <delay_ms>
1c006d04:	53ff07ff 	b	-252(0xfffff04) # 1c006c08 <Smoke_Init+0x30>
1c006d08:	03400000 	andi	$r0,$r0,0x0
1c006d0c:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c006d10:	0287f80d 	addi.w	$r13,$r0,510(0x1fe)
1c006d14:	001131ad 	sub.w	$r13,$r13,$r12
1c006d18:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006d1c:	028bb18c 	addi.w	$r12,$r12,748(0x2ec)
1c006d20:	2980018d 	st.w	$r13,$r12,0
1c006d24:	03400000 	andi	$r0,$r0,0x0
1c006d28:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006d2c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006d30:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006d34:	4c000020 	jirl	$r0,$r1,0

1c006d38 <Median_Read_Data>:
Median_Read_Data():
1c006d38:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006d3c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c006d40:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006d44:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006d48:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c006d4c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006d50:	0340058c 	andi	$r12,$r12,0x1
1c006d54:	44006980 	bnez	$r12,104(0x68) # 1c006dbc <Median_Read_Data+0x84>
1c006d58:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006d5c:	0044fd8d 	srli.w	$r13,$r12,0x1f
1c006d60:	001031ac 	add.w	$r12,$r13,$r12
1c006d64:	0048858c 	srai.w	$r12,$r12,0x1
1c006d68:	0015018d 	move	$r13,$r12
1c006d6c:	147fffec 	lu12i.w	$r12,262143(0x3ffff)
1c006d70:	03bffd8c 	ori	$r12,$r12,0xfff
1c006d74:	001031ac 	add.w	$r12,$r13,$r12
1c006d78:	0040898c 	slli.w	$r12,$r12,0x2
1c006d7c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006d80:	001031ac 	add.w	$r12,$r13,$r12
1c006d84:	2880018d 	ld.w	$r13,$r12,0
1c006d88:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006d8c:	0044fd8e 	srli.w	$r14,$r12,0x1f
1c006d90:	001031cc 	add.w	$r12,$r14,$r12
1c006d94:	0048858c 	srai.w	$r12,$r12,0x1
1c006d98:	0040898c 	slli.w	$r12,$r12,0x2
1c006d9c:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c006da0:	001031cc 	add.w	$r12,$r14,$r12
1c006da4:	2880018c 	ld.w	$r12,$r12,0
1c006da8:	001031ac 	add.w	$r12,$r13,$r12
1c006dac:	0044fd8d 	srli.w	$r13,$r12,0x1f
1c006db0:	001031ac 	add.w	$r12,$r13,$r12
1c006db4:	0048858c 	srai.w	$r12,$r12,0x1
1c006db8:	50002400 	b	36(0x24) # 1c006ddc <Median_Read_Data+0xa4>
1c006dbc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006dc0:	0044fd8d 	srli.w	$r13,$r12,0x1f
1c006dc4:	001031ac 	add.w	$r12,$r13,$r12
1c006dc8:	0048858c 	srai.w	$r12,$r12,0x1
1c006dcc:	0040898c 	slli.w	$r12,$r12,0x2
1c006dd0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006dd4:	001031ac 	add.w	$r12,$r13,$r12
1c006dd8:	2880018c 	ld.w	$r12,$r12,0
1c006ddc:	00150184 	move	$r4,$r12
1c006de0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c006de4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006de8:	4c000020 	jirl	$r0,$r1,0

1c006dec <Smoke_Read_Data>:
Smoke_Read_Data():
1c006dec:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c006df0:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c006df4:	2980e076 	st.w	$r22,$r3,56(0x38)
1c006df8:	02810076 	addi.w	$r22,$r3,64(0x40)
1c006dfc:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c006e00:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c006e04:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c006e08:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c006e0c:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c006e10:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c006e14:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006e18:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006e1c:	50004000 	b	64(0x40) # 1c006e5c <Smoke_Read_Data+0x70>
1c006e20:	02801804 	addi.w	$r4,$r0,6(0x6)
1c006e24:	57ccdfff 	bl	-13092(0xfffccdc) # 1c003b00 <Adc_getVoltage>
1c006e28:	0015008c 	move	$r12,$r4
1c006e2c:	0015018d 	move	$r13,$r12
1c006e30:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006e34:	004085ad 	slli.w	$r13,$r13,0x1
1c006e38:	0040898c 	slli.w	$r12,$r12,0x2
1c006e3c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c006e40:	001031cc 	add.w	$r12,$r14,$r12
1c006e44:	29bfa18d 	st.w	$r13,$r12,-24(0xfe8)
1c006e48:	02819004 	addi.w	$r4,$r0,100(0x64)
1c006e4c:	57c7e3ff 	bl	-14368(0xfffc7e0) # 1c00362c <delay_ms>
1c006e50:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006e54:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006e58:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006e5c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006e60:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006e64:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c006e20 <Smoke_Read_Data+0x34>
1c006e68:	02bf62cc 	addi.w	$r12,$r22,-40(0xfd8)
1c006e6c:	02801405 	addi.w	$r5,$r0,5(0x5)
1c006e70:	00150184 	move	$r4,$r12
1c006e74:	57fec7ff 	bl	-316(0xffffec4) # 1c006d38 <Median_Read_Data>
1c006e78:	0015008d 	move	$r13,$r4
1c006e7c:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c006e80:	2980018d 	st.w	$r13,$r12,0
1c006e84:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c006e88:	2880018e 	ld.w	$r14,$r12,0
1c006e8c:	0280640c 	addi.w	$r12,$r0,25(0x19)
1c006e90:	002031cd 	div.w	$r13,$r14,$r12
1c006e94:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006e9c <Smoke_Read_Data+0xb0>
1c006e98:	002a0007 	break	0x7
1c006e9c:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c006ea0:	2980018d 	st.w	$r13,$r12,0
1c006ea4:	03400000 	andi	$r0,$r0,0x0
1c006ea8:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c006eac:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c006eb0:	02810063 	addi.w	$r3,$r3,64(0x40)
1c006eb4:	4c000020 	jirl	$r0,$r1,0

1c006eb8 <YUYIN_Init>:
YUYIN_Init():
1c006eb8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006ebc:	29803061 	st.w	$r1,$r3,12(0xc)
1c006ec0:	29802076 	st.w	$r22,$r3,8(0x8)
1c006ec4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006ec8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006ecc:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006ed0:	57a993ff 	bl	-22128(0xfffa990) # 1c001860 <gpio_set_direction>
1c006ed4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006ed8:	02809004 	addi.w	$r4,$r0,36(0x24)
1c006edc:	57a987ff 	bl	-22140(0xfffa984) # 1c001860 <gpio_set_direction>
1c006ee0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006ee4:	02808404 	addi.w	$r4,$r0,33(0x21)
1c006ee8:	57a97bff 	bl	-22152(0xfffa978) # 1c001860 <gpio_set_direction>
1c006eec:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006ef0:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c006ef4:	57a96fff 	bl	-22164(0xfffa96c) # 1c001860 <gpio_set_direction>
1c006ef8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006efc:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006f00:	57a6dfff 	bl	-22820(0xfffa6dc) # 1c0015dc <gpio_write_pin>
1c006f04:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006f08:	02809004 	addi.w	$r4,$r0,36(0x24)
1c006f0c:	57a6d3ff 	bl	-22832(0xfffa6d0) # 1c0015dc <gpio_write_pin>
1c006f10:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006f14:	02808404 	addi.w	$r4,$r0,33(0x21)
1c006f18:	57a6c7ff 	bl	-22844(0xfffa6c4) # 1c0015dc <gpio_write_pin>
1c006f1c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006f20:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c006f24:	57a6bbff 	bl	-22856(0xfffa6b8) # 1c0015dc <gpio_write_pin>
1c006f28:	03400000 	andi	$r0,$r0,0x0
1c006f2c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006f30:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006f34:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006f38:	4c000020 	jirl	$r0,$r1,0

1c006f3c <YUYIN_Ctrl>:
YUYIN_Ctrl():
1c006f3c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006f40:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006f44:	29806076 	st.w	$r22,$r3,24(0x18)
1c006f48:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006f4c:	0015008c 	move	$r12,$r4
1c006f50:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006f54:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006f58:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006f5c:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c006f90 <YUYIN_Ctrl+0x54>
1c006f60:	00150005 	move	$r5,$r0
1c006f64:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006f68:	57a677ff 	bl	-22924(0xfffa674) # 1c0015dc <gpio_write_pin>
1c006f6c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006f70:	02809004 	addi.w	$r4,$r0,36(0x24)
1c006f74:	57a66bff 	bl	-22936(0xfffa668) # 1c0015dc <gpio_write_pin>
1c006f78:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006f7c:	02808404 	addi.w	$r4,$r0,33(0x21)
1c006f80:	57a65fff 	bl	-22948(0xfffa65c) # 1c0015dc <gpio_write_pin>
1c006f84:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006f88:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c006f8c:	57a653ff 	bl	-22960(0xfffa650) # 1c0015dc <gpio_write_pin>
1c006f90:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006f94:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006f98:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c006fcc <YUYIN_Ctrl+0x90>
1c006f9c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006fa0:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006fa4:	57a63bff 	bl	-22984(0xfffa638) # 1c0015dc <gpio_write_pin>
1c006fa8:	00150005 	move	$r5,$r0
1c006fac:	02809004 	addi.w	$r4,$r0,36(0x24)
1c006fb0:	57a62fff 	bl	-22996(0xfffa62c) # 1c0015dc <gpio_write_pin>
1c006fb4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006fb8:	02808404 	addi.w	$r4,$r0,33(0x21)
1c006fbc:	57a623ff 	bl	-23008(0xfffa620) # 1c0015dc <gpio_write_pin>
1c006fc0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006fc4:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c006fc8:	57a617ff 	bl	-23020(0xfffa614) # 1c0015dc <gpio_write_pin>
1c006fcc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006fd0:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c006fd4:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c007008 <YUYIN_Ctrl+0xcc>
1c006fd8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006fdc:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006fe0:	57a5ffff 	bl	-23044(0xfffa5fc) # 1c0015dc <gpio_write_pin>
1c006fe4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006fe8:	02809004 	addi.w	$r4,$r0,36(0x24)
1c006fec:	57a5f3ff 	bl	-23056(0xfffa5f0) # 1c0015dc <gpio_write_pin>
1c006ff0:	00150005 	move	$r5,$r0
1c006ff4:	02808404 	addi.w	$r4,$r0,33(0x21)
1c006ff8:	57a5e7ff 	bl	-23068(0xfffa5e4) # 1c0015dc <gpio_write_pin>
1c006ffc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c007000:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c007004:	57a5dbff 	bl	-23080(0xfffa5d8) # 1c0015dc <gpio_write_pin>
1c007008:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00700c:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c007010:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c007044 <YUYIN_Ctrl+0x108>
1c007014:	02800405 	addi.w	$r5,$r0,1(0x1)
1c007018:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c00701c:	57a5c3ff 	bl	-23104(0xfffa5c0) # 1c0015dc <gpio_write_pin>
1c007020:	02800405 	addi.w	$r5,$r0,1(0x1)
1c007024:	02809004 	addi.w	$r4,$r0,36(0x24)
1c007028:	57a5b7ff 	bl	-23116(0xfffa5b4) # 1c0015dc <gpio_write_pin>
1c00702c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c007030:	02808404 	addi.w	$r4,$r0,33(0x21)
1c007034:	57a5abff 	bl	-23128(0xfffa5a8) # 1c0015dc <gpio_write_pin>
1c007038:	00150005 	move	$r5,$r0
1c00703c:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c007040:	57a59fff 	bl	-23140(0xfffa59c) # 1c0015dc <gpio_write_pin>
1c007044:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c007048:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c00704c:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c007080 <YUYIN_Ctrl+0x144>
1c007050:	02800405 	addi.w	$r5,$r0,1(0x1)
1c007054:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c007058:	57a587ff 	bl	-23164(0xfffa584) # 1c0015dc <gpio_write_pin>
1c00705c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c007060:	02809004 	addi.w	$r4,$r0,36(0x24)
1c007064:	57a57bff 	bl	-23176(0xfffa578) # 1c0015dc <gpio_write_pin>
1c007068:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00706c:	02808404 	addi.w	$r4,$r0,33(0x21)
1c007070:	57a56fff 	bl	-23188(0xfffa56c) # 1c0015dc <gpio_write_pin>
1c007074:	02800405 	addi.w	$r5,$r0,1(0x1)
1c007078:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c00707c:	57a563ff 	bl	-23200(0xfffa560) # 1c0015dc <gpio_write_pin>
1c007080:	03400000 	andi	$r0,$r0,0x0
1c007084:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c007088:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00708c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c007090:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c0070a0 <msg_wakeup>:
msg_wakeup():
1c0070a0:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01dc00 <_sidata+0x14908>
1c0070a4:	0a217075 	xvfmadd.d	$xr21,$xr3,$xr28,$xr2
	...

1c0070a9 <hexdecarr>:
hexdecarr():
1c0070a9:	33323130 	xvstelm.w	$xr16,$r9,-464(0x230),0x4
1c0070ad:	37363534 	0x37363534
1c0070b1:	62613938 	blt	$r9,$r24,-106184(0x26138) # 1bfed1e9 <_start-0x12e17>
1c0070b5:	66656463 	bge	$r3,$r3,-105116(0x26564) # 1bfed619 <_start-0x129e7>
1c0070b9:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0070bd:	79654b0a 	0x79654b0a
1c0070c1:	73657220 	vssrani.wu.d	$vr0,$vr17,0x1c
1c0070c5:	0d217465 	xvbitsel.v	$xr5,$xr3,$xr29,$xr2
1c0070c9:	0d00000a 	fsel	$f10,$f0,$f0,$fcc0
1c0070cd:	6970730a 	bltu	$r24,$r10,94320(0x17070) # 1c01e13d <_sidata+0x14e45>
1c0070d1:	6f6f6220 	bgeu	$r17,$r0,-37024(0x36f60) # 1bffe031 <_start-0x1fcf>
1c0070d5:	0d000074 	fsel	$f20,$f3,$f0,$fcc0
1c0070d9:	676f640a 	bge	$r0,$r10,-37020(0x36f64) # 1bffe03d <_start-0x1fc3>
1c0070dd:	72616220 	0x72616220
1c0070e1:	0a0d216b 	0x0a0d216b
1c0070e5:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0070e9:	6b61770a 	bltu	$r24,$r10,-40588(0x36174) # 1bffd25d <_start-0x2da3>
1c0070ed:	21705565 	sc.w	$r5,$r11,28756(0x7054)
1c0070f1:	b4000a0d 	0xb4000a0d
1c0070f5:	d01c001d 	0xd01c001d
1c0070f9:	d01c001e 	0xd01c001e
1c0070fd:	d01c001e 	0xd01c001e
1c007101:	d01c001e 	0xd01c001e
1c007105:	d01c001e 	0xd01c001e
1c007109:	d01c001e 	0xd01c001e
1c00710d:	d01c001e 	0xd01c001e
1c007111:	d01c001e 	0xd01c001e
1c007115:	d01c001e 	0xd01c001e
1c007119:	d01c001e 	0xd01c001e
1c00711d:	cc1c001e 	0xcc1c001e
1c007121:	541c001d 	bl	7609344(0x741c00) # 1c748d21 <_sidata+0x73fa29>
1c007125:	541c001e 	bl	7871488(0x781c00) # 1c788d25 <_sidata+0x77fa2d>
1c007129:	541c001e 	bl	7871488(0x781c00) # 1c788d29 <_sidata+0x77fa31>
1c00712d:	541c001e 	bl	7871488(0x781c00) # 1c788d2d <_sidata+0x77fa35>
1c007131:	541c001e 	bl	7871488(0x781c00) # 1c788d31 <_sidata+0x77fa39>
1c007135:	541c001e 	bl	7871488(0x781c00) # 1c788d35 <_sidata+0x77fa3d>
1c007139:	541c001e 	bl	7871488(0x781c00) # 1c788d39 <_sidata+0x77fa41>
1c00713d:	541c001e 	bl	7871488(0x781c00) # 1c788d3d <_sidata+0x77fa45>
1c007141:	541c001e 	bl	7871488(0x781c00) # 1c788d41 <_sidata+0x77fa49>
1c007145:	d01c001e 	0xd01c001e
1c007149:	d01c001e 	0xd01c001e
1c00714d:	d01c001e 	0xd01c001e
1c007151:	d01c001e 	0xd01c001e
1c007155:	d01c001e 	0xd01c001e
1c007159:	d01c001e 	0xd01c001e
1c00715d:	d01c001e 	0xd01c001e
1c007161:	d01c001e 	0xd01c001e
1c007165:	d01c001e 	0xd01c001e
1c007169:	d01c001e 	0xd01c001e
1c00716d:	d01c001e 	0xd01c001e
1c007171:	d01c001e 	0xd01c001e
1c007175:	d01c001e 	0xd01c001e
1c007179:	d01c001e 	0xd01c001e
1c00717d:	d01c001e 	0xd01c001e
1c007181:	d01c001e 	0xd01c001e
1c007185:	d01c001e 	0xd01c001e
1c007189:	d01c001e 	0xd01c001e
1c00718d:	d01c001e 	0xd01c001e
1c007191:	d01c001e 	0xd01c001e
1c007195:	d01c001e 	0xd01c001e
1c007199:	d01c001e 	0xd01c001e
1c00719d:	d01c001e 	0xd01c001e
1c0071a1:	d01c001e 	0xd01c001e
1c0071a5:	d01c001e 	0xd01c001e
1c0071a9:	d01c001e 	0xd01c001e
1c0071ad:	d01c001e 	0xd01c001e
1c0071b1:	d01c001e 	0xd01c001e
1c0071b5:	d01c001e 	0xd01c001e
1c0071b9:	d01c001e 	0xd01c001e
1c0071bd:	d01c001e 	0xd01c001e
1c0071c1:	d01c001e 	0xd01c001e
1c0071c5:	d01c001e 	0xd01c001e
1c0071c9:	d01c001e 	0xd01c001e
1c0071cd:	d01c001e 	0xd01c001e
1c0071d1:	d01c001e 	0xd01c001e
1c0071d5:	d01c001e 	0xd01c001e
1c0071d9:	d01c001e 	0xd01c001e
1c0071dd:	d01c001e 	0xd01c001e
1c0071e1:	d01c001e 	0xd01c001e
1c0071e5:	441c001e 	bnez	$r0,-517120(0x781c00) # 1bf88de5 <_start-0x7721b>
1c0071e9:	6c1c001d 	bgeu	$r0,$r29,7168(0x1c00) # 1c008de9 <tfont32+0x5b1>
1c0071ed:	d41c001c 	0xd41c001c
1c0071f1:	d01c001c 	0xd01c001c
1c0071f5:	d01c001e 	0xd01c001e
1c0071f9:	d01c001e 	0xd01c001e
1c0071fd:	d01c001e 	0xd01c001e
1c007201:	d01c001e 	0xd01c001e
1c007205:	d01c001e 	0xd01c001e
1c007209:	d01c001e 	0xd01c001e
1c00720d:	d01c001e 	0xd01c001e
1c007211:	d01c001e 	0xd01c001e
1c007215:	d01c001e 	0xd01c001e
1c007219:	0c1c001e 	0x0c1c001e
1c00721d:	7c1c001d 	0x7c1c001d
1c007221:	d01c001d 	0xd01c001d
1c007225:	d01c001e 	0xd01c001e
1c007229:	401c001e 	beqz	$r0,-517120(0x781c00) # 1bf88e29 <_start-0x771d7>
1c00722d:	d01c001c 	0xd01c001c
1c007231:	9c1c001e 	0x9c1c001e
1c007235:	d01c001c 	0xd01c001c
1c007239:	d01c001e 	0xd01c001e
1c00723d:	7c1c001e 	0x7c1c001e
1c007241:	681c001d 	bltu	$r0,$r29,7168(0x1c00) # 1c008e41 <tfont32+0x609>
1c007245:	8c1c0023 	0x8c1c0023
1c007249:	8c1c0024 	0x8c1c0024
1c00724d:	8c1c0024 	0x8c1c0024
1c007251:	8c1c0024 	0x8c1c0024
1c007255:	8c1c0024 	0x8c1c0024
1c007259:	8c1c0024 	0x8c1c0024
1c00725d:	8c1c0024 	0x8c1c0024
1c007261:	8c1c0024 	0x8c1c0024
1c007265:	8c1c0024 	0x8c1c0024
1c007269:	8c1c0024 	0x8c1c0024
1c00726d:	881c0024 	0x881c0024
1c007271:	101c0023 	addu16i.d	$r3,$r1,1792(0x700)
1c007275:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c007279:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c00727d:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c007281:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c007285:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c007289:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c00728d:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c007291:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c007295:	8c1c0024 	0x8c1c0024
1c007299:	8c1c0024 	0x8c1c0024
1c00729d:	8c1c0024 	0x8c1c0024
1c0072a1:	8c1c0024 	0x8c1c0024
1c0072a5:	8c1c0024 	0x8c1c0024
1c0072a9:	8c1c0024 	0x8c1c0024
1c0072ad:	8c1c0024 	0x8c1c0024
1c0072b1:	8c1c0024 	0x8c1c0024
1c0072b5:	8c1c0024 	0x8c1c0024
1c0072b9:	8c1c0024 	0x8c1c0024
1c0072bd:	8c1c0024 	0x8c1c0024
1c0072c1:	8c1c0024 	0x8c1c0024
1c0072c5:	8c1c0024 	0x8c1c0024
1c0072c9:	8c1c0024 	0x8c1c0024
1c0072cd:	8c1c0024 	0x8c1c0024
1c0072d1:	8c1c0024 	0x8c1c0024
1c0072d5:	8c1c0024 	0x8c1c0024
1c0072d9:	8c1c0024 	0x8c1c0024
1c0072dd:	8c1c0024 	0x8c1c0024
1c0072e1:	8c1c0024 	0x8c1c0024
1c0072e5:	8c1c0024 	0x8c1c0024
1c0072e9:	8c1c0024 	0x8c1c0024
1c0072ed:	8c1c0024 	0x8c1c0024
1c0072f1:	8c1c0024 	0x8c1c0024
1c0072f5:	8c1c0024 	0x8c1c0024
1c0072f9:	8c1c0024 	0x8c1c0024
1c0072fd:	8c1c0024 	0x8c1c0024
1c007301:	8c1c0024 	0x8c1c0024
1c007305:	8c1c0024 	0x8c1c0024
1c007309:	8c1c0024 	0x8c1c0024
1c00730d:	8c1c0024 	0x8c1c0024
1c007311:	8c1c0024 	0x8c1c0024
1c007315:	8c1c0024 	0x8c1c0024
1c007319:	8c1c0024 	0x8c1c0024
1c00731d:	8c1c0024 	0x8c1c0024
1c007321:	8c1c0024 	0x8c1c0024
1c007325:	8c1c0024 	0x8c1c0024
1c007329:	8c1c0024 	0x8c1c0024
1c00732d:	8c1c0024 	0x8c1c0024
1c007331:	8c1c0024 	0x8c1c0024
1c007335:	f01c0024 	0xf01c0024
1c007339:	081c0022 	fmadd.s	$f2,$f1,$f0,$f24
1c00733d:	781c0022 	0x781c0022
1c007341:	8c1c0022 	0x8c1c0022
1c007345:	8c1c0024 	0x8c1c0024
1c007349:	8c1c0024 	0x8c1c0024
1c00734d:	8c1c0024 	0x8c1c0024
1c007351:	8c1c0024 	0x8c1c0024
1c007355:	8c1c0024 	0x8c1c0024
1c007359:	8c1c0024 	0x8c1c0024
1c00735d:	8c1c0024 	0x8c1c0024
1c007361:	8c1c0024 	0x8c1c0024
1c007365:	8c1c0024 	0x8c1c0024
1c007369:	b41c0024 	0xb41c0024
1c00736d:	2c1c0022 	vld	$vr2,$r1,1792(0x700)
1c007371:	8c1c0023 	0x8c1c0023
1c007375:	8c1c0024 	0x8c1c0024
1c007379:	d81c0024 	0xd81c0024
1c00737d:	8c1c0021 	0x8c1c0021
1c007381:	3c1c0024 	0x3c1c0024
1c007385:	8c1c0022 	0x8c1c0022
1c007389:	8c1c0024 	0x8c1c0024
1c00738d:	2c1c0024 	vld	$vr4,$r1,1792(0x700)
1c007391:	0a1c0023 	xvfmadd.s	$xr3,$xr1,$xr0,$xr24
1c007395:	7c000000 	0x7c000000
1c007399:	7c7c7c7c 	0x7c7c7c7c
1c00739d:	7c7c7c7c 	0x7c7c7c7c
1c0073a1:	7c7c7c7c 	0x7c7c7c7c
1c0073a5:	7c7c7c7c 	0x7c7c7c7c
1c0073a9:	7c7c7c7c 	0x7c7c7c7c
1c0073ad:	7c7c7c7c 	0x7c7c7c7c
1c0073b1:	7c7c7c7c 	0x7c7c7c7c
1c0073b5:	7c7c7c7c 	0x7c7c7c7c
1c0073b9:	7c7c7c7c 	0x7c7c7c7c
1c0073bd:	7c7c7c7c 	0x7c7c7c7c
1c0073c1:	7c7c7c7c 	0x7c7c7c7c
1c0073c5:	7c7c7c7c 	0x7c7c7c7c
1c0073c9:	7c7c7c7c 	0x7c7c7c7c
1c0073cd:	7c7c7c7c 	0x7c7c7c7c
1c0073d1:	7c7c7c7c 	0x7c7c7c7c
1c0073d5:	7c7c7c7c 	0x7c7c7c7c
1c0073d9:	7c7c7c7c 	0x7c7c7c7c
1c0073dd:	7c7c7c7c 	0x7c7c7c7c
1c0073e1:	7c7c7c7c 	0x7c7c7c7c
1c0073e5:	7c7c7c7c 	0x7c7c7c7c
1c0073e9:	7c7c7c7c 	0x7c7c7c7c
1c0073ed:	7c7c7c7c 	0x7c7c7c7c
1c0073f1:	7c7c7c7c 	0x7c7c7c7c
1c0073f5:	7c7c7c7c 	0x7c7c7c7c
1c0073f9:	7c00000a 	0x7c00000a
1c0073fd:	7c20207c 	0x7c20207c
1c007401:	7c7c7c7c 	0x7c7c7c7c
1c007405:	7c7c7c7c 	0x7c7c7c7c
1c007409:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00740d:	7c202020 	0x7c202020
1c007411:	7c7c7c7c 	0x7c7c7c7c
1c007415:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007419:	7c202020 	0x7c202020
1c00741d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007421:	7c7c2020 	0x7c7c2020
1c007425:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007429:	7c7c7c20 	0x7c7c7c20
1c00742d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007431:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007435:	7c7c7c7c 	0x7c7c7c7c
1c007439:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00743d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007441:	7c7c7c7c 	0x7c7c7c7c
1c007445:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007449:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00744d:	7c7c7c7c 	0x7c7c7c7c
1c007451:	7c202020 	0x7c202020
1c007455:	7c7c7c7c 	0x7c7c7c7c
1c007459:	7c7c2020 	0x7c7c2020
1c00745d:	7c00000a 	0x7c00000a
1c007461:	7c20207c 	0x7c20207c
1c007465:	7c7c7c7c 	0x7c7c7c7c
1c007469:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00746d:	7c7c2020 	0x7c7c2020
1c007471:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007475:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007479:	7c7c2020 	0x7c7c2020
1c00747d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007481:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007485:	7c202020 	0x7c202020
1c007489:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00748d:	7c7c7c20 	0x7c7c7c20
1c007491:	7c20207c 	0x7c20207c
1c007495:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007499:	7c7c7c20 	0x7c7c7c20
1c00749d:	7c202020 	0x7c202020
1c0074a1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074a5:	7c7c7c20 	0x7c7c7c20
1c0074a9:	7c202020 	0x7c202020
1c0074ad:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074b1:	7c7c7c20 	0x7c7c7c20
1c0074b5:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0074b9:	7c7c7c7c 	0x7c7c7c7c
1c0074bd:	7c7c2020 	0x7c7c2020
1c0074c1:	7c00000a 	0x7c00000a
1c0074c5:	7c20207c 	0x7c20207c
1c0074c9:	7c7c7c7c 	0x7c7c7c7c
1c0074cd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074d1:	7c7c7c20 	0x7c7c7c20
1c0074d5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074d9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074dd:	7c7c7c20 	0x7c7c7c20
1c0074e1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074e5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074e9:	20207c20 	ll.w	$r0,$r1,8316(0x207c)
1c0074ed:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074f1:	7c7c7c20 	0x7c7c7c20
1c0074f5:	7c7c2020 	0x7c7c2020
1c0074f9:	7c7c7c7c 	0x7c7c7c7c
1c0074fd:	7c7c7c7c 	0x7c7c7c7c
1c007501:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007505:	7c7c7c20 	0x7c7c7c20
1c007509:	7c7c7c7c 	0x7c7c7c7c
1c00750d:	7c7c2020 	0x7c7c2020
1c007511:	7c7c7c7c 	0x7c7c7c7c
1c007515:	7c7c7c20 	0x7c7c7c20
1c007519:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c00751d:	7c7c7c20 	0x7c7c7c20
1c007521:	7c7c2020 	0x7c7c2020
1c007525:	7c00000a 	0x7c00000a
1c007529:	7c20207c 	0x7c20207c
1c00752d:	7c7c7c7c 	0x7c7c7c7c
1c007531:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007535:	7c7c7c20 	0x7c7c7c20
1c007539:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00753d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007541:	7c7c7c20 	0x7c7c7c20
1c007545:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007549:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00754d:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c007551:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c007555:	7c7c7c20 	0x7c7c7c20
1c007559:	7c7c2020 	0x7c7c2020
1c00755d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007561:	7c7c7c20 	0x7c7c7c20
1c007565:	7c7c7c7c 	0x7c7c7c7c
1c007569:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00756d:	7c7c7c7c 	0x7c7c7c7c
1c007571:	7c7c2020 	0x7c7c2020
1c007575:	7c7c7c7c 	0x7c7c7c7c
1c007579:	7c7c7c20 	0x7c7c7c20
1c00757d:	7c7c2020 	0x7c7c2020
1c007581:	7c7c2020 	0x7c7c2020
1c007585:	7c7c2020 	0x7c7c2020
1c007589:	7c00000a 	0x7c00000a
1c00758d:	7c20207c 	0x7c20207c
1c007591:	7c7c7c7c 	0x7c7c7c7c
1c007595:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007599:	7c7c7c20 	0x7c7c7c20
1c00759d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075a1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075a5:	7c7c7c20 	0x7c7c7c20
1c0075a9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075ad:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075b1:	7c7c7c20 	0x7c7c7c20
1c0075b5:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c0075b9:	7c7c7c20 	0x7c7c7c20
1c0075bd:	7c7c2020 	0x7c7c2020
1c0075c1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075c5:	7c7c7c20 	0x7c7c7c20
1c0075c9:	7c7c7c7c 	0x7c7c7c7c
1c0075cd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075d1:	7c7c7c20 	0x7c7c7c20
1c0075d5:	7c7c2020 	0x7c7c2020
1c0075d9:	7c7c7c7c 	0x7c7c7c7c
1c0075dd:	7c7c7c20 	0x7c7c7c20
1c0075e1:	7c7c2020 	0x7c7c2020
1c0075e5:	7c20207c 	0x7c20207c
1c0075e9:	7c7c2020 	0x7c7c2020
1c0075ed:	7c00000a 	0x7c00000a
1c0075f1:	7c20207c 	0x7c20207c
1c0075f5:	7c7c7c7c 	0x7c7c7c7c
1c0075f9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075fd:	7c7c2020 	0x7c7c2020
1c007601:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007605:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007609:	7c7c2020 	0x7c7c2020
1c00760d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007611:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007615:	7c7c7c20 	0x7c7c7c20
1c007619:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00761d:	7c7c7c20 	0x7c7c7c20
1c007621:	7c202020 	0x7c202020
1c007625:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007629:	7c7c7c20 	0x7c7c7c20
1c00762d:	7c202020 	0x7c202020
1c007631:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007635:	7c7c7c7c 	0x7c7c7c7c
1c007639:	7c202020 	0x7c202020
1c00763d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007641:	7c7c7c20 	0x7c7c7c20
1c007645:	7c7c2020 	0x7c7c2020
1c007649:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c00764d:	7c7c2020 	0x7c7c2020
1c007651:	7c00000a 	0x7c00000a
1c007655:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007659:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00765d:	7c7c7c7c 	0x7c7c7c7c
1c007661:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007665:	7c202020 	0x7c202020
1c007669:	7c7c7c7c 	0x7c7c7c7c
1c00766d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007671:	7c202020 	0x7c202020
1c007675:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007679:	7c7c7c20 	0x7c7c7c20
1c00767d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007681:	7c7c7c20 	0x7c7c7c20
1c007685:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007689:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00768d:	7c7c7c7c 	0x7c7c7c7c
1c007691:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007695:	7c202020 	0x7c202020
1c007699:	7c7c7c7c 	0x7c7c7c7c
1c00769d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0076a1:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0076a5:	7c7c7c7c 	0x7c7c7c7c
1c0076a9:	7c7c2020 	0x7c7c2020
1c0076ad:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0076b1:	7c7c2020 	0x7c7c2020
1c0076b5:	7c00000a 	0x7c00000a
1c0076b9:	7c7c7c7c 	0x7c7c7c7c
1c0076bd:	7c7c7c7c 	0x7c7c7c7c
1c0076c1:	7c7c7c7c 	0x7c7c7c7c
1c0076c5:	7c7c7c7c 	0x7c7c7c7c
1c0076c9:	7c7c7c7c 	0x7c7c7c7c
1c0076cd:	7c7c7c7c 	0x7c7c7c7c
1c0076d1:	7c7c7c7c 	0x7c7c7c7c
1c0076d5:	7c7c7c7c 	0x7c7c7c7c
1c0076d9:	7c7c7c7c 	0x7c7c7c7c
1c0076dd:	325b7c7c 	xvldrepl.h	$xr28,$r3,-578(0xdbe)
1c0076e1:	20303230 	ll.w	$r16,$r17,12336(0x3030)
1c0076e5:	4e4f4f4c 	jirl	$r12,$r26,-110772(0x24f4c)
1c0076e9:	4e4f5347 	jirl	$r7,$r26,-110768(0x24f50)
1c0076ed:	7c7c7c5d 	0x7c7c7c5d
1c0076f1:	7c7c7c7c 	0x7c7c7c7c
1c0076f5:	7c7c7c7c 	0x7c7c7c7c
1c0076f9:	7c7c7c7c 	0x7c7c7c7c
1c0076fd:	7c7c7c7c 	0x7c7c7c7c
1c007701:	7c7c7c7c 	0x7c7c7c7c
1c007705:	7c7c7c7c 	0x7c7c7c7c
1c007709:	7c7c7c7c 	0x7c7c7c7c
1c00770d:	7c7c7c7c 	0x7c7c7c7c
1c007711:	7c7c7c7c 	0x7c7c7c7c
1c007715:	7c7c7c7c 	0x7c7c7c7c
1c007719:	0900000a 	0x0900000a
1c00771d:	0a006425 	0x0a006425
1c007721:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007725:	776f440a 	xvssrarni.du.q	$xr10,$xr0,0x51
1c007729:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c00772d:	0050550a 	0x0050550a
1c007731:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007735:	6c754d0a 	bgeu	$r8,$r10,30028(0x754c) # 1c00ec81 <_sidata+0x5989>
1c007739:	776f4469 	xvssrarni.du.q	$xr9,$xr3,0x51
1c00773d:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c007741:	756f430a 	0x756f430a
1c007745:	4f20746e 	jirl	$r14,$r3,-57228(0x32074)
1c007749:	0d000056 	fsel	$f22,$f2,$f0,$fcc0
1c00774d:	3030090a 	0x3030090a
1c007751:	09313009 	0x09313009
1c007755:	30093230 	0x30093230
1c007759:	34300933 	0x34300933
1c00775d:	09353009 	0x09353009
1c007761:	30093630 	0x30093630
1c007765:	38300937 	fldx.s	$f23,$r9,$r2
1c007769:	09393009 	0x09393009
1c00776d:	31093031 	0x31093031
1c007771:	0d000031 	fsel	$f17,$f1,$f0,$fcc0
1c007775:	746e630a 	0x746e630a
1c007779:	09000000 	0x09000000
1c00777d:	00643425 	bstrins.w	$r5,$r1,0x4,0xd
1c007781:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007785:	7361420a 	vssrani.w.d	$vr10,$vr16,0x10
1c007789:	6c615665 	bgeu	$r19,$r5,24916(0x6154) # 1c00d8dd <_sidata+0x45e5>
1c00778d:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007791:	6275530a 	blt	$r24,$r10,-101040(0x27550) # 1bfeece1 <_start-0x1131f>
1c007795:	006c6156 	bstrins.w	$r22,$r10,0xc,0x18
1c007799:	09000000 	0x09000000
1c00779d:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c0077a1:	09000000 	0x09000000
1c0077a5:	00643325 	bstrins.w	$r5,$r25,0x4,0xc
1c0077a9:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0077ad:	203c200a 	ll.w	$r10,$r0,15392(0x3c20)
1c0077b1:	3a515249 	0x3a515249
1c0077b5:	20642520 	ll.w	$r0,$r9,25636(0x6424)
1c0077b9:	636e7566 	blt	$r11,$r6,-37260(0x36e74) # 1bffe62d <_start-0x19d3>
1c0077bd:	2073253a 	ll.w	$r26,$r9,29476(0x7324)
1c0077c1:	0d3e2020 	0x0d3e2020
1c0077c5:	0a00000a 	0x0a00000a
1c0077c9:	2e2e2e2e 	0x2e2e2e2e
1c0077cd:	2e2e2e2e 	0x2e2e2e2e
1c0077d1:	2e2e2e2e 	0x2e2e2e2e
1c0077d5:	464f532e 	bnez	$r25,3821392(0x3a4f50) # 1c3ac725 <_sidata+0x3a342d>
1c0077d9:	4e495f54 	jirl	$r20,$r26,-112292(0x2495c)
1c0077dd:	2e2e2e54 	0x2e2e2e54
1c0077e1:	2e2e2e2e 	0x2e2e2e2e
1c0077e5:	2e2e2e2e 	0x2e2e2e2e
1c0077e9:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c0077ed:	0d00000d 	fsel	$f13,$f0,$f0,$fcc0
1c0077f1:	2e2e2e0a 	0x2e2e2e0a
1c0077f5:	2e2e2e2e 	0x2e2e2e2e
1c0077f9:	2e2e2e2e 	0x2e2e2e2e
1c0077fd:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39ba29 <_sidata+0x392731>
1c007801:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1be5d <_start-0x2e41a3>
1c007805:	2e2e4c49 	0x2e2e4c49
1c007809:	2e2e2e2e 	0x2e2e2e2e
1c00780d:	2e2e2e2e 	0x2e2e2e2e
1c007811:	2e2e2e2e 	0x2e2e2e2e
1c007815:	0d000a0d 	fsel	$f13,$f16,$f2,$fcc0
1c007819:	2e2e2e0a 	0x2e2e2e0a
1c00781d:	2e2e2e2e 	0x2e2e2e2e
1c007821:	2e2e2e2e 	0x2e2e2e2e
1c007825:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38b951 <_sidata+0x382659>
1c007829:	2e2e2e43 	0x2e2e2e43
1c00782d:	2e2e2e2e 	0x2e2e2e2e
1c007831:	2e2e2e2e 	0x2e2e2e2e
1c007835:	0d2e2e2e 	xvbitsel.v	$xr14,$xr17,$xr11,$xr28
1c007839:	5000000a 	b	2621440(0x280000) # 1c287839 <_sidata+0x27e541>
1c00783d:	70697265 	vavgr.w	$vr5,$vr19,$vr28
1c007841:	61726568 	blt	$r11,$r8,94820(0x17264) # 1c01eaa5 <_sidata+0x157ad>
1c007845:	5420736c 	bl	-38789008(0xdb02070) # 19b098b5 <_start-0x24f674b>
1c007849:	72656d69 	0x72656d69
1c00784d:	656c6320 	bge	$r25,$r0,93280(0x16c60) # 1c01e4ad <_sidata+0x151b5>
1c007851:	69207261 	bltu	$r19,$r1,73840(0x12070) # 1c0198c1 <_sidata+0x105c9>
1c007855:	7265746e 	0x7265746e
1c007859:	74707572 	xvmax.b	$xr18,$xr11,$xr29
1c00785d:	0a0d2e2e 	0x0a0d2e2e
1c007861:	43000000 	beqz	$r0,196608(0x30000) # 1c037861 <_sidata+0x2e569>
1c007865:	2065726f 	ll.w	$r15,$r19,25968(0x6570)
1c007869:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01e5d1 <_sidata+0x152d9>
1c00786d:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00db8d <_sidata+0x4895>
1c007871:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c007875:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c01ece1 <_sidata+0x159e9>
1c007879:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c00787d:	0d2e2e74 	xvbitsel.v	$xr20,$xr19,$xr11,$xr28
1c007881:	 	csrrd	$r10,0x0

1c007884 <Ext_IrqHandle>:
1c007884:	1c004004 	pcaddu12i	$r4,512(0x200)
1c007888:	1c004050 	pcaddu12i	$r16,514(0x202)
1c00788c:	1c00409c 	pcaddu12i	$r28,516(0x204)
1c007890:	1c0040e8 	pcaddu12i	$r8,519(0x207)
1c007894:	1c004134 	pcaddu12i	$r20,521(0x209)
1c007898:	1c004180 	pcaddu12i	$r0,524(0x20c)
1c00789c:	1c0041cc 	pcaddu12i	$r12,526(0x20e)
1c0078a0:	1c004218 	pcaddu12i	$r24,528(0x210)
1c0078a4:	1c004264 	pcaddu12i	$r4,531(0x213)
1c0078a8:	1c0042b0 	pcaddu12i	$r16,533(0x215)
1c0078ac:	1c0042fc 	pcaddu12i	$r28,535(0x217)
1c0078b0:	1c004348 	pcaddu12i	$r8,538(0x21a)
1c0078b4:	1c004394 	pcaddu12i	$r20,540(0x21c)
1c0078b8:	1c0043e0 	pcaddu12i	$r0,543(0x21f)
1c0078bc:	1c00442c 	pcaddu12i	$r12,545(0x221)
1c0078c0:	1c004478 	pcaddu12i	$r24,547(0x223)
1c0078c4:	1c0044c4 	pcaddu12i	$r4,550(0x226)
1c0078c8:	1c004510 	pcaddu12i	$r16,552(0x228)
1c0078cc:	1c00455c 	pcaddu12i	$r28,554(0x22a)
1c0078d0:	1c0045a8 	pcaddu12i	$r8,557(0x22d)
1c0078d4:	1c0045f4 	pcaddu12i	$r20,559(0x22f)
1c0078d8:	1c004640 	pcaddu12i	$r0,562(0x232)
1c0078dc:	1c00468c 	pcaddu12i	$r12,564(0x234)
1c0078e0:	1c0046d8 	pcaddu12i	$r24,566(0x236)
1c0078e4:	1c004724 	pcaddu12i	$r4,569(0x239)
1c0078e8:	1c004770 	pcaddu12i	$r16,571(0x23b)
1c0078ec:	1c0047bc 	pcaddu12i	$r28,573(0x23d)
1c0078f0:	1c004808 	pcaddu12i	$r8,576(0x240)
1c0078f4:	1c004854 	pcaddu12i	$r20,578(0x242)
1c0078f8:	1c0048a0 	pcaddu12i	$r0,581(0x245)
1c0078fc:	1c0048ec 	pcaddu12i	$r12,583(0x247)
1c007900:	1c004938 	pcaddu12i	$r24,585(0x249)
1c007904:	1c004c1c 	pcaddu12i	$r28,608(0x260)
1c007908:	1c004bcc 	pcaddu12i	$r12,606(0x25e)
1c00790c:	1c004c1c 	pcaddu12i	$r28,608(0x260)
1c007910:	1c004c1c 	pcaddu12i	$r28,608(0x260)
1c007914:	1c004c1c 	pcaddu12i	$r28,608(0x260)
1c007918:	1c004c1c 	pcaddu12i	$r28,608(0x260)
1c00791c:	1c004c1c 	pcaddu12i	$r28,608(0x260)
1c007920:	1c004c1c 	pcaddu12i	$r28,608(0x260)
1c007924:	1c004c1c 	pcaddu12i	$r28,608(0x260)
1c007928:	1c004c1c 	pcaddu12i	$r28,608(0x260)
1c00792c:	1c004c1c 	pcaddu12i	$r28,608(0x260)
1c007930:	1c004c1c 	pcaddu12i	$r28,608(0x260)
1c007934:	1c004c1c 	pcaddu12i	$r28,608(0x260)
1c007938:	1c004c1c 	pcaddu12i	$r28,608(0x260)
1c00793c:	1c004c1c 	pcaddu12i	$r28,608(0x260)
1c007940:	1c004c1c 	pcaddu12i	$r28,608(0x260)
1c007944:	1c004be8 	pcaddu12i	$r8,607(0x25f)

1c007948 <__FUNCTION__.1551>:
1c007948:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01edc0 <_sidata+0x15ac8>
1c00794c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e9b0 <_sidata+0x156b8>
1c007950:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bffa9b0 <_start-0x5650>
1c007954:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeac4 <_start-0x153c>
1c007958:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e7b8 <_sidata+0x54c0>
1c00795c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007960 <__FUNCTION__.1555>:
1c007960:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01edd8 <_sidata+0x15ae0>
1c007964:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e9c8 <_sidata+0x156d0>
1c007968:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bffaac8 <_start-0x5538>
1c00796c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeadc <_start-0x1524>
1c007970:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e7d0 <_sidata+0x54d8>
1c007974:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007978 <__FUNCTION__.1559>:
1c007978:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01edf0 <_sidata+0x15af8>
1c00797c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e9e0 <_sidata+0x156e8>
1c007980:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bffabe0 <_start-0x5420>
1c007984:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeaf4 <_start-0x150c>
1c007988:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e7e8 <_sidata+0x54f0>
1c00798c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007990 <__FUNCTION__.1563>:
1c007990:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee08 <_sidata+0x15b10>
1c007994:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e9f8 <_sidata+0x15700>
1c007998:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bffacf8 <_start-0x5308>
1c00799c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb0c <_start-0x14f4>
1c0079a0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e800 <_sidata+0x5508>
1c0079a4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0079a8 <__FUNCTION__.1567>:
1c0079a8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee20 <_sidata+0x15b28>
1c0079ac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea10 <_sidata+0x15718>
1c0079b0:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bffae10 <_start-0x51f0>
1c0079b4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb24 <_start-0x14dc>
1c0079b8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e818 <_sidata+0x5520>
1c0079bc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0079c0 <__FUNCTION__.1571>:
1c0079c0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee38 <_sidata+0x15b40>
1c0079c4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea28 <_sidata+0x15730>
1c0079c8:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bffaf28 <_start-0x50d8>
1c0079cc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb3c <_start-0x14c4>
1c0079d0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e830 <_sidata+0x5538>
1c0079d4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0079d8 <__FUNCTION__.1575>:
1c0079d8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee50 <_sidata+0x15b58>
1c0079dc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea40 <_sidata+0x15748>
1c0079e0:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bffb040 <_start-0x4fc0>
1c0079e4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb54 <_start-0x14ac>
1c0079e8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e848 <_sidata+0x5550>
1c0079ec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0079f0 <__FUNCTION__.1579>:
1c0079f0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee68 <_sidata+0x15b70>
1c0079f4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea58 <_sidata+0x15760>
1c0079f8:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bffb158 <_start-0x4ea8>
1c0079fc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb6c <_start-0x1494>
1c007a00:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e860 <_sidata+0x5568>
1c007a04:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a08 <__FUNCTION__.1583>:
1c007a08:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee80 <_sidata+0x15b88>
1c007a0c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea70 <_sidata+0x15778>
1c007a10:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bffaa70 <_start-0x5590>
1c007a14:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb84 <_start-0x147c>
1c007a18:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e878 <_sidata+0x5580>
1c007a1c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a20 <__FUNCTION__.1587>:
1c007a20:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee98 <_sidata+0x15ba0>
1c007a24:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea88 <_sidata+0x15790>
1c007a28:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bffab88 <_start-0x5478>
1c007a2c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb9c <_start-0x1464>
1c007a30:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e890 <_sidata+0x5598>
1c007a34:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a38 <__FUNCTION__.1591>:
1c007a38:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eeb0 <_sidata+0x15bb8>
1c007a3c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eaa0 <_sidata+0x157a8>
1c007a40:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bffaca0 <_start-0x5360>
1c007a44:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffebb4 <_start-0x144c>
1c007a48:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e8a8 <_sidata+0x55b0>
1c007a4c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a50 <__FUNCTION__.1595>:
1c007a50:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eec8 <_sidata+0x15bd0>
1c007a54:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eab8 <_sidata+0x157c0>
1c007a58:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bffadb8 <_start-0x5248>
1c007a5c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffebcc <_start-0x1434>
1c007a60:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e8c0 <_sidata+0x55c8>
1c007a64:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a68 <__FUNCTION__.1599>:
1c007a68:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eee0 <_sidata+0x15be8>
1c007a6c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ead0 <_sidata+0x157d8>
1c007a70:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bffaed0 <_start-0x5130>
1c007a74:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffebe4 <_start-0x141c>
1c007a78:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e8d8 <_sidata+0x55e0>
1c007a7c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a80 <__FUNCTION__.1603>:
1c007a80:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eef8 <_sidata+0x15c00>
1c007a84:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eae8 <_sidata+0x157f0>
1c007a88:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bffafe8 <_start-0x5018>
1c007a8c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffebfc <_start-0x1404>
1c007a90:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e8f0 <_sidata+0x55f8>
1c007a94:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a98 <__FUNCTION__.1607>:
1c007a98:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef10 <_sidata+0x15c18>
1c007a9c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb00 <_sidata+0x15808>
1c007aa0:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bffb100 <_start-0x4f00>
1c007aa4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec14 <_start-0x13ec>
1c007aa8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e908 <_sidata+0x5610>
1c007aac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007ab0 <__FUNCTION__.1611>:
1c007ab0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef28 <_sidata+0x15c30>
1c007ab4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb18 <_sidata+0x15820>
1c007ab8:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bffb218 <_start-0x4de8>
1c007abc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec2c <_start-0x13d4>
1c007ac0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e920 <_sidata+0x5628>
1c007ac4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007ac8 <__FUNCTION__.1615>:
1c007ac8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef40 <_sidata+0x15c48>
1c007acc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb30 <_sidata+0x15838>
1c007ad0:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bffab30 <_start-0x54d0>
1c007ad4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec44 <_start-0x13bc>
1c007ad8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e938 <_sidata+0x5640>
1c007adc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007ae0 <__FUNCTION__.1619>:
1c007ae0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef58 <_sidata+0x15c60>
1c007ae4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb48 <_sidata+0x15850>
1c007ae8:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bffac48 <_start-0x53b8>
1c007aec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec5c <_start-0x13a4>
1c007af0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e950 <_sidata+0x5658>
1c007af4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007af8 <__FUNCTION__.1623>:
1c007af8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef70 <_sidata+0x15c78>
1c007afc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb60 <_sidata+0x15868>
1c007b00:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bffad60 <_start-0x52a0>
1c007b04:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec74 <_start-0x138c>
1c007b08:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e968 <_sidata+0x5670>
1c007b0c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b10 <__FUNCTION__.1627>:
1c007b10:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef88 <_sidata+0x15c90>
1c007b14:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb78 <_sidata+0x15880>
1c007b18:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bffae78 <_start-0x5188>
1c007b1c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec8c <_start-0x1374>
1c007b20:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e980 <_sidata+0x5688>
1c007b24:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b28 <__FUNCTION__.1631>:
1c007b28:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01efa0 <_sidata+0x15ca8>
1c007b2c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb90 <_sidata+0x15898>
1c007b30:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bffaf90 <_start-0x5070>
1c007b34:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeca4 <_start-0x135c>
1c007b38:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e998 <_sidata+0x56a0>
1c007b3c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b40 <__FUNCTION__.1635>:
1c007b40:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01efb8 <_sidata+0x15cc0>
1c007b44:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eba8 <_sidata+0x158b0>
1c007b48:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bffb0a8 <_start-0x4f58>
1c007b4c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffecbc <_start-0x1344>
1c007b50:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e9b0 <_sidata+0x56b8>
1c007b54:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b58 <__FUNCTION__.1639>:
1c007b58:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01efd0 <_sidata+0x15cd8>
1c007b5c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ebc0 <_sidata+0x158c8>
1c007b60:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bffb1c0 <_start-0x4e40>
1c007b64:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffecd4 <_start-0x132c>
1c007b68:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e9c8 <_sidata+0x56d0>
1c007b6c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b70 <__FUNCTION__.1643>:
1c007b70:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01efe8 <_sidata+0x15cf0>
1c007b74:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ebd8 <_sidata+0x158e0>
1c007b78:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bffb2d8 <_start-0x4d28>
1c007b7c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffecec <_start-0x1314>
1c007b80:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e9e0 <_sidata+0x56e8>
1c007b84:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b88 <__FUNCTION__.1647>:
1c007b88:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f000 <_sidata+0x15d08>
1c007b8c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ebf0 <_sidata+0x158f8>
1c007b90:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bffabf4 <_start-0x540c>
1c007b94:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffed04 <_start-0x12fc>
1c007b98:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e9f8 <_sidata+0x5700>
1c007b9c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007ba0 <__FUNCTION__.1651>:
1c007ba0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f018 <_sidata+0x15d20>
1c007ba4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ec08 <_sidata+0x15910>
1c007ba8:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bffad0c <_start-0x52f4>
1c007bac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffed1c <_start-0x12e4>
1c007bb0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ea10 <_sidata+0x5718>
1c007bb4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007bb8 <__FUNCTION__.1655>:
1c007bb8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f030 <_sidata+0x15d38>
1c007bbc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ec20 <_sidata+0x15928>
1c007bc0:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bffae24 <_start-0x51dc>
1c007bc4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffed34 <_start-0x12cc>
1c007bc8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ea28 <_sidata+0x5730>
1c007bcc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007bd0 <__FUNCTION__.1659>:
1c007bd0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f048 <_sidata+0x15d50>
1c007bd4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ec38 <_sidata+0x15940>
1c007bd8:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bffaf3c <_start-0x50c4>
1c007bdc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffed4c <_start-0x12b4>
1c007be0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ea40 <_sidata+0x5748>
1c007be4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007be8 <__FUNCTION__.1663>:
1c007be8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f060 <_sidata+0x15d68>
1c007bec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ec50 <_sidata+0x15958>
1c007bf0:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bffb054 <_start-0x4fac>
1c007bf4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffed64 <_start-0x129c>
1c007bf8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ea58 <_sidata+0x5760>
1c007bfc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007c00 <__FUNCTION__.1667>:
1c007c00:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f078 <_sidata+0x15d80>
1c007c04:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ec68 <_sidata+0x15970>
1c007c08:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bffb16c <_start-0x4e94>
1c007c0c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffed7c <_start-0x1284>
1c007c10:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ea70 <_sidata+0x5778>
1c007c14:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007c18 <__FUNCTION__.1671>:
1c007c18:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f090 <_sidata+0x15d98>
1c007c1c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ec80 <_sidata+0x15988>
1c007c20:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bffb284 <_start-0x4d7c>
1c007c24:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffed94 <_start-0x126c>
1c007c28:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ea88 <_sidata+0x5790>
1c007c2c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007c30 <__FUNCTION__.1675>:
1c007c30:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f0a8 <_sidata+0x15db0>
1c007c34:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ec98 <_sidata+0x159a0>
1c007c38:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bffb39c <_start-0x4c64>
1c007c3c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffedac <_start-0x1254>
1c007c40:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00eaa0 <_sidata+0x57a8>
1c007c44:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
1c007c48:	65636552 	bge	$r10,$r18,90980(0x16364) # 1c01dfac <_sidata+0x14cb4>
1c007c4c:	64657669 	bge	$r19,$r9,25972(0x6574) # 1c00e1c0 <_sidata+0x4ec8>
1c007c50:	6d6f6320 	bgeu	$r25,$r0,94048(0x16f60) # 1c01ebb0 <_sidata+0x158b8>
1c007c54:	646e616d 	bge	$r11,$r13,28256(0x6e60) # 1c00eab4 <_sidata+0x57bc>
1c007c58:	0000203a 	clo.d	$r26,$r1
1c007c5c:	00006325 	rdtimel.w	$r5,$r25
1c007c60:	0000000a 	0x0000000a
1c007c64:	2077654e 	ll.w	$r14,$r10,30564(0x7764)
1c007c68:	65726874 	bge	$r3,$r20,94824(0x17268) # 1c01eed0 <_sidata+0x15bd8>
1c007c6c:	6c6f6873 	bgeu	$r3,$r19,28520(0x6f68) # 1c00ebd4 <_sidata+0x58dc>
1c007c70:	73207364 	0x73207364
1c007c74:	203a7465 	ll.w	$r5,$r3,14964(0x3a74)
1c007c78:	64253d54 	bge	$r10,$r20,9532(0x253c) # 1c00a1b4 <_sidata+0xebc>
1c007c7c:	3d48202c 	0x3d48202c
1c007c80:	202c6425 	ll.w	$r5,$r1,11364(0x2c64)
1c007c84:	64253d53 	bge	$r10,$r19,9532(0x253c) # 1c00a1c0 <_sidata+0xec8>
1c007c88:	0000000a 	0x0000000a
1c007c8c:	61766e49 	blt	$r18,$r9,95852(0x1766c) # 1c01f2f8 <_sidata+0x16000>
1c007c90:	2064696c 	ll.w	$r12,$r11,25704(0x6468)
1c007c94:	6d6d6f63 	bgeu	$r27,$r3,93548(0x16d6c) # 1c01ea00 <_sidata+0x15708>
1c007c98:	20646e61 	ll.w	$r1,$r19,25708(0x646c)
1c007c9c:	6d726f66 	bgeu	$r27,$r6,94828(0x1726c) # 1c01ef08 <_sidata+0x15c10>
1c007ca0:	0a217461 	xvfmadd.d	$xr1,$xr3,$xr29,$xr2
1c007ca4:	00000000 	0x00000000
1c007ca8:	6d6d6f43 	bgeu	$r26,$r3,93548(0x16d6c) # 1c01ea14 <_sidata+0x1571c>
1c007cac:	20646e61 	ll.w	$r1,$r19,25708(0x646c)
1c007cb0:	6f636e69 	bgeu	$r19,$r9,-40084(0x3636c) # 1bffe01c <_start-0x1fe4>
1c007cb4:	656c706d 	bge	$r3,$r13,93296(0x16c70) # 1c01e924 <_sidata+0x1562c>
1c007cb8:	6f206574 	bgeu	$r11,$r20,-57244(0x32064) # 1bff9d1c <_start-0x62e4>
1c007cbc:	69742072 	bltu	$r3,$r18,95264(0x17420) # 1c01f0dc <_sidata+0x15de4>
1c007cc0:	756f656d 	0x756f656d
1c007cc4:	000a2174 	0x000a2174
1c007cc8:	504d4554 	b	89148740(0x5504d44) # 2150ca0c <_sidata+0x5503714>
1c007ccc:	6425203a 	bge	$r1,$r26,9504(0x2520) # 1c00a1ec <_sidata+0xef4>
1c007cd0:	5548202c 	bl	11618336(0xb14820) # 1cb1c4f0 <_sidata+0xb131f8>
1c007cd4:	203a494d 	ll.w	$r13,$r10,14920(0x3a48)
1c007cd8:	25256425 	stptr.w	$r5,$r1,9572(0x2564)
1c007cdc:	202c4852 	ll.w	$r18,$r2,11336(0x2c48)
1c007ce0:	4b4f4d53 	bcnez	$fcc2,-3190964(0x4f4f4c) # 1bcfcc2c <_start-0x3033d4>
1c007ce4:	25203a45 	stptr.w	$r5,$r18,8248(0x2038)
1c007ce8:	6d707064 	bgeu	$r3,$r4,94320(0x17070) # 1c01ed58 <_sidata+0x15a60>
1c007cec:	0000000a 	0x0000000a
1c007cf0:	52525543 	b	84824660(0x50e5254) # 210ecf44 <_sidata+0x50e3c4c>
1c007cf4:	00544e45 	0x00544e45
1c007cf8:	504d4554 	b	89148740(0x5504d44) # 2150ca3c <_sidata+0x5503744>
1c007cfc:	6432253a 	bge	$r9,$r26,12836(0x3224) # 1c00af20 <_sidata+0x1c28>
1c007d00:	008384e2 	bstrins.d	$r2,$r7,0x3,0x21
1c007d04:	494d5548 	bcnez	$fcc2,2182484(0x214d54) # 1c21ca58 <_sidata+0x213760>
1c007d08:	6432253a 	bge	$r9,$r26,12836(0x3224) # 1c00af2c <_sidata+0x1c34>
1c007d0c:	48522525 	bcnez	$fcc1,1331748(0x145224) # 1c14cf30 <_sidata+0x143c38>
1c007d10:	00000000 	0x00000000
1c007d14:	4b4f4d53 	bcnez	$fcc2,-3190964(0x4f4f4c) # 1bcfcc60 <_start-0x3033a0>
1c007d18:	32253a45 	xvldrepl.w	$xr5,$r18,1336(0x538)
1c007d1c:	6d707064 	bgeu	$r3,$r4,94320(0x17070) # 1c01ed8c <_sidata+0x15a94>
1c007d20:	00000000 	0x00000000
1c007d24:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007d28:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007d2c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007d30:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007d34:	00000000 	0x00000000

1c007d38 <asc2_1608>:
	...
1c007d48:	f8000000 	0xf8000000
1c007d4c:	00000000 	0x00000000
1c007d50:	33000000 	0x33000000
1c007d54:	00000000 	0x00000000
1c007d58:	020c1000 	slti	$r0,$r0,772(0x304)
1c007d5c:	00020c10 	0x00020c10
	...
1c007d68:	78c04000 	0x78c04000
1c007d6c:	0078c040 	bstrpick.w	$r0,$r2,0x18,0x10
1c007d70:	043f0400 	csrrd	$r0,0xfc1
1c007d74:	00043f04 	alsl.w	$r4,$r24,$r15,0x1
1c007d78:	88887000 	0x88887000
1c007d7c:	003008fc 	0x003008fc
1c007d80:	20201800 	ll.w	$r0,$r0,8216(0x2018)
1c007d84:	001e21ff 	mulh.d	$r31,$r15,$r8
1c007d88:	80f008f0 	0x80f008f0
1c007d8c:	00001860 	cto.w	$r0,$r3
1c007d90:	030c3100 	lu52i.d	$r0,$r8,780(0x30c)
1c007d94:	001e211e 	mulh.d	$r30,$r8,$r8
1c007d98:	8808f000 	0x8808f000
1c007d9c:	00000070 	0x00000070
1c007da0:	2c23211e 	vld	$vr30,$r8,-1848(0x8c8)
1c007da4:	10212719 	addu16i.d	$r25,$r24,2121(0x849)
1c007da8:	000e1200 	bytepick.d	$r0,$r16,$r4,0x4
	...
1c007db8:	e0000000 	0xe0000000
1c007dbc:	00020418 	0x00020418
1c007dc0:	07000000 	0x07000000
1c007dc4:	00402018 	0x00402018
1c007dc8:	18040200 	pcaddi	$r0,8208(0x2010)
1c007dcc:	000000e0 	0x000000e0
1c007dd0:	18204000 	pcaddi	$r0,66048(0x10200)
1c007dd4:	00000007 	0x00000007
1c007dd8:	f0804040 	0xf0804040
1c007ddc:	00404080 	0x00404080
1c007de0:	0f010202 	0x0f010202
1c007de4:	00020201 	0x00020201
1c007de8:	00000000 	0x00000000
1c007dec:	000000e0 	0x000000e0
1c007df0:	01010100 	fadd.d	$f0,$f8,$f0
1c007df4:	0101010f 	fadd.d	$f15,$f8,$f0
	...
1c007e00:	00709000 	bstrpick.w	$r0,$r0,0x10,0x4
	...
1c007e10:	01010100 	fadd.d	$f0,$f8,$f0
1c007e14:	00010101 	0x00010101
	...
1c007e20:	00303000 	0x00303000
	...
1c007e2c:	000438c0 	alsl.w	$r0,$r6,$r14,0x1
1c007e30:	07186000 	0x07186000
1c007e34:	00000000 	0x00000000
1c007e38:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c007e3c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007e40:	20100f00 	ll.w	$r0,$r24,4108(0x100c)
1c007e44:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c007e48:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c007e4c:	000000f8 	0x000000f8
1c007e50:	20200000 	ll.w	$r0,$r0,8192(0x2000)
1c007e54:	0020203f 	div.w	$r31,$r1,$r8
1c007e58:	08087000 	0x08087000
1c007e5c:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c007e60:	24283000 	ldptr.w	$r0,$r0,10288(0x2830)
1c007e64:	00302122 	0x00302122
1c007e68:	08083000 	0x08083000
1c007e6c:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c007e70:	21201800 	sc.w	$r0,$r0,8216(0x2018)
1c007e74:	001c2221 	mul.w	$r1,$r17,$r8
1c007e78:	40800000 	beqz	$r0,32768(0x8000) # 1c00fe78 <_sidata+0x6b80>
1c007e7c:	0000f830 	0x0000f830
1c007e80:	24050600 	ldptr.w	$r0,$r16,1284(0x504)
1c007e84:	24243f24 	ldptr.w	$r4,$r25,9276(0x243c)
1c007e88:	8888f800 	0x8888f800
1c007e8c:	00080888 	bytepick.w	$r8,$r4,$r2,0x0
1c007e90:	20201900 	ll.w	$r0,$r8,8216(0x2018)
1c007e94:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c007e98:	8810e000 	0x8810e000
1c007e9c:	00009088 	0x00009088
1c007ea0:	20110f00 	ll.w	$r0,$r24,4364(0x110c)
1c007ea4:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c007ea8:	08081800 	0x08081800
1c007eac:	00186888 	sra.w	$r8,$r4,$r26
1c007eb0:	3e000000 	0x3e000000
1c007eb4:	00000001 	0x00000001
1c007eb8:	08887000 	0x08887000
1c007ebc:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c007ec0:	21221c00 	sc.w	$r0,$r0,8732(0x221c)
1c007ec4:	001c2221 	mul.w	$r1,$r17,$r8
1c007ec8:	0808f000 	0x0808f000
1c007ecc:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007ed0:	22120100 	ll.d	$r0,$r8,4608(0x1200)
1c007ed4:	000f1122 	bytepick.d	$r2,$r9,$r4,0x6
1c007ed8:	c0000000 	0xc0000000
1c007edc:	000000c0 	0x000000c0
1c007ee0:	30000000 	0x30000000
1c007ee4:	00000030 	0x00000030
1c007ee8:	80000000 	0x80000000
1c007eec:	00000000 	0x00000000
1c007ef0:	e0000000 	0xe0000000
1c007ef4:	00000000 	0x00000000
1c007ef8:	40800000 	beqz	$r0,32768(0x8000) # 1c00fef8 <_sidata+0x6c00>
1c007efc:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c007f00:	04020100 	csrxchg	$r0,$r8,0x80
1c007f04:	00201008 	div.w	$r8,$r0,$r4
1c007f08:	40404000 	beqz	$r0,16448(0x4040) # 1c00bf48 <_sidata+0x2c50>
1c007f0c:	00404040 	0x00404040
1c007f10:	02020200 	slti	$r0,$r16,128(0x80)
1c007f14:	00020202 	0x00020202
1c007f18:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c007f1c:	00008040 	0x00008040
1c007f20:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c007f24:	00010204 	0x00010204
1c007f28:	08487000 	0x08487000
1c007f2c:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c007f30:	30000000 	0x30000000
1c007f34:	00000037 	0x00000037
1c007f38:	28c830c0 	ld.d	$r0,$r6,524(0x20c)
1c007f3c:	00e010e8 	bstrpick.d	$r8,$r7,0x20,0x4
1c007f40:	28271807 	ld.b	$r7,$r0,-1594(0x9c6)
1c007f44:	0017282f 	sll.w	$r15,$r1,$r10
1c007f48:	38c00000 	0x38c00000
1c007f4c:	000000e0 	0x000000e0
1c007f50:	02233c20 	slti	$r0,$r1,-1841(0x8cf)
1c007f54:	20382702 	ll.w	$r2,$r24,14372(0x3824)
1c007f58:	8888f808 	0x8888f808
1c007f5c:	00007088 	0x00007088
1c007f60:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c007f64:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c007f68:	080830c0 	0x080830c0
1c007f6c:	00380808 	0x00380808
1c007f70:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c007f74:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c007f78:	0808f808 	0x0808f808
1c007f7c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007f80:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c007f84:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c007f88:	8888f808 	0x8888f808
1c007f8c:	001008e8 	add.w	$r8,$r7,$r2
1c007f90:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c007f94:	00182023 	sra.w	$r3,$r1,$r8
1c007f98:	8888f808 	0x8888f808
1c007f9c:	001008e8 	add.w	$r8,$r7,$r2
1c007fa0:	00203f20 	div.w	$r0,$r25,$r15
1c007fa4:	00000003 	0x00000003
1c007fa8:	080830c0 	0x080830c0
1c007fac:	00003808 	revb.2w	$r8,$r0
1c007fb0:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c007fb4:	00021e22 	0x00021e22
1c007fb8:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c007fbc:	08f80800 	0x08f80800
1c007fc0:	01213f20 	0x01213f20
1c007fc4:	203f2101 	ll.w	$r1,$r8,16160(0x3f20)
1c007fc8:	f8080800 	0xf8080800
1c007fcc:	00000808 	0x00000808
1c007fd0:	3f202000 	0x3f202000
1c007fd4:	00002020 	clo.d	$r0,$r1
1c007fd8:	08080000 	0x08080000
1c007fdc:	000808f8 	bytepick.w	$r24,$r7,$r2,0x0
1c007fe0:	808080c0 	0x808080c0
1c007fe4:	0000007f 	0x0000007f
1c007fe8:	c088f808 	0xc088f808
1c007fec:	00081828 	bytepick.w	$r8,$r1,$r6,0x0
1c007ff0:	01203f20 	0x01203f20
1c007ff4:	00203826 	div.w	$r6,$r1,$r14
1c007ff8:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c007ffc:	00000000 	0x00000000
1c008000:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c008004:	00302020 	0x00302020
1c008008:	00f8f808 	bstrpick.d	$r8,$r0,0x38,0x3e
1c00800c:	0008f8f8 	bytepick.w	$r24,$r7,$r30,0x1
1c008010:	3e013f20 	0x3e013f20
1c008014:	00203f01 	div.w	$r1,$r24,$r15
1c008018:	c030f808 	0xc030f808
1c00801c:	08f80800 	0x08f80800
1c008020:	00203f20 	div.w	$r0,$r25,$r15
1c008024:	003f1807 	0x003f1807
1c008028:	080810e0 	0x080810e0
1c00802c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c008030:	2020100f 	ll.w	$r15,$r0,8208(0x2010)
1c008034:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c008038:	0808f808 	0x0808f808
1c00803c:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c008040:	01213f20 	0x01213f20
1c008044:	00000101 	0x00000101
1c008048:	080810e0 	0x080810e0
1c00804c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c008050:	2828100f 	ld.b	$r15,$r0,-1532(0xa04)
1c008054:	004f5030 	0x004f5030
1c008058:	8888f808 	0x8888f808
1c00805c:	00708888 	bstrpick.w	$r8,$r4,0x10,0x2
1c008060:	00203f20 	div.w	$r0,$r25,$r15
1c008064:	20300c03 	ll.w	$r3,$r0,12300(0x300c)
1c008068:	08887000 	0x08887000
1c00806c:	00380808 	0x00380808
1c008070:	21203800 	sc.w	$r0,$r0,8248(0x2038)
1c008074:	001c2221 	mul.w	$r1,$r17,$r8
1c008078:	f8080818 	0xf8080818
1c00807c:	00180808 	sra.w	$r8,$r0,$r2
1c008080:	3f200000 	0x3f200000
1c008084:	00000020 	0x00000020
1c008088:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c00808c:	08f80800 	0x08f80800
1c008090:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c008094:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c008098:	00887808 	bstrins.d	$r8,$r0,0x8,0x1e
1c00809c:	0838c800 	0x0838c800
1c0080a0:	38070000 	0x38070000
1c0080a4:	0000010e 	0x0000010e
1c0080a8:	f800f808 	0xf800f808
1c0080ac:	0008f800 	bytepick.w	$r0,$r0,$r30,0x1
1c0080b0:	013e0300 	0x013e0300
1c0080b4:	0000033e 	0x0000033e
1c0080b8:	80681808 	0x80681808
1c0080bc:	08186880 	fmadd.s	$f0,$f4,$f26,$f16
1c0080c0:	032c3020 	lu52i.d	$r0,$r1,-1268(0xb0c)
1c0080c4:	20302c03 	ll.w	$r3,$r0,12332(0x302c)
1c0080c8:	00c83808 	bstrpick.d	$r8,$r0,0x8,0xe
1c0080cc:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c0080d0:	3f200000 	0x3f200000
1c0080d4:	00000020 	0x00000020
1c0080d8:	08080810 	0x08080810
1c0080dc:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c0080e0:	21263820 	sc.w	$r0,$r1,9784(0x2638)
1c0080e4:	00182020 	sra.w	$r0,$r1,$r8
1c0080e8:	fe000000 	0xfe000000
1c0080ec:	00020202 	0x00020202
1c0080f0:	7f000000 	0x7f000000
1c0080f4:	00404040 	0x00404040
1c0080f8:	c0380400 	0xc0380400
1c0080fc:	00000000 	0x00000000
1c008100:	01000000 	0x01000000
1c008104:	00c03806 	bstrpick.d	$r6,$r0,0x0,0xe
1c008108:	02020200 	slti	$r0,$r16,128(0x80)
1c00810c:	000000fe 	0x000000fe
1c008110:	40404000 	beqz	$r0,16448(0x4040) # 1c00c150 <_sidata+0x2e58>
1c008114:	0000007f 	0x0000007f
1c008118:	02040000 	slti	$r0,$r0,256(0x100)
1c00811c:	00000402 	0x00000402
	...
1c008130:	80808080 	0x80808080
1c008134:	80808080 	0x80808080
1c008138:	04020200 	csrxchg	$r0,$r16,0x80
	...
1c008148:	80800000 	0x80800000
1c00814c:	00000080 	0x00000080
1c008150:	24241900 	ldptr.w	$r0,$r8,9240(0x2418)
1c008154:	00203f12 	div.w	$r18,$r24,$r15
1c008158:	8000f010 	0x8000f010
1c00815c:	00000080 	0x00000080
1c008160:	20113f00 	ll.w	$r0,$r24,4412(0x113c)
1c008164:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c008168:	80000000 	0x80000000
1c00816c:	00008080 	0x00008080
1c008170:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c008174:	00112020 	sub.w	$r0,$r1,$r8
1c008178:	80800000 	0x80800000
1c00817c:	00f09080 	bstrpick.d	$r0,$r4,0x30,0x24
1c008180:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c008184:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c008188:	80800000 	0x80800000
1c00818c:	00008080 	0x00008080
1c008190:	24241f00 	ldptr.w	$r0,$r24,9244(0x241c)
1c008194:	00172424 	sll.w	$r4,$r1,$r9
1c008198:	e0808000 	0xe0808000
1c00819c:	00209090 	mod.w	$r16,$r4,$r4
1c0081a0:	3f202000 	0x3f202000
1c0081a4:	00002020 	clo.d	$r0,$r1
1c0081a8:	80800000 	0x80800000
1c0081ac:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0081b0:	94946b00 	0x94946b00
1c0081b4:	00609394 	bstrpick.w	$r20,$r28,0x0,0x4
1c0081b8:	8000f010 	0x8000f010
1c0081bc:	00008080 	0x00008080
1c0081c0:	00213f20 	div.wu	$r0,$r25,$r15
1c0081c4:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c0081c8:	98988000 	0x98988000
1c0081cc:	00000000 	0x00000000
1c0081d0:	3f202000 	0x3f202000
1c0081d4:	00002020 	clo.d	$r0,$r1
1c0081d8:	80000000 	0x80000000
1c0081dc:	00009898 	0x00009898
1c0081e0:	8080c000 	0x8080c000
1c0081e4:	00007f80 	0x00007f80
1c0081e8:	0000f010 	0x0000f010
1c0081ec:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0081f0:	06243f20 	cacop	0x0,$r25,-1777(0x90f)
1c0081f4:	00203029 	div.w	$r9,$r1,$r12
1c0081f8:	f8101000 	0xf8101000
1c0081fc:	00000000 	0x00000000
1c008200:	3f202000 	0x3f202000
1c008204:	00002020 	clo.d	$r0,$r1
1c008208:	80808080 	0x80808080
1c00820c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008210:	00203f20 	div.w	$r0,$r25,$r15
1c008214:	3f00203f 	0x3f00203f
1c008218:	80008080 	0x80008080
1c00821c:	00008080 	0x00008080
1c008220:	00213f20 	div.wu	$r0,$r25,$r15
1c008224:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c008228:	80800000 	0x80800000
1c00822c:	00008080 	0x00008080
1c008230:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c008234:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c008238:	80008080 	0x80008080
1c00823c:	00000080 	0x00000080
1c008240:	2091ff80 	ll.w	$r0,$r28,-28164(0x91fc)
1c008244:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c008248:	80000000 	0x80000000
1c00824c:	00800080 	bstrins.d	$r0,$r4,0x0,0x0
1c008250:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c008254:	80ff9120 	0x80ff9120
1c008258:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00825c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008260:	213f2020 	sc.w	$r0,$r1,16160(0x3f20)
1c008264:	00010020 	asrtle.d	$r1,$r0
1c008268:	80800000 	0x80800000
1c00826c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008270:	24243300 	ldptr.w	$r0,$r24,9264(0x2430)
1c008274:	00192424 	srl.d	$r4,$r1,$r9
1c008278:	e0808000 	0xe0808000
1c00827c:	00008080 	0x00008080
1c008280:	1f000000 	pcaddu18i	$r0,-524288(0x80000)
1c008284:	00102020 	add.w	$r0,$r1,$r8
1c008288:	00008080 	0x00008080
1c00828c:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c008290:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c008294:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c008298:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00829c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0082a0:	300c0300 	0x300c0300
1c0082a4:	0000030c 	0x0000030c
1c0082a8:	80008080 	0x80008080
1c0082ac:	80800080 	0x80800080
1c0082b0:	0c300e01 	0x0c300e01
1c0082b4:	01063807 	0x01063807
1c0082b8:	80808000 	0x80808000
1c0082bc:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c0082c0:	0e312000 	0x0e312000
1c0082c4:	0020312e 	div.w	$r14,$r9,$r12
1c0082c8:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0082cc:	80808000 	0x80808000
1c0082d0:	78868100 	0x78868100
1c0082d4:	00010618 	0x00010618
1c0082d8:	80808000 	0x80808000
1c0082dc:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0082e0:	2c302100 	vld	$vr0,$r8,-1016(0xc08)
1c0082e4:	00302122 	0x00302122
1c0082e8:	00000000 	0x00000000
1c0082ec:	0202fc00 	slti	$r0,$r0,191(0xbf)
1c0082f0:	00000000 	0x00000000
1c0082f4:	40403e01 	beqz	$r16,278588(0x4403c) # 1c04c330 <_sidata+0x43038>
1c0082f8:	00000000 	0x00000000
1c0082fc:	000000ff 	0x000000ff
1c008300:	00000000 	0x00000000
1c008304:	000000ff 	0x000000ff
1c008308:	00fc0202 	bstrpick.d	$r2,$r16,0x3c,0x0
1c00830c:	00000000 	0x00000000
1c008310:	013e4040 	0x013e4040
1c008314:	00000000 	0x00000000
1c008318:	02010200 	slti	$r0,$r16,64(0x40)
1c00831c:	00020402 	0x00020402
	...

1c008328 <tfont16>:
1c008328:	00be9be5 	bstrins.d	$r5,$r31,0x3e,0x26
1c00832c:	224202fe 	ll.d	$r30,$r23,16896(0x4200)
1c008330:	52925e32 	b	-120941988(0x8ca925c) # 14cb158c <_start-0x734ea74>
1c008334:	02021232 	slti	$r18,$r17,132(0x84)
1c008338:	000000fe 	0x000000fe
1c00833c:	424242ff 	beqz	$r23,-114112(0x7e4240) # 1bfec57c <_start-0x13a84>
1c008340:	69645551 	bltu	$r10,$r17,91220(0x16454) # 1c01e794 <_sidata+0x1549c>
1c008344:	42424241 	beqz	$r18,410176(0x64240) # 1c06c584 <_sidata+0x6328c>
1c008348:	e60000ff 	0xe60000ff
1c00834c:	08088796 	0x08088796
1c008350:	08c83808 	0x08c83808
1c008354:	08080e09 	0x08080e09
1c008358:	080838c8 	0x080838c8
1c00835c:	80800008 	0x80800008
1c008360:	11204040 	addu16i.d	$r0,$r2,18448(0x4810)
1c008364:	110a040a 	addu16i.d	$r10,$r0,17025(0x4281)
1c008368:	80404020 	0x80404020
1c00836c:	98e60080 	0x98e60080
1c008370:	000000be 	0x000000be
1c008374:	929292fe 	0x929292fe
1c008378:	92929292 	0x92929292
1c00837c:	000000fe 	0x000000fe
1c008380:	44424000 	bnez	$r0,16960(0x4240) # 1c00c5c0 <_sidata+0x32c8>
1c008384:	407f4058 	beqz	$r2,-2064576(0x607f40) # 1be102c4 <_start-0x1efd3c>
1c008388:	407f4040 	beqz	$r2,32576(0x7f40) # 1c0102c8 <_sidata+0x6fd0>
1c00838c:	40464850 	beqz	$r2,-4176312(0x404648) # 1bc0c9d4 <_start-0x3f362c>
1c008390:	baa4e700 	0xbaa4e700
1c008394:	42424040 	beqz	$r2,148032(0x24240) # 1c02c5d4 <_sidata+0x232dc>
1c008398:	c2424242 	0xc2424242
1c00839c:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac5dc <_sidata+0xa32e4>
1c0083a0:	00404042 	0x00404042
1c0083a4:	06081020 	cacop	0x0,$r1,516(0x204)
1c0083a8:	7f804000 	0x7f804000
1c0083ac:	02000000 	slti	$r0,$r0,0
1c0083b0:	00300804 	0x00300804
1c0083b4:	109eaee5 	addu16i.d	$r5,$r23,10155(0x27ab)
1c0083b8:	1484040c 	lu12i.w	$r12,270368(0x42020)
1c0083bc:	f4060564 	0xf4060564
1c0083c0:	04040404 	csrrd	$r4,0x101
1c0083c4:	04000c14 	csrrd	$r20,0x3
1c0083c8:	47448484 	bnez	$r4,1262724(0x134484) # 1c13c84c <_sidata+0x133554>
1c0083cc:	070c1424 	0x070c1424
1c0083d0:	4424140c 	bnez	$r0,3154964(0x302414) # 1c30a7e4 <_sidata+0x3014ec>
1c0083d4:	e9000484 	0xe9000484
1c0083d8:	fa028caa 	0xfa028caa
1c0083dc:	80fe8282 	0x80fe8282
1c0083e0:	4c502040 	jirl	$r0,$r2,20512(0x5020)
1c0083e4:	20504c43 	ll.w	$r3,$r2,20556(0x504c)
1c0083e8:	18080040 	pcaddi	$r0,16386(0x4002)
1c0083ec:	3f448448 	0x3f448448
1c0083f0:	41584440 	beqz	$r2,88132(0x15844) # 1c01dc34 <_sidata+0x1493c>
1c0083f4:	4758604e 	bnez	$r2,3889248(0x3b5860) # 1c3bdc54 <_sidata+0x3b495c>
1c0083f8:	b8e60040 	0xb8e60040
1c0083fc:	026010a9 	sltui	$r9,$r5,-2044(0x804)
1c008400:	fe00008c 	0xfe00008c
1c008404:	92929292 	0x92929292
1c008408:	0000fe92 	0x0000fe92
1c00840c:	7e040400 	0x7e040400
1c008410:	427e4001 	beqz	$r0,425536(0x67e40) # 1c070250 <_sidata+0x66f58>
1c008414:	7e427e42 	0x7e427e42
1c008418:	407e4242 	beqz	$r18,556608(0x87e40) # 1c090258 <_sidata+0x86f60>
1c00841c:	bfb9e600 	0xbfb9e600
1c008420:	8c026010 	0x8c026010
1c008424:	9292fe00 	0x9292fe00
1c008428:	92929292 	0x92929292
1c00842c:	000000fe 	0x000000fe
1c008430:	017e0404 	0x017e0404
1c008434:	7f504844 	0x7f504844
1c008438:	507f4040 	b	16809792(0x1007f40) # 1d010378 <_sidata+0x1007080>
1c00843c:	00404448 	0x00404448
1c008440:	00a6bae5 	bstrins.d	$r5,$r23,0x26,0x2e
1c008444:	2424fc00 	ldptr.w	$r0,$r0,9468(0x24fc)
1c008448:	2625fc24 	ldptr.d	$r4,$r1,9724(0x25fc)
1c00844c:	2424fc24 	ldptr.w	$r4,$r1,9468(0x24fc)
1c008450:	40000424 	beqz	$r1,1048580(0x100004) # 1c108454 <_sidata+0xff15c>
1c008454:	84808f30 	0x84808f30
1c008458:	2525554c 	stptr.w	$r12,$r10,9556(0x2554)
1c00845c:	804c5525 	0x804c5525
1c008460:	e6008080 	0xe6008080
1c008464:	101080a3 	addu16i.d	$r3,$r5,1056(0x420)
1c008468:	5090ffd0 	b	-12545796(0xf4090fc) # 1b411564 <_start-0xbeea9c>
1c00846c:	434c5020 	beqz	$r1,216144(0x34c50) # 1c03d0bc <_sidata+0x33dc4>
1c008470:	4020504c 	beqz	$r2,3154000(0x302050) # 1c30a4c0 <_sidata+0x3011c8>
1c008474:	03040040 	lu52i.d	$r0,$r2,256(0x100)
1c008478:	4100ff00 	beqz	$r24,65788(0x100fc) # 1c018574 <_sidata+0xf27c>
1c00847c:	4e415844 	jirl	$r4,$r2,-114344(0x24158)
1c008480:	40475860 	beqz	$r3,18264(0x4758) # 1c00cbd8 <_sidata+0x38e0>
1c008484:	b5e60040 	0xb5e60040
1c008488:	0260108b 	sltui	$r11,$r4,-2044(0x804)
1c00848c:	02fe008c 	addi.d	$r12,$r4,-128(0xf80)
1c008490:	00fe02f2 	bstrpick.d	$r18,$r23,0x3e,0x0
1c008494:	00ff00f8 	bstrpick.d	$r24,$r7,0x3f,0x0
1c008498:	7e040400 	0x7e040400
1c00849c:	30478001 	vldrepl.h	$vr1,$r0,960(0x3c0)
1c0084a0:	0027100f 	crcc.w.w.w	$r15,$r0,$r4
1c0084a4:	007f8047 	bstrpick.w	$r7,$r2,0x1f,0x0
1c0084a8:	9eaee500 	0x9eaee500
1c0084ac:	84040c10 	0x84040c10
1c0084b0:	06056414 	cacop	0x14,$r0,345(0x159)
1c0084b4:	040404f4 	csrxchg	$r20,$r7,0x101
1c0084b8:	000c1404 	bytepick.d	$r4,$r0,$r5,0x0
1c0084bc:	44848404 	bnez	$r0,1082500(0x108484) # 1c110940 <_sidata+0x107648>
1c0084c0:	0c142447 	fcmp.cun.s	$fcc7,$f2,$f9
1c0084c4:	24140c07 	ldptr.w	$r7,$r0,5132(0x140c)
1c0084c8:	00048444 	alsl.w	$r4,$r2,$r1,0x2
1c0084cc:	028caae9 	addi.w	$r9,$r23,810(0x32a)
1c0084d0:	fe8282fa 	0xfe8282fa
1c0084d4:	50204080 	b	33562688(0x2002040) # 1e00a514 <_sidata+0x200121c>
1c0084d8:	504c434c 	b	-47166400(0xd304c40) # 1930d118 <_start-0x2cf2ee8>
1c0084dc:	08004020 	0x08004020
1c0084e0:	44844818 	bnez	$r0,-2063288(0x608448) # 1be10928 <_start-0x1ef6d8>
1c0084e4:	5844403f 	beq	$r1,$r31,17472(0x4440) # 1c00c924 <_sidata+0x362c>
1c0084e8:	58604e41 	beq	$r18,$r1,24652(0x604c) # 1c00e534 <_sidata+0x523c>
1c0084ec:	e2004047 	0xe2004047
1c0084f0:	09068384 	0x09068384
1c0084f4:	0cf8e609 	0x0cf8e609
1c0084f8:	02020204 	slti	$r4,$r16,128(0x80)
1c0084fc:	1e040202 	pcaddu18i	$r2,8208(0x2010)
1c008500:	00000000 	0x00000000
1c008504:	301f0700 	0x301f0700
1c008508:	40404020 	beqz	$r1,16448(0x4040) # 1c00c548 <_sidata+0x3250>
1c00850c:	10204040 	addu16i.d	$r0,$r2,2064(0x810)
1c008510:	a4e70000 	0xa4e70000
1c008514:	424040ba 	beqz	$r5,-1425344(0x6a4040) # 1beac554 <_start-0x153aac>
1c008518:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac758 <_sidata+0xa3460>
1c00851c:	424242c2 	beqz	$r22,672320(0xa4240) # 1c0ac75c <_sidata+0xa3464>
1c008520:	40404242 	beqz	$r18,540736(0x84040) # 1c08c560 <_sidata+0x83268>
1c008524:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c008528:	80400006 	0x80400006
1c00852c:	0000007f 	0x0000007f
1c008530:	30080402 	0x30080402
1c008534:	be98e600 	0xbe98e600
1c008538:	fe000000 	0xfe000000
1c00853c:	92929292 	0x92929292
1c008540:	fe929292 	0xfe929292
1c008544:	00000000 	0x00000000
1c008548:	58444240 	beq	$r18,$r0,17472(0x4440) # 1c00c988 <_sidata+0x3690>
1c00854c:	40407f40 	beqz	$r26,16508(0x407c) # 1c00c5c8 <_sidata+0x32d0>
1c008550:	50407f40 	b	-50315140(0xd00407c) # 1900c5cc <_start-0x2ff3a34>
1c008554:	00404648 	0x00404648
1c008558:	109eaee5 	addu16i.d	$r5,$r23,10155(0x27ab)
1c00855c:	1484040c 	lu12i.w	$r12,270368(0x42020)
1c008560:	f4060564 	0xf4060564
1c008564:	04040404 	csrrd	$r4,0x101
1c008568:	04000c14 	csrrd	$r20,0x3
1c00856c:	47448484 	bnez	$r4,1262724(0x134484) # 1c13c9f0 <_sidata+0x1336f8>
1c008570:	070c1424 	0x070c1424
1c008574:	4424140c 	bnez	$r0,3154964(0x302414) # 1c30a988 <_sidata+0x301690>
1c008578:	e9000484 	0xe9000484
1c00857c:	fa028caa 	0xfa028caa
1c008580:	80fe8282 	0x80fe8282
1c008584:	4c502040 	jirl	$r0,$r2,20512(0x5020)
1c008588:	20504c43 	ll.w	$r3,$r2,20556(0x504c)
1c00858c:	18080040 	pcaddi	$r0,16386(0x4002)
1c008590:	3f448448 	0x3f448448
1c008594:	41584440 	beqz	$r2,88132(0x15844) # 1c01ddd8 <_sidata+0x14ae0>
1c008598:	4758604e 	bnez	$r2,3889248(0x3b5860) # 1c3bddf8 <_sidata+0x3b4b00>
1c00859c:	99e70040 	0x99e70040
1c0085a0:	e20202be 	0xe20202be
1c0085a4:	2a322222 	ld.bu	$r2,$r17,-888(0xc88)
1c0085a8:	22222226 	ll.d	$r6,$r17,8736(0x2220)
1c0085ac:	0202e222 	slti	$r2,$r17,184(0xb8)
1c0085b0:	ff000000 	0xff000000
1c0085b4:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac7f4 <_sidata+0xa34fc>
1c0085b8:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac7f8 <_sidata+0xa3500>
1c0085bc:	0000ff42 	0x0000ff42
1c0085c0:	91a7e700 	0x91a7e700
1c0085c4:	fea42424 	0xfea42424
1c0085c8:	220022a3 	ll.d	$r3,$r21,32(0x20)
1c0085cc:	ff0000cc 	0xff0000cc
1c0085d0:	00000000 	0x00000000
1c0085d4:	ff010608 	0xff010608
1c0085d8:	04040100 	csrxchg	$r0,$r8,0x100
1c0085dc:	ff040404 	0xff040404
1c0085e0:	00020202 	0x00020202
1c0085e4:	84a38de8 	0x84a38de8
1c0085e8:	2f242464 	0x2f242464
1c0085ec:	24a42424 	ldptr.w	$r4,$r1,-23516(0xa424)
1c0085f0:	24242f24 	ldptr.w	$r4,$r25,9260(0x242c)
1c0085f4:	400064a4 	beqz	$r5,1048676(0x100064) # 1c108658 <_sidata+0xff360>
1c0085f8:	12222242 	addu16i.d	$r2,$r18,-30584(0x8888)
1c0085fc:	06ff060a 	0x06ff060a
1c008600:	2222120a 	ll.d	$r10,$r16,8720(0x2210)
1c008604:	e5004042 	0xe5004042
1c008608:	20409b88 	ll.w	$r8,$r28,16536(0x4098)
1c00860c:	44434cd0 	bnez	$r6,-4177076(0x40434c) # 1bc0c958 <_start-0x3f36a8>
1c008610:	002010c8 	div.w	$r8,$r6,$r4
1c008614:	ff0000f8 	0xff0000f8
1c008618:	00000000 	0x00000000
1c00861c:	4844403f 	bceqz	$fcc1,-244672(0x7c4440) # 1bfcca5c <_start-0x335a4>
1c008620:	00704047 	bstrins.w	$r7,$r2,0x10,0x10
1c008624:	7f80400f 	0x7f80400f
1c008628:	b0e80000 	0xb0e80000
1c00862c:	cc4240a2 	0xcc4240a2
1c008630:	56fc0000 	bl	195584(0x2fc00) # 1c038230 <_sidata+0x2ef38>
1c008634:	1080fc55 	addu16i.d	$r21,$r2,8255(0x203f)
1c008638:	1010ff10 	addu16i.d	$r16,$r24,1087(0x43f)
1c00863c:	3f000000 	0x3f000000
1c008640:	4a132a10 	0x4a132a10
1c008644:	43007f86 	beqz	$r28,1769596(0x1b007c) # 1c1b86c0 <_sidata+0x1af3c8>
1c008648:	00007f80 	0x00007f80
1c00864c:	9381e900 	0x9381e900
1c008650:	cc424040 	0xcc424040
1c008654:	aae90800 	0xaae90800
1c008658:	aaa8a8b8 	0xaaa8a8b8
1c00865c:	000008e9 	0x000008e9
1c008660:	1f204000 	pcaddu18i	$r0,-458240(0x90200)
1c008664:	4a5f4020 	bceqz	$fcc1,155456(0x25f40) # 1c02e5a4 <_sidata+0x252ac>
1c008668:	4a4a4a4a 	0x4a4a4a4a
1c00866c:	0040405f 	0x0040405f
1c008670:	1090bae6 	addu16i.d	$r6,$r23,9262(0x242e)
1c008674:	008c0260 	bstrins.d	$r0,$r19,0xc,0x0
1c008678:	52f202fe 	b	-67440128(0xbfaf200) # 17fb7878 <_start-0x4048788>
1c00867c:	5252565a 	b	-110472620(0x96a5254) # 156ad8d0 <_start-0x6952730>
1c008680:	040002f2 	csrxchg	$r18,$r23,0x0
1c008684:	30417e04 	vldrepl.h	$vr4,$r16,190(0xbe)
1c008688:	4913200f 	bceqz	$fcc0,4002592(0x3d1320) # 1c3d99a8 <_sidata+0x3d06b0>
1c00868c:	09017f81 	0x09017f81
1c008690:	e6002013 	0xe6002013
1c008694:	601096b9 	blt	$r21,$r25,4244(0x1094) # 1c009728 <_sidata+0x430>
1c008698:	88008c02 	0x88008c02
1c00869c:	8888ff88 	0x8888ff88
1c0086a0:	2222fe00 	ll.d	$r0,$r16,8956(0x22fc)
1c0086a4:	040400fe 	csrxchg	$r30,$r7,0x100
1c0086a8:	1f00017e 	pcaddu18i	$r30,-524277(0x8000b)
1c0086ac:	9f080808 	0x9f080808
1c0086b0:	82421f60 	0x82421f60
1c0086b4:	8de5007f 	0x8de5007f
1c0086b8:	24e40497 	ldptr.w	$r23,$r4,-7164(0xe404)
1c0086bc:	24a46424 	ldptr.w	$r4,$r1,-23452(0xa464)
1c0086c0:	64a4243f 	bge	$r1,$r31,42020(0xa424) # 1c012ae4 <_sidata+0x97ec>
1c0086c4:	04e42424 	csrwr	$r4,0x3909
1c0086c8:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c0086cc:	09090908 	0x09090908
1c0086d0:	0909097f 	0x0909097f
1c0086d4:	007f8048 	bstrpick.w	$r8,$r2,0x1f,0x0
1c0086d8:	a5b7e500 	0xa5b7e500
1c0086dc:	04040400 	csrrd	$r0,0x101
1c0086e0:	fc040404 	0xfc040404
1c0086e4:	04040404 	csrrd	$r4,0x101
1c0086e8:	00000404 	0x00000404
1c0086ec:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0086f0:	3f202020 	0x3f202020
1c0086f4:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0086f8:	00202020 	div.w	$r0,$r1,$r8
1c0086fc:	009ab8e4 	bstrins.d	$r4,$r7,0x1a,0x2e
1c008700:	00806010 	bstrins.d	$r16,$r0,0x0,0x18
1c008704:	000000ff 	0x000000ff
1c008708:	c00000ff 	0xc00000ff
1c00870c:	40000030 	beqz	$r1,-4194304(0x400000) # 1bc0870c <_start-0x3f78f4>
1c008710:	40434040 	beqz	$r2,17216(0x4340) # 1c00ca50 <_sidata+0x3758>
1c008714:	4040407f 	beqz	$r3,-245696(0x7c4040) # 1bfcc754 <_start-0x338ac>
1c008718:	4041427f 	beqz	$r19,-245440(0x7c4140) # 1bfcc858 <_start-0x337a8>
1c00871c:	e5004040 	0xe5004040
1c008720:	2020a7a4 	ll.w	$r4,$r29,8356(0x20a4)
1c008724:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008728:	2020ff20 	ll.w	$r0,$r25,8444(0x20fc)
1c00872c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008730:	80800020 	0x80800020
1c008734:	0c102040 	fcmp.caf.s	$fcc0,$f2,$f8
1c008738:	0c030003 	0x0c030003
1c00873c:	80402010 	0x80402010
1c008740:	ade50080 	0xade50080
1c008744:	113040a6 	addu16i.d	$r6,$r5,19472(0x4c10)
1c008748:	91909096 	0x91909096
1c00874c:	98909096 	0x98909096
1c008750:	30501314 	vldrepl.h	$vr20,$r24,-2040(0x808)
1c008754:	04040400 	csrrd	$r0,0x101
1c008758:	84440404 	0x84440404
1c00875c:	0405067e 	csrxchg	$r30,$r19,0x141
1c008760:	04040404 	csrrd	$r4,0x101
1c008764:	a8bde800 	0xa8bde800
1c008768:	e88fb8c8 	0xe88fb8c8
1c00876c:	10108888 	addu16i.d	$r8,$r4,1058(0x422)
1c008770:	f01010ff 	0xf01010ff
1c008774:	00000000 	0x00000000
1c008778:	ff081808 	0xff081808
1c00877c:	30408404 	vldrepl.h	$vr4,$r0,66(0x42)
1c008780:	3f00000f 	0x3f00000f
1c008784:	00784040 	bstrins.w	$r0,$r2,0x18,0x10
1c008788:	409381e9 	beqz	$r15,2397056(0x249380) # 1c251b08 <_sidata+0x248810>
1c00878c:	00cc4240 	bstrpick.d	$r0,$r18,0xc,0x10
1c008790:	b8aae908 	0xb8aae908
1c008794:	e9aaa8a8 	0xe9aaa8a8
1c008798:	00000008 	0x00000008
1c00879c:	201f2040 	ll.w	$r0,$r2,7968(0x1f20)
1c0087a0:	4a4a5f40 	0x4a4a5f40
1c0087a4:	5f4a4a4a 	bne	$r18,$r10,-46520(0x34a48) # 1bffd1ec <_start-0x2e14>
1c0087a8:	e4004040 	0xe4004040
1c0087ac:	0808a4ba 	0x0808a4ba
1c0087b0:	08086888 	0x08086888
1c0087b4:	08080e09 	0x08080e09
1c0087b8:	88482888 	0x88482888
1c0087bc:	81800008 	0x81800008
1c0087c0:	22214040 	ll.d	$r0,$r2,8512(0x2140)
1c0087c4:	22140814 	ll.d	$r20,$r0,5128(0x1408)
1c0087c8:	81804041 	0x81804041
1c0087cc:	80e90080 	0x80e90080
1c0087d0:	cc42409a 	0xcc42409a
1c0087d4:	22e20000 	ll.d	$r0,$r0,-7680(0xe200)
1c0087d8:	2af22a2a 	preld	0xa,$r17,-886(0xc8a)
1c0087dc:	00e02226 	bstrpick.d	$r6,$r17,0x20,0x8
1c0087e0:	3f408000 	0x3f408000
1c0087e4:	89ff8040 	0x89ff8040
1c0087e8:	89bf8989 	0x89bf8989
1c0087ec:	80bfc9a9 	0x80bfc9a9
1c0087f0:	a6ade500 	0xa6ade500
1c0087f4:	96113040 	0x96113040
1c0087f8:	96919090 	0x96919090
1c0087fc:	14989090 	lu12i.w	$r16,312452(0x4c484)
1c008800:	00305013 	0x00305013
1c008804:	04040404 	csrrd	$r4,0x101
1c008808:	7e844404 	0x7e844404
1c00880c:	04040506 	csrxchg	$r6,$r8,0x101
1c008810:	00040404 	alsl.w	$r4,$r0,$r1,0x1
1c008814:	00a299e9 	bstrins.d	$r9,$r15,0x22,0x26
1c008818:	865a22fe 	0x865a22fe
1c00881c:	24240c10 	ldptr.w	$r16,$r0,9228(0x240c)
1c008820:	24242625 	ldptr.w	$r5,$r17,9252(0x2424)
1c008824:	00000c14 	0x00000c14
1c008828:	070804ff 	0x070804ff
1c00882c:	0f314180 	0x0f314180
1c008830:	413f0101 	beqz	$r8,343808(0x53f00) # 1c05c730 <_sidata+0x53438>
1c008834:	00007141 	0x00007141

1c008838 <tfont32>:
1c008838:	00be99e7 	bstrins.d	$r7,$r15,0x3e,0x26
1c00883c:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c008840:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008844:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008848:	70f0f010 	vsrlr.h	$vr16,$vr0,$vr28
1c00884c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008850:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008854:	10181010 	addu16i.d	$r16,$r0,1540(0x604)
	...
1c008860:	f8fc0000 	0xf8fc0000
1c008864:	08080808 	0x08080808
1c008868:	08080b0c 	0x08080b0c
1c00886c:	08080808 	0x08080808
1c008870:	f8fc0808 	0xf8fc0808
	...
1c008880:	ffff0000 	0xffff0000
1c008884:	08080808 	0x08080808
1c008888:	08080808 	0x08080808
1c00888c:	08080808 	0x08080808
1c008890:	ffff0808 	0xffff0808
	...
1c0088a0:	3f7f0000 	0x3f7f0000
1c0088a4:	08080808 	0x08080808
1c0088a8:	08080808 	0x08080808
1c0088ac:	08080808 	0x08080808
1c0088b0:	3f7f0808 	0x3f7f0808
1c0088b4:	00000000 	0x00000000
1c0088b8:	e7000000 	0xe7000000
1c0088bc:	000091a7 	0x000091a7
1c0088c0:	20404040 	ll.w	$r0,$r2,16448(0x4040)
1c0088c4:	e0e02020 	0xe0e02020
1c0088c8:	18181030 	pcaddi	$r16,49281(0xc081)
1c0088cc:	80000000 	0x80000000
1c0088d0:	00000080 	0x00000080
1c0088d4:	f8fc0000 	0xf8fc0000
1c0088d8:	00000008 	0x00000008
1c0088dc:	00000000 	0x00000000
1c0088e0:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0088e4:	ffff9010 	0xffff9010
1c0088e8:	18101010 	pcaddi	$r16,32896(0x8080)
1c0088ec:	c0000010 	0xc0000010
1c0088f0:	00060781 	alsl.wu	$r1,$r28,$r1,0x1
1c0088f4:	ffff0000 	0xffff0000
	...
1c008900:	18204080 	pcaddi	$r0,66052(0x10204)
1c008904:	ffff030e 	0xffff030e
1c008908:	5e060301 	bne	$r24,$r1,-129536(0x20600) # 1bfe8f08 <_start-0x170f8>
1c00890c:	20202040 	ll.w	$r0,$r2,8224(0x2020)
1c008910:	10102321 	addu16i.d	$r1,$r25,1032(0x408)
1c008914:	ffff1010 	0xffff1010
1c008918:	0c0c0808 	0x0c0c0808
1c00891c:	01000000 	0x01000000
1c008920:	00000000 	0x00000000
1c008924:	3f7f0000 	0x3f7f0000
	...
1c008934:	3f7f0000 	0x3f7f0000
1c008938:	00000000 	0x00000000
1c00893c:	8de80000 	0x8de80000
1c008940:	000000a3 	0x000000a3
1c008944:	80808080 	0x80808080
1c008948:	80808080 	0x80808080
1c00894c:	8088f8fc 	0x8088f8fc
1c008950:	80808080 	0x80808080
1c008954:	8088f8fc 	0x8088f8fc
1c008958:	e0c08080 	0xe0c08080
1c00895c:	000080c0 	0x000080c0
1c008960:	00000000 	0x00000000
1c008964:	10f8c080 	addu16i.d	$r0,$r4,15920(0x3e30)
1c008968:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00896c:	10101717 	addu16i.d	$r23,$r24,1029(0x405)
1c008970:	1050f0f0 	addu16i.d	$r16,$r7,5180(0x143c)
1c008974:	10101317 	addu16i.d	$r23,$r24,1028(0x404)
1c008978:	f0d01010 	0xf0d01010
1c00897c:	00001038 	clo.w	$r24,$r1
1c008980:	00000000 	0x00000000
1c008984:	02020200 	slti	$r0,$r16,128(0x80)
1c008988:	c2820202 	0xc2820202
1c00898c:	061e3a62 	cacop	0x2,$r19,1934(0x78e)
1c008990:	0e02ffff 	0x0e02ffff
1c008994:	82c26212 	0x82c26212
1c008998:	03020282 	lu52i.d	$r2,$r20,128(0x80)
1c00899c:	00000203 	0x00000203
1c0089a0:	10000000 	addu16i.d	$r0,$r0,0
1c0089a4:	06040808 	cacop	0x8,$r0,258(0x102)
1c0089a8:	00010102 	0x00010102
1c0089ac:	00000000 	0x00000000
1c0089b0:	00003f7f 	revb.d	$r31,$r27
1c0089b4:	01000000 	0x01000000
1c0089b8:	0e060303 	0x0e060303
1c0089bc:	0004040e 	alsl.w	$r14,$r0,$r1,0x1
1c0089c0:	9b88e500 	0x9b88e500
1c0089c4:	00000000 	0x00000000
1c0089c8:	c0000000 	0xc0000000
1c0089cc:	28183cf0 	ld.b	$r16,$r7,1551(0x60f)
1c0089d0:	80c04060 	0x80c04060
	...
1c0089dc:	f8000000 	0xf8000000
1c0089e0:	000000f8 	0x000000f8
1c0089e4:	40800000 	beqz	$r0,32768(0x8000) # 1c0109e4 <_sidata+0x76ec>
1c0089e8:	23e6f830 	sc.d	$r16,$r1,-6408(0xe6f8)
1c0089ec:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0089f0:	23f0e020 	sc.d	$r0,$r1,-3872(0xf0e0)
1c0089f4:	00000207 	0x00000207
1c0089f8:	0002ff00 	0x0002ff00
1c0089fc:	ff000000 	0xff000000
1c008a00:	000000ff 	0x000000ff
1c008a04:	00000100 	0x00000100
1c008a08:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
1c008a0c:	60200000 	blt	$r0,$r0,8192(0x2000) # 1c00aa0c <_sidata+0x1714>
1c008a10:	001f3f60 	mulw.d.w	$r0,$r27,$r15
1c008a14:	00008000 	0x00008000
1c008a18:	00007f00 	0x00007f00
1c008a1c:	ff000000 	0xff000000
1c008a20:	000000ff 	0x000000ff
1c008a24:	00000000 	0x00000000
1c008a28:	303f0700 	0x303f0700
1c008a2c:	30303030 	0x30303030
1c008a30:	30303030 	0x30303030
1c008a34:	00103f38 	add.w	$r24,$r25,$r15
1c008a38:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c008a3c:	3f703030 	0x3f703030
1c008a40:	0000001f 	0x0000001f
1c008a44:	0088bcef 	bstrins.d	$r15,$r7,0x8,0x2f
	...
1c008a5c:	40800000 	beqz	$r0,32768(0x8000) # 1c010a5c <_sidata+0x7764>
1c008a60:	00102040 	add.w	$r0,$r2,$r8
	...
1c008a78:	1cf00000 	pcaddu12i	$r0,491520(0x78000)
1c008a7c:	00000306 	0x00000306
	...
1c008a98:	701f0000 	vaddwev.d.w	$vr0,$vr0,$vr0
1c008a9c:	000000c0 	0x000000c0
	...
1c008abc:	04020100 	csrxchg	$r0,$r8,0x80
1c008ac0:	0010080c 	add.w	$r12,$r0,$r2
1c008ac4:	e5000000 	0xe5000000
1c008ac8:	0000978c 	0x0000978c
	...
1c008ad4:	08f8fc00 	0x08f8fc00
1c008ad8:	00000000 	0x00000000
1c008adc:	0008f8fc 	bytepick.w	$r28,$r7,$r30,0x1
	...
1c008aec:	08080808 	0x08080808
1c008af0:	08080808 	0x08080808
1c008af4:	00ffff08 	bstrpick.d	$r8,$r24,0x3f,0x3f
1c008af8:	00000000 	0x00000000
1c008afc:	4040ffff 	beqz	$r31,-245508(0x7c40fc) # 1bfccbf8 <_start-0x33408>
1c008b00:	18103020 	pcaddi	$r0,33153(0x8181)
1c008b04:	00040e0c 	alsl.w	$r12,$r16,$r3,0x1
	...
1c008b10:	80000000 	0x80000000
1c008b14:	00ffff80 	bstrpick.d	$r0,$r28,0x3f,0x3f
1c008b18:	00000000 	0x00000000
1c008b1c:	0000ffff 	0x0000ffff
1c008b20:	00000000 	0x00000000
1c008b24:	00c00000 	bstrpick.d	$r0,$r0,0x0,0x0
1c008b28:	00000000 	0x00000000
1c008b2c:	03060606 	lu52i.d	$r6,$r16,385(0x181)
1c008b30:	00010103 	0x00010103
1c008b34:	003f7f00 	0x003f7f00
1c008b38:	00000000 	0x00000000
1c008b3c:	30303f1f 	0x30303f1f
1c008b40:	30303030 	0x30303030
1c008b44:	183f3830 	pcaddi	$r16,129473(0x1f9c1)
1c008b48:	bae40000 	0xbae40000
1c008b4c:	800000ac 	0x800000ac
1c008b50:	80808080 	0x80808080
1c008b54:	80808080 	0x80808080
1c008b58:	8c808080 	0x8c808080
1c008b5c:	80b0f898 	0x80b0f898
1c008b60:	80808080 	0x80808080
1c008b64:	c0808080 	0xc0808080
1c008b68:	0080c0e0 	bstrins.d	$r0,$r7,0x0,0x30
	...
1c008b74:	08f8f800 	0x08f8f800
1c008b78:	08080808 	0x08080808
1c008b7c:	08080808 	0x08080808
1c008b80:	f8080808 	0xf8080808
1c008b84:	000008fc 	0x000008fc
	...
1c008b94:	e4cf0f00 	0xe4cf0f00
1c008b98:	04040444 	csrxchg	$r4,$r2,0x101
1c008b9c:	0404fcfc 	csrxchg	$r28,$r7,0x13f
1c008ba0:	cf442404 	0xcf442404
1c008ba4:	0000008f 	0x0000008f
1c008ba8:	00000000 	0x00000000
1c008bac:	20000000 	ll.w	$r0,$r0,0
1c008bb0:	04081010 	csrrd	$r16,0x204
1c008bb4:	00010306 	0x00010306
1c008bb8:	70301010 	vsubwev.h.bu	$vr16,$vr0,$vr4
1c008bbc:	00003f3f 	revb.d	$r31,$r25
1c008bc0:	00000000 	0x00000000
1c008bc4:	1e0e0301 	pcaddu18i	$r1,28696(0x7018)
1c008bc8:	00000018 	0x00000018
1c008bcc:	89bcef00 	0x89bcef00
1c008bd0:	00000000 	0x00000000
1c008bd4:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c008bd8:	0080c060 	bstrins.d	$r0,$r3,0x0,0x30
	...
1c008bf8:	06010000 	cacop	0x0,$r0,64(0x40)
1c008bfc:	0000f03c 	0x0000f03c
	...
1c008c18:	c0800000 	0xc0800000
1c008c1c:	00000f78 	0x00000f78
	...
1c008c34:	0c081000 	0x0c081000
1c008c38:	00010306 	0x00010306
	...
1c008c50:	0091a7e7 	bstrins.d	$r7,$r31,0x11,0x29
1c008c54:	40404000 	beqz	$r0,16448(0x4040) # 1c00cc94 <_sidata+0x399c>
1c008c58:	e0202020 	0xe0202020
1c008c5c:	181030e0 	pcaddi	$r0,33159(0x8187)
1c008c60:	00000018 	0x00000018
1c008c64:	00008080 	0x00008080
1c008c68:	fc000000 	0xfc000000
1c008c6c:	000008f8 	0x000008f8
1c008c70:	00000000 	0x00000000
1c008c74:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c008c78:	ff901010 	0xff901010
1c008c7c:	101010ff 	addu16i.d	$r31,$r7,1028(0x404)
1c008c80:	00001018 	clo.w	$r24,$r0
1c008c84:	060781c0 	cacop	0x0,$r14,480(0x1e0)
1c008c88:	ff000000 	0xff000000
1c008c8c:	000000ff 	0x000000ff
1c008c90:	00000000 	0x00000000
1c008c94:	20408000 	ll.w	$r0,$r0,16512(0x4080)
1c008c98:	ff030e18 	0xff030e18
1c008c9c:	060301ff 	cacop	0x1f,$r15,192(0xc0)
1c008ca0:	2020405e 	ll.w	$r30,$r2,8256(0x2040)
1c008ca4:	10232120 	addu16i.d	$r0,$r9,2248(0x8c8)
1c008ca8:	ff101010 	0xff101010
1c008cac:	0c0808ff 	0x0c0808ff
1c008cb0:	0000000c 	0x0000000c
1c008cb4:	00000001 	0x00000001
1c008cb8:	7f000000 	0x7f000000
1c008cbc:	0000003f 	0x0000003f
	...
1c008cc8:	7f000000 	0x7f000000
1c008ccc:	0000003f 	0x0000003f
1c008cd0:	e6000000 	0xe6000000
1c008cd4:	0000808a 	0x0000808a
1c008cd8:	00000000 	0x00000000
1c008cdc:	08f8fc00 	0x08f8fc00
	...
1c008ce8:	f8fc0000 	0xf8fc0000
1c008cec:	00000008 	0x00000008
	...
1c008cf8:	02020202 	slti	$r2,$r16,128(0x80)
1c008cfc:	02ffff02 	addi.d	$r2,$r24,-1(0xfff)
1c008d00:	42438382 	beqz	$r28,672640(0xa4380) # 1c0ad080 <_sidata+0xa3d88>
1c008d04:	82828282 	0x82828282
1c008d08:	ffff8282 	0xffff8282
1c008d0c:	82828282 	0x82828282
1c008d10:	020383c2 	slti	$r2,$r30,224(0xe0)
1c008d14:	00000000 	0x00000000
1c008d18:	06060c0c 	cacop	0xc,$r0,387(0x183)
1c008d1c:	01ffff02 	0x01ffff02
1c008d20:	00000000 	0x00000000
1c008d24:	1c030000 	pcaddu12i	$r0,6144(0x1800)
1c008d28:	8000c070 	0x8000c070
1c008d2c:	0f3c70c0 	0x0f3c70c0
1c008d30:	00000003 	0x00000003
1c008d34:	00000000 	0x00000000
1c008d38:	30101000 	vldrepl.d	$vr0,$r0,32(0x20)
1c008d3c:	003f3f70 	0x003f3f70
1c008d40:	20204040 	ll.w	$r0,$r2,8256(0x2040)
1c008d44:	08181020 	fmadd.s	$f0,$f1,$f4,$f16
1c008d48:	0703060c 	0x0703060c
1c008d4c:	38180c0f 	stx.w	$r15,$r0,$r3
1c008d50:	20303030 	ll.w	$r16,$r1,12336(0x3030)
1c008d54:	8fe50000 	0x8fe50000
1c008d58:	00000091 	0x00000091
1c008d5c:	f0800000 	0xf0800000
1c008d60:	00000070 	0x00000070
1c008d64:	18fcc000 	pcaddi	$r0,517632(0x7e600)
1c008d68:	00000000 	0x00000000
1c008d6c:	70100800 	0x70100800
1c008d70:	0000c0e0 	0x0000c0e0
	...
1c008d7c:	05070e04 	0x05070e04
1c008d80:	84040404 	0x84040404
1c008d84:	8487fff4 	0x8487fff4
1c008d88:	84848484 	0x84848484
1c008d8c:	84848484 	0x84848484
1c008d90:	0484c584 	csrxchg	$r4,$r12,0x2131
1c008d94:	00040606 	alsl.w	$r6,$r16,$r1,0x1
	...
1c008da0:	0f3ce080 	0x0f3ce080
1c008da4:	06010003 	cacop	0x3,$r0,64(0x40)
1c008da8:	80e03018 	0x80e03018
1c008dac:	1e3860c0 	pcaddu18i	$r0,115462(0x1c306)
1c008db0:	00000307 	0x00000307
1c008db4:	00000000 	0x00000000
1c008db8:	20000000 	ll.w	$r0,$r0,0
1c008dbc:	03040810 	lu52i.d	$r16,$r0,258(0x102)
1c008dc0:	20204041 	ll.w	$r1,$r2,8256(0x2040)
1c008dc4:	08181020 	fmadd.s	$f0,$f1,$f4,$f16
1c008dc8:	0303060c 	lu52i.d	$r12,$r16,193(0xc1)
1c008dcc:	0c060703 	0x0c060703
1c008dd0:	3038181c 	0x3038181c
1c008dd4:	00103030 	add.w	$r16,$r1,$r12
1c008dd8:	95b1e500 	0x95b1e500
1c008ddc:	00000000 	0x00000000
1c008de0:	08f80400 	0x08f80400
1c008de4:	08080808 	0x08080808
1c008de8:	08080808 	0x08080808
1c008dec:	08080808 	0x08080808
1c008df0:	08080808 	0x08080808
1c008df4:	08f8fc08 	0x08f8fc08
	...
1c008e00:	21ff0000 	sc.w	$r0,$r0,-256(0xff00)
1c008e04:	21212121 	sc.w	$r1,$r9,8480(0x2120)
1c008e08:	21fdff21 	sc.w	$r1,$r25,-516(0xfdfc)
1c008e0c:	21212121 	sc.w	$r1,$r9,8480(0x2120)
1c008e10:	2121fdff 	sc.w	$r31,$r15,8700(0x21fc)
1c008e14:	00233321 	div.du	$r1,$r25,$r12
	...
1c008e20:	043fff00 	csrxchg	$r0,$r24,0xfff
1c008e24:	fc040404 	0xfc040404
1c008e28:	040707fc 	csrxchg	$r28,$r31,0x1c1
1c008e2c:	04c4740c 	csrrd	$r12,0x311d
1c008e30:	64448707 	bge	$r24,$r7,17540(0x4484) # 1c00d2b4 <_sidata+0x3fbc>
1c008e34:	06062434 	cacop	0x14,$r1,393(0x189)
1c008e38:	00000004 	0x00000004
1c008e3c:	18204000 	pcaddi	$r0,66048(0x10200)
1c008e40:	00000107 	0x00000107
1c008e44:	3f000000 	0x3f000000
1c008e48:	0818103f 	fmadd.s	$f31,$f1,$f4,$f16
1c008e4c:	03000004 	lu52i.d	$r4,$r0,0
1c008e50:	180c0607 	pcaddi	$r7,24624(0x6030)
1c008e54:	30383818 	0x30383818
1c008e58:	00001010 	clo.w	$r16,$r0
1c008e5c:	00899ce6 	bstrins.d	$r6,$r7,0x9,0x27
1c008e60:	80808000 	0x80808000
1c008e64:	80808080 	0x80808080
1c008e68:	80808080 	0x80808080
1c008e6c:	88b8fce0 	0x88b8fce0
1c008e70:	80808080 	0x80808080
1c008e74:	80808080 	0x80808080
1c008e78:	c0e0c080 	0xc0e0c080
1c008e7c:	00000080 	0x00000080
1c008e80:	00000000 	0x00000000
1c008e84:	c0800000 	0xc0800000
1c008e88:	171cf8e0 	lu32i.d	$r0,-464953(0x8e7c7)
1c008e8c:	10101013 	addu16i.d	$r19,$r0,1028(0x404)
1c008e90:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008e94:	10f81010 	addu16i.d	$r16,$r0,15876(0x3e04)
	...
1c008ea0:	04081000 	csrrd	$r0,0x204
1c008ea4:	00010306 	0x00010306
1c008ea8:	4242ffff 	beqz	$r31,-113924(0x7e42fc) # 1bfed1a4 <_start-0x12e5c>
1c008eac:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ad0ec <_sidata+0xa3df4>
1c008eb0:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ad0f0 <_sidata+0xa3df8>
1c008eb4:	00ff4242 	bstrpick.d	$r2,$r18,0x3f,0x10
	...
1c008ec8:	00003f7f 	revb.d	$r31,$r27
1c008ecc:	00000000 	0x00000000
1c008ed0:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c008ed4:	003f7030 	0x003f7030
1c008ed8:	00000000 	0x00000000
1c008edc:	e9000000 	0xe9000000
1c008ee0:	00009099 	0x00009099
1c008ee4:	10f00800 	addu16i.d	$r0,$r0,15362(0x3c02)
1c008ee8:	f0101010 	0xf0101010
1c008eec:	00001078 	clo.w	$r24,$r3
1c008ef0:	1010f0f8 	addu16i.d	$r24,$r7,1084(0x43c)
1c008ef4:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008ef8:	f8101010 	0xf8101010
1c008efc:	00000010 	0x00000010
1c008f00:	00000000 	0x00000000
1c008f04:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c008f08:	c33e0000 	0xc33e0000
1c008f0c:	00000000 	0x00000000
1c008f10:	8484ffff 	0x8484ffff
1c008f14:	84848484 	0x84848484
1c008f18:	ff848484 	0xff848484
	...
1c008f24:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c008f28:	c0c04000 	0xc0c04000
1c008f2c:	00007eff 	0x00007eff
1c008f30:	0000ffff 	0x0000ffff
1c008f34:	c0701e01 	0xc0701e01
1c008f38:	0d1030a0 	vbitsel.v	$vr0,$vr5,$vr12,$vr0
1c008f3c:	0000040e 	0x0000040e
1c008f40:	00000000 	0x00000000
1c008f44:	007f0000 	bstrins.w	$r0,$r0,0x1f,0x0
1c008f48:	00010000 	asrtle.d	$r0,$r0
1c008f4c:	00000000 	0x00000000
1c008f50:	08183f1f 	fmadd.s	$f31,$f24,$f15,$f16
1c008f54:	01020204 	0x01020204
1c008f58:	1c0e0703 	pcaddu12i	$r3,28728(0x7038)
1c008f5c:	00183818 	sra.w	$r24,$r0,$r14
1c008f60:	85e50000 	0x85e50000
1c008f64:	000000ac 	0x000000ac
1c008f68:	00000000 	0x00000000
1c008f6c:	80000000 	0x80000000
1c008f70:	001078e0 	add.w	$r0,$r7,$r30
1c008f74:	1c000000 	pcaddu12i	$r0,0
1c008f78:	000080e0 	0x000080e0
	...
1c008f88:	c0800000 	0xc0800000
1c008f8c:	070e3860 	0x070e3860
1c008f90:	00000001 	0x00000001
1c008f94:	0080c0e0 	bstrins.d	$r0,$r7,0x0,0x30
1c008f98:	1c0e0300 	pcaddu12i	$r0,28696(0x7018)
1c008f9c:	c0c0e070 	0xc0c0e070
1c008fa0:	00000080 	0x00000080
1c008fa4:	04000000 	csrrd	$r0,0x0
1c008fa8:	00010302 	0x00010302
1c008fac:	c0000000 	0xc0000000
1c008fb0:	071c3860 	0x071c3860
1c008fb4:	00000103 	0x00000103
1c008fb8:	0080c020 	bstrins.d	$r0,$r1,0x0,0x30
1c008fbc:	03010000 	lu52i.d	$r0,$r0,64(0x40)
1c008fc0:	00010103 	0x00010103
1c008fc4:	00000000 	0x00000000
1c008fc8:	38080000 	ldx.w	$r0,$r0,$r0
1c008fcc:	191b1e3c 	pcaddi	$r28,-468751(0x8d8f1)
1c008fd0:	08081818 	0x08081818
1c008fd4:	08080808 	0x08080808
1c008fd8:	0f090808 	0x0f090808
1c008fdc:	00307c1e 	0x00307c1e
1c008fe0:	00000000 	0x00000000
1c008fe4:	b88fe500 	0xb88fe500
1c008fe8:	00000000 	0x00000000
1c008fec:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c008ff0:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008ff4:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008ff8:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008ffc:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c009000:	00f0f810 	bstrpick.d	$r16,$r0,0x30,0x3e
1c009004:	00000000 	0x00000000
1c009008:	04000000 	csrrd	$r0,0x0
1c00900c:	84c40404 	0x84c40404
1c009010:	84848484 	0x84848484
1c009014:	84848484 	0x84848484
1c009018:	0684c484 	0x0684c484
1c00901c:	00000406 	0x00000406
1c009020:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
	...
1c00902c:	ffff0000 	0xffff0000
1c009030:	40404040 	beqz	$r2,16448(0x4040) # 1c00d070 <_sidata+0x3d78>
1c009034:	40404040 	beqz	$r2,16448(0x4040) # 1c00d074 <_sidata+0x3d7c>
1c009038:	0000ff40 	0x0000ff40
1c00903c:	00000000 	0x00000000
1c009040:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
	...
1c00904c:	01030000 	fsub.d	$f0,$f0,$f0
	...
1c009058:	00010100 	asrtle.d	$r8,$r0
1c00905c:	30101010 	vldrepl.d	$vr16,$r0,32(0x20)
1c009060:	000f3f70 	bytepick.d	$r16,$r27,$r15,0x6
1c009064:	00000000 	0x00000000
1c009068:	00be98e6 	bstrins.d	$r6,$r7,0x3e,0x26
1c00906c:	00000000 	0x00000000
1c009070:	f0080000 	0xf0080000
1c009074:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c009078:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00907c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c009080:	f0f81010 	0xf0f81010
	...
1c009090:	ff000000 	0xff000000
1c009094:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ad2d4 <_sidata+0xa3fdc>
1c009098:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ad2d8 <_sidata+0xa3fe0>
1c00909c:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ad2dc <_sidata+0xa3fe4>
1c0090a0:	ffff4242 	0xffff4242
	...
1c0090ac:	08000000 	0x08000000
1c0090b0:	c0e17030 	0xc0e17030
1c0090b4:	fe000000 	0xfe000000
1c0090b8:	000000fe 	0x000000fe
1c0090bc:	00fefe00 	bstrpick.d	$r0,$r16,0x3e,0x3f
1c0090c0:	60c08000 	blt	$r0,$r0,49280(0xc080) # 1c015140 <_sidata+0xbe48>
1c0090c4:	00081c38 	bytepick.w	$r24,$r1,$r7,0x0
1c0090c8:	00000000 	0x00000000
1c0090cc:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c0090d0:	13111010 	addu16i.d	$r16,$r0,-15292(0xc444)
1c0090d4:	1f101010 	pcaddu18i	$r16,-491392(0x88080)
1c0090d8:	1010101f 	addu16i.d	$r31,$r0,1028(0x404)
1c0090dc:	141f1f10 	lu12i.w	$r16,63736(0xf8f8)
1c0090e0:	10101112 	addu16i.d	$r18,$r8,1028(0x404)
1c0090e4:	10181810 	addu16i.d	$r16,$r0,1542(0x606)
1c0090e8:	e7000000 	0xe7000000
1c0090ec:	0000baa4 	0x0000baa4
1c0090f0:	00000000 	0x00000000
1c0090f4:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0090f8:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0090fc:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c009100:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c009104:	30382020 	0x30382020
1c009108:	00000020 	0x00000020
1c00910c:	00000000 	0x00000000
1c009110:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c009114:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c009118:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00911c:	20e0e020 	ll.w	$r0,$r1,-7968(0xe0e0)
1c009120:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c009124:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c009128:	20303020 	ll.w	$r0,$r1,12336(0x3030)
1c00912c:	00000000 	0x00000000
1c009130:	80000000 	0x80000000
1c009134:	1e3c70c0 	pcaddu18i	$r0,123782(0x1e386)
1c009138:	00000406 	0x00000406
1c00913c:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
1c009140:	04020000 	csrrd	$r0,0x80
1c009144:	e0701808 	0xe0701808
1c009148:	000080c0 	0x000080c0
1c00914c:	00000000 	0x00000000
1c009150:	01030408 	fsub.d	$f8,$f0,$f1
1c009154:	08000000 	0x08000000
1c009158:	30101008 	vldrepl.d	$vr8,$r0,32(0x20)
1c00915c:	001f3f70 	mulw.d.w	$r16,$r27,$r15
	...
1c009168:	00030701 	0x00030701
1c00916c:	aee50000 	0xaee50000
1c009170:	0000009e 	0x0000009e
1c009174:	00800000 	bstrins.d	$r0,$r0,0x0,0x0
1c009178:	00000000 	0x00000000
1c00917c:	04000000 	csrrd	$r0,0x0
1c009180:	0070f818 	bstrpick.w	$r24,$r0,0x10,0x1e
	...
1c00918c:	00000080 	0x00000080
1c009190:	00000000 	0x00000000
1c009194:	810f1c18 	0x810f1c18
1c009198:	09010101 	0x09010101
1c00919c:	01713919 	0x01713919
1c0091a0:	fdff0101 	0xfdff0101
1c0091a4:	01010105 	fadd.d	$f5,$f8,$f0
1c0091a8:	07090101 	0x07090101
1c0091ac:	00020307 	0x00020307
1c0091b0:	10000000 	addu16i.d	$r0,$r0,0
1c0091b4:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0091b8:	1e171311 	pcaddu18i	$r17,47256(0xb898)
1c0091bc:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0091c0:	93bffcd0 	0x93bffcd0
1c0091c4:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0091c8:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0091cc:	00101818 	add.w	$r24,$r0,$r6
1c0091d0:	40000000 	beqz	$r0,0 # 1c0091d0 <tfont32+0x998>
1c0091d4:	20404040 	ll.w	$r0,$r2,16448(0x4040)
1c0091d8:	10102020 	addu16i.d	$r0,$r1,1032(0x408)
1c0091dc:	070e0c18 	0x070e0c18
1c0091e0:	01000003 	0x01000003
1c0091e4:	06020301 	cacop	0x1,$r24,128(0x80)
1c0091e8:	383c1c0e 	fstx.d	$f14,$r0,$r7
1c0091ec:	00000030 	0x00000030
1c0091f0:	8caae900 	0x8caae900
1c0091f4:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c0091f8:	10109090 	addu16i.d	$r16,$r4,1060(0x424)
1c0091fc:	10f81010 	addu16i.d	$r16,$r0,15876(0x3e04)
1c009200:	00000000 	0x00000000
1c009204:	f0800000 	0xf0800000
1c009208:	80e8183c 	0x80e8183c
	...
1c009214:	80000000 	0x80000000
1c009218:	00001fff 	ctz.w	$r31,$r31
1c00921c:	003fff00 	0x003fff00
1c009220:	50204080 	b	33562688(0x2002040) # 1e00b260 <_sidata+0x2001f68>
1c009224:	4043474c 	beqz	$r26,3162948(0x304344) # 1c30d568 <_sidata+0x304270>
1c009228:	43404040 	beqz	$r2,213056(0x34040) # 1c03d268 <_sidata+0x33f70>
1c00922c:	70784c66 	0x70784c66
1c009230:	00202070 	div.w	$r16,$r3,$r8
1c009234:	c1c14000 	0xc1c14000
1c009238:	21214143 	sc.w	$r3,$r10,8512(0x2140)
1c00923c:	ff810121 	0xff810121
1c009240:	1c00000f 	pcaddu12i	$r15,0
1c009244:	0c02c0f0 	0x0c02c0f0
1c009248:	0000e0f8 	0x0000e0f8
1c00924c:	061f7cc0 	cacop	0x0,$r6,2015(0x7df)
	...
1c009258:	18080800 	pcaddi	$r0,16448(0x4040)
1c00925c:	070f1838 	0x070f1838
1c009260:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c009264:	10101113 	addu16i.d	$r19,$r8,1028(0x404)
1c009268:	1e101011 	pcaddu18i	$r17,32896(0x8080)
1c00926c:	18101013 	pcaddi	$r19,32896(0x8080)
1c009270:	00001018 	clo.w	$r24,$r0
1c009274:	00cc4240 	bstrpick.d	$r0,$r18,0xc,0x10
1c009278:	5556fc00 	bl	87804(0x156fc) # 1c01e974 <_sidata+0x1567c>
1c00927c:	101080fc 	addu16i.d	$r28,$r7,1056(0x420)
1c009280:	001010ff 	add.w	$r31,$r7,$r4
	...

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	1c0070a9 	pcaddu12i	$r9,901(0x385)
80001008:	8000000c 	0x8000000c
8000100c:	80001028 	0x80001028
80001010:	80000010 	0x80000010
80001014:	80000138 	0x80000138
80001018:	80000268 	0x80000268
8000101c:	80000014 	0x80000014
80001020:	1c0070a0 	pcaddu12i	$r0,901(0x385)
80001024:	80000034 	0x80000034

80001028 <g_SystemFreq>:
80001028:	007a1200 	bstrins.w	$r0,$r16,0x1a,0x4

8000102c <temp_threshold>:
8000102c:	 	0x010a0f3c

8000102d <humi_threshold>:
8000102d:	 	0x05010a0f

8000102e <smoke_threshold>:
8000102e:	 	alsl.w	$r10,$r8,$r0,0x3

8000102f <first_run>:
8000102f:	 	0x00000501

80001030 <tolerance>:
80001030:	00000005 	0x00000005

Disassembly of section .bss:

80000000 <abnormal_count>:
	...

80000001 <last_temp>:
	...

80000002 <last_humi>:
	...

80000003 <last_smoke>:
	...

80000004 <cvalue>:
_sbss():
80000004:	00000000 	0x00000000

80000008 <found>:
80000008:	00000000 	0x00000000

8000000c <humi>:
	...

8000000e <Read_length>:
	...

8000000f <send_temp_flag>:
	...

80000010 <temp>:
	...

80000012 <ADC_Value>:
	...

80000013 <FAN_FLAG>:
	...

80000014 <str>:
	...

80000032 <send_humi_flag>:
	...

80000034 <smoke>:
80000034:	00000000 	0x00000000

80000038 <Read_Buffer>:
	...

80000138 <Circular_queue>:
	...

80000268 <diff>:
80000268:	00000000 	0x00000000

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
