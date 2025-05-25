
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
1c00000c:	0390d1ef 	ori	$r15,$r15,0x434
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
1c001090:	5438e800 	bl	14568(0x38e8) # 1c004978 <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	54393000 	bl	14640(0x3930) # 1c0049c8 <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	5439bc00 	bl	14780(0x39bc) # 1c004a5c <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	5439f000 	bl	14832(0x39f0) # 1c004a98 <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	54381000 	bl	14352(0x3810) # 1c0048c0 <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	543b6400 	bl	15204(0x3b64) # 1c004c1c <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	543aa800 	bl	15016(0x3aa8) # 1c004b70 <intc_handler>
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
1c0013d4:	541d4c00 	bl	7500(0x1d4c) # 1c003120 <DisableInt>
1c0013d8:	541c7400 	bl	7284(0x1c74) # 1c00304c <SystemClockInit>
1c0013dc:	57ff53ff 	bl	-176(0xfffff50) # 1c00132c <GPIOInit>
1c0013e0:	54244c00 	bl	9292(0x244c) # 1c00382c <WdgInit>
1c0013e4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0013e8:	54238c00 	bl	9100(0x238c) # 1c003774 <WDG_SetWatchDog>
1c0013ec:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013f0:	03880184 	ori	$r4,$r12,0x200
1c0013f4:	54169800 	bl	5784(0x1698) # 1c002a8c <Uart1_init>
1c0013f8:	541f1c00 	bl	7964(0x1f1c) # 1c003314 <ls1x_logo>
1c0013fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001400:	0380118c 	ori	$r12,$r12,0x4
1c001404:	2880018e 	ld.w	$r14,$r12,0
1c001408:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00140c:	0380118c 	ori	$r12,$r12,0x4
1c001410:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c001414:	001535cd 	or	$r13,$r14,$r13
1c001418:	2980018d 	st.w	$r13,$r12,0
1c00141c:	541d2800 	bl	7464(0x1d28) # 1c003144 <EnableInt>
1c001420:	541fbc00 	bl	8124(0x1fbc) # 1c0033dc <open_count>
1c001424:	02801804 	addi.w	$r4,$r0,6(0x6)
1c001428:	541d8400 	bl	7556(0x1d84) # 1c0031ac <Wake_Set>
1c00142c:	5423d400 	bl	9172(0x23d4) # 1c003800 <WDG_DogFeed>
1c001430:	541e2800 	bl	7720(0x1e28) # 1c003258 <PMU_GetRstRrc>
1c001434:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001438:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00143c:	44003180 	bnez	$r12,48(0x30) # 1c00146c <bsp_init+0xa8>
1c001440:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c001444:	02b27084 	addi.w	$r4,$r4,-868(0xc9c)
1c001448:	54074c00 	bl	1868(0x74c) # 1c001b94 <myprintf>
1c00144c:	541e7800 	bl	7800(0x1e78) # 1c0032c4 <PMU_GetBootSpiStatus>
1c001450:	0015008c 	move	$r12,$r4
1c001454:	40001180 	beqz	$r12,16(0x10) # 1c001464 <bsp_init+0xa0>
1c001458:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c00145c:	02b25084 	addi.w	$r4,$r4,-876(0xc94)
1c001460:	54073400 	bl	1844(0x734) # 1c001b94 <myprintf>
1c001464:	543a1800 	bl	14872(0x3a18) # 1c004e7c <main>
1c001468:	50004000 	b	64(0x40) # 1c0014a8 <bsp_init+0xe4>
1c00146c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001470:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001474:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c00148c <bsp_init+0xc8>
1c001478:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c00147c:	02b20084 	addi.w	$r4,$r4,-896(0xc80)
1c001480:	54071400 	bl	1812(0x714) # 1c001b94 <myprintf>
1c001484:	5439f800 	bl	14840(0x39f8) # 1c004e7c <main>
1c001488:	50002000 	b	32(0x20) # 1c0014a8 <bsp_init+0xe4>
1c00148c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001490:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c001494:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0014a8 <bsp_init+0xe4>
1c001498:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c00149c:	02b1c084 	addi.w	$r4,$r4,-912(0xc70)
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
1c001c30:	0293a18c 	addi.w	$r12,$r12,1256(0x4e8)
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
1c001f54:	54171000 	bl	5904(0x1710) # 1c003664 <strlen>
1c001f58:	0015008c 	move	$r12,$r4
1c001f5c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f60:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c001f64:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c001f68:	5416a000 	bl	5792(0x16a0) # 1c003608 <strcpy>
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
1c0021c8:	0282818c 	addi.w	$r12,$r12,160(0xa0)
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

1c002a8c <Uart1_init>:
Uart1_init():
1c002a8c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002a90:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002a94:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002a98:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002a9c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002aa0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002aa4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c002aa8:	57ebafff 	bl	-5204(0xfffebac) # 1c001654 <gpio_pin_remap>
1c002aac:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002ab0:	02802404 	addi.w	$r4,$r0,9(0x9)
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
1c002ae4:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002ae8:	57faabff 	bl	-1368(0xffffaa8) # 1c002590 <UART_Init>
1c002aec:	02800406 	addi.w	$r6,$r0,1(0x1)
1c002af0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002af4:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002af8:	57fe13ff 	bl	-496(0xffffe10) # 1c002908 <UART_ITConfig>
1c002afc:	03400000 	andi	$r0,$r0,0x0
1c002b00:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002b04:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002b08:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002b0c:	4c000020 	jirl	$r0,$r1,0

1c002b10 <CLOCK_WaitForHSEStartUp>:
CLOCK_WaitForHSEStartUp():
1c002b10:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002b14:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002b18:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002b1c:	1400006c 	lu12i.w	$r12,3(0x3)
1c002b20:	03ba018c 	ori	$r12,$r12,0xe80
1c002b24:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002b28:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002b2c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b30:	2880018d 	ld.w	$r13,$r12,0
1c002b34:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b38:	038101ad 	ori	$r13,$r13,0x40
1c002b3c:	2980018d 	st.w	$r13,$r12,0
1c002b40:	03400000 	andi	$r0,$r0,0x0
1c002b44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002b48:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002b4c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002b50:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c002b44 <CLOCK_WaitForHSEStartUp+0x34>
1c002b54:	50001c00 	b	28(0x1c) # 1c002b70 <CLOCK_WaitForHSEStartUp+0x60>
1c002b58:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b5c:	2880018e 	ld.w	$r14,$r12,0
1c002b60:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b64:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002b68:	0014b5cd 	and	$r13,$r14,$r13
1c002b6c:	2980018d 	st.w	$r13,$r12,0
1c002b70:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b74:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002b78:	63ffe180 	blt	$r12,$r0,-32(0x3ffe0) # 1c002b58 <CLOCK_WaitForHSEStartUp+0x48>
1c002b7c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b80:	2880018d 	ld.w	$r13,$r12,0
1c002b84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b88:	038201ad 	ori	$r13,$r13,0x80
1c002b8c:	2980018d 	st.w	$r13,$r12,0
1c002b90:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002b94:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002b98:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002b9c:	00150184 	move	$r4,$r12
1c002ba0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002ba4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002ba8:	4c000020 	jirl	$r0,$r1,0

1c002bac <CLOCK_WaitForLSEStartUp>:
CLOCK_WaitForLSEStartUp():
1c002bac:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002bb0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002bb4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002bb8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002bbc:	50008800 	b	136(0x88) # 1c002c44 <CLOCK_WaitForLSEStartUp+0x98>
1c002bc0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bc4:	2880018e 	ld.w	$r14,$r12,0
1c002bc8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bcc:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002bd0:	0014b5cd 	and	$r13,$r14,$r13
1c002bd4:	2980018d 	st.w	$r13,$r12,0
1c002bd8:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002bdc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002be0:	50001400 	b	20(0x14) # 1c002bf4 <CLOCK_WaitForLSEStartUp+0x48>
1c002be4:	03400000 	andi	$r0,$r0,0x0
1c002be8:	03400000 	andi	$r0,$r0,0x0
1c002bec:	03400000 	andi	$r0,$r0,0x0
1c002bf0:	03400000 	andi	$r0,$r0,0x0
1c002bf4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002bf8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002bfc:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002c00:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002be4 <CLOCK_WaitForLSEStartUp+0x38>
1c002c04:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c08:	2880018d 	ld.w	$r13,$r12,0
1c002c0c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c10:	038081ad 	ori	$r13,$r13,0x20
1c002c14:	2980018d 	st.w	$r13,$r12,0
1c002c18:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002c1c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002c20:	50001400 	b	20(0x14) # 1c002c34 <CLOCK_WaitForLSEStartUp+0x88>
1c002c24:	03400000 	andi	$r0,$r0,0x0
1c002c28:	03400000 	andi	$r0,$r0,0x0
1c002c2c:	03400000 	andi	$r0,$r0,0x0
1c002c30:	03400000 	andi	$r0,$r0,0x0
1c002c34:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002c38:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002c3c:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002c40:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002c24 <CLOCK_WaitForLSEStartUp+0x78>
1c002c44:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c48:	0380118c 	ori	$r12,$r12,0x4
1c002c4c:	2880018d 	ld.w	$r13,$r12,0
1c002c50:	1420000c 	lu12i.w	$r12,65536(0x10000)
1c002c54:	0014b1ac 	and	$r12,$r13,$r12
1c002c58:	43ff699f 	beqz	$r12,-152(0x7fff68) # 1c002bc0 <CLOCK_WaitForLSEStartUp+0x14>
1c002c5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c60:	0380118c 	ori	$r12,$r12,0x4
1c002c64:	2880018d 	ld.w	$r13,$r12,0
1c002c68:	1440000c 	lu12i.w	$r12,131072(0x20000)
1c002c6c:	0014b1ac 	and	$r12,$r13,$r12
1c002c70:	47ff519f 	bnez	$r12,-176(0x7fff50) # 1c002bc0 <CLOCK_WaitForLSEStartUp+0x14>
1c002c74:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002c78:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002c7c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002c80:	00150184 	move	$r4,$r12
1c002c84:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002c88:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002c8c:	4c000020 	jirl	$r0,$r1,0

1c002c90 <CLOCK_HSEConfig>:
CLOCK_HSEConfig():
1c002c90:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002c94:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002c98:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002c9c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002ca0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002ca4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002ca8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cac:	2880018e 	ld.w	$r14,$r12,0
1c002cb0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002cb4:	0014300d 	nor	$r13,$r0,$r12
1c002cb8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cbc:	0014b5cd 	and	$r13,$r14,$r13
1c002cc0:	2980018d 	st.w	$r13,$r12,0
1c002cc4:	1400002c 	lu12i.w	$r12,1(0x1)
1c002cc8:	03b4bd8c 	ori	$r12,$r12,0xd2f
1c002ccc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002cd0:	50001400 	b	20(0x14) # 1c002ce4 <CLOCK_HSEConfig+0x54>
1c002cd4:	03400000 	andi	$r0,$r0,0x0
1c002cd8:	03400000 	andi	$r0,$r0,0x0
1c002cdc:	03400000 	andi	$r0,$r0,0x0
1c002ce0:	03400000 	andi	$r0,$r0,0x0
1c002ce4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002ce8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002cec:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002cf0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002cd4 <CLOCK_HSEConfig+0x44>
1c002cf4:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002cf8:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002cfc:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002d0c <CLOCK_HSEConfig+0x7c>
1c002d00:	57fe13ff 	bl	-496(0xffffe10) # 1c002b10 <CLOCK_WaitForHSEStartUp>
1c002d04:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002d08:	50002400 	b	36(0x24) # 1c002d2c <CLOCK_HSEConfig+0x9c>
1c002d0c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d10:	2880018e 	ld.w	$r14,$r12,0
1c002d14:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d18:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002d1c:	0014b5cd 	and	$r13,$r14,$r13
1c002d20:	2980018d 	st.w	$r13,$r12,0
1c002d24:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002d28:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002d2c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d30:	00150184 	move	$r4,$r12
1c002d34:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002d38:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002d3c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002d40:	4c000020 	jirl	$r0,$r1,0

1c002d44 <CLOCK_LSEConfig>:
CLOCK_LSEConfig():
1c002d44:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002d48:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002d4c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002d50:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002d54:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002d58:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002d5c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002d60:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c002d64:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002d74 <CLOCK_LSEConfig+0x30>
1c002d68:	57fe47ff 	bl	-444(0xffffe44) # 1c002bac <CLOCK_WaitForLSEStartUp>
1c002d6c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002d70:	50002400 	b	36(0x24) # 1c002d94 <CLOCK_LSEConfig+0x50>
1c002d74:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d78:	2880018e 	ld.w	$r14,$r12,0
1c002d7c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d80:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002d84:	0014b5cd 	and	$r13,$r14,$r13
1c002d88:	2980018d 	st.w	$r13,$r12,0
1c002d8c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002d90:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002d94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d98:	00150184 	move	$r4,$r12
1c002d9c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002da0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002da4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002da8:	4c000020 	jirl	$r0,$r1,0

1c002dac <CLOCK_StructInit>:
CLOCK_StructInit():
1c002dac:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002db0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002db4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002db8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002dbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002dc0:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c002dc4:	2980018d 	st.w	$r13,$r12,0
1c002dc8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002dcc:	0282000d 	addi.w	$r13,$r0,128(0x80)
1c002dd0:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002dd4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002dd8:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c002ddc:	2980218d 	st.w	$r13,$r12,8(0x8)
1c002de0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002de4:	29803180 	st.w	$r0,$r12,12(0xc)
1c002de8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002dec:	29804180 	st.w	$r0,$r12,16(0x10)
1c002df0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002df4:	29805180 	st.w	$r0,$r12,20(0x14)
1c002df8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002dfc:	29806180 	st.w	$r0,$r12,24(0x18)
1c002e00:	03400000 	andi	$r0,$r0,0x0
1c002e04:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002e08:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002e0c:	4c000020 	jirl	$r0,$r1,0

1c002e10 <CLOCK_Init>:
CLOCK_Init():
1c002e10:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002e14:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002e18:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002e1c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002e20:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002e24:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002e28:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e2c:	2880018e 	ld.w	$r14,$r12,0
1c002e30:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e34:	02b3fc0d 	addi.w	$r13,$r0,-769(0xcff)
1c002e38:	0014b5cd 	and	$r13,$r14,$r13
1c002e3c:	2980018d 	st.w	$r13,$r12,0
1c002e40:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e44:	2880018e 	ld.w	$r14,$r12,0
1c002e48:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e4c:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c002e50:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e54:	001535cd 	or	$r13,$r14,$r13
1c002e58:	2980018d 	st.w	$r13,$r12,0
1c002e5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e60:	2880018e 	ld.w	$r14,$r12,0
1c002e64:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e68:	02bfbc0d 	addi.w	$r13,$r0,-17(0xfef)
1c002e6c:	0014b5cd 	and	$r13,$r14,$r13
1c002e70:	2980018d 	st.w	$r13,$r12,0
1c002e74:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e78:	2880018e 	ld.w	$r14,$r12,0
1c002e7c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e80:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c002e84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e88:	001535cd 	or	$r13,$r14,$r13
1c002e8c:	2980018d 	st.w	$r13,$r12,0
1c002e90:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e94:	2880018e 	ld.w	$r14,$r12,0
1c002e98:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e9c:	15ffffed 	lu12i.w	$r13,-1(0xfffff)
1c002ea0:	039ffdad 	ori	$r13,$r13,0x7ff
1c002ea4:	0014b5cd 	and	$r13,$r14,$r13
1c002ea8:	2980018d 	st.w	$r13,$r12,0
1c002eac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002eb0:	2880018e 	ld.w	$r14,$r12,0
1c002eb4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002eb8:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c002ebc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ec0:	001535cd 	or	$r13,$r14,$r13
1c002ec4:	2980018d 	st.w	$r13,$r12,0
1c002ec8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ecc:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002ed0:	00150184 	move	$r4,$r12
1c002ed4:	57fdbfff 	bl	-580(0xffffdbc) # 1c002c90 <CLOCK_HSEConfig>
1c002ed8:	0015008d 	move	$r13,$r4
1c002edc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002ee0:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002eec <CLOCK_Init+0xdc>
1c002ee4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ee8:	50015000 	b	336(0x150) # 1c003038 <CLOCK_Init+0x228>
1c002eec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ef0:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c002ef4:	00150184 	move	$r4,$r12
1c002ef8:	57fe4fff 	bl	-436(0xffffe4c) # 1c002d44 <CLOCK_LSEConfig>
1c002efc:	0015008d 	move	$r13,$r4
1c002f00:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002f04:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002f10 <CLOCK_Init+0x100>
1c002f08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f0c:	50012c00 	b	300(0x12c) # 1c003038 <CLOCK_Init+0x228>
1c002f10:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f14:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002f18:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002f1c:	5800fdac 	beq	$r13,$r12,252(0xfc) # 1c003018 <CLOCK_Init+0x208>
1c002f20:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f24:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c002f28:	4000a180 	beqz	$r12,160(0xa0) # 1c002fc8 <CLOCK_Init+0x1b8>
1c002f2c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f30:	2880018e 	ld.w	$r14,$r12,0
1c002f34:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f38:	15efffed 	lu12i.w	$r13,-32769(0xf7fff)
1c002f3c:	03bffdad 	ori	$r13,$r13,0xfff
1c002f40:	0014b5cd 	and	$r13,$r14,$r13
1c002f44:	2980018d 	st.w	$r13,$r12,0
1c002f48:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f4c:	2880018e 	ld.w	$r14,$r12,0
1c002f50:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f54:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c002f58:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f5c:	001535cd 	or	$r13,$r14,$r13
1c002f60:	2980018d 	st.w	$r13,$r12,0
1c002f64:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002f68:	0386c18c 	ori	$r12,$r12,0x1b0
1c002f6c:	2880018c 	ld.w	$r12,$r12,0
1c002f70:	40004180 	beqz	$r12,64(0x40) # 1c002fb0 <CLOCK_Init+0x1a0>
1c002f74:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002f78:	0386c18c 	ori	$r12,$r12,0x1b0
1c002f7c:	2880018c 	ld.w	$r12,$r12,0
1c002f80:	0040898e 	slli.w	$r14,$r12,0x2
1c002f84:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002f88:	002031cd 	div.w	$r13,$r14,$r12
1c002f8c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002f94 <CLOCK_Init+0x184>
1c002f90:	002a0007 	break	0x7
1c002f94:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c002f98:	001c31ac 	mul.w	$r12,$r13,$r12
1c002f9c:	0015018d 	move	$r13,$r12
1c002fa0:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002fa4:	0282218c 	addi.w	$r12,$r12,136(0x88)
1c002fa8:	2980018d 	st.w	$r13,$r12,0
1c002fac:	50008000 	b	128(0x80) # 1c00302c <CLOCK_Init+0x21c>
1c002fb0:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002fb4:	0281e18c 	addi.w	$r12,$r12,120(0x78)
1c002fb8:	1401458d 	lu12i.w	$r13,2604(0xa2c)
1c002fbc:	038fe1ad 	ori	$r13,$r13,0x3f8
1c002fc0:	2980018d 	st.w	$r13,$r12,0
1c002fc4:	50006800 	b	104(0x68) # 1c00302c <CLOCK_Init+0x21c>
1c002fc8:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002fcc:	0386c18c 	ori	$r12,$r12,0x1b0
1c002fd0:	2880018c 	ld.w	$r12,$r12,0
1c002fd4:	40002d80 	beqz	$r12,44(0x2c) # 1c003000 <CLOCK_Init+0x1f0>
1c002fd8:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002fdc:	0386c18c 	ori	$r12,$r12,0x1b0
1c002fe0:	2880018d 	ld.w	$r13,$r12,0
1c002fe4:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c002fe8:	001c31ac 	mul.w	$r12,$r13,$r12
1c002fec:	0015018d 	move	$r13,$r12
1c002ff0:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002ff4:	0280e18c 	addi.w	$r12,$r12,56(0x38)
1c002ff8:	2980018d 	st.w	$r13,$r12,0
1c002ffc:	50003000 	b	48(0x30) # 1c00302c <CLOCK_Init+0x21c>
1c003000:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003004:	0280a18c 	addi.w	$r12,$r12,40(0x28)
1c003008:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c00300c:	038801ad 	ori	$r13,$r13,0x200
1c003010:	2980018d 	st.w	$r13,$r12,0
1c003014:	50001800 	b	24(0x18) # 1c00302c <CLOCK_Init+0x21c>
1c003018:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c00301c:	0280418c 	addi.w	$r12,$r12,16(0x10)
1c003020:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c003024:	038801ad 	ori	$r13,$r13,0x200
1c003028:	2980018d 	st.w	$r13,$r12,0
1c00302c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003030:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003034:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003038:	00150184 	move	$r4,$r12
1c00303c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003040:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003044:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003048:	4c000020 	jirl	$r0,$r1,0

1c00304c <SystemClockInit>:
SystemClockInit():
1c00304c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003050:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003054:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003058:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00305c:	29bf52c0 	st.w	$r0,$r22,-44(0xfd4)
1c003060:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c003064:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c003068:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c00306c:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c003070:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003074:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003078:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c00307c:	00150184 	move	$r4,$r12
1c003080:	57fd2fff 	bl	-724(0xffffd2c) # 1c002dac <CLOCK_StructInit>
1c003084:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c003088:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c00308c:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c003090:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c003094:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c003098:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c00309c:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0030a0:	0284000c 	addi.w	$r12,$r0,256(0x100)
1c0030a4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0030a8:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0030ac:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0030b0:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c0030b4:	00150184 	move	$r4,$r12
1c0030b8:	57fd5bff 	bl	-680(0xffffd58) # 1c002e10 <CLOCK_Init>
1c0030bc:	0015008d 	move	$r13,$r4
1c0030c0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0030c4:	58000dac 	beq	$r13,$r12,12(0xc) # 1c0030d0 <SystemClockInit+0x84>
1c0030c8:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0030cc:	50000800 	b	8(0x8) # 1c0030d4 <SystemClockInit+0x88>
1c0030d0:	0015000c 	move	$r12,$r0
1c0030d4:	00150184 	move	$r4,$r12
1c0030d8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0030dc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0030e0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0030e4:	4c000020 	jirl	$r0,$r1,0

1c0030e8 <IsGlobalIntOpen>:
IsGlobalIntOpen():
1c0030e8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0030ec:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0030f0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0030f4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0030f8:	0400000c 	csrrd	$r12,0x0
1c0030fc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003100:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003104:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003108:	0340118c 	andi	$r12,$r12,0x4
1c00310c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003110:	00150184 	move	$r4,$r12
1c003114:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003118:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00311c:	4c000020 	jirl	$r0,$r1,0

1c003120 <DisableInt>:
DisableInt():
1c003120:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003124:	29803076 	st.w	$r22,$r3,12(0xc)
1c003128:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00312c:	0380100c 	ori	$r12,$r0,0x4
1c003130:	04000180 	csrxchg	$r0,$r12,0x0
1c003134:	03400000 	andi	$r0,$r0,0x0
1c003138:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00313c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003140:	4c000020 	jirl	$r0,$r1,0

1c003144 <EnableInt>:
EnableInt():
1c003144:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003148:	29803076 	st.w	$r22,$r3,12(0xc)
1c00314c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003150:	0380100c 	ori	$r12,$r0,0x4
1c003154:	0400018c 	csrxchg	$r12,$r12,0x0
1c003158:	03400000 	andi	$r0,$r0,0x0
1c00315c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003160:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003164:	4c000020 	jirl	$r0,$r1,0

1c003168 <Set_Timer_stop>:
Set_Timer_stop():
1c003168:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00316c:	29803076 	st.w	$r22,$r3,12(0xc)
1c003170:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003174:	04010420 	csrwr	$r0,0x41
1c003178:	03400000 	andi	$r0,$r0,0x0
1c00317c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003180:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003184:	4c000020 	jirl	$r0,$r1,0

1c003188 <Set_Timer_clear>:
Set_Timer_clear():
1c003188:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00318c:	29803076 	st.w	$r22,$r3,12(0xc)
1c003190:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003194:	0380040c 	ori	$r12,$r0,0x1
1c003198:	0401102c 	csrwr	$r12,0x44
1c00319c:	03400000 	andi	$r0,$r0,0x0
1c0031a0:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0031a4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0031a8:	4c000020 	jirl	$r0,$r1,0

1c0031ac <Wake_Set>:
Wake_Set():
1c0031ac:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0031b0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0031b4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0031b8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0031bc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0031c0:	40006980 	beqz	$r12,104(0x68) # 1c003228 <Wake_Set+0x7c>
1c0031c4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0031c8:	0040a18c 	slli.w	$r12,$r12,0x8
1c0031cc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0031d0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0031d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0031d8:	0380218c 	ori	$r12,$r12,0x8
1c0031dc:	2880018d 	ld.w	$r13,$r12,0
1c0031e0:	14001fec 	lu12i.w	$r12,255(0xff)
1c0031e4:	03bffd8c 	ori	$r12,$r12,0xfff
1c0031e8:	0014b1ac 	and	$r12,$r13,$r12
1c0031ec:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0031f0:	001031ac 	add.w	$r12,$r13,$r12
1c0031f4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0031f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0031fc:	0380318c 	ori	$r12,$r12,0xc
1c003200:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c003204:	2980018d 	st.w	$r13,$r12,0
1c003208:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00320c:	0380118c 	ori	$r12,$r12,0x4
1c003210:	2880018d 	ld.w	$r13,$r12,0
1c003214:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003218:	0380118c 	ori	$r12,$r12,0x4
1c00321c:	038601ad 	ori	$r13,$r13,0x180
1c003220:	2980018d 	st.w	$r13,$r12,0
1c003224:	50002400 	b	36(0x24) # 1c003248 <Wake_Set+0x9c>
1c003228:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00322c:	0380118c 	ori	$r12,$r12,0x4
1c003230:	2880018e 	ld.w	$r14,$r12,0
1c003234:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003238:	0380118c 	ori	$r12,$r12,0x4
1c00323c:	02b9fc0d 	addi.w	$r13,$r0,-385(0xe7f)
1c003240:	0014b5cd 	and	$r13,$r14,$r13
1c003244:	2980018d 	st.w	$r13,$r12,0
1c003248:	03400000 	andi	$r0,$r0,0x0
1c00324c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003250:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003254:	4c000020 	jirl	$r0,$r1,0

1c003258 <PMU_GetRstRrc>:
PMU_GetRstRrc():
1c003258:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00325c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003260:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003264:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003268:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00326c:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003270:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003274:	0014b1ac 	and	$r12,$r13,$r12
1c003278:	44000d80 	bnez	$r12,12(0xc) # 1c003284 <PMU_GetRstRrc+0x2c>
1c00327c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003280:	50003000 	b	48(0x30) # 1c0032b0 <PMU_GetRstRrc+0x58>
1c003284:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003288:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c00328c:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003290:	0014b1ad 	and	$r13,$r13,$r12
1c003294:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003298:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0032a8 <PMU_GetRstRrc+0x50>
1c00329c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0032a0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0032a4:	50000c00 	b	12(0xc) # 1c0032b0 <PMU_GetRstRrc+0x58>
1c0032a8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0032ac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0032b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0032b4:	00150184 	move	$r4,$r12
1c0032b8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0032bc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0032c0:	4c000020 	jirl	$r0,$r1,0

1c0032c4 <PMU_GetBootSpiStatus>:
PMU_GetBootSpiStatus():
1c0032c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0032c8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0032cc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0032d0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0032d4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0032d8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0032dc:	0380198c 	ori	$r12,$r12,0x6
1c0032e0:	2a00018c 	ld.bu	$r12,$r12,0
1c0032e4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0032e8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0032ec:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0032f0:	0340058c 	andi	$r12,$r12,0x1
1c0032f4:	40000d80 	beqz	$r12,12(0xc) # 1c003300 <PMU_GetBootSpiStatus+0x3c>
1c0032f8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0032fc:	50000800 	b	8(0x8) # 1c003304 <PMU_GetBootSpiStatus+0x40>
1c003300:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003304:	00150184 	move	$r4,$r12
1c003308:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00330c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003310:	4c000020 	jirl	$r0,$r1,0

1c003314 <ls1x_logo>:
ls1x_logo():
1c003314:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003318:	29803061 	st.w	$r1,$r3,12(0xc)
1c00331c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003320:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003324:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003328:	02824084 	addi.w	$r4,$r4,144(0x90)
1c00332c:	57e86bff 	bl	-6040(0xfffe868) # 1c001b94 <myprintf>
1c003330:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003334:	02822084 	addi.w	$r4,$r4,136(0x88)
1c003338:	57e85fff 	bl	-6052(0xfffe85c) # 1c001b94 <myprintf>
1c00333c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003340:	02838084 	addi.w	$r4,$r4,224(0xe0)
1c003344:	57e853ff 	bl	-6064(0xfffe850) # 1c001b94 <myprintf>
1c003348:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00334c:	0284e084 	addi.w	$r4,$r4,312(0x138)
1c003350:	57e847ff 	bl	-6076(0xfffe844) # 1c001b94 <myprintf>
1c003354:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003358:	02864084 	addi.w	$r4,$r4,400(0x190)
1c00335c:	57e83bff 	bl	-6088(0xfffe838) # 1c001b94 <myprintf>
1c003360:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003364:	0287a084 	addi.w	$r4,$r4,488(0x1e8)
1c003368:	57e82fff 	bl	-6100(0xfffe82c) # 1c001b94 <myprintf>
1c00336c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003370:	02890084 	addi.w	$r4,$r4,576(0x240)
1c003374:	57e823ff 	bl	-6112(0xfffe820) # 1c001b94 <myprintf>
1c003378:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00337c:	028a6084 	addi.w	$r4,$r4,664(0x298)
1c003380:	57e817ff 	bl	-6124(0xfffe814) # 1c001b94 <myprintf>
1c003384:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003388:	028bc084 	addi.w	$r4,$r4,752(0x2f0)
1c00338c:	57e80bff 	bl	-6136(0xfffe808) # 1c001b94 <myprintf>
1c003390:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003394:	028d2084 	addi.w	$r4,$r4,840(0x348)
1c003398:	57e7ffff 	bl	-6148(0xfffe7fc) # 1c001b94 <myprintf>
1c00339c:	03400000 	andi	$r0,$r0,0x0
1c0033a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0033a4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0033a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0033ac:	4c000020 	jirl	$r0,$r1,0

1c0033b0 <get_count>:
get_count():
1c0033b0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0033b4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0033b8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0033bc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0033c0:	0000600c 	rdtimel.w	$r12,$r0
1c0033c4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0033c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0033cc:	00150184 	move	$r4,$r12
1c0033d0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0033d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0033d8:	4c000020 	jirl	$r0,$r1,0

1c0033dc <open_count>:
open_count():
1c0033dc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0033e0:	29803076 	st.w	$r22,$r3,12(0xc)
1c0033e4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0033e8:	0380400c 	ori	$r12,$r0,0x10
1c0033ec:	0402bd80 	csrxchg	$r0,$r12,0xaf
1c0033f0:	03400000 	andi	$r0,$r0,0x0
1c0033f4:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0033f8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0033fc:	4c000020 	jirl	$r0,$r1,0

1c003400 <start_count>:
start_count():
1c003400:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003404:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003408:	29806076 	st.w	$r22,$r3,24(0x18)
1c00340c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003410:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003414:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003418:	29800180 	st.w	$r0,$r12,0
1c00341c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003420:	29801180 	st.w	$r0,$r12,4(0x4)
1c003424:	57ff8fff 	bl	-116(0xfffff8c) # 1c0033b0 <get_count>
1c003428:	0015008d 	move	$r13,$r4
1c00342c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003430:	2980018d 	st.w	$r13,$r12,0
1c003434:	03400000 	andi	$r0,$r0,0x0
1c003438:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00343c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003440:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003444:	4c000020 	jirl	$r0,$r1,0

1c003448 <stop_count>:
stop_count():
1c003448:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00344c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003450:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003454:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003458:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00345c:	57ff57ff 	bl	-172(0xfffff54) # 1c0033b0 <get_count>
1c003460:	0015008d 	move	$r13,$r4
1c003464:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003468:	2980118d 	st.w	$r13,$r12,4(0x4)
1c00346c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003470:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003474:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003478:	2880018c 	ld.w	$r12,$r12,0
1c00347c:	68001dac 	bltu	$r13,$r12,28(0x1c) # 1c003498 <stop_count+0x50>
1c003480:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003484:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003488:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00348c:	2880018c 	ld.w	$r12,$r12,0
1c003490:	001131ac 	sub.w	$r12,$r13,$r12
1c003494:	50002800 	b	40(0x28) # 1c0034bc <stop_count+0x74>
1c003498:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c00349c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0034a0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034a4:	2880018c 	ld.w	$r12,$r12,0
1c0034a8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0034ac:	001131ad 	sub.w	$r13,$r13,$r12
1c0034b0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034b4:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0034b8:	001031ac 	add.w	$r12,$r13,$r12
1c0034bc:	00150184 	move	$r4,$r12
1c0034c0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0034c4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0034c8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0034cc:	4c000020 	jirl	$r0,$r1,0

1c0034d0 <delay_cycle>:
delay_cycle():
1c0034d0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0034d4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0034d8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0034dc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0034e0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0034e4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0034e8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0034ec:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0034f0:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c0034f4:	00150184 	move	$r4,$r12
1c0034f8:	57ff0bff 	bl	-248(0xfffff08) # 1c003400 <start_count>
1c0034fc:	50001400 	b	20(0x14) # 1c003510 <delay_cycle+0x40>
1c003500:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c003504:	00150184 	move	$r4,$r12
1c003508:	57ff43ff 	bl	-192(0xfffff40) # 1c003448 <stop_count>
1c00350c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003510:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003514:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003518:	6bffe9ac 	bltu	$r13,$r12,-24(0x3ffe8) # 1c003500 <delay_cycle+0x30>
1c00351c:	03400000 	andi	$r0,$r0,0x0
1c003520:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003524:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003528:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00352c:	4c000020 	jirl	$r0,$r1,0

1c003530 <delay_us>:
delay_us():
1c003530:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003534:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003538:	29806076 	st.w	$r22,$r3,24(0x18)
1c00353c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003540:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003544:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003548:	00408d8c 	slli.w	$r12,$r12,0x3
1c00354c:	00150184 	move	$r4,$r12
1c003550:	57ff83ff 	bl	-128(0xfffff80) # 1c0034d0 <delay_cycle>
1c003554:	03400000 	andi	$r0,$r0,0x0
1c003558:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00355c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003560:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003564:	4c000020 	jirl	$r0,$r1,0

1c003568 <delay_ms>:
delay_ms():
1c003568:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00356c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003570:	29806076 	st.w	$r22,$r3,24(0x18)
1c003574:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003578:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00357c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003580:	1400002c 	lu12i.w	$r12,1(0x1)
1c003584:	03bd018c 	ori	$r12,$r12,0xf40
1c003588:	001c31ac 	mul.w	$r12,$r13,$r12
1c00358c:	00150184 	move	$r4,$r12
1c003590:	57ff43ff 	bl	-192(0xfffff40) # 1c0034d0 <delay_cycle>
1c003594:	03400000 	andi	$r0,$r0,0x0
1c003598:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00359c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0035a0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0035a4:	4c000020 	jirl	$r0,$r1,0

1c0035a8 <memset>:
memset():
1c0035a8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0035ac:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0035b0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0035b4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0035b8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0035bc:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0035c0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0035c4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0035c8:	50001c00 	b	28(0x1c) # 1c0035e4 <memset+0x3c>
1c0035cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0035d0:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0035d4:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0035d8:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0035dc:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0035e0:	2900018d 	st.b	$r13,$r12,0
1c0035e4:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0035e8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0035ec:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0035f0:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c0035cc <memset+0x24>
1c0035f4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0035f8:	00150184 	move	$r4,$r12
1c0035fc:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003600:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003604:	4c000020 	jirl	$r0,$r1,0

1c003608 <strcpy>:
strcpy():
1c003608:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00360c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003610:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003614:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003618:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00361c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003620:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003624:	03400000 	andi	$r0,$r0,0x0
1c003628:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00362c:	028005ac 	addi.w	$r12,$r13,1(0x1)
1c003630:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c003634:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003638:	0280058e 	addi.w	$r14,$r12,1(0x1)
1c00363c:	29bf72ce 	st.w	$r14,$r22,-36(0xfdc)
1c003640:	280001ad 	ld.b	$r13,$r13,0
1c003644:	2900018d 	st.b	$r13,$r12,0
1c003648:	2800018c 	ld.b	$r12,$r12,0
1c00364c:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c003628 <strcpy+0x20>
1c003650:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003654:	00150184 	move	$r4,$r12
1c003658:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00365c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003660:	4c000020 	jirl	$r0,$r1,0

1c003664 <strlen>:
strlen():
1c003664:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003668:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00366c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003670:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003674:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003678:	50001000 	b	16(0x10) # 1c003688 <strlen+0x24>
1c00367c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003680:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003684:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003688:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00368c:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c003690:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c003694:	2800018c 	ld.b	$r12,$r12,0
1c003698:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00367c <strlen+0x18>
1c00369c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036a0:	00150184 	move	$r4,$r12
1c0036a4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0036a8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0036ac:	4c000020 	jirl	$r0,$r1,0

1c0036b0 <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c0036b0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0036b4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0036b8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0036bc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0036c0:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c0036c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036c8:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c0036cc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0036d0:	001531ad 	or	$r13,$r13,$r12
1c0036d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036d8:	2980318d 	st.w	$r13,$r12,12(0xc)
1c0036dc:	03400000 	andi	$r0,$r0,0x0
1c0036e0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0036e4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0036e8:	4c000020 	jirl	$r0,$r1,0

1c0036ec <WDG_getOddValue>:
WDG_getOddValue():
1c0036ec:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0036f0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0036f4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0036f8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0036fc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003700:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003704:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003708:	50003800 	b	56(0x38) # 1c003740 <WDG_getOddValue+0x54>
1c00370c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003710:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003714:	001731ac 	sll.w	$r12,$r13,$r12
1c003718:	0015018d 	move	$r13,$r12
1c00371c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003720:	0014b1ac 	and	$r12,$r13,$r12
1c003724:	40001180 	beqz	$r12,16(0x10) # 1c003734 <WDG_getOddValue+0x48>
1c003728:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00372c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003730:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003734:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003738:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00373c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003740:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003744:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c003748:	67ffc58d 	bge	$r12,$r13,-60(0x3ffc4) # 1c00370c <WDG_getOddValue+0x20>
1c00374c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003750:	0340058c 	andi	$r12,$r12,0x1
1c003754:	44000d80 	bnez	$r12,12(0xc) # 1c003760 <WDG_getOddValue+0x74>
1c003758:	1400010c 	lu12i.w	$r12,8(0x8)
1c00375c:	50000800 	b	8(0x8) # 1c003764 <WDG_getOddValue+0x78>
1c003760:	0015000c 	move	$r12,$r0
1c003764:	00150184 	move	$r4,$r12
1c003768:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00376c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003770:	4c000020 	jirl	$r0,$r1,0

1c003774 <WDG_SetWatchDog>:
WDG_SetWatchDog():
1c003774:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003778:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00377c:	29806076 	st.w	$r22,$r3,24(0x18)
1c003780:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003784:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003788:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00378c:	140000ec 	lu12i.w	$r12,7(0x7)
1c003790:	03bffd8c 	ori	$r12,$r12,0xfff
1c003794:	0014b1ac 	and	$r12,$r13,$r12
1c003798:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00379c:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c0037a0:	57ff4fff 	bl	-180(0xfffff4c) # 1c0036ec <WDG_getOddValue>
1c0037a4:	0015008c 	move	$r12,$r4
1c0037a8:	0015018d 	move	$r13,$r12
1c0037ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037b0:	0015358c 	or	$r12,$r12,$r13
1c0037b4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0037b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0037bc:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c0037c0:	0396a9ad 	ori	$r13,$r13,0x5aa
1c0037c4:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c0037c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037cc:	0014300c 	nor	$r12,$r0,$r12
1c0037d0:	0040c18c 	slli.w	$r12,$r12,0x10
1c0037d4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0037d8:	001531ac 	or	$r12,$r13,$r12
1c0037dc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0037e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0037e4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0037e8:	2980c18d 	st.w	$r13,$r12,48(0x30)
1c0037ec:	03400000 	andi	$r0,$r0,0x0
1c0037f0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0037f4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0037f8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0037fc:	4c000020 	jirl	$r0,$r1,0

1c003800 <WDG_DogFeed>:
WDG_DogFeed():
1c003800:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003804:	29803076 	st.w	$r22,$r3,12(0xc)
1c003808:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00380c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003810:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c003814:	0396a9ad 	ori	$r13,$r13,0x5aa
1c003818:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c00381c:	03400000 	andi	$r0,$r0,0x0
1c003820:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003824:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003828:	4c000020 	jirl	$r0,$r1,0

1c00382c <WdgInit>:
WdgInit():
1c00382c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003830:	29803061 	st.w	$r1,$r3,12(0xc)
1c003834:	29802076 	st.w	$r22,$r3,8(0x8)
1c003838:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00383c:	150000ec 	lu12i.w	$r12,-524281(0x80007)
1c003840:	03bffd84 	ori	$r4,$r12,0xfff
1c003844:	57ff33ff 	bl	-208(0xfffff30) # 1c003774 <WDG_SetWatchDog>
1c003848:	03400000 	andi	$r0,$r0,0x0
1c00384c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003850:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003854:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003858:	4c000020 	jirl	$r0,$r1,0

1c00385c <Adc_powerOn>:
Adc_powerOn():
1c00385c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003860:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003864:	29806076 	st.w	$r22,$r3,24(0x18)
1c003868:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00386c:	57f87fff 	bl	-1924(0xffff87c) # 1c0030e8 <IsGlobalIntOpen>
1c003870:	0015008c 	move	$r12,$r4
1c003874:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003878:	57f8abff 	bl	-1880(0xffff8a8) # 1c003120 <DisableInt>
1c00387c:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c003880:	288001ac 	ld.w	$r12,$r13,0
1c003884:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c003888:	007041cc 	bstrins.w	$r12,$r14,0x10,0x10
1c00388c:	298001ac 	st.w	$r12,$r13,0
1c003890:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003894:	40000980 	beqz	$r12,8(0x8) # 1c00389c <Adc_powerOn+0x40>
1c003898:	57f8afff 	bl	-1876(0xffff8ac) # 1c003144 <EnableInt>
1c00389c:	03400000 	andi	$r0,$r0,0x0
1c0038a0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0038a4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0038a8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0038ac:	4c000020 	jirl	$r0,$r1,0

1c0038b0 <Adc_open>:
Adc_open():
1c0038b0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0038b4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0038b8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0038bc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0038c0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0038c4:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0038c8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0038cc:	001731ac 	sll.w	$r12,$r13,$r12
1c0038d0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0038d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038d8:	0340058c 	andi	$r12,$r12,0x1
1c0038dc:	40003580 	beqz	$r12,52(0x34) # 1c003910 <Adc_open+0x60>
1c0038e0:	57f80bff 	bl	-2040(0xffff808) # 1c0030e8 <IsGlobalIntOpen>
1c0038e4:	0015008c 	move	$r12,$r4
1c0038e8:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0038ec:	57f837ff 	bl	-1996(0xffff834) # 1c003120 <DisableInt>
1c0038f0:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c0038f4:	288001ac 	ld.w	$r12,$r13,0
1c0038f8:	0071440c 	bstrins.w	$r12,$r0,0x11,0x11
1c0038fc:	298001ac 	st.w	$r12,$r13,0
1c003900:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c003904:	40004980 	beqz	$r12,72(0x48) # 1c00394c <Adc_open+0x9c>
1c003908:	57f83fff 	bl	-1988(0xffff83c) # 1c003144 <EnableInt>
1c00390c:	50004000 	b	64(0x40) # 1c00394c <Adc_open+0x9c>
1c003910:	57f7dbff 	bl	-2088(0xffff7d8) # 1c0030e8 <IsGlobalIntOpen>
1c003914:	0015008c 	move	$r12,$r4
1c003918:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c00391c:	57f807ff 	bl	-2044(0xffff804) # 1c003120 <DisableInt>
1c003920:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003924:	0044918c 	srli.w	$r12,$r12,0x4
1c003928:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c00392c:	03403d8c 	andi	$r12,$r12,0xf
1c003930:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c003934:	288001ac 	ld.w	$r12,$r13,0
1c003938:	007751cc 	bstrins.w	$r12,$r14,0x17,0x14
1c00393c:	298001ac 	st.w	$r12,$r13,0
1c003940:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c003944:	40000980 	beqz	$r12,8(0x8) # 1c00394c <Adc_open+0x9c>
1c003948:	57f7ffff 	bl	-2052(0xffff7fc) # 1c003144 <EnableInt>
1c00394c:	03400000 	andi	$r0,$r0,0x0
1c003950:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003954:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003958:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00395c:	4c000020 	jirl	$r0,$r1,0

1c003960 <Adc_Measure>:
Adc_Measure():
1c003960:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003964:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003968:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00396c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003970:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c003974:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c003978:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c00397c:	50008400 	b	132(0x84) # 1c003a00 <Adc_Measure+0xa0>
1c003980:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003984:	0381b18c 	ori	$r12,$r12,0x6c
1c003988:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00398c:	038401ad 	ori	$r13,$r13,0x100
1c003990:	2980018d 	st.w	$r13,$r12,0
1c003994:	03400000 	andi	$r0,$r0,0x0
1c003998:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00399c:	0381b18c 	ori	$r12,$r12,0x6c
1c0039a0:	2880018c 	ld.w	$r12,$r12,0
1c0039a4:	0344018c 	andi	$r12,$r12,0x100
1c0039a8:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c003998 <Adc_Measure+0x38>
1c0039ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0039b0:	0381c18c 	ori	$r12,$r12,0x70
1c0039b4:	2880018c 	ld.w	$r12,$r12,0
1c0039b8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0039bc:	037ffd8c 	andi	$r12,$r12,0xfff
1c0039c0:	297fa2cc 	st.h	$r12,$r22,-24(0xfe8)
1c0039c4:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c0039c8:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0039cc:	6c00298d 	bgeu	$r12,$r13,40(0x28) # 1c0039f4 <Adc_Measure+0x94>
1c0039d0:	2a7faacd 	ld.hu	$r13,$r22,-22(0xfea)
1c0039d4:	2a7fa2cc 	ld.hu	$r12,$r22,-24(0xfe8)
1c0039d8:	001031ac 	add.w	$r12,$r13,$r12
1c0039dc:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c0039e0:	2a7fa2cd 	ld.hu	$r13,$r22,-24(0xfe8)
1c0039e4:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0039e8:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c0039f4 <Adc_Measure+0x94>
1c0039ec:	2a7fa2cc 	ld.hu	$r12,$r22,-24(0xfe8)
1c0039f0:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0039f4:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0039f8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0039fc:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003a00:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c003a04:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c003a08:	6fff798d 	bgeu	$r12,$r13,-136(0x3ff78) # 1c003980 <Adc_Measure+0x20>
1c003a0c:	2a7faacd 	ld.hu	$r13,$r22,-22(0xfea)
1c003a10:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c003a14:	001131ad 	sub.w	$r13,$r13,$r12
1c003a18:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c003a1c:	002031ae 	div.w	$r14,$r13,$r12
1c003a20:	5c000980 	bne	$r12,$r0,8(0x8) # 1c003a28 <Adc_Measure+0xc8>
1c003a24:	002a0007 	break	0x7
1c003a28:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c003a2c:	00150184 	move	$r4,$r12
1c003a30:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003a34:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003a38:	4c000020 	jirl	$r0,$r1,0

1c003a3c <Adc_getVoltage>:
Adc_getVoltage():
1c003a3c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003a40:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003a44:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003a48:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003a4c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003a50:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c003a54:	57ff0fff 	bl	-244(0xfffff0c) # 1c003960 <Adc_Measure>
1c003a58:	0015008c 	move	$r12,$r4
1c003a5c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003a60:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c003a64:	57feffff 	bl	-260(0xffffefc) # 1c003960 <Adc_Measure>
1c003a68:	0015008c 	move	$r12,$r4
1c003a6c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003a70:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003a74:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c003a78:	001c31ad 	mul.w	$r13,$r13,$r12
1c003a7c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003a80:	002131ae 	div.wu	$r14,$r13,$r12
1c003a84:	5c000980 	bne	$r12,$r0,8(0x8) # 1c003a8c <Adc_getVoltage+0x50>
1c003a88:	002a0007 	break	0x7
1c003a8c:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c003a90:	00150184 	move	$r4,$r12
1c003a94:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003a98:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003a9c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003aa0:	4c000020 	jirl	$r0,$r1,0

1c003aa4 <TOUCH_GetBaseVal>:
TOUCH_GetBaseVal():
1c003aa4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003aa8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003aac:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003ab0:	0015008c 	move	$r12,$r4
1c003ab4:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003ab8:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003abc:	0040898c 	slli.w	$r12,$r12,0x2
1c003ac0:	0015018d 	move	$r13,$r12
1c003ac4:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003ac8:	0381018c 	ori	$r12,$r12,0x40
1c003acc:	001031ac 	add.w	$r12,$r13,$r12
1c003ad0:	2880018c 	ld.w	$r12,$r12,0
1c003ad4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003ad8:	037ffd8c 	andi	$r12,$r12,0xfff
1c003adc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003ae0:	00150184 	move	$r4,$r12
1c003ae4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003ae8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003aec:	4c000020 	jirl	$r0,$r1,0

1c003af0 <TOUCH_GetCountValue>:
TOUCH_GetCountValue():
1c003af0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003af4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003af8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003afc:	0015008c 	move	$r12,$r4
1c003b00:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003b04:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003b08:	0040898c 	slli.w	$r12,$r12,0x2
1c003b0c:	0015018d 	move	$r13,$r12
1c003b10:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003b14:	0382018c 	ori	$r12,$r12,0x80
1c003b18:	001031ac 	add.w	$r12,$r13,$r12
1c003b1c:	2880018c 	ld.w	$r12,$r12,0
1c003b20:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003b24:	037ffd8c 	andi	$r12,$r12,0xfff
1c003b28:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003b2c:	00150184 	move	$r4,$r12
1c003b30:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003b34:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003b38:	4c000020 	jirl	$r0,$r1,0

1c003b3c <Printf_KeyChannel>:
Printf_KeyChannel():
1c003b3c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003b40:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003b44:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003b48:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003b4c:	0015008c 	move	$r12,$r4
1c003b50:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c003b54:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003b58:	50003400 	b	52(0x34) # 1c003b8c <Printf_KeyChannel+0x50>
1c003b5c:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c003b60:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b64:	001831ac 	sra.w	$r12,$r13,$r12
1c003b68:	0340058c 	andi	$r12,$r12,0x1
1c003b6c:	40001580 	beqz	$r12,20(0x14) # 1c003b80 <Printf_KeyChannel+0x44>
1c003b70:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c003b74:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003b78:	02af2084 	addi.w	$r4,$r4,-1080(0xbc8)
1c003b7c:	57e01bff 	bl	-8168(0xfffe018) # 1c001b94 <myprintf>
1c003b80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b84:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003b88:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003b8c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003b90:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003b94:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c003b5c <Printf_KeyChannel+0x20>
1c003b98:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003b9c:	02aea084 	addi.w	$r4,$r4,-1112(0xba8)
1c003ba0:	57dff7ff 	bl	-8204(0xfffdff4) # 1c001b94 <myprintf>
1c003ba4:	03400000 	andi	$r0,$r0,0x0
1c003ba8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003bac:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003bb0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003bb4:	4c000020 	jirl	$r0,$r1,0

1c003bb8 <Printf_KeyType>:
Printf_KeyType():
1c003bb8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003bbc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003bc0:	29806076 	st.w	$r22,$r3,24(0x18)
1c003bc4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003bc8:	0015008c 	move	$r12,$r4
1c003bcc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003bd0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003bd4:	0340058c 	andi	$r12,$r12,0x1
1c003bd8:	40001180 	beqz	$r12,16(0x10) # 1c003be8 <Printf_KeyType+0x30>
1c003bdc:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003be0:	02ada084 	addi.w	$r4,$r4,-1176(0xb68)
1c003be4:	57dfb3ff 	bl	-8272(0xfffdfb0) # 1c001b94 <myprintf>
1c003be8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003bec:	0340098c 	andi	$r12,$r12,0x2
1c003bf0:	40001180 	beqz	$r12,16(0x10) # 1c003c00 <Printf_KeyType+0x48>
1c003bf4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003bf8:	02ad6084 	addi.w	$r4,$r4,-1192(0xb58)
1c003bfc:	57df9bff 	bl	-8296(0xfffdf98) # 1c001b94 <myprintf>
1c003c00:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003c04:	0340118c 	andi	$r12,$r12,0x4
1c003c08:	40001180 	beqz	$r12,16(0x10) # 1c003c18 <Printf_KeyType+0x60>
1c003c0c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003c10:	02ad2084 	addi.w	$r4,$r4,-1208(0xb48)
1c003c14:	57df83ff 	bl	-8320(0xfffdf80) # 1c001b94 <myprintf>
1c003c18:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003c1c:	0340218c 	andi	$r12,$r12,0x8
1c003c20:	40001180 	beqz	$r12,16(0x10) # 1c003c30 <Printf_KeyType+0x78>
1c003c24:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003c28:	02acf084 	addi.w	$r4,$r4,-1220(0xb3c)
1c003c2c:	57df6bff 	bl	-8344(0xfffdf68) # 1c001b94 <myprintf>
1c003c30:	03400000 	andi	$r0,$r0,0x0
1c003c34:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003c38:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003c3c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003c40:	4c000020 	jirl	$r0,$r1,0

1c003c44 <Printf_KeyVal>:
Printf_KeyVal():
1c003c44:	02bd4063 	addi.w	$r3,$r3,-176(0xf50)
1c003c48:	2982b061 	st.w	$r1,$r3,172(0xac)
1c003c4c:	2982a076 	st.w	$r22,$r3,168(0xa8)
1c003c50:	0282c076 	addi.w	$r22,$r3,176(0xb0)
1c003c54:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003c58:	5000d800 	b	216(0xd8) # 1c003d30 <Printf_KeyVal+0xec>
1c003c5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c60:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003c64:	00150184 	move	$r4,$r12
1c003c68:	57fe8bff 	bl	-376(0xffffe88) # 1c003af0 <TOUCH_GetCountValue>
1c003c6c:	0015008c 	move	$r12,$r4
1c003c70:	0015018d 	move	$r13,$r12
1c003c74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c78:	0040898c 	slli.w	$r12,$r12,0x2
1c003c7c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003c80:	001031cc 	add.w	$r12,$r14,$r12
1c003c84:	29bdb18d 	st.w	$r13,$r12,-148(0xf6c)
1c003c88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c8c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003c90:	00150184 	move	$r4,$r12
1c003c94:	57fe13ff 	bl	-496(0xffffe10) # 1c003aa4 <TOUCH_GetBaseVal>
1c003c98:	0015008c 	move	$r12,$r4
1c003c9c:	0015018d 	move	$r13,$r12
1c003ca0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ca4:	0040898c 	slli.w	$r12,$r12,0x2
1c003ca8:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003cac:	001031cc 	add.w	$r12,$r14,$r12
1c003cb0:	29be718d 	st.w	$r13,$r12,-100(0xf9c)
1c003cb4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003cb8:	0040898c 	slli.w	$r12,$r12,0x2
1c003cbc:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003cc0:	001031ac 	add.w	$r12,$r13,$r12
1c003cc4:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003cc8:	40004980 	beqz	$r12,72(0x48) # 1c003d10 <Printf_KeyVal+0xcc>
1c003ccc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003cd0:	0040898c 	slli.w	$r12,$r12,0x2
1c003cd4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003cd8:	001031ac 	add.w	$r12,$r13,$r12
1c003cdc:	28be718d 	ld.w	$r13,$r12,-100(0xf9c)
1c003ce0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ce4:	0040898c 	slli.w	$r12,$r12,0x2
1c003ce8:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003cec:	001031cc 	add.w	$r12,$r14,$r12
1c003cf0:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003cf4:	001131ad 	sub.w	$r13,$r13,$r12
1c003cf8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003cfc:	0040898c 	slli.w	$r12,$r12,0x2
1c003d00:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003d04:	001031cc 	add.w	$r12,$r14,$r12
1c003d08:	29bf318d 	st.w	$r13,$r12,-52(0xfcc)
1c003d0c:	50001800 	b	24(0x18) # 1c003d24 <Printf_KeyVal+0xe0>
1c003d10:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d14:	0040898c 	slli.w	$r12,$r12,0x2
1c003d18:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003d1c:	001031ac 	add.w	$r12,$r13,$r12
1c003d20:	29bf3180 	st.w	$r0,$r12,-52(0xfcc)
1c003d24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d28:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003d2c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003d30:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003d34:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003d38:	67ff258d 	bge	$r12,$r13,-220(0x3ff24) # 1c003c5c <Printf_KeyVal+0x18>
1c003d3c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003d40:	02a8c084 	addi.w	$r4,$r4,-1488(0xa30)
1c003d44:	57de53ff 	bl	-8624(0xfffde50) # 1c001b94 <myprintf>
1c003d48:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003d4c:	02a93084 	addi.w	$r4,$r4,-1460(0xa4c)
1c003d50:	57de47ff 	bl	-8636(0xfffde44) # 1c001b94 <myprintf>
1c003d54:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003d58:	50003400 	b	52(0x34) # 1c003d8c <Printf_KeyVal+0x148>
1c003d5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d60:	0040898c 	slli.w	$r12,$r12,0x2
1c003d64:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003d68:	001031ac 	add.w	$r12,$r13,$r12
1c003d6c:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003d70:	00150185 	move	$r5,$r12
1c003d74:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003d78:	02a8a084 	addi.w	$r4,$r4,-1496(0xa28)
1c003d7c:	57de1bff 	bl	-8680(0xfffde18) # 1c001b94 <myprintf>
1c003d80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d84:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003d88:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003d8c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003d90:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003d94:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003d5c <Printf_KeyVal+0x118>
1c003d98:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003d9c:	02a83084 	addi.w	$r4,$r4,-1524(0xa0c)
1c003da0:	57ddf7ff 	bl	-8716(0xfffddf4) # 1c001b94 <myprintf>
1c003da4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003da8:	50003400 	b	52(0x34) # 1c003ddc <Printf_KeyVal+0x198>
1c003dac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003db0:	0040898c 	slli.w	$r12,$r12,0x2
1c003db4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003db8:	001031ac 	add.w	$r12,$r13,$r12
1c003dbc:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003dc0:	00150185 	move	$r5,$r12
1c003dc4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003dc8:	02a76084 	addi.w	$r4,$r4,-1576(0x9d8)
1c003dcc:	57ddcbff 	bl	-8760(0xfffddc8) # 1c001b94 <myprintf>
1c003dd0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003dd4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003dd8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003ddc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003de0:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003de4:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003dac <Printf_KeyVal+0x168>
1c003de8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003dec:	02a72084 	addi.w	$r4,$r4,-1592(0x9c8)
1c003df0:	57dda7ff 	bl	-8796(0xfffdda4) # 1c001b94 <myprintf>
1c003df4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003df8:	50007400 	b	116(0x74) # 1c003e6c <Printf_KeyVal+0x228>
1c003dfc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e00:	0040898c 	slli.w	$r12,$r12,0x2
1c003e04:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003e08:	001031ac 	add.w	$r12,$r13,$r12
1c003e0c:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003e10:	64002d80 	bge	$r12,$r0,44(0x2c) # 1c003e3c <Printf_KeyVal+0x1f8>
1c003e14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e18:	0040898c 	slli.w	$r12,$r12,0x2
1c003e1c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003e20:	001031ac 	add.w	$r12,$r13,$r12
1c003e24:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003e28:	00150185 	move	$r5,$r12
1c003e2c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003e30:	02a64084 	addi.w	$r4,$r4,-1648(0x990)
1c003e34:	57dd63ff 	bl	-8864(0xfffdd60) # 1c001b94 <myprintf>
1c003e38:	50002800 	b	40(0x28) # 1c003e60 <Printf_KeyVal+0x21c>
1c003e3c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e40:	0040898c 	slli.w	$r12,$r12,0x2
1c003e44:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003e48:	001031ac 	add.w	$r12,$r13,$r12
1c003e4c:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003e50:	00150185 	move	$r5,$r12
1c003e54:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003e58:	02a5c084 	addi.w	$r4,$r4,-1680(0x970)
1c003e5c:	57dd3bff 	bl	-8904(0xfffdd38) # 1c001b94 <myprintf>
1c003e60:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e64:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003e68:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003e6c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003e70:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003e74:	67ff898d 	bge	$r12,$r13,-120(0x3ff88) # 1c003dfc <Printf_KeyVal+0x1b8>
1c003e78:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003e7c:	02a32084 	addi.w	$r4,$r4,-1848(0x8c8)
1c003e80:	57dd17ff 	bl	-8940(0xfffdd14) # 1c001b94 <myprintf>
1c003e84:	03400000 	andi	$r0,$r0,0x0
1c003e88:	2882b061 	ld.w	$r1,$r3,172(0xac)
1c003e8c:	2882a076 	ld.w	$r22,$r3,168(0xa8)
1c003e90:	0282c063 	addi.w	$r3,$r3,176(0xb0)
1c003e94:	4c000020 	jirl	$r0,$r1,0

1c003e98 <TIM_GetITStatus>:
TIM_GetITStatus():
1c003e98:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003e9c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003ea0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003ea4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003ea8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003eac:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003eb0:	2880018d 	ld.w	$r13,$r12,0
1c003eb4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003eb8:	0014b1ac 	and	$r12,$r13,$r12
1c003ebc:	40001180 	beqz	$r12,16(0x10) # 1c003ecc <TIM_GetITStatus+0x34>
1c003ec0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003ec4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003ec8:	50000800 	b	8(0x8) # 1c003ed0 <TIM_GetITStatus+0x38>
1c003ecc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003ed0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ed4:	00150184 	move	$r4,$r12
1c003ed8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003edc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003ee0:	4c000020 	jirl	$r0,$r1,0

1c003ee4 <TIM_ClearIT>:
TIM_ClearIT():
1c003ee4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003ee8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003eec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003ef0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003ef4:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003ef8:	2880018e 	ld.w	$r14,$r12,0
1c003efc:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003f00:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003f04:	001535cd 	or	$r13,$r14,$r13
1c003f08:	2980018d 	st.w	$r13,$r12,0
1c003f0c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003f10:	03800d8c 	ori	$r12,$r12,0x3
1c003f14:	2a00018c 	ld.bu	$r12,$r12,0
1c003f18:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003f1c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003f20:	03800d8c 	ori	$r12,$r12,0x3
1c003f24:	038005ad 	ori	$r13,$r13,0x1
1c003f28:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003f2c:	2900018d 	st.b	$r13,$r12,0
1c003f30:	03400000 	andi	$r0,$r0,0x0
1c003f34:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003f38:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003f3c:	4c000020 	jirl	$r0,$r1,0

1c003f40 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c003f40:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003f44:	29803061 	st.w	$r1,$r3,12(0xc)
1c003f48:	29802076 	st.w	$r22,$r3,8(0x8)
1c003f4c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003f50:	1c000086 	pcaddu12i	$r6,4(0x4)
1c003f54:	02a860c6 	addi.w	$r6,$r6,-1512(0xa18)
1c003f58:	02804805 	addi.w	$r5,$r0,18(0x12)
1c003f5c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003f60:	02a1c084 	addi.w	$r4,$r4,-1936(0x870)
1c003f64:	57dc33ff 	bl	-9168(0xfffdc30) # 1c001b94 <myprintf>
1c003f68:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003f6c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003f70:	03808184 	ori	$r4,$r12,0x20
1c003f74:	57f73fff 	bl	-2244(0xffff73c) # 1c0036b0 <EXTI_ClearITPendingBit>
1c003f78:	03400000 	andi	$r0,$r0,0x0
1c003f7c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003f80:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003f84:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003f88:	4c000020 	jirl	$r0,$r1,0

1c003f8c <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c003f8c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003f90:	29803061 	st.w	$r1,$r3,12(0xc)
1c003f94:	29802076 	st.w	$r22,$r3,8(0x8)
1c003f98:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003f9c:	1c000086 	pcaddu12i	$r6,4(0x4)
1c003fa0:	02a790c6 	addi.w	$r6,$r6,-1564(0x9e4)
1c003fa4:	02805c05 	addi.w	$r5,$r0,23(0x17)
1c003fa8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003fac:	02a09084 	addi.w	$r4,$r4,-2012(0x824)
1c003fb0:	57dbe7ff 	bl	-9244(0xfffdbe4) # 1c001b94 <myprintf>
1c003fb4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c003fb8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003fbc:	03808184 	ori	$r4,$r12,0x20
1c003fc0:	57f6f3ff 	bl	-2320(0xffff6f0) # 1c0036b0 <EXTI_ClearITPendingBit>
1c003fc4:	03400000 	andi	$r0,$r0,0x0
1c003fc8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003fcc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003fd0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003fd4:	4c000020 	jirl	$r0,$r1,0

1c003fd8 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c003fd8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003fdc:	29803061 	st.w	$r1,$r3,12(0xc)
1c003fe0:	29802076 	st.w	$r22,$r3,8(0x8)
1c003fe4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003fe8:	1c000086 	pcaddu12i	$r6,4(0x4)
1c003fec:	02a6c0c6 	addi.w	$r6,$r6,-1616(0x9b0)
1c003ff0:	02807005 	addi.w	$r5,$r0,28(0x1c)
1c003ff4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003ff8:	029f6084 	addi.w	$r4,$r4,2008(0x7d8)
1c003ffc:	57db9bff 	bl	-9320(0xfffdb98) # 1c001b94 <myprintf>
1c004000:	02801005 	addi.w	$r5,$r0,4(0x4)
1c004004:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004008:	03808184 	ori	$r4,$r12,0x20
1c00400c:	57f6a7ff 	bl	-2396(0xffff6a4) # 1c0036b0 <EXTI_ClearITPendingBit>
1c004010:	03400000 	andi	$r0,$r0,0x0
1c004014:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004018:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00401c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004020:	4c000020 	jirl	$r0,$r1,0

1c004024 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c004024:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004028:	29803061 	st.w	$r1,$r3,12(0xc)
1c00402c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004030:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004034:	1c000086 	pcaddu12i	$r6,4(0x4)
1c004038:	02a5f0c6 	addi.w	$r6,$r6,-1668(0x97c)
1c00403c:	02808405 	addi.w	$r5,$r0,33(0x21)
1c004040:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004044:	029e3084 	addi.w	$r4,$r4,1932(0x78c)
1c004048:	57db4fff 	bl	-9396(0xfffdb4c) # 1c001b94 <myprintf>
1c00404c:	02802005 	addi.w	$r5,$r0,8(0x8)
1c004050:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004054:	03808184 	ori	$r4,$r12,0x20
1c004058:	57f65bff 	bl	-2472(0xffff658) # 1c0036b0 <EXTI_ClearITPendingBit>
1c00405c:	03400000 	andi	$r0,$r0,0x0
1c004060:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004064:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004068:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00406c:	4c000020 	jirl	$r0,$r1,0

1c004070 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c004070:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004074:	29803061 	st.w	$r1,$r3,12(0xc)
1c004078:	29802076 	st.w	$r22,$r3,8(0x8)
1c00407c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004080:	1c000086 	pcaddu12i	$r6,4(0x4)
1c004084:	02a520c6 	addi.w	$r6,$r6,-1720(0x948)
1c004088:	02809805 	addi.w	$r5,$r0,38(0x26)
1c00408c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004090:	029d0084 	addi.w	$r4,$r4,1856(0x740)
1c004094:	57db03ff 	bl	-9472(0xfffdb00) # 1c001b94 <myprintf>
1c004098:	02804005 	addi.w	$r5,$r0,16(0x10)
1c00409c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0040a0:	03808184 	ori	$r4,$r12,0x20
1c0040a4:	57f60fff 	bl	-2548(0xffff60c) # 1c0036b0 <EXTI_ClearITPendingBit>
1c0040a8:	03400000 	andi	$r0,$r0,0x0
1c0040ac:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0040b0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0040b4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0040b8:	4c000020 	jirl	$r0,$r1,0

1c0040bc <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c0040bc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0040c0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0040c4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0040c8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0040cc:	1c000086 	pcaddu12i	$r6,4(0x4)
1c0040d0:	02a450c6 	addi.w	$r6,$r6,-1772(0x914)
1c0040d4:	0280ac05 	addi.w	$r5,$r0,43(0x2b)
1c0040d8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0040dc:	029bd084 	addi.w	$r4,$r4,1780(0x6f4)
1c0040e0:	57dab7ff 	bl	-9548(0xfffdab4) # 1c001b94 <myprintf>
1c0040e4:	02808005 	addi.w	$r5,$r0,32(0x20)
1c0040e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0040ec:	03808184 	ori	$r4,$r12,0x20
1c0040f0:	57f5c3ff 	bl	-2624(0xffff5c0) # 1c0036b0 <EXTI_ClearITPendingBit>
1c0040f4:	03400000 	andi	$r0,$r0,0x0
1c0040f8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0040fc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004100:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004104:	4c000020 	jirl	$r0,$r1,0

1c004108 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c004108:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00410c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004110:	29802076 	st.w	$r22,$r3,8(0x8)
1c004114:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004118:	1c000086 	pcaddu12i	$r6,4(0x4)
1c00411c:	02a380c6 	addi.w	$r6,$r6,-1824(0x8e0)
1c004120:	0280c005 	addi.w	$r5,$r0,48(0x30)
1c004124:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004128:	029aa084 	addi.w	$r4,$r4,1704(0x6a8)
1c00412c:	57da6bff 	bl	-9624(0xfffda68) # 1c001b94 <myprintf>
1c004130:	02810005 	addi.w	$r5,$r0,64(0x40)
1c004134:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004138:	03808184 	ori	$r4,$r12,0x20
1c00413c:	57f577ff 	bl	-2700(0xffff574) # 1c0036b0 <EXTI_ClearITPendingBit>
1c004140:	03400000 	andi	$r0,$r0,0x0
1c004144:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004148:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00414c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004150:	4c000020 	jirl	$r0,$r1,0

1c004154 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c004154:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004158:	29803061 	st.w	$r1,$r3,12(0xc)
1c00415c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004160:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004164:	1c000086 	pcaddu12i	$r6,4(0x4)
1c004168:	02a2b0c6 	addi.w	$r6,$r6,-1876(0x8ac)
1c00416c:	0280d405 	addi.w	$r5,$r0,53(0x35)
1c004170:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004174:	02997084 	addi.w	$r4,$r4,1628(0x65c)
1c004178:	57da1fff 	bl	-9700(0xfffda1c) # 1c001b94 <myprintf>
1c00417c:	02820005 	addi.w	$r5,$r0,128(0x80)
1c004180:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004184:	03808184 	ori	$r4,$r12,0x20
1c004188:	57f52bff 	bl	-2776(0xffff528) # 1c0036b0 <EXTI_ClearITPendingBit>
1c00418c:	03400000 	andi	$r0,$r0,0x0
1c004190:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004194:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004198:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00419c:	4c000020 	jirl	$r0,$r1,0

1c0041a0 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c0041a0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0041a4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0041a8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0041ac:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0041b0:	1c000086 	pcaddu12i	$r6,4(0x4)
1c0041b4:	02a1e0c6 	addi.w	$r6,$r6,-1928(0x878)
1c0041b8:	0280e805 	addi.w	$r5,$r0,58(0x3a)
1c0041bc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0041c0:	02984084 	addi.w	$r4,$r4,1552(0x610)
1c0041c4:	57d9d3ff 	bl	-9776(0xfffd9d0) # 1c001b94 <myprintf>
1c0041c8:	02840005 	addi.w	$r5,$r0,256(0x100)
1c0041cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0041d0:	03808184 	ori	$r4,$r12,0x20
1c0041d4:	57f4dfff 	bl	-2852(0xffff4dc) # 1c0036b0 <EXTI_ClearITPendingBit>
1c0041d8:	03400000 	andi	$r0,$r0,0x0
1c0041dc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0041e0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0041e4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0041e8:	4c000020 	jirl	$r0,$r1,0

1c0041ec <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c0041ec:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0041f0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0041f4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0041f8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0041fc:	1c000086 	pcaddu12i	$r6,4(0x4)
1c004200:	02a110c6 	addi.w	$r6,$r6,-1980(0x844)
1c004204:	0280fc05 	addi.w	$r5,$r0,63(0x3f)
1c004208:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00420c:	02971084 	addi.w	$r4,$r4,1476(0x5c4)
1c004210:	57d987ff 	bl	-9852(0xfffd984) # 1c001b94 <myprintf>
1c004214:	02880005 	addi.w	$r5,$r0,512(0x200)
1c004218:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00421c:	03808184 	ori	$r4,$r12,0x20
1c004220:	57f493ff 	bl	-2928(0xffff490) # 1c0036b0 <EXTI_ClearITPendingBit>
1c004224:	03400000 	andi	$r0,$r0,0x0
1c004228:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00422c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004230:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004234:	4c000020 	jirl	$r0,$r1,0

1c004238 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c004238:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00423c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004240:	29802076 	st.w	$r22,$r3,8(0x8)
1c004244:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004248:	1c000086 	pcaddu12i	$r6,4(0x4)
1c00424c:	02a040c6 	addi.w	$r6,$r6,-2032(0x810)
1c004250:	02811005 	addi.w	$r5,$r0,68(0x44)
1c004254:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004258:	0295e084 	addi.w	$r4,$r4,1400(0x578)
1c00425c:	57d93bff 	bl	-9928(0xfffd938) # 1c001b94 <myprintf>
1c004260:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c004264:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004268:	03808184 	ori	$r4,$r12,0x20
1c00426c:	57f447ff 	bl	-3004(0xffff444) # 1c0036b0 <EXTI_ClearITPendingBit>
1c004270:	03400000 	andi	$r0,$r0,0x0
1c004274:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004278:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00427c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004280:	4c000020 	jirl	$r0,$r1,0

1c004284 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c004284:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004288:	29803061 	st.w	$r1,$r3,12(0xc)
1c00428c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004290:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004294:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004298:	029f70c6 	addi.w	$r6,$r6,2012(0x7dc)
1c00429c:	02812405 	addi.w	$r5,$r0,73(0x49)
1c0042a0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0042a4:	0294b084 	addi.w	$r4,$r4,1324(0x52c)
1c0042a8:	57d8efff 	bl	-10004(0xfffd8ec) # 1c001b94 <myprintf>
1c0042ac:	03a00005 	ori	$r5,$r0,0x800
1c0042b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0042b4:	03808184 	ori	$r4,$r12,0x20
1c0042b8:	57f3fbff 	bl	-3080(0xffff3f8) # 1c0036b0 <EXTI_ClearITPendingBit>
1c0042bc:	03400000 	andi	$r0,$r0,0x0
1c0042c0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0042c4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0042c8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0042cc:	4c000020 	jirl	$r0,$r1,0

1c0042d0 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c0042d0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0042d4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0042d8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0042dc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0042e0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0042e4:	029ea0c6 	addi.w	$r6,$r6,1960(0x7a8)
1c0042e8:	02813805 	addi.w	$r5,$r0,78(0x4e)
1c0042ec:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0042f0:	02938084 	addi.w	$r4,$r4,1248(0x4e0)
1c0042f4:	57d8a3ff 	bl	-10080(0xfffd8a0) # 1c001b94 <myprintf>
1c0042f8:	14000025 	lu12i.w	$r5,1(0x1)
1c0042fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004300:	03808184 	ori	$r4,$r12,0x20
1c004304:	57f3afff 	bl	-3156(0xffff3ac) # 1c0036b0 <EXTI_ClearITPendingBit>
1c004308:	03400000 	andi	$r0,$r0,0x0
1c00430c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004310:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004314:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004318:	4c000020 	jirl	$r0,$r1,0

1c00431c <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c00431c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004320:	29803061 	st.w	$r1,$r3,12(0xc)
1c004324:	29802076 	st.w	$r22,$r3,8(0x8)
1c004328:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00432c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004330:	029dd0c6 	addi.w	$r6,$r6,1908(0x774)
1c004334:	02814c05 	addi.w	$r5,$r0,83(0x53)
1c004338:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00433c:	02925084 	addi.w	$r4,$r4,1172(0x494)
1c004340:	57d857ff 	bl	-10156(0xfffd854) # 1c001b94 <myprintf>
1c004344:	14000045 	lu12i.w	$r5,2(0x2)
1c004348:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00434c:	03808184 	ori	$r4,$r12,0x20
1c004350:	57f363ff 	bl	-3232(0xffff360) # 1c0036b0 <EXTI_ClearITPendingBit>
1c004354:	03400000 	andi	$r0,$r0,0x0
1c004358:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00435c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004360:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004364:	4c000020 	jirl	$r0,$r1,0

1c004368 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c004368:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00436c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004370:	29802076 	st.w	$r22,$r3,8(0x8)
1c004374:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004378:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00437c:	029d00c6 	addi.w	$r6,$r6,1856(0x740)
1c004380:	02816005 	addi.w	$r5,$r0,88(0x58)
1c004384:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004388:	02912084 	addi.w	$r4,$r4,1096(0x448)
1c00438c:	57d80bff 	bl	-10232(0xfffd808) # 1c001b94 <myprintf>
1c004390:	14000085 	lu12i.w	$r5,4(0x4)
1c004394:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004398:	03808184 	ori	$r4,$r12,0x20
1c00439c:	57f317ff 	bl	-3308(0xffff314) # 1c0036b0 <EXTI_ClearITPendingBit>
1c0043a0:	03400000 	andi	$r0,$r0,0x0
1c0043a4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0043a8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0043ac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0043b0:	4c000020 	jirl	$r0,$r1,0

1c0043b4 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c0043b4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0043b8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0043bc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0043c0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0043c4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0043c8:	029c30c6 	addi.w	$r6,$r6,1804(0x70c)
1c0043cc:	02817405 	addi.w	$r5,$r0,93(0x5d)
1c0043d0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0043d4:	028ff084 	addi.w	$r4,$r4,1020(0x3fc)
1c0043d8:	57d7bfff 	bl	-10308(0xfffd7bc) # 1c001b94 <myprintf>
1c0043dc:	14000105 	lu12i.w	$r5,8(0x8)
1c0043e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0043e4:	03808184 	ori	$r4,$r12,0x20
1c0043e8:	57f2cbff 	bl	-3384(0xffff2c8) # 1c0036b0 <EXTI_ClearITPendingBit>
1c0043ec:	03400000 	andi	$r0,$r0,0x0
1c0043f0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0043f4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0043f8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0043fc:	4c000020 	jirl	$r0,$r1,0

1c004400 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c004400:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004404:	29803061 	st.w	$r1,$r3,12(0xc)
1c004408:	29802076 	st.w	$r22,$r3,8(0x8)
1c00440c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004410:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004414:	029b60c6 	addi.w	$r6,$r6,1752(0x6d8)
1c004418:	02818c05 	addi.w	$r5,$r0,99(0x63)
1c00441c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004420:	028ec084 	addi.w	$r4,$r4,944(0x3b0)
1c004424:	57d773ff 	bl	-10384(0xfffd770) # 1c001b94 <myprintf>
1c004428:	14000205 	lu12i.w	$r5,16(0x10)
1c00442c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004430:	03808184 	ori	$r4,$r12,0x20
1c004434:	57f27fff 	bl	-3460(0xffff27c) # 1c0036b0 <EXTI_ClearITPendingBit>
1c004438:	03400000 	andi	$r0,$r0,0x0
1c00443c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004440:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004444:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004448:	4c000020 	jirl	$r0,$r1,0

1c00444c <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c00444c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004450:	29803061 	st.w	$r1,$r3,12(0xc)
1c004454:	29802076 	st.w	$r22,$r3,8(0x8)
1c004458:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00445c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004460:	029a90c6 	addi.w	$r6,$r6,1700(0x6a4)
1c004464:	0281a005 	addi.w	$r5,$r0,104(0x68)
1c004468:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00446c:	028d9084 	addi.w	$r4,$r4,868(0x364)
1c004470:	57d727ff 	bl	-10460(0xfffd724) # 1c001b94 <myprintf>
1c004474:	14000405 	lu12i.w	$r5,32(0x20)
1c004478:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00447c:	03808184 	ori	$r4,$r12,0x20
1c004480:	57f233ff 	bl	-3536(0xffff230) # 1c0036b0 <EXTI_ClearITPendingBit>
1c004484:	03400000 	andi	$r0,$r0,0x0
1c004488:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00448c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004490:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004494:	4c000020 	jirl	$r0,$r1,0

1c004498 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c004498:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00449c:	29803061 	st.w	$r1,$r3,12(0xc)
1c0044a0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0044a4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0044a8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0044ac:	0299c0c6 	addi.w	$r6,$r6,1648(0x670)
1c0044b0:	0281b405 	addi.w	$r5,$r0,109(0x6d)
1c0044b4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0044b8:	028c6084 	addi.w	$r4,$r4,792(0x318)
1c0044bc:	57d6dbff 	bl	-10536(0xfffd6d8) # 1c001b94 <myprintf>
1c0044c0:	14000805 	lu12i.w	$r5,64(0x40)
1c0044c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0044c8:	03808184 	ori	$r4,$r12,0x20
1c0044cc:	57f1e7ff 	bl	-3612(0xffff1e4) # 1c0036b0 <EXTI_ClearITPendingBit>
1c0044d0:	03400000 	andi	$r0,$r0,0x0
1c0044d4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0044d8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0044dc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0044e0:	4c000020 	jirl	$r0,$r1,0

1c0044e4 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c0044e4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0044e8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0044ec:	29802076 	st.w	$r22,$r3,8(0x8)
1c0044f0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0044f4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0044f8:	0298f0c6 	addi.w	$r6,$r6,1596(0x63c)
1c0044fc:	0281c805 	addi.w	$r5,$r0,114(0x72)
1c004500:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004504:	028b3084 	addi.w	$r4,$r4,716(0x2cc)
1c004508:	57d68fff 	bl	-10612(0xfffd68c) # 1c001b94 <myprintf>
1c00450c:	14001005 	lu12i.w	$r5,128(0x80)
1c004510:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004514:	03808184 	ori	$r4,$r12,0x20
1c004518:	57f19bff 	bl	-3688(0xffff198) # 1c0036b0 <EXTI_ClearITPendingBit>
1c00451c:	03400000 	andi	$r0,$r0,0x0
1c004520:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004524:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004528:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00452c:	4c000020 	jirl	$r0,$r1,0

1c004530 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c004530:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004534:	29803061 	st.w	$r1,$r3,12(0xc)
1c004538:	29802076 	st.w	$r22,$r3,8(0x8)
1c00453c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004540:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004544:	029820c6 	addi.w	$r6,$r6,1544(0x608)
1c004548:	0281dc05 	addi.w	$r5,$r0,119(0x77)
1c00454c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004550:	028a0084 	addi.w	$r4,$r4,640(0x280)
1c004554:	57d643ff 	bl	-10688(0xfffd640) # 1c001b94 <myprintf>
1c004558:	14002005 	lu12i.w	$r5,256(0x100)
1c00455c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004560:	03808184 	ori	$r4,$r12,0x20
1c004564:	57f14fff 	bl	-3764(0xffff14c) # 1c0036b0 <EXTI_ClearITPendingBit>
1c004568:	03400000 	andi	$r0,$r0,0x0
1c00456c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004570:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004574:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004578:	4c000020 	jirl	$r0,$r1,0

1c00457c <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c00457c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004580:	29803061 	st.w	$r1,$r3,12(0xc)
1c004584:	29802076 	st.w	$r22,$r3,8(0x8)
1c004588:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00458c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004590:	029750c6 	addi.w	$r6,$r6,1492(0x5d4)
1c004594:	0281f005 	addi.w	$r5,$r0,124(0x7c)
1c004598:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00459c:	0288d084 	addi.w	$r4,$r4,564(0x234)
1c0045a0:	57d5f7ff 	bl	-10764(0xfffd5f4) # 1c001b94 <myprintf>
1c0045a4:	14004005 	lu12i.w	$r5,512(0x200)
1c0045a8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0045ac:	03808184 	ori	$r4,$r12,0x20
1c0045b0:	57f103ff 	bl	-3840(0xffff100) # 1c0036b0 <EXTI_ClearITPendingBit>
1c0045b4:	03400000 	andi	$r0,$r0,0x0
1c0045b8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0045bc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0045c0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0045c4:	4c000020 	jirl	$r0,$r1,0

1c0045c8 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c0045c8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045cc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045d0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045d4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045d8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0045dc:	029680c6 	addi.w	$r6,$r6,1440(0x5a0)
1c0045e0:	02820405 	addi.w	$r5,$r0,129(0x81)
1c0045e4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0045e8:	0287a084 	addi.w	$r4,$r4,488(0x1e8)
1c0045ec:	57d5abff 	bl	-10840(0xfffd5a8) # 1c001b94 <myprintf>
1c0045f0:	14008005 	lu12i.w	$r5,1024(0x400)
1c0045f4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0045f8:	03808184 	ori	$r4,$r12,0x20
1c0045fc:	57f0b7ff 	bl	-3916(0xffff0b4) # 1c0036b0 <EXTI_ClearITPendingBit>
1c004600:	03400000 	andi	$r0,$r0,0x0
1c004604:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004608:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00460c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004610:	4c000020 	jirl	$r0,$r1,0

1c004614 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c004614:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004618:	29803061 	st.w	$r1,$r3,12(0xc)
1c00461c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004620:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004624:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004628:	0295b0c6 	addi.w	$r6,$r6,1388(0x56c)
1c00462c:	02821805 	addi.w	$r5,$r0,134(0x86)
1c004630:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004634:	02867084 	addi.w	$r4,$r4,412(0x19c)
1c004638:	57d55fff 	bl	-10916(0xfffd55c) # 1c001b94 <myprintf>
1c00463c:	14010005 	lu12i.w	$r5,2048(0x800)
1c004640:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004644:	03808184 	ori	$r4,$r12,0x20
1c004648:	57f06bff 	bl	-3992(0xffff068) # 1c0036b0 <EXTI_ClearITPendingBit>
1c00464c:	03400000 	andi	$r0,$r0,0x0
1c004650:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004654:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004658:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00465c:	4c000020 	jirl	$r0,$r1,0

1c004660 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c004660:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004664:	29803061 	st.w	$r1,$r3,12(0xc)
1c004668:	29802076 	st.w	$r22,$r3,8(0x8)
1c00466c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004670:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004674:	0294e0c6 	addi.w	$r6,$r6,1336(0x538)
1c004678:	02822c05 	addi.w	$r5,$r0,139(0x8b)
1c00467c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004680:	02854084 	addi.w	$r4,$r4,336(0x150)
1c004684:	57d513ff 	bl	-10992(0xfffd510) # 1c001b94 <myprintf>
1c004688:	14020005 	lu12i.w	$r5,4096(0x1000)
1c00468c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004690:	03808184 	ori	$r4,$r12,0x20
1c004694:	57f01fff 	bl	-4068(0xffff01c) # 1c0036b0 <EXTI_ClearITPendingBit>
1c004698:	03400000 	andi	$r0,$r0,0x0
1c00469c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0046a0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0046a4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0046a8:	4c000020 	jirl	$r0,$r1,0

1c0046ac <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c0046ac:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0046b0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0046b4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0046b8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0046bc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0046c0:	029410c6 	addi.w	$r6,$r6,1284(0x504)
1c0046c4:	02824005 	addi.w	$r5,$r0,144(0x90)
1c0046c8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0046cc:	02841084 	addi.w	$r4,$r4,260(0x104)
1c0046d0:	57d4c7ff 	bl	-11068(0xfffd4c4) # 1c001b94 <myprintf>
1c0046d4:	14040005 	lu12i.w	$r5,8192(0x2000)
1c0046d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0046dc:	03808184 	ori	$r4,$r12,0x20
1c0046e0:	57efd3ff 	bl	-4144(0xfffefd0) # 1c0036b0 <EXTI_ClearITPendingBit>
1c0046e4:	03400000 	andi	$r0,$r0,0x0
1c0046e8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0046ec:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0046f0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0046f4:	4c000020 	jirl	$r0,$r1,0

1c0046f8 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c0046f8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0046fc:	29803061 	st.w	$r1,$r3,12(0xc)
1c004700:	29802076 	st.w	$r22,$r3,8(0x8)
1c004704:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004708:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00470c:	029340c6 	addi.w	$r6,$r6,1232(0x4d0)
1c004710:	02825405 	addi.w	$r5,$r0,149(0x95)
1c004714:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004718:	0282e084 	addi.w	$r4,$r4,184(0xb8)
1c00471c:	57d47bff 	bl	-11144(0xfffd478) # 1c001b94 <myprintf>
1c004720:	14080005 	lu12i.w	$r5,16384(0x4000)
1c004724:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004728:	03808184 	ori	$r4,$r12,0x20
1c00472c:	57ef87ff 	bl	-4220(0xfffef84) # 1c0036b0 <EXTI_ClearITPendingBit>
1c004730:	03400000 	andi	$r0,$r0,0x0
1c004734:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004738:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00473c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004740:	4c000020 	jirl	$r0,$r1,0

1c004744 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c004744:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004748:	29803061 	st.w	$r1,$r3,12(0xc)
1c00474c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004750:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004754:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004758:	029270c6 	addi.w	$r6,$r6,1180(0x49c)
1c00475c:	02826805 	addi.w	$r5,$r0,154(0x9a)
1c004760:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004764:	0281b084 	addi.w	$r4,$r4,108(0x6c)
1c004768:	57d42fff 	bl	-11220(0xfffd42c) # 1c001b94 <myprintf>
1c00476c:	14100005 	lu12i.w	$r5,32768(0x8000)
1c004770:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004774:	03808184 	ori	$r4,$r12,0x20
1c004778:	57ef3bff 	bl	-4296(0xfffef38) # 1c0036b0 <EXTI_ClearITPendingBit>
1c00477c:	03400000 	andi	$r0,$r0,0x0
1c004780:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004784:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004788:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00478c:	4c000020 	jirl	$r0,$r1,0

1c004790 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c004790:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004794:	29803061 	st.w	$r1,$r3,12(0xc)
1c004798:	29802076 	st.w	$r22,$r3,8(0x8)
1c00479c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0047a0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0047a4:	0291a0c6 	addi.w	$r6,$r6,1128(0x468)
1c0047a8:	02827c05 	addi.w	$r5,$r0,159(0x9f)
1c0047ac:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0047b0:	02808084 	addi.w	$r4,$r4,32(0x20)
1c0047b4:	57d3e3ff 	bl	-11296(0xfffd3e0) # 1c001b94 <myprintf>
1c0047b8:	14200005 	lu12i.w	$r5,65536(0x10000)
1c0047bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0047c0:	03808184 	ori	$r4,$r12,0x20
1c0047c4:	57eeefff 	bl	-4372(0xfffeeec) # 1c0036b0 <EXTI_ClearITPendingBit>
1c0047c8:	03400000 	andi	$r0,$r0,0x0
1c0047cc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0047d0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0047d4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0047d8:	4c000020 	jirl	$r0,$r1,0

1c0047dc <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c0047dc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0047e0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0047e4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0047e8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0047ec:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0047f0:	0290d0c6 	addi.w	$r6,$r6,1076(0x434)
1c0047f4:	02829405 	addi.w	$r5,$r0,165(0xa5)
1c0047f8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0047fc:	02bf5084 	addi.w	$r4,$r4,-44(0xfd4)
1c004800:	57d397ff 	bl	-11372(0xfffd394) # 1c001b94 <myprintf>
1c004804:	14400005 	lu12i.w	$r5,131072(0x20000)
1c004808:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00480c:	03808184 	ori	$r4,$r12,0x20
1c004810:	57eea3ff 	bl	-4448(0xfffeea0) # 1c0036b0 <EXTI_ClearITPendingBit>
1c004814:	03400000 	andi	$r0,$r0,0x0
1c004818:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00481c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004820:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004824:	4c000020 	jirl	$r0,$r1,0

1c004828 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c004828:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00482c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004830:	29802076 	st.w	$r22,$r3,8(0x8)
1c004834:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004838:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00483c:	029000c6 	addi.w	$r6,$r6,1024(0x400)
1c004840:	0282a805 	addi.w	$r5,$r0,170(0xaa)
1c004844:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004848:	02be2084 	addi.w	$r4,$r4,-120(0xf88)
1c00484c:	57d34bff 	bl	-11448(0xfffd348) # 1c001b94 <myprintf>
1c004850:	14800005 	lu12i.w	$r5,262144(0x40000)
1c004854:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004858:	03808184 	ori	$r4,$r12,0x20
1c00485c:	57ee57ff 	bl	-4524(0xfffee54) # 1c0036b0 <EXTI_ClearITPendingBit>
1c004860:	03400000 	andi	$r0,$r0,0x0
1c004864:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004868:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00486c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004870:	4c000020 	jirl	$r0,$r1,0

1c004874 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c004874:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004878:	29803061 	st.w	$r1,$r3,12(0xc)
1c00487c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004880:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004884:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004888:	028f30c6 	addi.w	$r6,$r6,972(0x3cc)
1c00488c:	0282bc05 	addi.w	$r5,$r0,175(0xaf)
1c004890:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004894:	02bcf084 	addi.w	$r4,$r4,-196(0xf3c)
1c004898:	57d2ffff 	bl	-11524(0xfffd2fc) # 1c001b94 <myprintf>
1c00489c:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c0048a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0048a4:	03808184 	ori	$r4,$r12,0x20
1c0048a8:	57ee0bff 	bl	-4600(0xfffee08) # 1c0036b0 <EXTI_ClearITPendingBit>
1c0048ac:	03400000 	andi	$r0,$r0,0x0
1c0048b0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0048b4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0048b8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0048bc:	4c000020 	jirl	$r0,$r1,0

1c0048c0 <ext_handler>:
ext_handler():
1c0048c0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0048c4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0048c8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0048cc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0048d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0048d4:	0380f18c 	ori	$r12,$r12,0x3c
1c0048d8:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c0048dc:	2980018d 	st.w	$r13,$r12,0
1c0048e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0048e4:	0380818c 	ori	$r12,$r12,0x20
1c0048e8:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c0048ec:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0048f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0048f4:	0380818c 	ori	$r12,$r12,0x20
1c0048f8:	2880018c 	ld.w	$r12,$r12,0
1c0048fc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004900:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004904:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004908:	0014b1ac 	and	$r12,$r13,$r12
1c00490c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004910:	03400000 	andi	$r0,$r0,0x0
1c004914:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004918:	50004000 	b	64(0x40) # 1c004958 <ext_handler+0x98>
1c00491c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004920:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004924:	0017b1ac 	srl.w	$r12,$r13,$r12
1c004928:	0340058c 	andi	$r12,$r12,0x1
1c00492c:	40002180 	beqz	$r12,32(0x20) # 1c00494c <ext_handler+0x8c>
1c004930:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c004934:	02bdd1ad 	addi.w	$r13,$r13,-140(0xf74)
1c004938:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00493c:	0040898c 	slli.w	$r12,$r12,0x2
1c004940:	001031ac 	add.w	$r12,$r13,$r12
1c004944:	2880018c 	ld.w	$r12,$r12,0
1c004948:	4c000181 	jirl	$r1,$r12,0
1c00494c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004950:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004954:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004958:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00495c:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c004960:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c00491c <ext_handler+0x5c>
1c004964:	03400000 	andi	$r0,$r0,0x0
1c004968:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00496c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004970:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004974:	4c000020 	jirl	$r0,$r1,0

1c004978 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c004978:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00497c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004980:	29806076 	st.w	$r22,$r3,24(0x18)
1c004984:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004988:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00498c:	0380f18c 	ori	$r12,$r12,0x3c
1c004990:	1400020d 	lu12i.w	$r13,16(0x10)
1c004994:	2980018d 	st.w	$r13,$r12,0
1c004998:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00499c:	0380118c 	ori	$r12,$r12,0x4
1c0049a0:	2880018c 	ld.w	$r12,$r12,0
1c0049a4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0049a8:	57ee5bff 	bl	-4520(0xfffee58) # 1c003800 <WDG_DogFeed>
1c0049ac:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0049b0:	57e7ffff 	bl	-6148(0xfffe7fc) # 1c0031ac <Wake_Set>
1c0049b4:	03400000 	andi	$r0,$r0,0x0
1c0049b8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0049bc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0049c0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0049c4:	4c000020 	jirl	$r0,$r1,0

1c0049c8 <TOUCH>:
TOUCH():
1c0049c8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0049cc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0049d0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0049d4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0049d8:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0049dc:	0380118c 	ori	$r12,$r12,0x4
1c0049e0:	2880018c 	ld.w	$r12,$r12,0
1c0049e4:	0044c18c 	srli.w	$r12,$r12,0x10
1c0049e8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0049ec:	037ffd8c 	andi	$r12,$r12,0xfff
1c0049f0:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0049f4:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0049f8:	0380118c 	ori	$r12,$r12,0x4
1c0049fc:	2880018c 	ld.w	$r12,$r12,0
1c004a00:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004a04:	03403d8c 	andi	$r12,$r12,0xf
1c004a08:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c004a0c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a10:	0380f18c 	ori	$r12,$r12,0x3c
1c004a14:	1400040d 	lu12i.w	$r13,32(0x20)
1c004a18:	2980018d 	st.w	$r13,$r12,0
1c004a1c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004a20:	0380118c 	ori	$r12,$r12,0x4
1c004a24:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c004a28:	2980018d 	st.w	$r13,$r12,0
1c004a2c:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c004a30:	00150184 	move	$r4,$r12
1c004a34:	57f187ff 	bl	-3708(0xffff184) # 1c003bb8 <Printf_KeyType>
1c004a38:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c004a3c:	00150184 	move	$r4,$r12
1c004a40:	57f0ffff 	bl	-3844(0xffff0fc) # 1c003b3c <Printf_KeyChannel>
1c004a44:	57f203ff 	bl	-3584(0xffff200) # 1c003c44 <Printf_KeyVal>
1c004a48:	03400000 	andi	$r0,$r0,0x0
1c004a4c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004a50:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004a54:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004a58:	4c000020 	jirl	$r0,$r1,0

1c004a5c <UART2_INT>:
UART2_INT():
1c004a5c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004a60:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004a64:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004a68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a6c:	0380f18c 	ori	$r12,$r12,0x3c
1c004a70:	1400080d 	lu12i.w	$r13,64(0x40)
1c004a74:	2980018d 	st.w	$r13,$r12,0
1c004a78:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c004a7c:	0380098c 	ori	$r12,$r12,0x2
1c004a80:	2a00018c 	ld.bu	$r12,$r12,0
1c004a84:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004a88:	03400000 	andi	$r0,$r0,0x0
1c004a8c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004a90:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004a94:	4c000020 	jirl	$r0,$r1,0

1c004a98 <BAT_FAIL>:
BAT_FAIL():
1c004a98:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004a9c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004aa0:	29806076 	st.w	$r22,$r3,24(0x18)
1c004aa4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004aa8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004aac:	0380118c 	ori	$r12,$r12,0x4
1c004ab0:	2880018c 	ld.w	$r12,$r12,0
1c004ab4:	0044cd8c 	srli.w	$r12,$r12,0x13
1c004ab8:	03407d8c 	andi	$r12,$r12,0x1f
1c004abc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004ac0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ac4:	0380118c 	ori	$r12,$r12,0x4
1c004ac8:	2880018e 	ld.w	$r14,$r12,0
1c004acc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ad0:	0380f18c 	ori	$r12,$r12,0x3c
1c004ad4:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c004ad8:	0014b5cd 	and	$r13,$r14,$r13
1c004adc:	2980018d 	st.w	$r13,$r12,0
1c004ae0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004ae4:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004ae8:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c004b58 <BAT_FAIL+0xc0>
1c004aec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004af0:	0040898d 	slli.w	$r13,$r12,0x2
1c004af4:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c004af8:	02b8c18c 	addi.w	$r12,$r12,-464(0xe30)
1c004afc:	001031ac 	add.w	$r12,$r13,$r12
1c004b00:	2880018c 	ld.w	$r12,$r12,0
1c004b04:	4c000180 	jirl	$r0,$r12,0
1c004b08:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004b0c:	02b42084 	addi.w	$r4,$r4,-760(0xd08)
1c004b10:	57d087ff 	bl	-12156(0xfffd084) # 1c001b94 <myprintf>
1c004b14:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b18:	0380118c 	ori	$r12,$r12,0x4
1c004b1c:	29800180 	st.w	$r0,$r12,0
1c004b20:	50003c00 	b	60(0x3c) # 1c004b5c <BAT_FAIL+0xc4>
1c004b24:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004b28:	02b45084 	addi.w	$r4,$r4,-748(0xd14)
1c004b2c:	57d06bff 	bl	-12184(0xfffd068) # 1c001b94 <myprintf>
1c004b30:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b34:	0380118c 	ori	$r12,$r12,0x4
1c004b38:	2880018e 	ld.w	$r14,$r12,0
1c004b3c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b40:	0380118c 	ori	$r12,$r12,0x4
1c004b44:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c004b48:	03bffdad 	ori	$r13,$r13,0xfff
1c004b4c:	0014b5cd 	and	$r13,$r14,$r13
1c004b50:	2980018d 	st.w	$r13,$r12,0
1c004b54:	50000800 	b	8(0x8) # 1c004b5c <BAT_FAIL+0xc4>
1c004b58:	03400000 	andi	$r0,$r0,0x0
1c004b5c:	03400000 	andi	$r0,$r0,0x0
1c004b60:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004b64:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004b68:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004b6c:	4c000020 	jirl	$r0,$r1,0

1c004b70 <intc_handler>:
intc_handler():
1c004b70:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004b74:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004b78:	29806076 	st.w	$r22,$r3,24(0x18)
1c004b7c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004b80:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004b84:	0380158c 	ori	$r12,$r12,0x5
1c004b88:	2a00018c 	ld.bu	$r12,$r12,0
1c004b8c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004b90:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004b94:	0340058c 	andi	$r12,$r12,0x1
1c004b98:	40002980 	beqz	$r12,40(0x28) # 1c004bc0 <intc_handler+0x50>
1c004b9c:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004ba0:	57f2fbff 	bl	-3336(0xffff2f8) # 1c003e98 <TIM_GetITStatus>
1c004ba4:	0015008c 	move	$r12,$r4
1c004ba8:	40001980 	beqz	$r12,24(0x18) # 1c004bc0 <intc_handler+0x50>
1c004bac:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004bb0:	57f337ff 	bl	-3276(0xffff334) # 1c003ee4 <TIM_ClearIT>
1c004bb4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004bb8:	02b2a084 	addi.w	$r4,$r4,-856(0xca8)
1c004bbc:	57cfdbff 	bl	-12328(0xfffcfd8) # 1c001b94 <myprintf>
1c004bc0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004bc4:	0340118c 	andi	$r12,$r12,0x4
1c004bc8:	40001580 	beqz	$r12,20(0x14) # 1c004bdc <intc_handler+0x6c>
1c004bcc:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004bd0:	03800d8c 	ori	$r12,$r12,0x3
1c004bd4:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c004bd8:	2900018d 	st.b	$r13,$r12,0
1c004bdc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004be0:	0340218c 	andi	$r12,$r12,0x8
1c004be4:	40001580 	beqz	$r12,20(0x14) # 1c004bf8 <intc_handler+0x88>
1c004be8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004bec:	03800d8c 	ori	$r12,$r12,0x3
1c004bf0:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c004bf4:	2900018d 	st.b	$r13,$r12,0
1c004bf8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004bfc:	03800d8c 	ori	$r12,$r12,0x3
1c004c00:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c004c04:	2900018d 	st.b	$r13,$r12,0
1c004c08:	03400000 	andi	$r0,$r0,0x0
1c004c0c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004c10:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004c14:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004c18:	4c000020 	jirl	$r0,$r1,0

1c004c1c <TIMER_HANDLER>:
TIMER_HANDLER():
1c004c1c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004c20:	29803061 	st.w	$r1,$r3,12(0xc)
1c004c24:	29802076 	st.w	$r22,$r3,8(0x8)
1c004c28:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004c2c:	57e55fff 	bl	-6820(0xfffe55c) # 1c003188 <Set_Timer_clear>
1c004c30:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004c34:	02b15084 	addi.w	$r4,$r4,-940(0xc54)
1c004c38:	57cf5fff 	bl	-12452(0xfffcf5c) # 1c001b94 <myprintf>
1c004c3c:	57e52fff 	bl	-6868(0xfffe52c) # 1c003168 <Set_Timer_stop>
1c004c40:	03400000 	andi	$r0,$r0,0x0
1c004c44:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004c48:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004c4c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004c50:	4c000020 	jirl	$r0,$r1,0

1c004c54 <ProcessUartCommand>:
ProcessUartCommand():
1c004c54:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004c58:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004c5c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004c60:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004c64:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004c68:	001500ac 	move	$r12,$r5
1c004c6c:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c004c70:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004c74:	02bfe084 	addi.w	$r4,$r4,-8(0xff8)
1c004c78:	57cf1fff 	bl	-12516(0xfffcf1c) # 1c001b94 <myprintf>
1c004c7c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004c80:	50003000 	b	48(0x30) # 1c004cb0 <ProcessUartCommand+0x5c>
1c004c84:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004c88:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004c8c:	001031ac 	add.w	$r12,$r13,$r12
1c004c90:	2a00018c 	ld.bu	$r12,$r12,0
1c004c94:	00150185 	move	$r5,$r12
1c004c98:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004c9c:	02bf9084 	addi.w	$r4,$r4,-28(0xfe4)
1c004ca0:	57cef7ff 	bl	-12556(0xfffcef4) # 1c001b94 <myprintf>
1c004ca4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004ca8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004cac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004cb0:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c004cb4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004cb8:	63ffcdac 	blt	$r13,$r12,-52(0x3ffcc) # 1c004c84 <ProcessUartCommand+0x30>
1c004cbc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004cc0:	02bf1084 	addi.w	$r4,$r4,-60(0xfc4)
1c004cc4:	57ced3ff 	bl	-12592(0xfffced0) # 1c001b94 <myprintf>
1c004cc8:	2a3f6ecd 	ld.bu	$r13,$r22,-37(0xfdb)
1c004ccc:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c004cd0:	5c018dac 	bne	$r13,$r12,396(0x18c) # 1c004e5c <ProcessUartCommand+0x208>
1c004cd4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004cd8:	2a00018d 	ld.bu	$r13,$r12,0
1c004cdc:	0281500c 	addi.w	$r12,$r0,84(0x54)
1c004ce0:	5c017dac 	bne	$r13,$r12,380(0x17c) # 1c004e5c <ProcessUartCommand+0x208>
1c004ce4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004ce8:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c004cec:	2a00018d 	ld.bu	$r13,$r12,0
1c004cf0:	0281200c 	addi.w	$r12,$r0,72(0x48)
1c004cf4:	5c0169ac 	bne	$r13,$r12,360(0x168) # 1c004e5c <ProcessUartCommand+0x208>
1c004cf8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004cfc:	0280198c 	addi.w	$r12,$r12,6(0x6)
1c004d00:	2a00018d 	ld.bu	$r13,$r12,0
1c004d04:	02814c0c 	addi.w	$r12,$r0,83(0x53)
1c004d08:	5c0155ac 	bne	$r13,$r12,340(0x154) # 1c004e5c <ProcessUartCommand+0x208>
1c004d0c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004d10:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004d14:	2a00018d 	ld.bu	$r13,$r12,0
1c004d18:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004d1c:	001c31ac 	mul.w	$r12,$r13,$r12
1c004d20:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004d24:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004d28:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c004d2c:	2a00018c 	ld.bu	$r12,$r12,0
1c004d30:	001031ac 	add.w	$r12,$r13,$r12
1c004d34:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004d38:	02bfc18c 	addi.w	$r12,$r12,-16(0xff0)
1c004d3c:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c004d40:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004d44:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004d48:	2a00018d 	ld.bu	$r13,$r12,0
1c004d4c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004d50:	001c31ac 	mul.w	$r12,$r13,$r12
1c004d54:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004d58:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004d5c:	0280158c 	addi.w	$r12,$r12,5(0x5)
1c004d60:	2a00018c 	ld.bu	$r12,$r12,0
1c004d64:	001031ac 	add.w	$r12,$r13,$r12
1c004d68:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004d6c:	02bfc18c 	addi.w	$r12,$r12,-16(0xff0)
1c004d70:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c004d74:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004d78:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c004d7c:	2a00018d 	ld.bu	$r13,$r12,0
1c004d80:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004d84:	001c31ac 	mul.w	$r12,$r13,$r12
1c004d88:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004d8c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004d90:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c004d94:	2a00018c 	ld.bu	$r12,$r12,0
1c004d98:	001031ac 	add.w	$r12,$r13,$r12
1c004d9c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004da0:	02bfc18c 	addi.w	$r12,$r12,-16(0xff0)
1c004da4:	293fa6cc 	st.b	$r12,$r22,-23(0xfe9)
1c004da8:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c004dac:	40002180 	beqz	$r12,32(0x20) # 1c004dcc <ProcessUartCommand+0x178>
1c004db0:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c004db4:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c004db8:	6800158d 	bltu	$r12,$r13,20(0x14) # 1c004dcc <ProcessUartCommand+0x178>
1c004dbc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004dc0:	0289c18c 	addi.w	$r12,$r12,624(0x270)
1c004dc4:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c004dc8:	2900018d 	st.b	$r13,$r12,0
1c004dcc:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c004dd0:	40002180 	beqz	$r12,32(0x20) # 1c004df0 <ProcessUartCommand+0x19c>
1c004dd4:	2a3faacd 	ld.bu	$r13,$r22,-22(0xfea)
1c004dd8:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c004ddc:	6800158d 	bltu	$r12,$r13,20(0x14) # 1c004df0 <ProcessUartCommand+0x19c>
1c004de0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004de4:	0289358c 	addi.w	$r12,$r12,589(0x24d)
1c004de8:	2a3faacd 	ld.bu	$r13,$r22,-22(0xfea)
1c004dec:	2900018d 	st.b	$r13,$r12,0
1c004df0:	2a3fa6cc 	ld.bu	$r12,$r22,-23(0xfe9)
1c004df4:	40002180 	beqz	$r12,32(0x20) # 1c004e14 <ProcessUartCommand+0x1c0>
1c004df8:	2a3fa6cd 	ld.bu	$r13,$r22,-23(0xfe9)
1c004dfc:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c004e00:	6800158d 	bltu	$r12,$r13,20(0x14) # 1c004e14 <ProcessUartCommand+0x1c0>
1c004e04:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004e08:	0288a98c 	addi.w	$r12,$r12,554(0x22a)
1c004e0c:	2a3fa6cd 	ld.bu	$r13,$r22,-23(0xfe9)
1c004e10:	2900018d 	st.b	$r13,$r12,0
1c004e14:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004e18:	0288618c 	addi.w	$r12,$r12,536(0x218)
1c004e1c:	2a00018c 	ld.bu	$r12,$r12,0
1c004e20:	0015018d 	move	$r13,$r12
1c004e24:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004e28:	0288258c 	addi.w	$r12,$r12,521(0x209)
1c004e2c:	2a00018c 	ld.bu	$r12,$r12,0
1c004e30:	0015018e 	move	$r14,$r12
1c004e34:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004e38:	0287e98c 	addi.w	$r12,$r12,506(0x1fa)
1c004e3c:	2a00018c 	ld.bu	$r12,$r12,0
1c004e40:	00150187 	move	$r7,$r12
1c004e44:	001501c6 	move	$r6,$r14
1c004e48:	001501a5 	move	$r5,$r13
1c004e4c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004e50:	02b8e084 	addi.w	$r4,$r4,-456(0xe38)
1c004e54:	57cd43ff 	bl	-12992(0xfffcd40) # 1c001b94 <myprintf>
1c004e58:	50001000 	b	16(0x10) # 1c004e68 <ProcessUartCommand+0x214>
1c004e5c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004e60:	02b94084 	addi.w	$r4,$r4,-432(0xe50)
1c004e64:	57cd33ff 	bl	-13008(0xfffcd30) # 1c001b94 <myprintf>
1c004e68:	03400000 	andi	$r0,$r0,0x0
1c004e6c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004e70:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004e74:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004e78:	4c000020 	jirl	$r0,$r1,0

1c004e7c <main>:
main():
1c004e7c:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c004e80:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c004e84:	2980e076 	st.w	$r22,$r3,56(0x38)
1c004e88:	2980d077 	st.w	$r23,$r3,52(0x34)
1c004e8c:	02810076 	addi.w	$r22,$r3,64(0x40)
1c004e90:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c004e94:	29bf22c5 	st.w	$r5,$r22,-56(0xfc8)
1c004e98:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004e9c:	02b8c084 	addi.w	$r4,$r4,-464(0xe30)
1c004ea0:	57ccf7ff 	bl	-13068(0xfffccf4) # 1c001b94 <myprintf>
1c004ea4:	57e1abff 	bl	-7768(0xfffe1a8) # 1c00304c <SystemClockInit>
1c004ea8:	57c487ff 	bl	-15228(0xfffc484) # 1c00132c <GPIOInit>
1c004eac:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004eb0:	02b8c084 	addi.w	$r4,$r4,-464(0xe30)
1c004eb4:	57cce3ff 	bl	-13088(0xfffcce0) # 1c001b94 <myprintf>
1c004eb8:	541c8000 	bl	7296(0x1c80) # 1c006b38 <RGB_LED_Init>
1c004ebc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004ec0:	02b8c084 	addi.w	$r4,$r4,-464(0xe30)
1c004ec4:	57ccd3ff 	bl	-13104(0xfffccd0) # 1c001b94 <myprintf>
1c004ec8:	5411b800 	bl	4536(0x11b8) # 1c006080 <LED_Init>
1c004ecc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004ed0:	02b8d084 	addi.w	$r4,$r4,-460(0xe34)
1c004ed4:	57ccc3ff 	bl	-13120(0xfffccc0) # 1c001b94 <myprintf>
1c004ed8:	5411d800 	bl	4568(0x11d8) # 1c0060b0 <KEY_Init>
1c004edc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004ee0:	02b8d084 	addi.w	$r4,$r4,-460(0xe34)
1c004ee4:	57ccb3ff 	bl	-13136(0xfffccb0) # 1c001b94 <myprintf>
1c004ee8:	5409ec00 	bl	2540(0x9ec) # 1c0058d4 <BEEP_Init>
1c004eec:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004ef0:	02b8d084 	addi.w	$r4,$r4,-460(0xe34)
1c004ef4:	57cca3ff 	bl	-13152(0xfffcca0) # 1c001b94 <myprintf>
1c004ef8:	5413a000 	bl	5024(0x13a0) # 1c006298 <OLED_Init>
1c004efc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004f00:	02b8d084 	addi.w	$r4,$r4,-460(0xe34)
1c004f04:	57cc93ff 	bl	-13168(0xfffcc90) # 1c001b94 <myprintf>
1c004f08:	54113c00 	bl	4412(0x113c) # 1c006044 <FAN_Init>
1c004f0c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004f10:	02b8d084 	addi.w	$r4,$r4,-460(0xe34)
1c004f14:	57cc83ff 	bl	-13184(0xfffcc80) # 1c001b94 <myprintf>
1c004f18:	57e22fff 	bl	-7636(0xfffe22c) # 1c003144 <EnableInt>
1c004f1c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004f20:	02b8d084 	addi.w	$r4,$r4,-460(0xe34)
1c004f24:	57cc73ff 	bl	-13200(0xfffcc70) # 1c001b94 <myprintf>
1c004f28:	541cc800 	bl	7368(0x1cc8) # 1c006bf0 <Smoke_Init>
1c004f2c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004f30:	02b8e084 	addi.w	$r4,$r4,-456(0xe38)
1c004f34:	57cc63ff 	bl	-13216(0xfffcc60) # 1c001b94 <myprintf>
1c004f38:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004f3c:	28837084 	ld.w	$r4,$r4,220(0xdc)
1c004f40:	541c6400 	bl	7268(0x1c64) # 1c006ba4 <Queue_Init>
1c004f44:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004f48:	02b8e084 	addi.w	$r4,$r4,-456(0xe38)
1c004f4c:	57cc4bff 	bl	-13240(0xfffcc48) # 1c001b94 <myprintf>
1c004f50:	1400038c 	lu12i.w	$r12,28(0x1c)
1c004f54:	03880184 	ori	$r4,$r12,0x200
1c004f58:	57db37ff 	bl	-9420(0xfffdb34) # 1c002a8c <Uart1_init>
1c004f5c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004f60:	02b8c084 	addi.w	$r4,$r4,-464(0xe30)
1c004f64:	57cc33ff 	bl	-13264(0xfffcc30) # 1c001b94 <myprintf>
1c004f68:	57e8f7ff 	bl	-5900(0xfffe8f4) # 1c00385c <Adc_powerOn>
1c004f6c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004f70:	02b8c084 	addi.w	$r4,$r4,-464(0xe30)
1c004f74:	57cc23ff 	bl	-13280(0xfffcc20) # 1c001b94 <myprintf>
1c004f78:	02801804 	addi.w	$r4,$r0,6(0x6)
1c004f7c:	57e937ff 	bl	-5836(0xfffe934) # 1c0038b0 <Adc_open>
1c004f80:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004f84:	02b8b084 	addi.w	$r4,$r4,-468(0xe2c)
1c004f88:	57cc0fff 	bl	-13300(0xfffcc0c) # 1c001b94 <myprintf>
1c004f8c:	541f4400 	bl	8004(0x1f44) # 1c006ed0 <YUYIN_Init>
1c004f90:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004f94:	02b8c084 	addi.w	$r4,$r4,-464(0xe30)
1c004f98:	57cbffff 	bl	-13316(0xfffcbfc) # 1c001b94 <myprintf>
1c004f9c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004fa0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004fa4:	50000c00 	b	12(0xc) # 1c004fb0 <main+0x134>
1c004fa8:	02819004 	addi.w	$r4,$r0,100(0x64)
1c004fac:	57e5bfff 	bl	-6724(0xfffe5bc) # 1c003568 <delay_ms>
1c004fb0:	54105400 	bl	4180(0x1054) # 1c006004 <DHT11_Init>
1c004fb4:	0015008c 	move	$r12,$r4
1c004fb8:	40001580 	beqz	$r12,20(0x14) # 1c004fcc <main+0x150>
1c004fbc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004fc0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004fc4:	293fbecd 	st.b	$r13,$r22,-17(0xfef)
1c004fc8:	47ffe19f 	bnez	$r12,-32(0x7fffe0) # 1c004fa8 <main+0x12c>
1c004fcc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004fd0:	44001180 	bnez	$r12,16(0x10) # 1c004fe0 <main+0x164>
1c004fd4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004fd8:	02b7f084 	addi.w	$r4,$r4,-516(0xdfc)
1c004fdc:	57cbbbff 	bl	-13384(0xfffcbb8) # 1c001b94 <myprintf>
1c004fe0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004fe4:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c004fe8:	57da43ff 	bl	-9664(0xfffda40) # 1c002a28 <UART_GetFlagStatus>
1c004fec:	0015008c 	move	$r12,$r4
1c004ff0:	4000a980 	beqz	$r12,168(0xa8) # 1c005098 <main+0x21c>
1c004ff4:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c004ff8:	0281900c 	addi.w	$r12,$r0,100(0x64)
1c004ffc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005000:	50005400 	b	84(0x54) # 1c005054 <main+0x1d8>
1c005004:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005008:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c00500c:	57da1fff 	bl	-9700(0xfffda1c) # 1c002a28 <UART_GetFlagStatus>
1c005010:	0015008c 	move	$r12,$r4
1c005014:	40002d80 	beqz	$r12,44(0x2c) # 1c005040 <main+0x1c4>
1c005018:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00501c:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c005020:	293fbacd 	st.b	$r13,$r22,-18(0xfee)
1c005024:	00150197 	move	$r23,$r12
1c005028:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c00502c:	57d9b3ff 	bl	-9808(0xfffd9b0) # 1c0029dc <UART_ReceiveData>
1c005030:	0015008c 	move	$r12,$r4
1c005034:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c005038:	00105dad 	add.w	$r13,$r13,$r23
1c00503c:	293fb1ac 	st.b	$r12,$r13,-20(0xfec)
1c005040:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005044:	57e527ff 	bl	-6876(0xfffe524) # 1c003568 <delay_ms>
1c005048:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00504c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c005050:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005054:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c005058:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c00505c:	68000d8d 	bltu	$r12,$r13,12(0xc) # 1c005068 <main+0x1ec>
1c005060:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005064:	47ffa19f 	bnez	$r12,-96(0x7fffa0) # 1c005004 <main+0x188>
1c005068:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c00506c:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c005070:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c00508c <main+0x210>
1c005074:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005078:	02bf72cd 	addi.w	$r13,$r22,-36(0xfdc)
1c00507c:	00150185 	move	$r5,$r12
1c005080:	001501a4 	move	$r4,$r13
1c005084:	57fbd3ff 	bl	-1072(0xffffbd0) # 1c004c54 <ProcessUartCommand>
1c005088:	50001000 	b	16(0x10) # 1c005098 <main+0x21c>
1c00508c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005090:	02b56084 	addi.w	$r4,$r4,-680(0xd58)
1c005094:	57cb03ff 	bl	-13568(0xfffcb00) # 1c001b94 <myprintf>
1c005098:	1cc7ff85 	pcaddu12i	$r5,409596(0x63ffc)
1c00509c:	28bdc0a5 	ld.w	$r5,$r5,-144(0xf70)
1c0050a0:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0050a4:	28bdc084 	ld.w	$r4,$r4,-144(0xf70)
1c0050a8:	540e5000 	bl	3664(0xe50) # 1c005ef8 <DHT11_Read_Data>
1c0050ac:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0050b0:	28bde084 	ld.w	$r4,$r4,-136(0xf78)
1c0050b4:	541d5000 	bl	7504(0x1d50) # 1c006e04 <Smoke_Read_Data>
1c0050b8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0050bc:	28bd618c 	ld.w	$r12,$r12,-168(0xf58)
1c0050c0:	2a40018d 	ld.hu	$r13,$r12,0
1c0050c4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0050c8:	002131ae 	div.wu	$r14,$r13,$r12
1c0050cc:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0050d4 <main+0x258>
1c0050d0:	002a0007 	break	0x7
1c0050d4:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c0050d8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0050dc:	28bce18c 	ld.w	$r12,$r12,-200(0xf38)
1c0050e0:	2940018d 	st.h	$r13,$r12,0
1c0050e4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0050e8:	28bc918c 	ld.w	$r12,$r12,-220(0xf24)
1c0050ec:	2a40018d 	ld.hu	$r13,$r12,0
1c0050f0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0050f4:	002131ae 	div.wu	$r14,$r13,$r12
1c0050f8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005100 <main+0x284>
1c0050fc:	002a0007 	break	0x7
1c005100:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c005104:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005108:	28bc118c 	ld.w	$r12,$r12,-252(0xf04)
1c00510c:	2940018d 	st.h	$r13,$r12,0
1c005110:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005114:	28bc018c 	ld.w	$r12,$r12,-256(0xf00)
1c005118:	2a40018c 	ld.hu	$r12,$r12,0
1c00511c:	0015018d 	move	$r13,$r12
1c005120:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005124:	28bba18c 	ld.w	$r12,$r12,-280(0xee8)
1c005128:	2a40018c 	ld.hu	$r12,$r12,0
1c00512c:	0015018e 	move	$r14,$r12
1c005130:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005134:	28bbd18c 	ld.w	$r12,$r12,-268(0xef4)
1c005138:	2a40018c 	ld.hu	$r12,$r12,0
1c00513c:	00150187 	move	$r7,$r12
1c005140:	001501c6 	move	$r6,$r14
1c005144:	001501a5 	move	$r5,$r13
1c005148:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00514c:	02b2f084 	addi.w	$r4,$r4,-836(0xcbc)
1c005150:	57ca47ff 	bl	-13756(0xfffca44) # 1c001b94 <myprintf>
1c005154:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005158:	02bab18c 	addi.w	$r12,$r12,-340(0xeac)
1c00515c:	29000180 	st.b	$r0,$r12,0
1c005160:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005164:	02bb3d8c 	addi.w	$r12,$r12,-305(0xecf)
1c005168:	2a00018c 	ld.bu	$r12,$r12,0
1c00516c:	40013980 	beqz	$r12,312(0x138) # 1c0052a4 <main+0x428>
1c005170:	54108c00 	bl	4236(0x108c) # 1c0061fc <OLED_Clear>
1c005174:	02802007 	addi.w	$r7,$r0,8(0x8)
1c005178:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00517c:	02b2d0c6 	addi.w	$r6,$r6,-844(0xcb4)
1c005180:	00150005 	move	$r5,$r0
1c005184:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c005188:	54174000 	bl	5952(0x1740) # 1c0068c8 <OLED_Show_Str>
1c00518c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005190:	28ba118c 	ld.w	$r12,$r12,-380(0xe84)
1c005194:	2a40018c 	ld.hu	$r12,$r12,0
1c005198:	00150186 	move	$r6,$r12
1c00519c:	1c000065 	pcaddu12i	$r5,3(0x3)
1c0051a0:	02b260a5 	addi.w	$r5,$r5,-872(0xc98)
1c0051a4:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0051a8:	28b9e084 	ld.w	$r4,$r4,-392(0xe78)
1c0051ac:	57d37bff 	bl	-11400(0xfffd378) # 1c002524 <sprintf>
1c0051b0:	02802007 	addi.w	$r7,$r0,8(0x8)
1c0051b4:	1cc7ff86 	pcaddu12i	$r6,409596(0x63ffc)
1c0051b8:	28b9a0c6 	ld.w	$r6,$r6,-408(0xe68)
1c0051bc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0051c0:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0051c4:	54170400 	bl	5892(0x1704) # 1c0068c8 <OLED_Show_Str>
1c0051c8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0051cc:	28b9018c 	ld.w	$r12,$r12,-448(0xe40)
1c0051d0:	2a40018c 	ld.hu	$r12,$r12,0
1c0051d4:	00150186 	move	$r6,$r12
1c0051d8:	1c000065 	pcaddu12i	$r5,3(0x3)
1c0051dc:	02b1a0a5 	addi.w	$r5,$r5,-920(0xc68)
1c0051e0:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0051e4:	28b8f084 	ld.w	$r4,$r4,-452(0xe3c)
1c0051e8:	57d33fff 	bl	-11460(0xfffd33c) # 1c002524 <sprintf>
1c0051ec:	02802007 	addi.w	$r7,$r0,8(0x8)
1c0051f0:	1cc7ff86 	pcaddu12i	$r6,409596(0x63ffc)
1c0051f4:	28b8b0c6 	ld.w	$r6,$r6,-468(0xe2c)
1c0051f8:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0051fc:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005200:	5416c800 	bl	5832(0x16c8) # 1c0068c8 <OLED_Show_Str>
1c005204:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005208:	28b8818c 	ld.w	$r12,$r12,-480(0xe20)
1c00520c:	2a40018c 	ld.hu	$r12,$r12,0
1c005210:	00150186 	move	$r6,$r12
1c005214:	1c000065 	pcaddu12i	$r5,3(0x3)
1c005218:	02b0f0a5 	addi.w	$r5,$r5,-964(0xc3c)
1c00521c:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005220:	28b80084 	ld.w	$r4,$r4,-512(0xe00)
1c005224:	57d303ff 	bl	-11520(0xfffd300) # 1c002524 <sprintf>
1c005228:	02802007 	addi.w	$r7,$r0,8(0x8)
1c00522c:	1cc7ff86 	pcaddu12i	$r6,409596(0x63ffc)
1c005230:	28b7c0c6 	ld.w	$r6,$r6,-528(0xdf0)
1c005234:	02801805 	addi.w	$r5,$r0,6(0x6)
1c005238:	02801004 	addi.w	$r4,$r0,4(0x4)
1c00523c:	54168c00 	bl	5772(0x168c) # 1c0068c8 <OLED_Show_Str>
1c005240:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005244:	28b7418c 	ld.w	$r12,$r12,-560(0xdd0)
1c005248:	2a40018c 	ld.hu	$r12,$r12,0
1c00524c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005250:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005254:	02b6c58c 	addi.w	$r12,$r12,-591(0xdb1)
1c005258:	2900018d 	st.b	$r13,$r12,0
1c00525c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005260:	28b6b18c 	ld.w	$r12,$r12,-596(0xdac)
1c005264:	2a40018c 	ld.hu	$r12,$r12,0
1c005268:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00526c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005270:	02b6598c 	addi.w	$r12,$r12,-618(0xd96)
1c005274:	2900018d 	st.b	$r13,$r12,0
1c005278:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00527c:	28b6b18c 	ld.w	$r12,$r12,-596(0xdac)
1c005280:	2a40018c 	ld.hu	$r12,$r12,0
1c005284:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005288:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00528c:	02b5ed8c 	addi.w	$r12,$r12,-645(0xd7b)
1c005290:	2900018d 	st.b	$r13,$r12,0
1c005294:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005298:	02b66d8c 	addi.w	$r12,$r12,-613(0xd9b)
1c00529c:	29000180 	st.b	$r0,$r12,0
1c0052a0:	5001b400 	b	436(0x1b4) # 1c005454 <main+0x5d8>
1c0052a4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0052a8:	02b5758c 	addi.w	$r12,$r12,-675(0xd5d)
1c0052ac:	2a00018c 	ld.bu	$r12,$r12,0
1c0052b0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0052b4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0052b8:	28b5718c 	ld.w	$r12,$r12,-676(0xd5c)
1c0052bc:	2a40018c 	ld.hu	$r12,$r12,0
1c0052c0:	580075ac 	beq	$r13,$r12,116(0x74) # 1c005334 <main+0x4b8>
1c0052c4:	02802007 	addi.w	$r7,$r0,8(0x8)
1c0052c8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0052cc:	02ae60c6 	addi.w	$r6,$r6,-1128(0xb98)
1c0052d0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0052d4:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0052d8:	5415f000 	bl	5616(0x15f0) # 1c0068c8 <OLED_Show_Str>
1c0052dc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0052e0:	28b4d18c 	ld.w	$r12,$r12,-716(0xd34)
1c0052e4:	2a40018c 	ld.hu	$r12,$r12,0
1c0052e8:	00150186 	move	$r6,$r12
1c0052ec:	1c000065 	pcaddu12i	$r5,3(0x3)
1c0052f0:	02ad20a5 	addi.w	$r5,$r5,-1208(0xb48)
1c0052f4:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0052f8:	28b4a084 	ld.w	$r4,$r4,-728(0xd28)
1c0052fc:	57d22bff 	bl	-11736(0xfffd228) # 1c002524 <sprintf>
1c005300:	02802007 	addi.w	$r7,$r0,8(0x8)
1c005304:	1cc7ff86 	pcaddu12i	$r6,409596(0x63ffc)
1c005308:	28b460c6 	ld.w	$r6,$r6,-744(0xd18)
1c00530c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c005310:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005314:	5415b400 	bl	5556(0x15b4) # 1c0068c8 <OLED_Show_Str>
1c005318:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00531c:	28b3e18c 	ld.w	$r12,$r12,-776(0xcf8)
1c005320:	2a40018c 	ld.hu	$r12,$r12,0
1c005324:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005328:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00532c:	02b3658c 	addi.w	$r12,$r12,-807(0xcd9)
1c005330:	2900018d 	st.b	$r13,$r12,0
1c005334:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005338:	02b3398c 	addi.w	$r12,$r12,-818(0xcce)
1c00533c:	2a00018c 	ld.bu	$r12,$r12,0
1c005340:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005344:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005348:	28b3118c 	ld.w	$r12,$r12,-828(0xcc4)
1c00534c:	2a40018c 	ld.hu	$r12,$r12,0
1c005350:	580075ac 	beq	$r13,$r12,116(0x74) # 1c0053c4 <main+0x548>
1c005354:	02802007 	addi.w	$r7,$r0,8(0x8)
1c005358:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00535c:	02ac20c6 	addi.w	$r6,$r6,-1272(0xb08)
1c005360:	02801005 	addi.w	$r5,$r0,4(0x4)
1c005364:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005368:	54156000 	bl	5472(0x1560) # 1c0068c8 <OLED_Show_Str>
1c00536c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005370:	28b2718c 	ld.w	$r12,$r12,-868(0xc9c)
1c005374:	2a40018c 	ld.hu	$r12,$r12,0
1c005378:	00150186 	move	$r6,$r12
1c00537c:	1c000065 	pcaddu12i	$r5,3(0x3)
1c005380:	02ab10a5 	addi.w	$r5,$r5,-1340(0xac4)
1c005384:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005388:	28b26084 	ld.w	$r4,$r4,-872(0xc98)
1c00538c:	57d19bff 	bl	-11880(0xfffd198) # 1c002524 <sprintf>
1c005390:	02802007 	addi.w	$r7,$r0,8(0x8)
1c005394:	1cc7ff86 	pcaddu12i	$r6,409596(0x63ffc)
1c005398:	28b220c6 	ld.w	$r6,$r6,-888(0xc88)
1c00539c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0053a0:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0053a4:	54152400 	bl	5412(0x1524) # 1c0068c8 <OLED_Show_Str>
1c0053a8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0053ac:	28b1818c 	ld.w	$r12,$r12,-928(0xc60)
1c0053b0:	2a40018c 	ld.hu	$r12,$r12,0
1c0053b4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0053b8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0053bc:	02b1298c 	addi.w	$r12,$r12,-950(0xc4a)
1c0053c0:	2900018d 	st.b	$r13,$r12,0
1c0053c4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0053c8:	02b0fd8c 	addi.w	$r12,$r12,-961(0xc3f)
1c0053cc:	2a00018c 	ld.bu	$r12,$r12,0
1c0053d0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0053d4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0053d8:	28b1418c 	ld.w	$r12,$r12,-944(0xc50)
1c0053dc:	2a40018c 	ld.hu	$r12,$r12,0
1c0053e0:	580075ac 	beq	$r13,$r12,116(0x74) # 1c005454 <main+0x5d8>
1c0053e4:	02802007 	addi.w	$r7,$r0,8(0x8)
1c0053e8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0053ec:	02a9e0c6 	addi.w	$r6,$r6,-1416(0xa78)
1c0053f0:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0053f4:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0053f8:	5414d000 	bl	5328(0x14d0) # 1c0068c8 <OLED_Show_Str>
1c0053fc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005400:	28b0a18c 	ld.w	$r12,$r12,-984(0xc28)
1c005404:	2a40018c 	ld.hu	$r12,$r12,0
1c005408:	00150186 	move	$r6,$r12
1c00540c:	1c000065 	pcaddu12i	$r5,3(0x3)
1c005410:	02a910a5 	addi.w	$r5,$r5,-1468(0xa44)
1c005414:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005418:	28b02084 	ld.w	$r4,$r4,-1016(0xc08)
1c00541c:	57d10bff 	bl	-12024(0xfffd108) # 1c002524 <sprintf>
1c005420:	02802007 	addi.w	$r7,$r0,8(0x8)
1c005424:	1cc7ff86 	pcaddu12i	$r6,409596(0x63ffc)
1c005428:	28afe0c6 	ld.w	$r6,$r6,-1032(0xbf8)
1c00542c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c005430:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005434:	54149400 	bl	5268(0x1494) # 1c0068c8 <OLED_Show_Str>
1c005438:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00543c:	28afb18c 	ld.w	$r12,$r12,-1044(0xbec)
1c005440:	2a40018c 	ld.hu	$r12,$r12,0
1c005444:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005448:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00544c:	02aeed8c 	addi.w	$r12,$r12,-1093(0xbbb)
1c005450:	2900018d 	st.b	$r13,$r12,0
1c005454:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005458:	02af618c 	addi.w	$r12,$r12,-1064(0xbd8)
1c00545c:	2a00018c 	ld.bu	$r12,$r12,0
1c005460:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005464:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005468:	28aeb18c 	ld.w	$r12,$r12,-1108(0xbac)
1c00546c:	2a40018c 	ld.hu	$r12,$r12,0
1c005470:	6c0025ac 	bgeu	$r13,$r12,36(0x24) # 1c005494 <main+0x618>
1c005474:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005478:	02ae318c 	addi.w	$r12,$r12,-1140(0xb8c)
1c00547c:	2a00018c 	ld.bu	$r12,$r12,0
1c005480:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005484:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005488:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00548c:	02ade18c 	addi.w	$r12,$r12,-1160(0xb78)
1c005490:	2900018d 	st.b	$r13,$r12,0
1c005494:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005498:	02ae658c 	addi.w	$r12,$r12,-1127(0xb99)
1c00549c:	2a00018c 	ld.bu	$r12,$r12,0
1c0054a0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0054a4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0054a8:	28ad918c 	ld.w	$r12,$r12,-1180(0xb64)
1c0054ac:	2a40018c 	ld.hu	$r12,$r12,0
1c0054b0:	6c00258d 	bgeu	$r12,$r13,36(0x24) # 1c0054d4 <main+0x658>
1c0054b4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0054b8:	02ad318c 	addi.w	$r12,$r12,-1204(0xb4c)
1c0054bc:	2a00018c 	ld.bu	$r12,$r12,0
1c0054c0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0054c4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0054c8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0054cc:	02ace18c 	addi.w	$r12,$r12,-1224(0xb38)
1c0054d0:	2900018d 	st.b	$r13,$r12,0
1c0054d4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0054d8:	02ad698c 	addi.w	$r12,$r12,-1190(0xb5a)
1c0054dc:	2a00018c 	ld.bu	$r12,$r12,0
1c0054e0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0054e4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0054e8:	28ad018c 	ld.w	$r12,$r12,-1216(0xb40)
1c0054ec:	2a40018c 	ld.hu	$r12,$r12,0
1c0054f0:	6c0025ac 	bgeu	$r13,$r12,36(0x24) # 1c005514 <main+0x698>
1c0054f4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0054f8:	02ac318c 	addi.w	$r12,$r12,-1268(0xb0c)
1c0054fc:	2a00018c 	ld.bu	$r12,$r12,0
1c005500:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005504:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005508:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00550c:	02abe18c 	addi.w	$r12,$r12,-1288(0xaf8)
1c005510:	2900018d 	st.b	$r13,$r12,0
1c005514:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005518:	02abb18c 	addi.w	$r12,$r12,-1300(0xaec)
1c00551c:	2a00018c 	ld.bu	$r12,$r12,0
1c005520:	44003580 	bnez	$r12,52(0x34) # 1c005554 <main+0x6d8>
1c005524:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005528:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c00552c:	57c0b3ff 	bl	-16208(0xfffc0b0) # 1c0015dc <gpio_write_pin>
1c005530:	00150005 	move	$r5,$r0
1c005534:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c005538:	57c0a7ff 	bl	-16220(0xfffc0a4) # 1c0015dc <gpio_write_pin>
1c00553c:	00150005 	move	$r5,$r0
1c005540:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005544:	57c09bff 	bl	-16232(0xfffc098) # 1c0015dc <gpio_write_pin>
1c005548:	02801404 	addi.w	$r4,$r0,5(0x5)
1c00554c:	541a0800 	bl	6664(0x1a08) # 1c006f54 <YUYIN_Ctrl>
1c005550:	5000bc00 	b	188(0xbc) # 1c00560c <main+0x790>
1c005554:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005558:	02aab18c 	addi.w	$r12,$r12,-1364(0xaac)
1c00555c:	2a00018d 	ld.bu	$r13,$r12,0
1c005560:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005564:	5c002dac 	bne	$r13,$r12,44(0x2c) # 1c005590 <main+0x714>
1c005568:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00556c:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c005570:	57c06fff 	bl	-16276(0xfffc06c) # 1c0015dc <gpio_write_pin>
1c005574:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005578:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c00557c:	57c063ff 	bl	-16288(0xfffc060) # 1c0015dc <gpio_write_pin>
1c005580:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005584:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005588:	57c057ff 	bl	-16300(0xfffc054) # 1c0015dc <gpio_write_pin>
1c00558c:	50008000 	b	128(0x80) # 1c00560c <main+0x790>
1c005590:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005594:	02a9c18c 	addi.w	$r12,$r12,-1424(0xa70)
1c005598:	2a00018d 	ld.bu	$r13,$r12,0
1c00559c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0055a0:	580019ac 	beq	$r13,$r12,24(0x18) # 1c0055b8 <main+0x73c>
1c0055a4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0055a8:	02a9718c 	addi.w	$r12,$r12,-1444(0xa5c)
1c0055ac:	2a00018d 	ld.bu	$r13,$r12,0
1c0055b0:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0055b4:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c0055e8 <main+0x76c>
1c0055b8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0055bc:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c0055c0:	57c01fff 	bl	-16356(0xfffc01c) # 1c0015dc <gpio_write_pin>
1c0055c4:	00150005 	move	$r5,$r0
1c0055c8:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c0055cc:	57c013ff 	bl	-16368(0xfffc010) # 1c0015dc <gpio_write_pin>
1c0055d0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0055d4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0055d8:	57c007ff 	bl	-16380(0xfffc004) # 1c0015dc <gpio_write_pin>
1c0055dc:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0055e0:	54197400 	bl	6516(0x1974) # 1c006f54 <YUYIN_Ctrl>
1c0055e4:	50002800 	b	40(0x28) # 1c00560c <main+0x790>
1c0055e8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0055ec:	02a8618c 	addi.w	$r12,$r12,-1512(0xa18)
1c0055f0:	2a00018d 	ld.bu	$r13,$r12,0
1c0055f4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0055f8:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c00560c <main+0x790>
1c0055fc:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005600:	54031000 	bl	784(0x310) # 1c005910 <BEEP_on>
1c005604:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005608:	54194c00 	bl	6476(0x194c) # 1c006f54 <YUYIN_Ctrl>
1c00560c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005610:	02a8818c 	addi.w	$r12,$r12,-1504(0xa20)
1c005614:	2a00018c 	ld.bu	$r12,$r12,0
1c005618:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00561c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005620:	28a7d18c 	ld.w	$r12,$r12,-1548(0x9f4)
1c005624:	2a40018c 	ld.hu	$r12,$r12,0
1c005628:	6c0011ac 	bgeu	$r13,$r12,16(0x10) # 1c005638 <main+0x7bc>
1c00562c:	00150005 	move	$r5,$r0
1c005630:	02808804 	addi.w	$r4,$r0,34(0x22)
1c005634:	57bfabff 	bl	-16472(0xfffbfa8) # 1c0015dc <gpio_write_pin>
1c005638:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00563c:	02a7d18c 	addi.w	$r12,$r12,-1548(0x9f4)
1c005640:	2a00018c 	ld.bu	$r12,$r12,0
1c005644:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005648:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00564c:	28a7218c 	ld.w	$r12,$r12,-1592(0x9c8)
1c005650:	2a40018c 	ld.hu	$r12,$r12,0
1c005654:	6800598d 	bltu	$r12,$r13,88(0x58) # 1c0056ac <main+0x830>
1c005658:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00565c:	02a7558c 	addi.w	$r12,$r12,-1579(0x9d5)
1c005660:	2a00018c 	ld.bu	$r12,$r12,0
1c005664:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005668:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00566c:	28a6818c 	ld.w	$r12,$r12,-1632(0x9a0)
1c005670:	2a40018c 	ld.hu	$r12,$r12,0
1c005674:	6800398d 	bltu	$r12,$r13,56(0x38) # 1c0056ac <main+0x830>
1c005678:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00567c:	02a6d98c 	addi.w	$r12,$r12,-1610(0x9b6)
1c005680:	2a00018c 	ld.bu	$r12,$r12,0
1c005684:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005688:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00568c:	28a6718c 	ld.w	$r12,$r12,-1636(0x99c)
1c005690:	2a40018c 	ld.hu	$r12,$r12,0
1c005694:	680019ac 	bltu	$r13,$r12,24(0x18) # 1c0056ac <main+0x830>
1c005698:	00150005 	move	$r5,$r0
1c00569c:	02808804 	addi.w	$r4,$r0,34(0x22)
1c0056a0:	57bf3fff 	bl	-16580(0xfffbf3c) # 1c0015dc <gpio_write_pin>
1c0056a4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0056a8:	5418ac00 	bl	6316(0x18ac) # 1c006f54 <YUYIN_Ctrl>
1c0056ac:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0056b0:	02a6018c 	addi.w	$r12,$r12,-1664(0x980)
1c0056b4:	2a00018c 	ld.bu	$r12,$r12,0
1c0056b8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0056bc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0056c0:	28a5518c 	ld.w	$r12,$r12,-1708(0x954)
1c0056c4:	2a40018c 	ld.hu	$r12,$r12,0
1c0056c8:	6c00198d 	bgeu	$r12,$r13,24(0x18) # 1c0056e0 <main+0x864>
1c0056cc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0056d0:	02808804 	addi.w	$r4,$r0,34(0x22)
1c0056d4:	57bf0bff 	bl	-16632(0xfffbf08) # 1c0015dc <gpio_write_pin>
1c0056d8:	00150004 	move	$r4,$r0
1c0056dc:	54023400 	bl	564(0x234) # 1c005910 <BEEP_on>
1c0056e0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0056e4:	02a5358c 	addi.w	$r12,$r12,-1715(0x94d)
1c0056e8:	2a00018c 	ld.bu	$r12,$r12,0
1c0056ec:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0056f0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0056f4:	28a4618c 	ld.w	$r12,$r12,-1768(0x918)
1c0056f8:	2a40018c 	ld.hu	$r12,$r12,0
1c0056fc:	680059ac 	bltu	$r13,$r12,88(0x58) # 1c005754 <main+0x8d8>
1c005700:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005704:	02a4b18c 	addi.w	$r12,$r12,-1748(0x92c)
1c005708:	2a00018c 	ld.bu	$r12,$r12,0
1c00570c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005710:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005714:	28a4018c 	ld.w	$r12,$r12,-1792(0x900)
1c005718:	2a40018c 	ld.hu	$r12,$r12,0
1c00571c:	680039ac 	bltu	$r13,$r12,56(0x38) # 1c005754 <main+0x8d8>
1c005720:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005724:	02a4398c 	addi.w	$r12,$r12,-1778(0x90e)
1c005728:	2a00018c 	ld.bu	$r12,$r12,0
1c00572c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005730:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005734:	28a3d18c 	ld.w	$r12,$r12,-1804(0x8f4)
1c005738:	2a40018c 	ld.hu	$r12,$r12,0
1c00573c:	680019ac 	bltu	$r13,$r12,24(0x18) # 1c005754 <main+0x8d8>
1c005740:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005744:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005748:	57be97ff 	bl	-16748(0xfffbe94) # 1c0015dc <gpio_write_pin>
1c00574c:	02800804 	addi.w	$r4,$r0,2(0x2)
1c005750:	54180400 	bl	6148(0x1804) # 1c006f54 <YUYIN_Ctrl>
1c005754:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005758:	02a3658c 	addi.w	$r12,$r12,-1831(0x8d9)
1c00575c:	2a00018c 	ld.bu	$r12,$r12,0
1c005760:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005764:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005768:	28a2918c 	ld.w	$r12,$r12,-1884(0x8a4)
1c00576c:	2a40018c 	ld.hu	$r12,$r12,0
1c005770:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c00577c <main+0x900>
1c005774:	00150004 	move	$r4,$r0
1c005778:	54019800 	bl	408(0x198) # 1c005910 <BEEP_on>
1c00577c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005780:	02a2c98c 	addi.w	$r12,$r12,-1870(0x8b2)
1c005784:	2a00018c 	ld.bu	$r12,$r12,0
1c005788:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00578c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005790:	28a2618c 	ld.w	$r12,$r12,-1896(0x898)
1c005794:	2a40018c 	ld.hu	$r12,$r12,0
1c005798:	6c0011ac 	bgeu	$r13,$r12,16(0x10) # 1c0057a8 <main+0x92c>
1c00579c:	00150005 	move	$r5,$r0
1c0057a0:	02808804 	addi.w	$r4,$r0,34(0x22)
1c0057a4:	57be3bff 	bl	-16840(0xfffbe38) # 1c0015dc <gpio_write_pin>
1c0057a8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0057ac:	02a2198c 	addi.w	$r12,$r12,-1914(0x886)
1c0057b0:	2a00018c 	ld.bu	$r12,$r12,0
1c0057b4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0057b8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0057bc:	28a1b18c 	ld.w	$r12,$r12,-1940(0x86c)
1c0057c0:	2a40018c 	ld.hu	$r12,$r12,0
1c0057c4:	6800598d 	bltu	$r12,$r13,88(0x58) # 1c00581c <main+0x9a0>
1c0057c8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0057cc:	02a1918c 	addi.w	$r12,$r12,-1948(0x864)
1c0057d0:	2a00018c 	ld.bu	$r12,$r12,0
1c0057d4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0057d8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0057dc:	28a0e18c 	ld.w	$r12,$r12,-1992(0x838)
1c0057e0:	2a40018c 	ld.hu	$r12,$r12,0
1c0057e4:	680039ac 	bltu	$r13,$r12,56(0x38) # 1c00581c <main+0x9a0>
1c0057e8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0057ec:	02a1158c 	addi.w	$r12,$r12,-1979(0x845)
1c0057f0:	2a00018c 	ld.bu	$r12,$r12,0
1c0057f4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0057f8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0057fc:	28a0418c 	ld.w	$r12,$r12,-2032(0x810)
1c005800:	2a40018c 	ld.hu	$r12,$r12,0
1c005804:	6800198d 	bltu	$r12,$r13,24(0x18) # 1c00581c <main+0x9a0>
1c005808:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00580c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005810:	57bdcfff 	bl	-16948(0xfffbdcc) # 1c0015dc <gpio_write_pin>
1c005814:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c005818:	54173c00 	bl	5948(0x173c) # 1c006f54 <YUYIN_Ctrl>
1c00581c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005820:	02a0498c 	addi.w	$r12,$r12,-2030(0x812)
1c005824:	2a00018c 	ld.bu	$r12,$r12,0
1c005828:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00582c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005830:	289fe18c 	ld.w	$r12,$r12,2040(0x7f8)
1c005834:	2a40018c 	ld.hu	$r12,$r12,0
1c005838:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c005844 <main+0x9c8>
1c00583c:	00150004 	move	$r4,$r0
1c005840:	5400d000 	bl	208(0xd0) # 1c005910 <BEEP_on>
1c005844:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005848:	029fa18c 	addi.w	$r12,$r12,2024(0x7e8)
1c00584c:	2a00018c 	ld.bu	$r12,$r12,0
1c005850:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005854:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005858:	289ef18c 	ld.w	$r12,$r12,1980(0x7bc)
1c00585c:	2a40018c 	ld.hu	$r12,$r12,0
1c005860:	6bf781ac 	bltu	$r13,$r12,-2176(0x3f780) # 1c004fe0 <main+0x164>
1c005864:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005868:	029f258c 	addi.w	$r12,$r12,1993(0x7c9)
1c00586c:	2a00018c 	ld.bu	$r12,$r12,0
1c005870:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005874:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005878:	289e518c 	ld.w	$r12,$r12,1940(0x794)
1c00587c:	2a40018c 	ld.hu	$r12,$r12,0
1c005880:	6bf7618d 	bltu	$r12,$r13,-2208(0x3f760) # 1c004fe0 <main+0x164>
1c005884:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005888:	029ea98c 	addi.w	$r12,$r12,1962(0x7aa)
1c00588c:	2a00018c 	ld.bu	$r12,$r12,0
1c005890:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005894:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005898:	289e418c 	ld.w	$r12,$r12,1936(0x790)
1c00589c:	2a40018c 	ld.hu	$r12,$r12,0
1c0058a0:	6bf741ac 	bltu	$r13,$r12,-2240(0x3f740) # 1c004fe0 <main+0x164>
1c0058a4:	00150004 	move	$r4,$r0
1c0058a8:	54006800 	bl	104(0x68) # 1c005910 <BEEP_on>
1c0058ac:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0058b0:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c0058b4:	57bd2bff 	bl	-17112(0xfffbd28) # 1c0015dc <gpio_write_pin>
1c0058b8:	00150005 	move	$r5,$r0
1c0058bc:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c0058c0:	57bd1fff 	bl	-17124(0xfffbd1c) # 1c0015dc <gpio_write_pin>
1c0058c4:	00150005 	move	$r5,$r0
1c0058c8:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0058cc:	57bd13ff 	bl	-17136(0xfffbd10) # 1c0015dc <gpio_write_pin>
1c0058d0:	53f713ff 	b	-2288(0xffff710) # 1c004fe0 <main+0x164>

1c0058d4 <BEEP_Init>:
BEEP_Init():
1c0058d4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0058d8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0058dc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0058e0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0058e4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0058e8:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c0058ec:	57bf77ff 	bl	-16524(0xfffbf74) # 1c001860 <gpio_set_direction>
1c0058f0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0058f4:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c0058f8:	57bce7ff 	bl	-17180(0xfffbce4) # 1c0015dc <gpio_write_pin>
1c0058fc:	03400000 	andi	$r0,$r0,0x0
1c005900:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005904:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005908:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00590c:	4c000020 	jirl	$r0,$r1,0

1c005910 <BEEP_on>:
BEEP_on():
1c005910:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005914:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005918:	29806076 	st.w	$r22,$r3,24(0x18)
1c00591c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005920:	0015008c 	move	$r12,$r4
1c005924:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005928:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00592c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005930:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c005940 <BEEP_on+0x30>
1c005934:	00150005 	move	$r5,$r0
1c005938:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c00593c:	57bca3ff 	bl	-17248(0xfffbca0) # 1c0015dc <gpio_write_pin>
1c005940:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005944:	44001180 	bnez	$r12,16(0x10) # 1c005954 <BEEP_on+0x44>
1c005948:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00594c:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c005950:	57bc8fff 	bl	-17268(0xfffbc8c) # 1c0015dc <gpio_write_pin>
1c005954:	03400000 	andi	$r0,$r0,0x0
1c005958:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00595c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005960:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005964:	4c000020 	jirl	$r0,$r1,0

1c005968 <IIC_Delay>:
IIC_Delay():
1c005968:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00596c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c005970:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005974:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005978:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00597c:	50001000 	b	16(0x10) # 1c00598c <IIC_Delay+0x24>
1c005980:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005984:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c005988:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00598c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005990:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c005980 <IIC_Delay+0x18>
1c005994:	03400000 	andi	$r0,$r0,0x0
1c005998:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00599c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0059a0:	4c000020 	jirl	$r0,$r1,0

1c0059a4 <IIC_Init>:
IIC_Init():
1c0059a4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0059a8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0059ac:	29802076 	st.w	$r22,$r3,8(0x8)
1c0059b0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0059b4:	00150005 	move	$r5,$r0
1c0059b8:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0059bc:	57bc9bff 	bl	-17256(0xfffbc98) # 1c001654 <gpio_pin_remap>
1c0059c0:	00150005 	move	$r5,$r0
1c0059c4:	02801404 	addi.w	$r4,$r0,5(0x5)
1c0059c8:	57bc8fff 	bl	-17268(0xfffbc8c) # 1c001654 <gpio_pin_remap>
1c0059cc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0059d0:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0059d4:	57be8fff 	bl	-16756(0xfffbe8c) # 1c001860 <gpio_set_direction>
1c0059d8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0059dc:	02801404 	addi.w	$r4,$r0,5(0x5)
1c0059e0:	57be83ff 	bl	-16768(0xfffbe80) # 1c001860 <gpio_set_direction>
1c0059e4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0059e8:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0059ec:	57bbf3ff 	bl	-17424(0xfffbbf0) # 1c0015dc <gpio_write_pin>
1c0059f0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0059f4:	02801404 	addi.w	$r4,$r0,5(0x5)
1c0059f8:	57bbe7ff 	bl	-17436(0xfffbbe4) # 1c0015dc <gpio_write_pin>
1c0059fc:	03400000 	andi	$r0,$r0,0x0
1c005a00:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005a04:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005a08:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005a0c:	4c000020 	jirl	$r0,$r1,0

1c005a10 <SDA_IN>:
SDA_IN():
1c005a10:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005a14:	29803061 	st.w	$r1,$r3,12(0xc)
1c005a18:	29802076 	st.w	$r22,$r3,8(0x8)
1c005a1c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005a20:	00150005 	move	$r5,$r0
1c005a24:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005a28:	57be3bff 	bl	-16840(0xfffbe38) # 1c001860 <gpio_set_direction>
1c005a2c:	03400000 	andi	$r0,$r0,0x0
1c005a30:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005a34:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005a38:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005a3c:	4c000020 	jirl	$r0,$r1,0

1c005a40 <SDA_OUT>:
SDA_OUT():
1c005a40:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005a44:	29803061 	st.w	$r1,$r3,12(0xc)
1c005a48:	29802076 	st.w	$r22,$r3,8(0x8)
1c005a4c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005a50:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005a54:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005a58:	57be0bff 	bl	-16888(0xfffbe08) # 1c001860 <gpio_set_direction>
1c005a5c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005a60:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005a64:	57bb7bff 	bl	-17544(0xfffbb78) # 1c0015dc <gpio_write_pin>
1c005a68:	03400000 	andi	$r0,$r0,0x0
1c005a6c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005a70:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005a74:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005a78:	4c000020 	jirl	$r0,$r1,0

1c005a7c <IIC_Start>:
IIC_Start():
1c005a7c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005a80:	29803061 	st.w	$r1,$r3,12(0xc)
1c005a84:	29802076 	st.w	$r22,$r3,8(0x8)
1c005a88:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005a8c:	57ffb7ff 	bl	-76(0xfffffb4) # 1c005a40 <SDA_OUT>
1c005a90:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005a94:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005a98:	57bb47ff 	bl	-17596(0xfffbb44) # 1c0015dc <gpio_write_pin>
1c005a9c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005aa0:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005aa4:	57bb3bff 	bl	-17608(0xfffbb38) # 1c0015dc <gpio_write_pin>
1c005aa8:	57fec3ff 	bl	-320(0xffffec0) # 1c005968 <IIC_Delay>
1c005aac:	00150005 	move	$r5,$r0
1c005ab0:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005ab4:	57bb2bff 	bl	-17624(0xfffbb28) # 1c0015dc <gpio_write_pin>
1c005ab8:	57feb3ff 	bl	-336(0xffffeb0) # 1c005968 <IIC_Delay>
1c005abc:	00150005 	move	$r5,$r0
1c005ac0:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005ac4:	57bb1bff 	bl	-17640(0xfffbb18) # 1c0015dc <gpio_write_pin>
1c005ac8:	03400000 	andi	$r0,$r0,0x0
1c005acc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005ad0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005ad4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005ad8:	4c000020 	jirl	$r0,$r1,0

1c005adc <IIC_Stop>:
IIC_Stop():
1c005adc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005ae0:	29803061 	st.w	$r1,$r3,12(0xc)
1c005ae4:	29802076 	st.w	$r22,$r3,8(0x8)
1c005ae8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005aec:	57ff57ff 	bl	-172(0xfffff54) # 1c005a40 <SDA_OUT>
1c005af0:	00150005 	move	$r5,$r0
1c005af4:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005af8:	57bae7ff 	bl	-17692(0xfffbae4) # 1c0015dc <gpio_write_pin>
1c005afc:	00150005 	move	$r5,$r0
1c005b00:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005b04:	57badbff 	bl	-17704(0xfffbad8) # 1c0015dc <gpio_write_pin>
1c005b08:	57fe63ff 	bl	-416(0xffffe60) # 1c005968 <IIC_Delay>
1c005b0c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005b10:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005b14:	57bacbff 	bl	-17720(0xfffbac8) # 1c0015dc <gpio_write_pin>
1c005b18:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005b1c:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005b20:	57babfff 	bl	-17732(0xfffbabc) # 1c0015dc <gpio_write_pin>
1c005b24:	57fe47ff 	bl	-444(0xffffe44) # 1c005968 <IIC_Delay>
1c005b28:	03400000 	andi	$r0,$r0,0x0
1c005b2c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005b30:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005b34:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005b38:	4c000020 	jirl	$r0,$r1,0

1c005b3c <IIC_Wait_Ack>:
IIC_Wait_Ack():
1c005b3c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005b40:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005b44:	29806076 	st.w	$r22,$r3,24(0x18)
1c005b48:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005b4c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005b50:	57fec3ff 	bl	-320(0xffffec0) # 1c005a10 <SDA_IN>
1c005b54:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005b58:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005b5c:	57ba83ff 	bl	-17792(0xfffba80) # 1c0015dc <gpio_write_pin>
1c005b60:	57fe0bff 	bl	-504(0xffffe08) # 1c005968 <IIC_Delay>
1c005b64:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005b68:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005b6c:	57ba73ff 	bl	-17808(0xfffba70) # 1c0015dc <gpio_write_pin>
1c005b70:	57fdfbff 	bl	-520(0xffffdf8) # 1c005968 <IIC_Delay>
1c005b74:	50002800 	b	40(0x28) # 1c005b9c <IIC_Wait_Ack+0x60>
1c005b78:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005b7c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005b80:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005b84:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005b88:	0283e80c 	addi.w	$r12,$r0,250(0xfa)
1c005b8c:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c005b9c <IIC_Wait_Ack+0x60>
1c005b90:	57ff4fff 	bl	-180(0xfffff4c) # 1c005adc <IIC_Stop>
1c005b94:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005b98:	50002400 	b	36(0x24) # 1c005bbc <IIC_Wait_Ack+0x80>
1c005b9c:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005ba0:	57b9efff 	bl	-17940(0xfffb9ec) # 1c00158c <gpio_get_pin>
1c005ba4:	0015008c 	move	$r12,$r4
1c005ba8:	47ffd19f 	bnez	$r12,-48(0x7fffd0) # 1c005b78 <IIC_Wait_Ack+0x3c>
1c005bac:	00150005 	move	$r5,$r0
1c005bb0:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005bb4:	57ba2bff 	bl	-17880(0xfffba28) # 1c0015dc <gpio_write_pin>
1c005bb8:	0015000c 	move	$r12,$r0
1c005bbc:	00150184 	move	$r4,$r12
1c005bc0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005bc4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005bc8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005bcc:	4c000020 	jirl	$r0,$r1,0

1c005bd0 <IIC_Send_Byte>:
IIC_Send_Byte():
1c005bd0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005bd4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005bd8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005bdc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005be0:	0015008c 	move	$r12,$r4
1c005be4:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005be8:	57fe5bff 	bl	-424(0xffffe58) # 1c005a40 <SDA_OUT>
1c005bec:	00150005 	move	$r5,$r0
1c005bf0:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005bf4:	57b9ebff 	bl	-17944(0xfffb9e8) # 1c0015dc <gpio_write_pin>
1c005bf8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005bfc:	50006000 	b	96(0x60) # 1c005c5c <IIC_Send_Byte+0x8c>
1c005c00:	283f7ecc 	ld.b	$r12,$r22,-33(0xfdf)
1c005c04:	64001580 	bge	$r12,$r0,20(0x14) # 1c005c18 <IIC_Send_Byte+0x48>
1c005c08:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005c0c:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005c10:	57b9cfff 	bl	-17972(0xfffb9cc) # 1c0015dc <gpio_write_pin>
1c005c14:	50001000 	b	16(0x10) # 1c005c24 <IIC_Send_Byte+0x54>
1c005c18:	00150005 	move	$r5,$r0
1c005c1c:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005c20:	57b9bfff 	bl	-17988(0xfffb9bc) # 1c0015dc <gpio_write_pin>
1c005c24:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c005c28:	0040858c 	slli.w	$r12,$r12,0x1
1c005c2c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005c30:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005c34:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005c38:	57b9a7ff 	bl	-18012(0xfffb9a4) # 1c0015dc <gpio_write_pin>
1c005c3c:	57fd2fff 	bl	-724(0xffffd2c) # 1c005968 <IIC_Delay>
1c005c40:	00150005 	move	$r5,$r0
1c005c44:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005c48:	57b997ff 	bl	-18028(0xfffb994) # 1c0015dc <gpio_write_pin>
1c005c4c:	57fd1fff 	bl	-740(0xffffd1c) # 1c005968 <IIC_Delay>
1c005c50:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005c54:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005c58:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005c5c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005c60:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005c64:	6fff9d8d 	bgeu	$r12,$r13,-100(0x3ff9c) # 1c005c00 <IIC_Send_Byte+0x30>
1c005c68:	03400000 	andi	$r0,$r0,0x0
1c005c6c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005c70:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005c74:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005c78:	4c000020 	jirl	$r0,$r1,0

1c005c7c <DHT11_Rst>:
DHT11_Rst():
1c005c7c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005c80:	29803061 	st.w	$r1,$r3,12(0xc)
1c005c84:	29802076 	st.w	$r22,$r3,8(0x8)
1c005c88:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005c8c:	54007000 	bl	112(0x70) # 1c005cfc <DHT11_IO_Out>
1c005c90:	00150005 	move	$r5,$r0
1c005c94:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005c98:	57b947ff 	bl	-18108(0xfffb944) # 1c0015dc <gpio_write_pin>
1c005c9c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005ca0:	57d8cbff 	bl	-10040(0xfffd8c8) # 1c003568 <delay_ms>
1c005ca4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005ca8:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005cac:	57b933ff 	bl	-18128(0xfffb930) # 1c0015dc <gpio_write_pin>
1c005cb0:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c005cb4:	57d87fff 	bl	-10116(0xfffd87c) # 1c003530 <delay_us>
1c005cb8:	03400000 	andi	$r0,$r0,0x0
1c005cbc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005cc0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005cc4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005cc8:	4c000020 	jirl	$r0,$r1,0

1c005ccc <DHT11_IO_In>:
DHT11_IO_In():
1c005ccc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005cd0:	29803061 	st.w	$r1,$r3,12(0xc)
1c005cd4:	29802076 	st.w	$r22,$r3,8(0x8)
1c005cd8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005cdc:	00150005 	move	$r5,$r0
1c005ce0:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005ce4:	57bb7fff 	bl	-17540(0xfffbb7c) # 1c001860 <gpio_set_direction>
1c005ce8:	03400000 	andi	$r0,$r0,0x0
1c005cec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005cf0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005cf4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005cf8:	4c000020 	jirl	$r0,$r1,0

1c005cfc <DHT11_IO_Out>:
DHT11_IO_Out():
1c005cfc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005d00:	29803061 	st.w	$r1,$r3,12(0xc)
1c005d04:	29802076 	st.w	$r22,$r3,8(0x8)
1c005d08:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005d0c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005d10:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005d14:	57bb4fff 	bl	-17588(0xfffbb4c) # 1c001860 <gpio_set_direction>
1c005d18:	03400000 	andi	$r0,$r0,0x0
1c005d1c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005d20:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005d24:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005d28:	4c000020 	jirl	$r0,$r1,0

1c005d2c <DHT11_Check>:
DHT11_Check():
1c005d2c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005d30:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005d34:	29806076 	st.w	$r22,$r3,24(0x18)
1c005d38:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005d3c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005d40:	57ff8fff 	bl	-116(0xfffff8c) # 1c005ccc <DHT11_IO_In>
1c005d44:	50001000 	b	16(0x10) # 1c005d54 <DHT11_Check+0x28>
1c005d48:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005d4c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005d50:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005d54:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005d58:	57b837ff 	bl	-18380(0xfffb834) # 1c00158c <gpio_get_pin>
1c005d5c:	0015008c 	move	$r12,$r4
1c005d60:	40001180 	beqz	$r12,16(0x10) # 1c005d70 <DHT11_Check+0x44>
1c005d64:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005d68:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c005d6c:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c005d48 <DHT11_Check+0x1c>
1c005d70:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005d74:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c005d78:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c005d84 <DHT11_Check+0x58>
1c005d7c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005d80:	50004c00 	b	76(0x4c) # 1c005dcc <DHT11_Check+0xa0>
1c005d84:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005d88:	50001000 	b	16(0x10) # 1c005d98 <DHT11_Check+0x6c>
1c005d8c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005d90:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005d94:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005d98:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005d9c:	57b7f3ff 	bl	-18448(0xfffb7f0) # 1c00158c <gpio_get_pin>
1c005da0:	0015008c 	move	$r12,$r4
1c005da4:	44001180 	bnez	$r12,16(0x10) # 1c005db4 <DHT11_Check+0x88>
1c005da8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005dac:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c005db0:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c005d8c <DHT11_Check+0x60>
1c005db4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005db8:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c005dbc:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c005dc8 <DHT11_Check+0x9c>
1c005dc0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005dc4:	50000800 	b	8(0x8) # 1c005dcc <DHT11_Check+0xa0>
1c005dc8:	0015000c 	move	$r12,$r0
1c005dcc:	00150184 	move	$r4,$r12
1c005dd0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005dd4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005dd8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005ddc:	4c000020 	jirl	$r0,$r1,0

1c005de0 <DHT11_Read_Bit>:
DHT11_Read_Bit():
1c005de0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005de4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005de8:	29806076 	st.w	$r22,$r3,24(0x18)
1c005dec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005df0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005df4:	50001000 	b	16(0x10) # 1c005e04 <DHT11_Read_Bit+0x24>
1c005df8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005dfc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005e00:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005e04:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005e08:	57b787ff 	bl	-18556(0xfffb784) # 1c00158c <gpio_get_pin>
1c005e0c:	0015008c 	move	$r12,$r4
1c005e10:	40001180 	beqz	$r12,16(0x10) # 1c005e20 <DHT11_Read_Bit+0x40>
1c005e14:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005e18:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c005e1c:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c005df8 <DHT11_Read_Bit+0x18>
1c005e20:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005e24:	50001000 	b	16(0x10) # 1c005e34 <DHT11_Read_Bit+0x54>
1c005e28:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005e2c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005e30:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005e34:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005e38:	57b757ff 	bl	-18604(0xfffb754) # 1c00158c <gpio_get_pin>
1c005e3c:	0015008c 	move	$r12,$r4
1c005e40:	44001180 	bnez	$r12,16(0x10) # 1c005e50 <DHT11_Read_Bit+0x70>
1c005e44:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005e48:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c005e4c:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c005e28 <DHT11_Read_Bit+0x48>
1c005e50:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c005e54:	57d6dfff 	bl	-10532(0xfffd6dc) # 1c003530 <delay_us>
1c005e58:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005e5c:	57b733ff 	bl	-18640(0xfffb730) # 1c00158c <gpio_get_pin>
1c005e60:	0015008c 	move	$r12,$r4
1c005e64:	40000d80 	beqz	$r12,12(0xc) # 1c005e70 <DHT11_Read_Bit+0x90>
1c005e68:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005e6c:	50000800 	b	8(0x8) # 1c005e74 <DHT11_Read_Bit+0x94>
1c005e70:	0015000c 	move	$r12,$r0
1c005e74:	00150184 	move	$r4,$r12
1c005e78:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005e7c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005e80:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005e84:	4c000020 	jirl	$r0,$r1,0

1c005e88 <DHT11_Read_Byte>:
DHT11_Read_Byte():
1c005e88:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005e8c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005e90:	29806076 	st.w	$r22,$r3,24(0x18)
1c005e94:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005e98:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005e9c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005ea0:	50003400 	b	52(0x34) # 1c005ed4 <DHT11_Read_Byte+0x4c>
1c005ea4:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005ea8:	0040858c 	slli.w	$r12,$r12,0x1
1c005eac:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005eb0:	57ff33ff 	bl	-208(0xfffff30) # 1c005de0 <DHT11_Read_Bit>
1c005eb4:	0015008c 	move	$r12,$r4
1c005eb8:	0015018d 	move	$r13,$r12
1c005ebc:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005ec0:	001531ac 	or	$r12,$r13,$r12
1c005ec4:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005ec8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005ecc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005ed0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005ed4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005ed8:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005edc:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c005ea4 <DHT11_Read_Byte+0x1c>
1c005ee0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005ee4:	00150184 	move	$r4,$r12
1c005ee8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005eec:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005ef0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005ef4:	4c000020 	jirl	$r0,$r1,0

1c005ef8 <DHT11_Read_Data>:
DHT11_Read_Data():
1c005ef8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005efc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005f00:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005f04:	29809077 	st.w	$r23,$r3,36(0x24)
1c005f08:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005f0c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005f10:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005f14:	57fd6bff 	bl	-664(0xffffd68) # 1c005c7c <DHT11_Rst>
1c005f18:	57fe17ff 	bl	-492(0xffffe14) # 1c005d2c <DHT11_Check>
1c005f1c:	0015008c 	move	$r12,$r4
1c005f20:	4400c180 	bnez	$r12,192(0xc0) # 1c005fe0 <DHT11_Read_Data+0xe8>
1c005f24:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005f28:	50002800 	b	40(0x28) # 1c005f50 <DHT11_Read_Data+0x58>
1c005f2c:	2a3fbed7 	ld.bu	$r23,$r22,-17(0xfef)
1c005f30:	57ff5bff 	bl	-168(0xfffff58) # 1c005e88 <DHT11_Read_Byte>
1c005f34:	0015008c 	move	$r12,$r4
1c005f38:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c005f3c:	00105dad 	add.w	$r13,$r13,$r23
1c005f40:	293fe1ac 	st.b	$r12,$r13,-8(0xff8)
1c005f44:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005f48:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005f4c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005f50:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005f54:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c005f58:	6fffd58d 	bgeu	$r12,$r13,-44(0x3ffd4) # 1c005f2c <DHT11_Read_Data+0x34>
1c005f5c:	2a3fa2cc 	ld.bu	$r12,$r22,-24(0xfe8)
1c005f60:	0015018d 	move	$r13,$r12
1c005f64:	2a3fa6cc 	ld.bu	$r12,$r22,-23(0xfe9)
1c005f68:	001031ac 	add.w	$r12,$r13,$r12
1c005f6c:	2a3faacd 	ld.bu	$r13,$r22,-22(0xfea)
1c005f70:	0010358c 	add.w	$r12,$r12,$r13
1c005f74:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c005f78:	0010358c 	add.w	$r12,$r12,$r13
1c005f7c:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c005f80:	5c00698d 	bne	$r12,$r13,104(0x68) # 1c005fe8 <DHT11_Read_Data+0xf0>
1c005f84:	2a3fa2cc 	ld.bu	$r12,$r22,-24(0xfe8)
1c005f88:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005f8c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005f90:	001c31ac 	mul.w	$r12,$r13,$r12
1c005f94:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005f98:	2a3fa6cc 	ld.bu	$r12,$r22,-23(0xfe9)
1c005f9c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005fa0:	001031ac 	add.w	$r12,$r13,$r12
1c005fa4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005fa8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005fac:	2940018d 	st.h	$r13,$r12,0
1c005fb0:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c005fb4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005fb8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005fbc:	001c31ac 	mul.w	$r12,$r13,$r12
1c005fc0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005fc4:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c005fc8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005fcc:	001031ac 	add.w	$r12,$r13,$r12
1c005fd0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005fd4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005fd8:	2940018d 	st.h	$r13,$r12,0
1c005fdc:	50000c00 	b	12(0xc) # 1c005fe8 <DHT11_Read_Data+0xf0>
1c005fe0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005fe4:	50000800 	b	8(0x8) # 1c005fec <DHT11_Read_Data+0xf4>
1c005fe8:	0015000c 	move	$r12,$r0
1c005fec:	00150184 	move	$r4,$r12
1c005ff0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005ff4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005ff8:	28809077 	ld.w	$r23,$r3,36(0x24)
1c005ffc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006000:	4c000020 	jirl	$r0,$r1,0

1c006004 <DHT11_Init>:
DHT11_Init():
1c006004:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006008:	29803061 	st.w	$r1,$r3,12(0xc)
1c00600c:	29802076 	st.w	$r22,$r3,8(0x8)
1c006010:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006014:	00150005 	move	$r5,$r0
1c006018:	02804404 	addi.w	$r4,$r0,17(0x11)
1c00601c:	57b63bff 	bl	-18888(0xfffb638) # 1c001654 <gpio_pin_remap>
1c006020:	57fcdfff 	bl	-804(0xffffcdc) # 1c005cfc <DHT11_IO_Out>
1c006024:	57fc5bff 	bl	-936(0xffffc58) # 1c005c7c <DHT11_Rst>
1c006028:	57fd07ff 	bl	-764(0xffffd04) # 1c005d2c <DHT11_Check>
1c00602c:	0015008c 	move	$r12,$r4
1c006030:	00150184 	move	$r4,$r12
1c006034:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006038:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00603c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006040:	4c000020 	jirl	$r0,$r1,0

1c006044 <FAN_Init>:
FAN_Init():
1c006044:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006048:	29803061 	st.w	$r1,$r3,12(0xc)
1c00604c:	29802076 	st.w	$r22,$r3,8(0x8)
1c006050:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006054:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006058:	02808804 	addi.w	$r4,$r0,34(0x22)
1c00605c:	57b807ff 	bl	-18428(0xfffb804) # 1c001860 <gpio_set_direction>
1c006060:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006064:	02808804 	addi.w	$r4,$r0,34(0x22)
1c006068:	57b577ff 	bl	-19084(0xfffb574) # 1c0015dc <gpio_write_pin>
1c00606c:	03400000 	andi	$r0,$r0,0x0
1c006070:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006074:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006078:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00607c:	4c000020 	jirl	$r0,$r1,0

1c006080 <LED_Init>:
LED_Init():
1c006080:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006084:	29803061 	st.w	$r1,$r3,12(0xc)
1c006088:	29802076 	st.w	$r22,$r3,8(0x8)
1c00608c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006090:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006094:	02805004 	addi.w	$r4,$r0,20(0x14)
1c006098:	57b7cbff 	bl	-18488(0xfffb7c8) # 1c001860 <gpio_set_direction>
1c00609c:	03400000 	andi	$r0,$r0,0x0
1c0060a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0060a4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0060a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0060ac:	4c000020 	jirl	$r0,$r1,0

1c0060b0 <KEY_Init>:
KEY_Init():
1c0060b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0060b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0060b8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0060bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0060c0:	00150005 	move	$r5,$r0
1c0060c4:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0060c8:	57b79bff 	bl	-18536(0xfffb798) # 1c001860 <gpio_set_direction>
1c0060cc:	03400000 	andi	$r0,$r0,0x0
1c0060d0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0060d4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0060d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0060dc:	4c000020 	jirl	$r0,$r1,0

1c0060e0 <OLED_Hardware_Init>:
OLED_Hardware_Init():
1c0060e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0060e4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0060e8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0060ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0060f0:	57f8b7ff 	bl	-1868(0xffff8b4) # 1c0059a4 <IIC_Init>
1c0060f4:	03400000 	andi	$r0,$r0,0x0
1c0060f8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0060fc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006100:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006104:	4c000020 	jirl	$r0,$r1,0

1c006108 <OLED_WR_Byte>:
OLED_WR_Byte():
1c006108:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00610c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006110:	29806076 	st.w	$r22,$r3,24(0x18)
1c006114:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006118:	0015008c 	move	$r12,$r4
1c00611c:	001500ad 	move	$r13,$r5
1c006120:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006124:	001501ac 	move	$r12,$r13
1c006128:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c00612c:	57f953ff 	bl	-1712(0xffff950) # 1c005a7c <IIC_Start>
1c006130:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c006134:	57fa9fff 	bl	-1380(0xffffa9c) # 1c005bd0 <IIC_Send_Byte>
1c006138:	57fa07ff 	bl	-1532(0xffffa04) # 1c005b3c <IIC_Wait_Ack>
1c00613c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006140:	00150184 	move	$r4,$r12
1c006144:	57fa8fff 	bl	-1396(0xffffa8c) # 1c005bd0 <IIC_Send_Byte>
1c006148:	57f9f7ff 	bl	-1548(0xffff9f4) # 1c005b3c <IIC_Wait_Ack>
1c00614c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006150:	00150184 	move	$r4,$r12
1c006154:	57fa7fff 	bl	-1412(0xffffa7c) # 1c005bd0 <IIC_Send_Byte>
1c006158:	57f9e7ff 	bl	-1564(0xffff9e4) # 1c005b3c <IIC_Wait_Ack>
1c00615c:	57f983ff 	bl	-1664(0xffff980) # 1c005adc <IIC_Stop>
1c006160:	03400000 	andi	$r0,$r0,0x0
1c006164:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006168:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00616c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006170:	4c000020 	jirl	$r0,$r1,0

1c006174 <OLED_Set_Pos>:
OLED_Set_Pos():
1c006174:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006178:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00617c:	29806076 	st.w	$r22,$r3,24(0x18)
1c006180:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006184:	0015008c 	move	$r12,$r4
1c006188:	001500ad 	move	$r13,$r5
1c00618c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006190:	001501ac 	move	$r12,$r13
1c006194:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c006198:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00619c:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c0061a0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0061a4:	00150005 	move	$r5,$r0
1c0061a8:	00150184 	move	$r4,$r12
1c0061ac:	57ff5fff 	bl	-164(0xfffff5c) # 1c006108 <OLED_WR_Byte>
1c0061b0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0061b4:	0044918c 	srli.w	$r12,$r12,0x4
1c0061b8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0061bc:	0380418c 	ori	$r12,$r12,0x10
1c0061c0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0061c4:	00150005 	move	$r5,$r0
1c0061c8:	00150184 	move	$r4,$r12
1c0061cc:	57ff3fff 	bl	-196(0xfffff3c) # 1c006108 <OLED_WR_Byte>
1c0061d0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0061d4:	03403d8c 	andi	$r12,$r12,0xf
1c0061d8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0061dc:	00150005 	move	$r5,$r0
1c0061e0:	00150184 	move	$r4,$r12
1c0061e4:	57ff27ff 	bl	-220(0xfffff24) # 1c006108 <OLED_WR_Byte>
1c0061e8:	03400000 	andi	$r0,$r0,0x0
1c0061ec:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0061f0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0061f4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0061f8:	4c000020 	jirl	$r0,$r1,0

1c0061fc <OLED_Clear>:
OLED_Clear():
1c0061fc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006200:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006204:	29806076 	st.w	$r22,$r3,24(0x18)
1c006208:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00620c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006210:	50006800 	b	104(0x68) # 1c006278 <OLED_Clear+0x7c>
1c006214:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006218:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c00621c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006220:	00150005 	move	$r5,$r0
1c006224:	00150184 	move	$r4,$r12
1c006228:	57fee3ff 	bl	-288(0xffffee0) # 1c006108 <OLED_WR_Byte>
1c00622c:	00150005 	move	$r5,$r0
1c006230:	02800804 	addi.w	$r4,$r0,2(0x2)
1c006234:	57fed7ff 	bl	-300(0xffffed4) # 1c006108 <OLED_WR_Byte>
1c006238:	00150005 	move	$r5,$r0
1c00623c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c006240:	57fecbff 	bl	-312(0xffffec8) # 1c006108 <OLED_WR_Byte>
1c006244:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c006248:	50001c00 	b	28(0x1c) # 1c006264 <OLED_Clear+0x68>
1c00624c:	02810005 	addi.w	$r5,$r0,64(0x40)
1c006250:	00150004 	move	$r4,$r0
1c006254:	57feb7ff 	bl	-332(0xffffeb4) # 1c006108 <OLED_WR_Byte>
1c006258:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00625c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006260:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c006264:	283fbacc 	ld.b	$r12,$r22,-18(0xfee)
1c006268:	67ffe580 	bge	$r12,$r0,-28(0x3ffe4) # 1c00624c <OLED_Clear+0x50>
1c00626c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006270:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006274:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006278:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00627c:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c006280:	6fff958d 	bgeu	$r12,$r13,-108(0x3ff94) # 1c006214 <OLED_Clear+0x18>
1c006284:	03400000 	andi	$r0,$r0,0x0
1c006288:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00628c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006290:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006294:	4c000020 	jirl	$r0,$r1,0

1c006298 <OLED_Init>:
OLED_Init():
1c006298:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00629c:	29803061 	st.w	$r1,$r3,12(0xc)
1c0062a0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0062a4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0062a8:	57fe3bff 	bl	-456(0xffffe38) # 1c0060e0 <OLED_Hardware_Init>
1c0062ac:	02819004 	addi.w	$r4,$r0,100(0x64)
1c0062b0:	57d2bbff 	bl	-11592(0xfffd2b8) # 1c003568 <delay_ms>
1c0062b4:	57ff4bff 	bl	-184(0xfffff48) # 1c0061fc <OLED_Clear>
1c0062b8:	00150005 	move	$r5,$r0
1c0062bc:	00150004 	move	$r4,$r0
1c0062c0:	57feb7ff 	bl	-332(0xffffeb4) # 1c006174 <OLED_Set_Pos>
1c0062c4:	00150005 	move	$r5,$r0
1c0062c8:	0282b804 	addi.w	$r4,$r0,174(0xae)
1c0062cc:	57fe3fff 	bl	-452(0xffffe3c) # 1c006108 <OLED_WR_Byte>
1c0062d0:	00150005 	move	$r5,$r0
1c0062d4:	00150004 	move	$r4,$r0
1c0062d8:	57fe33ff 	bl	-464(0xffffe30) # 1c006108 <OLED_WR_Byte>
1c0062dc:	00150005 	move	$r5,$r0
1c0062e0:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0062e4:	57fe27ff 	bl	-476(0xffffe24) # 1c006108 <OLED_WR_Byte>
1c0062e8:	00150005 	move	$r5,$r0
1c0062ec:	02810004 	addi.w	$r4,$r0,64(0x40)
1c0062f0:	57fe1bff 	bl	-488(0xffffe18) # 1c006108 <OLED_WR_Byte>
1c0062f4:	00150005 	move	$r5,$r0
1c0062f8:	02820404 	addi.w	$r4,$r0,129(0x81)
1c0062fc:	57fe0fff 	bl	-500(0xffffe0c) # 1c006108 <OLED_WR_Byte>
1c006300:	00150005 	move	$r5,$r0
1c006304:	02833c04 	addi.w	$r4,$r0,207(0xcf)
1c006308:	57fe03ff 	bl	-512(0xffffe00) # 1c006108 <OLED_WR_Byte>
1c00630c:	00150005 	move	$r5,$r0
1c006310:	02828404 	addi.w	$r4,$r0,161(0xa1)
1c006314:	57fdf7ff 	bl	-524(0xffffdf4) # 1c006108 <OLED_WR_Byte>
1c006318:	00150005 	move	$r5,$r0
1c00631c:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c006320:	57fdebff 	bl	-536(0xffffde8) # 1c006108 <OLED_WR_Byte>
1c006324:	00150005 	move	$r5,$r0
1c006328:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c00632c:	57fddfff 	bl	-548(0xffffddc) # 1c006108 <OLED_WR_Byte>
1c006330:	00150005 	move	$r5,$r0
1c006334:	0282a004 	addi.w	$r4,$r0,168(0xa8)
1c006338:	57fdd3ff 	bl	-560(0xffffdd0) # 1c006108 <OLED_WR_Byte>
1c00633c:	00150005 	move	$r5,$r0
1c006340:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c006344:	57fdc7ff 	bl	-572(0xffffdc4) # 1c006108 <OLED_WR_Byte>
1c006348:	00150005 	move	$r5,$r0
1c00634c:	02820404 	addi.w	$r4,$r0,129(0x81)
1c006350:	57fdbbff 	bl	-584(0xffffdb8) # 1c006108 <OLED_WR_Byte>
1c006354:	00150005 	move	$r5,$r0
1c006358:	0283fc04 	addi.w	$r4,$r0,255(0xff)
1c00635c:	57fdafff 	bl	-596(0xffffdac) # 1c006108 <OLED_WR_Byte>
1c006360:	00150005 	move	$r5,$r0
1c006364:	02834c04 	addi.w	$r4,$r0,211(0xd3)
1c006368:	57fda3ff 	bl	-608(0xffffda0) # 1c006108 <OLED_WR_Byte>
1c00636c:	00150005 	move	$r5,$r0
1c006370:	00150004 	move	$r4,$r0
1c006374:	57fd97ff 	bl	-620(0xffffd94) # 1c006108 <OLED_WR_Byte>
1c006378:	00150005 	move	$r5,$r0
1c00637c:	02835404 	addi.w	$r4,$r0,213(0xd5)
1c006380:	57fd8bff 	bl	-632(0xffffd88) # 1c006108 <OLED_WR_Byte>
1c006384:	00150005 	move	$r5,$r0
1c006388:	02820004 	addi.w	$r4,$r0,128(0x80)
1c00638c:	57fd7fff 	bl	-644(0xffffd7c) # 1c006108 <OLED_WR_Byte>
1c006390:	00150005 	move	$r5,$r0
1c006394:	02836404 	addi.w	$r4,$r0,217(0xd9)
1c006398:	57fd73ff 	bl	-656(0xffffd70) # 1c006108 <OLED_WR_Byte>
1c00639c:	00150005 	move	$r5,$r0
1c0063a0:	0283c404 	addi.w	$r4,$r0,241(0xf1)
1c0063a4:	57fd67ff 	bl	-668(0xffffd64) # 1c006108 <OLED_WR_Byte>
1c0063a8:	00150005 	move	$r5,$r0
1c0063ac:	02836804 	addi.w	$r4,$r0,218(0xda)
1c0063b0:	57fd5bff 	bl	-680(0xffffd58) # 1c006108 <OLED_WR_Byte>
1c0063b4:	00150005 	move	$r5,$r0
1c0063b8:	02804804 	addi.w	$r4,$r0,18(0x12)
1c0063bc:	57fd4fff 	bl	-692(0xffffd4c) # 1c006108 <OLED_WR_Byte>
1c0063c0:	00150005 	move	$r5,$r0
1c0063c4:	02836c04 	addi.w	$r4,$r0,219(0xdb)
1c0063c8:	57fd43ff 	bl	-704(0xffffd40) # 1c006108 <OLED_WR_Byte>
1c0063cc:	00150005 	move	$r5,$r0
1c0063d0:	02810004 	addi.w	$r4,$r0,64(0x40)
1c0063d4:	57fd37ff 	bl	-716(0xffffd34) # 1c006108 <OLED_WR_Byte>
1c0063d8:	00150005 	move	$r5,$r0
1c0063dc:	02808004 	addi.w	$r4,$r0,32(0x20)
1c0063e0:	57fd2bff 	bl	-728(0xffffd28) # 1c006108 <OLED_WR_Byte>
1c0063e4:	00150005 	move	$r5,$r0
1c0063e8:	02800804 	addi.w	$r4,$r0,2(0x2)
1c0063ec:	57fd1fff 	bl	-740(0xffffd1c) # 1c006108 <OLED_WR_Byte>
1c0063f0:	00150005 	move	$r5,$r0
1c0063f4:	02823404 	addi.w	$r4,$r0,141(0x8d)
1c0063f8:	57fd13ff 	bl	-752(0xffffd10) # 1c006108 <OLED_WR_Byte>
1c0063fc:	00150005 	move	$r5,$r0
1c006400:	02805004 	addi.w	$r4,$r0,20(0x14)
1c006404:	57fd07ff 	bl	-764(0xffffd04) # 1c006108 <OLED_WR_Byte>
1c006408:	00150005 	move	$r5,$r0
1c00640c:	02829004 	addi.w	$r4,$r0,164(0xa4)
1c006410:	57fcfbff 	bl	-776(0xffffcf8) # 1c006108 <OLED_WR_Byte>
1c006414:	00150005 	move	$r5,$r0
1c006418:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c00641c:	57fcefff 	bl	-788(0xffffcec) # 1c006108 <OLED_WR_Byte>
1c006420:	00150005 	move	$r5,$r0
1c006424:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c006428:	57fce3ff 	bl	-800(0xffffce0) # 1c006108 <OLED_WR_Byte>
1c00642c:	00150005 	move	$r5,$r0
1c006430:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c006434:	57fcd7ff 	bl	-812(0xffffcd4) # 1c006108 <OLED_WR_Byte>
1c006438:	57fdc7ff 	bl	-572(0xffffdc4) # 1c0061fc <OLED_Clear>
1c00643c:	00150005 	move	$r5,$r0
1c006440:	00150004 	move	$r4,$r0
1c006444:	57fd33ff 	bl	-720(0xffffd30) # 1c006174 <OLED_Set_Pos>
1c006448:	03400000 	andi	$r0,$r0,0x0
1c00644c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006450:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006454:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006458:	4c000020 	jirl	$r0,$r1,0

1c00645c <OLED_ShowChar>:
OLED_ShowChar():
1c00645c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006460:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006464:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006468:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00646c:	0015008c 	move	$r12,$r4
1c006470:	001500af 	move	$r15,$r5
1c006474:	001500ce 	move	$r14,$r6
1c006478:	001500ed 	move	$r13,$r7
1c00647c:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c006480:	001501ec 	move	$r12,$r15
1c006484:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c006488:	001501cc 	move	$r12,$r14
1c00648c:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c006490:	001501ac 	move	$r12,$r13
1c006494:	293f6acc 	st.b	$r12,$r22,-38(0xfda)
1c006498:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00649c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0064a0:	2a3f6acd 	ld.bu	$r13,$r22,-38(0xfda)
1c0064a4:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0064a8:	58000dac 	beq	$r13,$r12,12(0xc) # 1c0064b4 <OLED_ShowChar+0x58>
1c0064ac:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0064b0:	293f6acc 	st.b	$r12,$r22,-38(0xfda)
1c0064b4:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c0064b8:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c0064bc:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c0064c0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0064c4:	50009800 	b	152(0x98) # 1c00655c <OLED_ShowChar+0x100>
1c0064c8:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0064cc:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c0064d0:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0064d4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0064d8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0064dc:	001031ac 	add.w	$r12,$r13,$r12
1c0064e0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0064e4:	00150185 	move	$r5,$r12
1c0064e8:	001501c4 	move	$r4,$r14
1c0064ec:	57fc8bff 	bl	-888(0xffffc88) # 1c006174 <OLED_Set_Pos>
1c0064f0:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0064f4:	50004800 	b	72(0x48) # 1c00653c <OLED_ShowChar+0xe0>
1c0064f8:	2a3f6ecd 	ld.bu	$r13,$r22,-37(0xfdb)
1c0064fc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006500:	00408d8e 	slli.w	$r14,$r12,0x3
1c006504:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006508:	001031cc 	add.w	$r12,$r14,$r12
1c00650c:	1c00004e 	pcaddu12i	$r14,2(0x2)
1c006510:	02a5a1ce 	addi.w	$r14,$r14,-1688(0x968)
1c006514:	004091ad 	slli.w	$r13,$r13,0x4
1c006518:	001035cd 	add.w	$r13,$r14,$r13
1c00651c:	001031ac 	add.w	$r12,$r13,$r12
1c006520:	2a00018c 	ld.bu	$r12,$r12,0
1c006524:	02810005 	addi.w	$r5,$r0,64(0x40)
1c006528:	00150184 	move	$r4,$r12
1c00652c:	57fbdfff 	bl	-1060(0xffffbdc) # 1c006108 <OLED_WR_Byte>
1c006530:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006534:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006538:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c00653c:	2a3f6acc 	ld.bu	$r12,$r22,-38(0xfda)
1c006540:	0044858c 	srli.w	$r12,$r12,0x1
1c006544:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006548:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c00654c:	6bffadac 	bltu	$r13,$r12,-84(0x3ffac) # 1c0064f8 <OLED_ShowChar+0x9c>
1c006550:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006554:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006558:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00655c:	2a3f6acc 	ld.bu	$r12,$r22,-38(0xfda)
1c006560:	00448d8c 	srli.w	$r12,$r12,0x3
1c006564:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006568:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00656c:	6bff5dac 	bltu	$r13,$r12,-164(0x3ff5c) # 1c0064c8 <OLED_ShowChar+0x6c>
1c006570:	03400000 	andi	$r0,$r0,0x0
1c006574:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006578:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00657c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006580:	4c000020 	jirl	$r0,$r1,0

1c006584 <OLED_DrawFont16>:
OLED_DrawFont16():
1c006584:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006588:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00658c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006590:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006594:	0015008c 	move	$r12,$r4
1c006598:	001500ad 	move	$r13,$r5
1c00659c:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c0065a0:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0065a4:	001501ac 	move	$r12,$r13
1c0065a8:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c0065ac:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0065b0:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0065b4:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c0065b8:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c0065bc:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c0065c0:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c0065c4:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c0065c8:	50013800 	b	312(0x138) # 1c006700 <OLED_DrawFont16+0x17c>
1c0065cc:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c0065d0:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c0065d4:	02ba51ad 	addi.w	$r13,$r13,-364(0xe94)
1c0065d8:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c0065dc:	001c31cc 	mul.w	$r12,$r14,$r12
1c0065e0:	001031ac 	add.w	$r12,$r13,$r12
1c0065e4:	2a00018d 	ld.bu	$r13,$r12,0
1c0065e8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0065ec:	2a00018c 	ld.bu	$r12,$r12,0
1c0065f0:	5c0105ac 	bne	$r13,$r12,260(0x104) # 1c0066f4 <OLED_DrawFont16+0x170>
1c0065f4:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c0065f8:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c0065fc:	02b9b1ad 	addi.w	$r13,$r13,-404(0xe6c)
1c006600:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c006604:	001c31cc 	mul.w	$r12,$r14,$r12
1c006608:	001031ac 	add.w	$r12,$r13,$r12
1c00660c:	2a00058d 	ld.bu	$r13,$r12,1(0x1)
1c006610:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006614:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006618:	2a00018c 	ld.bu	$r12,$r12,0
1c00661c:	5c00d9ac 	bne	$r13,$r12,216(0xd8) # 1c0066f4 <OLED_DrawFont16+0x170>
1c006620:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c006624:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c006628:	02b901ad 	addi.w	$r13,$r13,-448(0xe40)
1c00662c:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c006630:	001c31cc 	mul.w	$r12,$r14,$r12
1c006634:	001031ac 	add.w	$r12,$r13,$r12
1c006638:	2a00098d 	ld.bu	$r13,$r12,2(0x2)
1c00663c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006640:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c006644:	2a00018c 	ld.bu	$r12,$r12,0
1c006648:	5c00adac 	bne	$r13,$r12,172(0xac) # 1c0066f4 <OLED_DrawFont16+0x170>
1c00664c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c006650:	50009400 	b	148(0x94) # 1c0066e4 <OLED_DrawFont16+0x160>
1c006654:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c006658:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c00665c:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c006660:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c006664:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006668:	001031ac 	add.w	$r12,$r13,$r12
1c00666c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006670:	00150185 	move	$r5,$r12
1c006674:	001501c4 	move	$r4,$r14
1c006678:	57faffff 	bl	-1284(0xffffafc) # 1c006174 <OLED_Set_Pos>
1c00667c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006680:	50004c00 	b	76(0x4c) # 1c0066cc <OLED_DrawFont16+0x148>
1c006684:	2a7fb2cf 	ld.hu	$r15,$r22,-20(0xfec)
1c006688:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00668c:	0040918d 	slli.w	$r13,$r12,0x4
1c006690:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006694:	001031ad 	add.w	$r13,$r13,$r12
1c006698:	1c00004e 	pcaddu12i	$r14,2(0x2)
1c00669c:	02b731ce 	addi.w	$r14,$r14,-564(0xdcc)
1c0066a0:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c0066a4:	001c31ec 	mul.w	$r12,$r15,$r12
1c0066a8:	001031cc 	add.w	$r12,$r14,$r12
1c0066ac:	0010358c 	add.w	$r12,$r12,$r13
1c0066b0:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0066b4:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0066b8:	00150184 	move	$r4,$r12
1c0066bc:	57fa4fff 	bl	-1460(0xffffa4c) # 1c006108 <OLED_WR_Byte>
1c0066c0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0066c4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0066c8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0066cc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0066d0:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0066d4:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c006684 <OLED_DrawFont16+0x100>
1c0066d8:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0066dc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0066e0:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0066e4:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c0066e8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0066ec:	6fff698d 	bgeu	$r12,$r13,-152(0x3ff68) # 1c006654 <OLED_DrawFont16+0xd0>
1c0066f0:	50001c00 	b	28(0x1c) # 1c00670c <OLED_DrawFont16+0x188>
1c0066f4:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0066f8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0066fc:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c006700:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c006704:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c006708:	6bfec5ac 	bltu	$r13,$r12,-316(0x3fec4) # 1c0065cc <OLED_DrawFont16+0x48>
1c00670c:	03400000 	andi	$r0,$r0,0x0
1c006710:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006714:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006718:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00671c:	4c000020 	jirl	$r0,$r1,0

1c006720 <OLED_DrawFont32>:
OLED_DrawFont32():
1c006720:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006724:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006728:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00672c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006730:	0015008c 	move	$r12,$r4
1c006734:	001500ad 	move	$r13,$r5
1c006738:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c00673c:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c006740:	001501ac 	move	$r12,$r13
1c006744:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c006748:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00674c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c006750:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c006754:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c006758:	0280540c 	addi.w	$r12,$r0,21(0x15)
1c00675c:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c006760:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c006764:	50014400 	b	324(0x144) # 1c0068a8 <OLED_DrawFont32+0x188>
1c006768:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c00676c:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c006770:	02b3e1ad 	addi.w	$r13,$r13,-776(0xcf8)
1c006774:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c006778:	001c31cc 	mul.w	$r12,$r14,$r12
1c00677c:	001031ac 	add.w	$r12,$r13,$r12
1c006780:	2a00018c 	ld.bu	$r12,$r12,0
1c006784:	0015018d 	move	$r13,$r12
1c006788:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00678c:	2800018c 	ld.b	$r12,$r12,0
1c006790:	5c010dac 	bne	$r13,$r12,268(0x10c) # 1c00689c <OLED_DrawFont32+0x17c>
1c006794:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c006798:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c00679c:	02b331ad 	addi.w	$r13,$r13,-820(0xccc)
1c0067a0:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c0067a4:	001c31cc 	mul.w	$r12,$r14,$r12
1c0067a8:	001031ac 	add.w	$r12,$r13,$r12
1c0067ac:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c0067b0:	0015018d 	move	$r13,$r12
1c0067b4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0067b8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0067bc:	2800018c 	ld.b	$r12,$r12,0
1c0067c0:	5c00ddac 	bne	$r13,$r12,220(0xdc) # 1c00689c <OLED_DrawFont32+0x17c>
1c0067c4:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c0067c8:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c0067cc:	02b271ad 	addi.w	$r13,$r13,-868(0xc9c)
1c0067d0:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c0067d4:	001c31cc 	mul.w	$r12,$r14,$r12
1c0067d8:	001031ac 	add.w	$r12,$r13,$r12
1c0067dc:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c0067e0:	0015018d 	move	$r13,$r12
1c0067e4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0067e8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0067ec:	2800018c 	ld.b	$r12,$r12,0
1c0067f0:	5c00adac 	bne	$r13,$r12,172(0xac) # 1c00689c <OLED_DrawFont32+0x17c>
1c0067f4:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0067f8:	50009400 	b	148(0x94) # 1c00688c <OLED_DrawFont32+0x16c>
1c0067fc:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c006800:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c006804:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c006808:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00680c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006810:	001031ac 	add.w	$r12,$r13,$r12
1c006814:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006818:	00150185 	move	$r5,$r12
1c00681c:	001501c4 	move	$r4,$r14
1c006820:	57f957ff 	bl	-1708(0xffff954) # 1c006174 <OLED_Set_Pos>
1c006824:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006828:	50004c00 	b	76(0x4c) # 1c006874 <OLED_DrawFont32+0x154>
1c00682c:	2a7fb2cf 	ld.hu	$r15,$r22,-20(0xfec)
1c006830:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006834:	0040958d 	slli.w	$r13,$r12,0x5
1c006838:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00683c:	001031ad 	add.w	$r13,$r13,$r12
1c006840:	1c00004e 	pcaddu12i	$r14,2(0x2)
1c006844:	0284d1ce 	addi.w	$r14,$r14,308(0x134)
1c006848:	02820c0c 	addi.w	$r12,$r0,131(0x83)
1c00684c:	001c31ec 	mul.w	$r12,$r15,$r12
1c006850:	001031cc 	add.w	$r12,$r14,$r12
1c006854:	0010358c 	add.w	$r12,$r12,$r13
1c006858:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c00685c:	02810005 	addi.w	$r5,$r0,64(0x40)
1c006860:	00150184 	move	$r4,$r12
1c006864:	57f8a7ff 	bl	-1884(0xffff8a4) # 1c006108 <OLED_WR_Byte>
1c006868:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00686c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006870:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006874:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006878:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c00687c:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c00682c <OLED_DrawFont32+0x10c>
1c006880:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006884:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006888:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c00688c:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c006890:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c006894:	6fff698d 	bgeu	$r12,$r13,-152(0x3ff68) # 1c0067fc <OLED_DrawFont32+0xdc>
1c006898:	50001c00 	b	28(0x1c) # 1c0068b4 <OLED_DrawFont32+0x194>
1c00689c:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0068a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0068a4:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0068a8:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c0068ac:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c0068b0:	6bfeb9ac 	bltu	$r13,$r12,-328(0x3feb8) # 1c006768 <OLED_DrawFont32+0x48>
1c0068b4:	03400000 	andi	$r0,$r0,0x0
1c0068b8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0068bc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0068c0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0068c4:	4c000020 	jirl	$r0,$r1,0

1c0068c8 <OLED_Show_Str>:
OLED_Show_Str():
1c0068c8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0068cc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0068d0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0068d4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0068d8:	0015008c 	move	$r12,$r4
1c0068dc:	001500ae 	move	$r14,$r5
1c0068e0:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c0068e4:	001500ed 	move	$r13,$r7
1c0068e8:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0068ec:	001501cc 	move	$r12,$r14
1c0068f0:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c0068f4:	001501ac 	move	$r12,$r13
1c0068f8:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c0068fc:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c006900:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c006904:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006908:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c00690c:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c006910:	580209ac 	beq	$r13,$r12,520(0x208) # 1c006b18 <OLED_Show_Str+0x250>
1c006914:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006918:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c00691c:	5001fc00 	b	508(0x1fc) # 1c006b18 <OLED_Show_Str+0x250>
1c006920:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006924:	44012580 	bnez	$r12,292(0x124) # 1c006a48 <OLED_Show_Str+0x180>
1c006928:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c00692c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c006930:	0044858c 	srli.w	$r12,$r12,0x1
1c006934:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006938:	0015018e 	move	$r14,$r12
1c00693c:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c006940:	0011398c 	sub.w	$r12,$r12,$r14
1c006944:	64002d8d 	bge	$r12,$r13,44(0x2c) # 1c006970 <OLED_Show_Str+0xa8>
1c006948:	297f7ac0 	st.h	$r0,$r22,-34(0xfde)
1c00694c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c006950:	00448d8c 	srli.w	$r12,$r12,0x3
1c006954:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006958:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00695c:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c006960:	001031ac 	add.w	$r12,$r13,$r12
1c006964:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006968:	03401d8c 	andi	$r12,$r12,0x7
1c00696c:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c006970:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c006974:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c006978:	00448d8c 	srli.w	$r12,$r12,0x3
1c00697c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006980:	0015018e 	move	$r14,$r12
1c006984:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c006988:	0011398c 	sub.w	$r12,$r12,$r14
1c00698c:	6400098d 	bge	$r12,$r13,8(0x8) # 1c006994 <OLED_Show_Str+0xcc>
1c006990:	297f72c0 	st.h	$r0,$r22,-36(0xfdc)
1c006994:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006998:	2800018c 	ld.b	$r12,$r12,0
1c00699c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0069a0:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c0069a4:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c0069b4 <OLED_Show_Str+0xec>
1c0069a8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0069ac:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0069b0:	50016800 	b	360(0x168) # 1c006b18 <OLED_Show_Str+0x250>
1c0069b4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0069b8:	2800018d 	ld.b	$r13,$r12,0
1c0069bc:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c0069c0:	5c0031ac 	bne	$r13,$r12,48(0x30) # 1c0069f0 <OLED_Show_Str+0x128>
1c0069c4:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0069c8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0069cc:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0069d0:	001031ac 	add.w	$r12,$r13,$r12
1c0069d4:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c0069d8:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0069dc:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0069e0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0069e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0069e8:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0069ec:	50004c00 	b	76(0x4c) # 1c006a38 <OLED_Show_Str+0x170>
1c0069f0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0069f4:	2800018c 	ld.b	$r12,$r12,0
1c0069f8:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c0069fc:	2a3f5ecf 	ld.bu	$r15,$r22,-41(0xfd7)
1c006a00:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c006a04:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c006a08:	001501e7 	move	$r7,$r15
1c006a0c:	001501c6 	move	$r6,$r14
1c006a10:	001501a5 	move	$r5,$r13
1c006a14:	00150184 	move	$r4,$r12
1c006a18:	57fa47ff 	bl	-1468(0xffffa44) # 1c00645c <OLED_ShowChar>
1c006a1c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c006a20:	0044858c 	srli.w	$r12,$r12,0x1
1c006a24:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006a28:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006a2c:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c006a30:	001031ac 	add.w	$r12,$r13,$r12
1c006a34:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c006a38:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006a3c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006a40:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c006a44:	5000d400 	b	212(0xd4) # 1c006b18 <OLED_Show_Str+0x250>
1c006a48:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c006a4c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c006a50:	0282000e 	addi.w	$r14,$r0,128(0x80)
1c006a54:	001131cc 	sub.w	$r12,$r14,$r12
1c006a58:	64002d8d 	bge	$r12,$r13,44(0x2c) # 1c006a84 <OLED_Show_Str+0x1bc>
1c006a5c:	297f7ac0 	st.h	$r0,$r22,-34(0xfde)
1c006a60:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c006a64:	00448d8c 	srli.w	$r12,$r12,0x3
1c006a68:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006a6c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006a70:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c006a74:	001031ac 	add.w	$r12,$r13,$r12
1c006a78:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006a7c:	03401d8c 	andi	$r12,$r12,0x7
1c006a80:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c006a84:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c006a88:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c006a8c:	00448d8c 	srli.w	$r12,$r12,0x3
1c006a90:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006a94:	0015018e 	move	$r14,$r12
1c006a98:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c006a9c:	0011398c 	sub.w	$r12,$r12,$r14
1c006aa0:	6400098d 	bge	$r12,$r13,8(0x8) # 1c006aa8 <OLED_Show_Str+0x1e0>
1c006aa4:	297f72c0 	st.h	$r0,$r22,-36(0xfdc)
1c006aa8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006aac:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c006ab0:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c006ab4:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c006ad4 <OLED_Show_Str+0x20c>
1c006ab8:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c006abc:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c006ac0:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c006ac4:	001501a5 	move	$r5,$r13
1c006ac8:	00150184 	move	$r4,$r12
1c006acc:	57fc57ff 	bl	-940(0xffffc54) # 1c006720 <OLED_DrawFont32>
1c006ad0:	50002800 	b	40(0x28) # 1c006af8 <OLED_Show_Str+0x230>
1c006ad4:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c006ad8:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006adc:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c006af8 <OLED_Show_Str+0x230>
1c006ae0:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c006ae4:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c006ae8:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c006aec:	001501a5 	move	$r5,$r13
1c006af0:	00150184 	move	$r4,$r12
1c006af4:	57fa93ff 	bl	-1392(0xffffa90) # 1c006584 <OLED_DrawFont16>
1c006af8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006afc:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c006b00:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c006b04:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c006b08:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006b0c:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c006b10:	001031ac 	add.w	$r12,$r13,$r12
1c006b14:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c006b18:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006b1c:	2800018c 	ld.b	$r12,$r12,0
1c006b20:	47fe019f 	bnez	$r12,-512(0x7ffe00) # 1c006920 <OLED_Show_Str+0x58>
1c006b24:	03400000 	andi	$r0,$r0,0x0
1c006b28:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006b2c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006b30:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006b34:	4c000020 	jirl	$r0,$r1,0

1c006b38 <RGB_LED_Init>:
RGB_LED_Init():
1c006b38:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006b3c:	29803061 	st.w	$r1,$r3,12(0xc)
1c006b40:	29802076 	st.w	$r22,$r3,8(0x8)
1c006b44:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006b48:	00150005 	move	$r5,$r0
1c006b4c:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c006b50:	57ab07ff 	bl	-21756(0xfffab04) # 1c001654 <gpio_pin_remap>
1c006b54:	00150005 	move	$r5,$r0
1c006b58:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c006b5c:	57aafbff 	bl	-21768(0xfffaaf8) # 1c001654 <gpio_pin_remap>
1c006b60:	00150005 	move	$r5,$r0
1c006b64:	02807c04 	addi.w	$r4,$r0,31(0x1f)
1c006b68:	57aaefff 	bl	-21780(0xfffaaec) # 1c001654 <gpio_pin_remap>
1c006b6c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006b70:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c006b74:	57acefff 	bl	-21268(0xfffacec) # 1c001860 <gpio_set_direction>
1c006b78:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006b7c:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c006b80:	57ace3ff 	bl	-21280(0xffface0) # 1c001860 <gpio_set_direction>
1c006b84:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006b88:	02807c04 	addi.w	$r4,$r0,31(0x1f)
1c006b8c:	57acd7ff 	bl	-21292(0xfffacd4) # 1c001860 <gpio_set_direction>
1c006b90:	03400000 	andi	$r0,$r0,0x0
1c006b94:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006b98:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006b9c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006ba0:	4c000020 	jirl	$r0,$r1,0

1c006ba4 <Queue_Init>:
Queue_Init():
1c006ba4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006ba8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006bac:	29806076 	st.w	$r22,$r3,24(0x18)
1c006bb0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006bb4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006bb8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006bbc:	44000d80 	bnez	$r12,12(0xc) # 1c006bc8 <Queue_Init+0x24>
1c006bc0:	0015000c 	move	$r12,$r0
1c006bc4:	50001800 	b	24(0x18) # 1c006bdc <Queue_Init+0x38>
1c006bc8:	0284c006 	addi.w	$r6,$r0,304(0x130)
1c006bcc:	00150005 	move	$r5,$r0
1c006bd0:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c006bd4:	57c9d7ff 	bl	-13868(0xfffc9d4) # 1c0035a8 <memset>
1c006bd8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006bdc:	00150184 	move	$r4,$r12
1c006be0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006be4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006be8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006bec:	4c000020 	jirl	$r0,$r1,0

1c006bf0 <Smoke_Init>:
Smoke_Init():
1c006bf0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006bf4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006bf8:	29806076 	st.w	$r22,$r3,24(0x18)
1c006bfc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006c00:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c006c04:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c006c08:	297fa2c0 	st.h	$r0,$r22,-24(0xfe8)
1c006c0c:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c006c10:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006c14:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c006c18:	02801804 	addi.w	$r4,$r0,6(0x6)
1c006c1c:	57cc97ff 	bl	-13164(0xfffcc94) # 1c0038b0 <Adc_open>
1c006c20:	02801804 	addi.w	$r4,$r0,6(0x6)
1c006c24:	57ce1bff 	bl	-12776(0xfffce18) # 1c003a3c <Adc_getVoltage>
1c006c28:	0015008c 	move	$r12,$r4
1c006c2c:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c006c30:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c006c34:	50008800 	b	136(0x88) # 1c006cbc <Smoke_Init+0xcc>
1c006c38:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c006c3c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006c40:	0040858c 	slli.w	$r12,$r12,0x1
1c006c44:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c006c48:	001031cc 	add.w	$r12,$r14,$r12
1c006c4c:	2a7fc18c 	ld.hu	$r12,$r12,-16(0xff0)
1c006c50:	001131ad 	sub.w	$r13,$r13,$r12
1c006c54:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006c58:	288f118c 	ld.w	$r12,$r12,964(0x3c4)
1c006c5c:	2980018d 	st.w	$r13,$r12,0
1c006c60:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006c64:	028f418c 	addi.w	$r12,$r12,976(0x3d0)
1c006c68:	2880018c 	ld.w	$r12,$r12,0
1c006c6c:	0011300d 	sub.w	$r13,$r0,$r12
1c006c70:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006c74:	288ea18c 	ld.w	$r12,$r12,936(0x3a8)
1c006c78:	2880018c 	ld.w	$r12,$r12,0
1c006c7c:	6000358d 	blt	$r12,$r13,52(0x34) # 1c006cb0 <Smoke_Init+0xc0>
1c006c80:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006c84:	288e618c 	ld.w	$r12,$r12,920(0x398)
1c006c88:	2880018d 	ld.w	$r13,$r12,0
1c006c8c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006c90:	028e918c 	addi.w	$r12,$r12,932(0x3a4)
1c006c94:	2880018c 	ld.w	$r12,$r12,0
1c006c98:	6000198d 	blt	$r12,$r13,24(0x18) # 1c006cb0 <Smoke_Init+0xc0>
1c006c9c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006ca0:	028db18c 	addi.w	$r12,$r12,876(0x36c)
1c006ca4:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c006ca8:	2980018d 	st.w	$r13,$r12,0
1c006cac:	50001c00 	b	28(0x1c) # 1c006cc8 <Smoke_Init+0xd8>
1c006cb0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006cb4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006cb8:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c006cbc:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c006cc0:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006cc4:	6fff758d 	bgeu	$r12,$r13,-140(0x3ff74) # 1c006c38 <Smoke_Init+0x48>
1c006cc8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006ccc:	028d018c 	addi.w	$r12,$r12,832(0x340)
1c006cd0:	2880018c 	ld.w	$r12,$r12,0
1c006cd4:	44004d80 	bnez	$r12,76(0x4c) # 1c006d20 <Smoke_Init+0x130>
1c006cd8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006cdc:	0040858c 	slli.w	$r12,$r12,0x1
1c006ce0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c006ce4:	001031ac 	add.w	$r12,$r13,$r12
1c006ce8:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c006cec:	297fc18d 	st.h	$r13,$r12,-16(0xff0)
1c006cf0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006cf4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006cf8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006cfc:	2a3fbece 	ld.bu	$r14,$r22,-17(0xfef)
1c006d00:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c006d04:	0021b5cc 	mod.wu	$r12,$r14,$r13
1c006d08:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c006d10 <Smoke_Init+0x120>
1c006d0c:	002a0007 	break	0x7
1c006d10:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006d14:	0287d004 	addi.w	$r4,$r0,500(0x1f4)
1c006d18:	57c853ff 	bl	-14256(0xfffc850) # 1c003568 <delay_ms>
1c006d1c:	53ff07ff 	b	-252(0xfffff04) # 1c006c20 <Smoke_Init+0x30>
1c006d20:	03400000 	andi	$r0,$r0,0x0
1c006d24:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c006d28:	0287f80d 	addi.w	$r13,$r0,510(0x1fe)
1c006d2c:	001131ad 	sub.w	$r13,$r13,$r12
1c006d30:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006d34:	028b518c 	addi.w	$r12,$r12,724(0x2d4)
1c006d38:	2980018d 	st.w	$r13,$r12,0
1c006d3c:	03400000 	andi	$r0,$r0,0x0
1c006d40:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006d44:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006d48:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006d4c:	4c000020 	jirl	$r0,$r1,0

1c006d50 <Median_Read_Data>:
Median_Read_Data():
1c006d50:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006d54:	29807076 	st.w	$r22,$r3,28(0x1c)
1c006d58:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006d5c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006d60:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c006d64:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006d68:	0340058c 	andi	$r12,$r12,0x1
1c006d6c:	44006980 	bnez	$r12,104(0x68) # 1c006dd4 <Median_Read_Data+0x84>
1c006d70:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006d74:	0044fd8d 	srli.w	$r13,$r12,0x1f
1c006d78:	001031ac 	add.w	$r12,$r13,$r12
1c006d7c:	0048858c 	srai.w	$r12,$r12,0x1
1c006d80:	0015018d 	move	$r13,$r12
1c006d84:	147fffec 	lu12i.w	$r12,262143(0x3ffff)
1c006d88:	03bffd8c 	ori	$r12,$r12,0xfff
1c006d8c:	001031ac 	add.w	$r12,$r13,$r12
1c006d90:	0040898c 	slli.w	$r12,$r12,0x2
1c006d94:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006d98:	001031ac 	add.w	$r12,$r13,$r12
1c006d9c:	2880018d 	ld.w	$r13,$r12,0
1c006da0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006da4:	0044fd8e 	srli.w	$r14,$r12,0x1f
1c006da8:	001031cc 	add.w	$r12,$r14,$r12
1c006dac:	0048858c 	srai.w	$r12,$r12,0x1
1c006db0:	0040898c 	slli.w	$r12,$r12,0x2
1c006db4:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c006db8:	001031cc 	add.w	$r12,$r14,$r12
1c006dbc:	2880018c 	ld.w	$r12,$r12,0
1c006dc0:	001031ac 	add.w	$r12,$r13,$r12
1c006dc4:	0044fd8d 	srli.w	$r13,$r12,0x1f
1c006dc8:	001031ac 	add.w	$r12,$r13,$r12
1c006dcc:	0048858c 	srai.w	$r12,$r12,0x1
1c006dd0:	50002400 	b	36(0x24) # 1c006df4 <Median_Read_Data+0xa4>
1c006dd4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006dd8:	0044fd8d 	srli.w	$r13,$r12,0x1f
1c006ddc:	001031ac 	add.w	$r12,$r13,$r12
1c006de0:	0048858c 	srai.w	$r12,$r12,0x1
1c006de4:	0040898c 	slli.w	$r12,$r12,0x2
1c006de8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006dec:	001031ac 	add.w	$r12,$r13,$r12
1c006df0:	2880018c 	ld.w	$r12,$r12,0
1c006df4:	00150184 	move	$r4,$r12
1c006df8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c006dfc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006e00:	4c000020 	jirl	$r0,$r1,0

1c006e04 <Smoke_Read_Data>:
Smoke_Read_Data():
1c006e04:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c006e08:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c006e0c:	2980e076 	st.w	$r22,$r3,56(0x38)
1c006e10:	02810076 	addi.w	$r22,$r3,64(0x40)
1c006e14:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c006e18:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c006e1c:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c006e20:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c006e24:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c006e28:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c006e2c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006e30:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006e34:	50004000 	b	64(0x40) # 1c006e74 <Smoke_Read_Data+0x70>
1c006e38:	02801804 	addi.w	$r4,$r0,6(0x6)
1c006e3c:	57cc03ff 	bl	-13312(0xfffcc00) # 1c003a3c <Adc_getVoltage>
1c006e40:	0015008c 	move	$r12,$r4
1c006e44:	0015018d 	move	$r13,$r12
1c006e48:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006e4c:	004085ad 	slli.w	$r13,$r13,0x1
1c006e50:	0040898c 	slli.w	$r12,$r12,0x2
1c006e54:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c006e58:	001031cc 	add.w	$r12,$r14,$r12
1c006e5c:	29bfa18d 	st.w	$r13,$r12,-24(0xfe8)
1c006e60:	02819004 	addi.w	$r4,$r0,100(0x64)
1c006e64:	57c707ff 	bl	-14588(0xfffc704) # 1c003568 <delay_ms>
1c006e68:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006e6c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006e70:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006e74:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006e78:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006e7c:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c006e38 <Smoke_Read_Data+0x34>
1c006e80:	02bf62cc 	addi.w	$r12,$r22,-40(0xfd8)
1c006e84:	02801405 	addi.w	$r5,$r0,5(0x5)
1c006e88:	00150184 	move	$r4,$r12
1c006e8c:	57fec7ff 	bl	-316(0xffffec4) # 1c006d50 <Median_Read_Data>
1c006e90:	0015008d 	move	$r13,$r4
1c006e94:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c006e98:	2980018d 	st.w	$r13,$r12,0
1c006e9c:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c006ea0:	2880018e 	ld.w	$r14,$r12,0
1c006ea4:	0280640c 	addi.w	$r12,$r0,25(0x19)
1c006ea8:	002031cd 	div.w	$r13,$r14,$r12
1c006eac:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006eb4 <Smoke_Read_Data+0xb0>
1c006eb0:	002a0007 	break	0x7
1c006eb4:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c006eb8:	2980018d 	st.w	$r13,$r12,0
1c006ebc:	03400000 	andi	$r0,$r0,0x0
1c006ec0:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c006ec4:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c006ec8:	02810063 	addi.w	$r3,$r3,64(0x40)
1c006ecc:	4c000020 	jirl	$r0,$r1,0

1c006ed0 <YUYIN_Init>:
YUYIN_Init():
1c006ed0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006ed4:	29803061 	st.w	$r1,$r3,12(0xc)
1c006ed8:	29802076 	st.w	$r22,$r3,8(0x8)
1c006edc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006ee0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006ee4:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006ee8:	57a97bff 	bl	-22152(0xfffa978) # 1c001860 <gpio_set_direction>
1c006eec:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006ef0:	02809004 	addi.w	$r4,$r0,36(0x24)
1c006ef4:	57a96fff 	bl	-22164(0xfffa96c) # 1c001860 <gpio_set_direction>
1c006ef8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006efc:	02808404 	addi.w	$r4,$r0,33(0x21)
1c006f00:	57a963ff 	bl	-22176(0xfffa960) # 1c001860 <gpio_set_direction>
1c006f04:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006f08:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c006f0c:	57a957ff 	bl	-22188(0xfffa954) # 1c001860 <gpio_set_direction>
1c006f10:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006f14:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006f18:	57a6c7ff 	bl	-22844(0xfffa6c4) # 1c0015dc <gpio_write_pin>
1c006f1c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006f20:	02809004 	addi.w	$r4,$r0,36(0x24)
1c006f24:	57a6bbff 	bl	-22856(0xfffa6b8) # 1c0015dc <gpio_write_pin>
1c006f28:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006f2c:	02808404 	addi.w	$r4,$r0,33(0x21)
1c006f30:	57a6afff 	bl	-22868(0xfffa6ac) # 1c0015dc <gpio_write_pin>
1c006f34:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006f38:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c006f3c:	57a6a3ff 	bl	-22880(0xfffa6a0) # 1c0015dc <gpio_write_pin>
1c006f40:	03400000 	andi	$r0,$r0,0x0
1c006f44:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006f48:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006f4c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006f50:	4c000020 	jirl	$r0,$r1,0

1c006f54 <YUYIN_Ctrl>:
YUYIN_Ctrl():
1c006f54:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006f58:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006f5c:	29806076 	st.w	$r22,$r3,24(0x18)
1c006f60:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006f64:	0015008c 	move	$r12,$r4
1c006f68:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006f6c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006f70:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006f74:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c006fa8 <YUYIN_Ctrl+0x54>
1c006f78:	00150005 	move	$r5,$r0
1c006f7c:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006f80:	57a65fff 	bl	-22948(0xfffa65c) # 1c0015dc <gpio_write_pin>
1c006f84:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006f88:	02809004 	addi.w	$r4,$r0,36(0x24)
1c006f8c:	57a653ff 	bl	-22960(0xfffa650) # 1c0015dc <gpio_write_pin>
1c006f90:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006f94:	02808404 	addi.w	$r4,$r0,33(0x21)
1c006f98:	57a647ff 	bl	-22972(0xfffa644) # 1c0015dc <gpio_write_pin>
1c006f9c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006fa0:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c006fa4:	57a63bff 	bl	-22984(0xfffa638) # 1c0015dc <gpio_write_pin>
1c006fa8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006fac:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006fb0:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c006fe4 <YUYIN_Ctrl+0x90>
1c006fb4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006fb8:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006fbc:	57a623ff 	bl	-23008(0xfffa620) # 1c0015dc <gpio_write_pin>
1c006fc0:	00150005 	move	$r5,$r0
1c006fc4:	02809004 	addi.w	$r4,$r0,36(0x24)
1c006fc8:	57a617ff 	bl	-23020(0xfffa614) # 1c0015dc <gpio_write_pin>
1c006fcc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006fd0:	02808404 	addi.w	$r4,$r0,33(0x21)
1c006fd4:	57a60bff 	bl	-23032(0xfffa608) # 1c0015dc <gpio_write_pin>
1c006fd8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006fdc:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c006fe0:	57a5ffff 	bl	-23044(0xfffa5fc) # 1c0015dc <gpio_write_pin>
1c006fe4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006fe8:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c006fec:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c007020 <YUYIN_Ctrl+0xcc>
1c006ff0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006ff4:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006ff8:	57a5e7ff 	bl	-23068(0xfffa5e4) # 1c0015dc <gpio_write_pin>
1c006ffc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c007000:	02809004 	addi.w	$r4,$r0,36(0x24)
1c007004:	57a5dbff 	bl	-23080(0xfffa5d8) # 1c0015dc <gpio_write_pin>
1c007008:	00150005 	move	$r5,$r0
1c00700c:	02808404 	addi.w	$r4,$r0,33(0x21)
1c007010:	57a5cfff 	bl	-23092(0xfffa5cc) # 1c0015dc <gpio_write_pin>
1c007014:	02800405 	addi.w	$r5,$r0,1(0x1)
1c007018:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c00701c:	57a5c3ff 	bl	-23104(0xfffa5c0) # 1c0015dc <gpio_write_pin>
1c007020:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c007024:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c007028:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c00705c <YUYIN_Ctrl+0x108>
1c00702c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c007030:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c007034:	57a5abff 	bl	-23128(0xfffa5a8) # 1c0015dc <gpio_write_pin>
1c007038:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00703c:	02809004 	addi.w	$r4,$r0,36(0x24)
1c007040:	57a59fff 	bl	-23140(0xfffa59c) # 1c0015dc <gpio_write_pin>
1c007044:	02800405 	addi.w	$r5,$r0,1(0x1)
1c007048:	02808404 	addi.w	$r4,$r0,33(0x21)
1c00704c:	57a593ff 	bl	-23152(0xfffa590) # 1c0015dc <gpio_write_pin>
1c007050:	00150005 	move	$r5,$r0
1c007054:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c007058:	57a587ff 	bl	-23164(0xfffa584) # 1c0015dc <gpio_write_pin>
1c00705c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c007060:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c007064:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c007098 <YUYIN_Ctrl+0x144>
1c007068:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00706c:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c007070:	57a56fff 	bl	-23188(0xfffa56c) # 1c0015dc <gpio_write_pin>
1c007074:	02800405 	addi.w	$r5,$r0,1(0x1)
1c007078:	02809004 	addi.w	$r4,$r0,36(0x24)
1c00707c:	57a563ff 	bl	-23200(0xfffa560) # 1c0015dc <gpio_write_pin>
1c007080:	02800405 	addi.w	$r5,$r0,1(0x1)
1c007084:	02808404 	addi.w	$r4,$r0,33(0x21)
1c007088:	57a557ff 	bl	-23212(0xfffa554) # 1c0015dc <gpio_write_pin>
1c00708c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c007090:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c007094:	57a54bff 	bl	-23224(0xfffa548) # 1c0015dc <gpio_write_pin>
1c007098:	03400000 	andi	$r0,$r0,0x0
1c00709c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0070a0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0070a4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0070a8:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c0070c0 <msg_wakeup>:
msg_wakeup():
1c0070c0:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01dc20 <_sidata+0x147ec>
1c0070c4:	0a217075 	xvfmadd.d	$xr21,$xr3,$xr28,$xr2
	...

1c0070c9 <hexdecarr>:
hexdecarr():
1c0070c9:	33323130 	xvstelm.w	$xr16,$r9,-464(0x230),0x4
1c0070cd:	37363534 	0x37363534
1c0070d1:	62613938 	blt	$r9,$r24,-106184(0x26138) # 1bfed209 <_start-0x12df7>
1c0070d5:	66656463 	bge	$r3,$r3,-105116(0x26564) # 1bfed639 <_start-0x129c7>
1c0070d9:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0070dd:	79654b0a 	0x79654b0a
1c0070e1:	73657220 	vssrani.wu.d	$vr0,$vr17,0x1c
1c0070e5:	0d217465 	xvbitsel.v	$xr5,$xr3,$xr29,$xr2
1c0070e9:	0d00000a 	fsel	$f10,$f0,$f0,$fcc0
1c0070ed:	6970730a 	bltu	$r24,$r10,94320(0x17070) # 1c01e15d <_sidata+0x14d29>
1c0070f1:	6f6f6220 	bgeu	$r17,$r0,-37024(0x36f60) # 1bffe051 <_start-0x1faf>
1c0070f5:	0d000074 	fsel	$f20,$f3,$f0,$fcc0
1c0070f9:	676f640a 	bge	$r0,$r10,-37020(0x36f64) # 1bffe05d <_start-0x1fa3>
1c0070fd:	72616220 	0x72616220
1c007101:	0a0d216b 	0x0a0d216b
1c007105:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007109:	6b61770a 	bltu	$r24,$r10,-40588(0x36174) # 1bffd27d <_start-0x2d83>
1c00710d:	21705565 	sc.w	$r5,$r11,28756(0x7054)
1c007111:	b4000a0d 	0xb4000a0d
1c007115:	d01c001d 	0xd01c001d
1c007119:	d01c001e 	0xd01c001e
1c00711d:	d01c001e 	0xd01c001e
1c007121:	d01c001e 	0xd01c001e
1c007125:	d01c001e 	0xd01c001e
1c007129:	d01c001e 	0xd01c001e
1c00712d:	d01c001e 	0xd01c001e
1c007131:	d01c001e 	0xd01c001e
1c007135:	d01c001e 	0xd01c001e
1c007139:	d01c001e 	0xd01c001e
1c00713d:	cc1c001e 	0xcc1c001e
1c007141:	541c001d 	bl	7609344(0x741c00) # 1c748d41 <_sidata+0x73f90d>
1c007145:	541c001e 	bl	7871488(0x781c00) # 1c788d45 <_sidata+0x77f911>
1c007149:	541c001e 	bl	7871488(0x781c00) # 1c788d49 <_sidata+0x77f915>
1c00714d:	541c001e 	bl	7871488(0x781c00) # 1c788d4d <_sidata+0x77f919>
1c007151:	541c001e 	bl	7871488(0x781c00) # 1c788d51 <_sidata+0x77f91d>
1c007155:	541c001e 	bl	7871488(0x781c00) # 1c788d55 <_sidata+0x77f921>
1c007159:	541c001e 	bl	7871488(0x781c00) # 1c788d59 <_sidata+0x77f925>
1c00715d:	541c001e 	bl	7871488(0x781c00) # 1c788d5d <_sidata+0x77f929>
1c007161:	541c001e 	bl	7871488(0x781c00) # 1c788d61 <_sidata+0x77f92d>
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
1c0071e5:	d01c001e 	0xd01c001e
1c0071e9:	d01c001e 	0xd01c001e
1c0071ed:	d01c001e 	0xd01c001e
1c0071f1:	d01c001e 	0xd01c001e
1c0071f5:	d01c001e 	0xd01c001e
1c0071f9:	d01c001e 	0xd01c001e
1c0071fd:	d01c001e 	0xd01c001e
1c007201:	d01c001e 	0xd01c001e
1c007205:	441c001e 	bnez	$r0,-517120(0x781c00) # 1bf88e05 <_start-0x771fb>
1c007209:	6c1c001d 	bgeu	$r0,$r29,7168(0x1c00) # 1c008e09 <tfont32+0x495>
1c00720d:	d41c001c 	0xd41c001c
1c007211:	d01c001c 	0xd01c001c
1c007215:	d01c001e 	0xd01c001e
1c007219:	d01c001e 	0xd01c001e
1c00721d:	d01c001e 	0xd01c001e
1c007221:	d01c001e 	0xd01c001e
1c007225:	d01c001e 	0xd01c001e
1c007229:	d01c001e 	0xd01c001e
1c00722d:	d01c001e 	0xd01c001e
1c007231:	d01c001e 	0xd01c001e
1c007235:	d01c001e 	0xd01c001e
1c007239:	0c1c001e 	0x0c1c001e
1c00723d:	7c1c001d 	0x7c1c001d
1c007241:	d01c001d 	0xd01c001d
1c007245:	d01c001e 	0xd01c001e
1c007249:	401c001e 	beqz	$r0,-517120(0x781c00) # 1bf88e49 <_start-0x771b7>
1c00724d:	d01c001c 	0xd01c001c
1c007251:	9c1c001e 	0x9c1c001e
1c007255:	d01c001c 	0xd01c001c
1c007259:	d01c001e 	0xd01c001e
1c00725d:	7c1c001e 	0x7c1c001e
1c007261:	681c001d 	bltu	$r0,$r29,7168(0x1c00) # 1c008e61 <tfont32+0x4ed>
1c007265:	8c1c0023 	0x8c1c0023
1c007269:	8c1c0024 	0x8c1c0024
1c00726d:	8c1c0024 	0x8c1c0024
1c007271:	8c1c0024 	0x8c1c0024
1c007275:	8c1c0024 	0x8c1c0024
1c007279:	8c1c0024 	0x8c1c0024
1c00727d:	8c1c0024 	0x8c1c0024
1c007281:	8c1c0024 	0x8c1c0024
1c007285:	8c1c0024 	0x8c1c0024
1c007289:	8c1c0024 	0x8c1c0024
1c00728d:	881c0024 	0x881c0024
1c007291:	101c0023 	addu16i.d	$r3,$r1,1792(0x700)
1c007295:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c007299:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c00729d:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c0072a1:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c0072a5:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c0072a9:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c0072ad:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c0072b1:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
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
1c007335:	8c1c0024 	0x8c1c0024
1c007339:	8c1c0024 	0x8c1c0024
1c00733d:	8c1c0024 	0x8c1c0024
1c007341:	8c1c0024 	0x8c1c0024
1c007345:	8c1c0024 	0x8c1c0024
1c007349:	8c1c0024 	0x8c1c0024
1c00734d:	8c1c0024 	0x8c1c0024
1c007351:	8c1c0024 	0x8c1c0024
1c007355:	f01c0024 	0xf01c0024
1c007359:	081c0022 	fmadd.s	$f2,$f1,$f0,$f24
1c00735d:	781c0022 	0x781c0022
1c007361:	8c1c0022 	0x8c1c0022
1c007365:	8c1c0024 	0x8c1c0024
1c007369:	8c1c0024 	0x8c1c0024
1c00736d:	8c1c0024 	0x8c1c0024
1c007371:	8c1c0024 	0x8c1c0024
1c007375:	8c1c0024 	0x8c1c0024
1c007379:	8c1c0024 	0x8c1c0024
1c00737d:	8c1c0024 	0x8c1c0024
1c007381:	8c1c0024 	0x8c1c0024
1c007385:	8c1c0024 	0x8c1c0024
1c007389:	b41c0024 	0xb41c0024
1c00738d:	2c1c0022 	vld	$vr2,$r1,1792(0x700)
1c007391:	8c1c0023 	0x8c1c0023
1c007395:	8c1c0024 	0x8c1c0024
1c007399:	d81c0024 	0xd81c0024
1c00739d:	8c1c0021 	0x8c1c0021
1c0073a1:	3c1c0024 	0x3c1c0024
1c0073a5:	8c1c0022 	0x8c1c0022
1c0073a9:	8c1c0024 	0x8c1c0024
1c0073ad:	2c1c0024 	vld	$vr4,$r1,1792(0x700)
1c0073b1:	0a1c0023 	xvfmadd.s	$xr3,$xr1,$xr0,$xr24
1c0073b5:	7c000000 	0x7c000000
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
1c0073f9:	7c7c7c7c 	0x7c7c7c7c
1c0073fd:	7c7c7c7c 	0x7c7c7c7c
1c007401:	7c7c7c7c 	0x7c7c7c7c
1c007405:	7c7c7c7c 	0x7c7c7c7c
1c007409:	7c7c7c7c 	0x7c7c7c7c
1c00740d:	7c7c7c7c 	0x7c7c7c7c
1c007411:	7c7c7c7c 	0x7c7c7c7c
1c007415:	7c7c7c7c 	0x7c7c7c7c
1c007419:	7c00000a 	0x7c00000a
1c00741d:	7c20207c 	0x7c20207c
1c007421:	7c7c7c7c 	0x7c7c7c7c
1c007425:	7c7c7c7c 	0x7c7c7c7c
1c007429:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00742d:	7c202020 	0x7c202020
1c007431:	7c7c7c7c 	0x7c7c7c7c
1c007435:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007439:	7c202020 	0x7c202020
1c00743d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007441:	7c7c2020 	0x7c7c2020
1c007445:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007449:	7c7c7c20 	0x7c7c7c20
1c00744d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007451:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007455:	7c7c7c7c 	0x7c7c7c7c
1c007459:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00745d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007461:	7c7c7c7c 	0x7c7c7c7c
1c007465:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007469:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00746d:	7c7c7c7c 	0x7c7c7c7c
1c007471:	7c202020 	0x7c202020
1c007475:	7c7c7c7c 	0x7c7c7c7c
1c007479:	7c7c2020 	0x7c7c2020
1c00747d:	7c00000a 	0x7c00000a
1c007481:	7c20207c 	0x7c20207c
1c007485:	7c7c7c7c 	0x7c7c7c7c
1c007489:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00748d:	7c7c2020 	0x7c7c2020
1c007491:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007495:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007499:	7c7c2020 	0x7c7c2020
1c00749d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0074a1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074a5:	7c202020 	0x7c202020
1c0074a9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074ad:	7c7c7c20 	0x7c7c7c20
1c0074b1:	7c20207c 	0x7c20207c
1c0074b5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074b9:	7c7c7c20 	0x7c7c7c20
1c0074bd:	7c202020 	0x7c202020
1c0074c1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074c5:	7c7c7c20 	0x7c7c7c20
1c0074c9:	7c202020 	0x7c202020
1c0074cd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074d1:	7c7c7c20 	0x7c7c7c20
1c0074d5:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0074d9:	7c7c7c7c 	0x7c7c7c7c
1c0074dd:	7c7c2020 	0x7c7c2020
1c0074e1:	7c00000a 	0x7c00000a
1c0074e5:	7c20207c 	0x7c20207c
1c0074e9:	7c7c7c7c 	0x7c7c7c7c
1c0074ed:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074f1:	7c7c7c20 	0x7c7c7c20
1c0074f5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074f9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074fd:	7c7c7c20 	0x7c7c7c20
1c007501:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007505:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007509:	20207c20 	ll.w	$r0,$r1,8316(0x207c)
1c00750d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007511:	7c7c7c20 	0x7c7c7c20
1c007515:	7c7c2020 	0x7c7c2020
1c007519:	7c7c7c7c 	0x7c7c7c7c
1c00751d:	7c7c7c7c 	0x7c7c7c7c
1c007521:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007525:	7c7c7c20 	0x7c7c7c20
1c007529:	7c7c7c7c 	0x7c7c7c7c
1c00752d:	7c7c2020 	0x7c7c2020
1c007531:	7c7c7c7c 	0x7c7c7c7c
1c007535:	7c7c7c20 	0x7c7c7c20
1c007539:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c00753d:	7c7c7c20 	0x7c7c7c20
1c007541:	7c7c2020 	0x7c7c2020
1c007545:	7c00000a 	0x7c00000a
1c007549:	7c20207c 	0x7c20207c
1c00754d:	7c7c7c7c 	0x7c7c7c7c
1c007551:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007555:	7c7c7c20 	0x7c7c7c20
1c007559:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00755d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007561:	7c7c7c20 	0x7c7c7c20
1c007565:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007569:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00756d:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c007571:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c007575:	7c7c7c20 	0x7c7c7c20
1c007579:	7c7c2020 	0x7c7c2020
1c00757d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007581:	7c7c7c20 	0x7c7c7c20
1c007585:	7c7c7c7c 	0x7c7c7c7c
1c007589:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00758d:	7c7c7c7c 	0x7c7c7c7c
1c007591:	7c7c2020 	0x7c7c2020
1c007595:	7c7c7c7c 	0x7c7c7c7c
1c007599:	7c7c7c20 	0x7c7c7c20
1c00759d:	7c7c2020 	0x7c7c2020
1c0075a1:	7c7c2020 	0x7c7c2020
1c0075a5:	7c7c2020 	0x7c7c2020
1c0075a9:	7c00000a 	0x7c00000a
1c0075ad:	7c20207c 	0x7c20207c
1c0075b1:	7c7c7c7c 	0x7c7c7c7c
1c0075b5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075b9:	7c7c7c20 	0x7c7c7c20
1c0075bd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075c1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075c5:	7c7c7c20 	0x7c7c7c20
1c0075c9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075cd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075d1:	7c7c7c20 	0x7c7c7c20
1c0075d5:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c0075d9:	7c7c7c20 	0x7c7c7c20
1c0075dd:	7c7c2020 	0x7c7c2020
1c0075e1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075e5:	7c7c7c20 	0x7c7c7c20
1c0075e9:	7c7c7c7c 	0x7c7c7c7c
1c0075ed:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075f1:	7c7c7c20 	0x7c7c7c20
1c0075f5:	7c7c2020 	0x7c7c2020
1c0075f9:	7c7c7c7c 	0x7c7c7c7c
1c0075fd:	7c7c7c20 	0x7c7c7c20
1c007601:	7c7c2020 	0x7c7c2020
1c007605:	7c20207c 	0x7c20207c
1c007609:	7c7c2020 	0x7c7c2020
1c00760d:	7c00000a 	0x7c00000a
1c007611:	7c20207c 	0x7c20207c
1c007615:	7c7c7c7c 	0x7c7c7c7c
1c007619:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00761d:	7c7c2020 	0x7c7c2020
1c007621:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007625:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007629:	7c7c2020 	0x7c7c2020
1c00762d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007631:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007635:	7c7c7c20 	0x7c7c7c20
1c007639:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00763d:	7c7c7c20 	0x7c7c7c20
1c007641:	7c202020 	0x7c202020
1c007645:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007649:	7c7c7c20 	0x7c7c7c20
1c00764d:	7c202020 	0x7c202020
1c007651:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007655:	7c7c7c7c 	0x7c7c7c7c
1c007659:	7c202020 	0x7c202020
1c00765d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007661:	7c7c7c20 	0x7c7c7c20
1c007665:	7c7c2020 	0x7c7c2020
1c007669:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c00766d:	7c7c2020 	0x7c7c2020
1c007671:	7c00000a 	0x7c00000a
1c007675:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007679:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00767d:	7c7c7c7c 	0x7c7c7c7c
1c007681:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007685:	7c202020 	0x7c202020
1c007689:	7c7c7c7c 	0x7c7c7c7c
1c00768d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007691:	7c202020 	0x7c202020
1c007695:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007699:	7c7c7c20 	0x7c7c7c20
1c00769d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0076a1:	7c7c7c20 	0x7c7c7c20
1c0076a5:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0076a9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0076ad:	7c7c7c7c 	0x7c7c7c7c
1c0076b1:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0076b5:	7c202020 	0x7c202020
1c0076b9:	7c7c7c7c 	0x7c7c7c7c
1c0076bd:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0076c1:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0076c5:	7c7c7c7c 	0x7c7c7c7c
1c0076c9:	7c7c2020 	0x7c7c2020
1c0076cd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0076d1:	7c7c2020 	0x7c7c2020
1c0076d5:	7c00000a 	0x7c00000a
1c0076d9:	7c7c7c7c 	0x7c7c7c7c
1c0076dd:	7c7c7c7c 	0x7c7c7c7c
1c0076e1:	7c7c7c7c 	0x7c7c7c7c
1c0076e5:	7c7c7c7c 	0x7c7c7c7c
1c0076e9:	7c7c7c7c 	0x7c7c7c7c
1c0076ed:	7c7c7c7c 	0x7c7c7c7c
1c0076f1:	7c7c7c7c 	0x7c7c7c7c
1c0076f5:	7c7c7c7c 	0x7c7c7c7c
1c0076f9:	7c7c7c7c 	0x7c7c7c7c
1c0076fd:	325b7c7c 	xvldrepl.h	$xr28,$r3,-578(0xdbe)
1c007701:	20303230 	ll.w	$r16,$r17,12336(0x3030)
1c007705:	4e4f4f4c 	jirl	$r12,$r26,-110772(0x24f4c)
1c007709:	4e4f5347 	jirl	$r7,$r26,-110768(0x24f50)
1c00770d:	7c7c7c5d 	0x7c7c7c5d
1c007711:	7c7c7c7c 	0x7c7c7c7c
1c007715:	7c7c7c7c 	0x7c7c7c7c
1c007719:	7c7c7c7c 	0x7c7c7c7c
1c00771d:	7c7c7c7c 	0x7c7c7c7c
1c007721:	7c7c7c7c 	0x7c7c7c7c
1c007725:	7c7c7c7c 	0x7c7c7c7c
1c007729:	7c7c7c7c 	0x7c7c7c7c
1c00772d:	7c7c7c7c 	0x7c7c7c7c
1c007731:	7c7c7c7c 	0x7c7c7c7c
1c007735:	7c7c7c7c 	0x7c7c7c7c
1c007739:	0900000a 	0x0900000a
1c00773d:	0a006425 	0x0a006425
1c007741:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007745:	776f440a 	xvssrarni.du.q	$xr10,$xr0,0x51
1c007749:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c00774d:	0050550a 	0x0050550a
1c007751:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007755:	6c754d0a 	bgeu	$r8,$r10,30028(0x754c) # 1c00eca1 <_sidata+0x586d>
1c007759:	776f4469 	xvssrarni.du.q	$xr9,$xr3,0x51
1c00775d:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c007761:	756f430a 	0x756f430a
1c007765:	4f20746e 	jirl	$r14,$r3,-57228(0x32074)
1c007769:	0d000056 	fsel	$f22,$f2,$f0,$fcc0
1c00776d:	3030090a 	0x3030090a
1c007771:	09313009 	0x09313009
1c007775:	30093230 	0x30093230
1c007779:	34300933 	0x34300933
1c00777d:	09353009 	0x09353009
1c007781:	30093630 	0x30093630
1c007785:	38300937 	fldx.s	$f23,$r9,$r2
1c007789:	09393009 	0x09393009
1c00778d:	31093031 	0x31093031
1c007791:	0d000031 	fsel	$f17,$f1,$f0,$fcc0
1c007795:	746e630a 	0x746e630a
1c007799:	09000000 	0x09000000
1c00779d:	00643425 	bstrins.w	$r5,$r1,0x4,0xd
1c0077a1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0077a5:	7361420a 	vssrani.w.d	$vr10,$vr16,0x10
1c0077a9:	6c615665 	bgeu	$r19,$r5,24916(0x6154) # 1c00d8fd <_sidata+0x44c9>
1c0077ad:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0077b1:	6275530a 	blt	$r24,$r10,-101040(0x27550) # 1bfeed01 <_start-0x112ff>
1c0077b5:	006c6156 	bstrins.w	$r22,$r10,0xc,0x18
1c0077b9:	09000000 	0x09000000
1c0077bd:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c0077c1:	09000000 	0x09000000
1c0077c5:	00643325 	bstrins.w	$r5,$r25,0x4,0xc
1c0077c9:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0077cd:	203c200a 	ll.w	$r10,$r0,15392(0x3c20)
1c0077d1:	3a515249 	0x3a515249
1c0077d5:	20642520 	ll.w	$r0,$r9,25636(0x6424)
1c0077d9:	636e7566 	blt	$r11,$r6,-37260(0x36e74) # 1bffe64d <_start-0x19b3>
1c0077dd:	2073253a 	ll.w	$r26,$r9,29476(0x7324)
1c0077e1:	0d3e2020 	0x0d3e2020
1c0077e5:	0a00000a 	0x0a00000a
1c0077e9:	2e2e2e2e 	0x2e2e2e2e
1c0077ed:	2e2e2e2e 	0x2e2e2e2e
1c0077f1:	2e2e2e2e 	0x2e2e2e2e
1c0077f5:	464f532e 	bnez	$r25,3821392(0x3a4f50) # 1c3ac745 <_sidata+0x3a3311>
1c0077f9:	4e495f54 	jirl	$r20,$r26,-112292(0x2495c)
1c0077fd:	2e2e2e54 	0x2e2e2e54
1c007801:	2e2e2e2e 	0x2e2e2e2e
1c007805:	2e2e2e2e 	0x2e2e2e2e
1c007809:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c00780d:	0d00000d 	fsel	$f13,$f0,$f0,$fcc0
1c007811:	2e2e2e0a 	0x2e2e2e0a
1c007815:	2e2e2e2e 	0x2e2e2e2e
1c007819:	2e2e2e2e 	0x2e2e2e2e
1c00781d:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39ba49 <_sidata+0x392615>
1c007821:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1be7d <_start-0x2e4183>
1c007825:	2e2e4c49 	0x2e2e4c49
1c007829:	2e2e2e2e 	0x2e2e2e2e
1c00782d:	2e2e2e2e 	0x2e2e2e2e
1c007831:	2e2e2e2e 	0x2e2e2e2e
1c007835:	0d000a0d 	fsel	$f13,$f16,$f2,$fcc0
1c007839:	2e2e2e0a 	0x2e2e2e0a
1c00783d:	2e2e2e2e 	0x2e2e2e2e
1c007841:	2e2e2e2e 	0x2e2e2e2e
1c007845:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38b971 <_sidata+0x38253d>
1c007849:	2e2e2e43 	0x2e2e2e43
1c00784d:	2e2e2e2e 	0x2e2e2e2e
1c007851:	2e2e2e2e 	0x2e2e2e2e
1c007855:	0d2e2e2e 	xvbitsel.v	$xr14,$xr17,$xr11,$xr28
1c007859:	5000000a 	b	2621440(0x280000) # 1c287859 <_sidata+0x27e425>
1c00785d:	70697265 	vavgr.w	$vr5,$vr19,$vr28
1c007861:	61726568 	blt	$r11,$r8,94820(0x17264) # 1c01eac5 <_sidata+0x15691>
1c007865:	5420736c 	bl	-38789008(0xdb02070) # 19b098d5 <_start-0x24f672b>
1c007869:	72656d69 	0x72656d69
1c00786d:	656c6320 	bge	$r25,$r0,93280(0x16c60) # 1c01e4cd <_sidata+0x15099>
1c007871:	69207261 	bltu	$r19,$r1,73840(0x12070) # 1c0198e1 <_sidata+0x104ad>
1c007875:	7265746e 	0x7265746e
1c007879:	74707572 	xvmax.b	$xr18,$xr11,$xr29
1c00787d:	0a0d2e2e 	0x0a0d2e2e
1c007881:	43000000 	beqz	$r0,196608(0x30000) # 1c037881 <_sidata+0x2e44d>
1c007885:	2065726f 	ll.w	$r15,$r19,25968(0x6570)
1c007889:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01e5f1 <_sidata+0x151bd>
1c00788d:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00dbad <_sidata+0x4779>
1c007891:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c007895:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c01ed01 <_sidata+0x158cd>
1c007899:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c00789d:	0d2e2e74 	xvbitsel.v	$xr20,$xr19,$xr11,$xr28
1c0078a1:	 	beqz	$r0,2621440(0x280000) # 1c2878a1 <_sidata+0x27e46d>

1c0078a4 <Ext_IrqHandle>:
1c0078a4:	1c003f40 	pcaddu12i	$r0,506(0x1fa)
1c0078a8:	1c003f8c 	pcaddu12i	$r12,508(0x1fc)
1c0078ac:	1c003fd8 	pcaddu12i	$r24,510(0x1fe)
1c0078b0:	1c004024 	pcaddu12i	$r4,513(0x201)
1c0078b4:	1c004070 	pcaddu12i	$r16,515(0x203)
1c0078b8:	1c0040bc 	pcaddu12i	$r28,517(0x205)
1c0078bc:	1c004108 	pcaddu12i	$r8,520(0x208)
1c0078c0:	1c004154 	pcaddu12i	$r20,522(0x20a)
1c0078c4:	1c0041a0 	pcaddu12i	$r0,525(0x20d)
1c0078c8:	1c0041ec 	pcaddu12i	$r12,527(0x20f)
1c0078cc:	1c004238 	pcaddu12i	$r24,529(0x211)
1c0078d0:	1c004284 	pcaddu12i	$r4,532(0x214)
1c0078d4:	1c0042d0 	pcaddu12i	$r16,534(0x216)
1c0078d8:	1c00431c 	pcaddu12i	$r28,536(0x218)
1c0078dc:	1c004368 	pcaddu12i	$r8,539(0x21b)
1c0078e0:	1c0043b4 	pcaddu12i	$r20,541(0x21d)
1c0078e4:	1c004400 	pcaddu12i	$r0,544(0x220)
1c0078e8:	1c00444c 	pcaddu12i	$r12,546(0x222)
1c0078ec:	1c004498 	pcaddu12i	$r24,548(0x224)
1c0078f0:	1c0044e4 	pcaddu12i	$r4,551(0x227)
1c0078f4:	1c004530 	pcaddu12i	$r16,553(0x229)
1c0078f8:	1c00457c 	pcaddu12i	$r28,555(0x22b)
1c0078fc:	1c0045c8 	pcaddu12i	$r8,558(0x22e)
1c007900:	1c004614 	pcaddu12i	$r20,560(0x230)
1c007904:	1c004660 	pcaddu12i	$r0,563(0x233)
1c007908:	1c0046ac 	pcaddu12i	$r12,565(0x235)
1c00790c:	1c0046f8 	pcaddu12i	$r24,567(0x237)
1c007910:	1c004744 	pcaddu12i	$r4,570(0x23a)
1c007914:	1c004790 	pcaddu12i	$r16,572(0x23c)
1c007918:	1c0047dc 	pcaddu12i	$r28,574(0x23e)
1c00791c:	1c004828 	pcaddu12i	$r8,577(0x241)
1c007920:	1c004874 	pcaddu12i	$r20,579(0x243)
1c007924:	1c004b58 	pcaddu12i	$r24,602(0x25a)
1c007928:	1c004b08 	pcaddu12i	$r8,600(0x258)
1c00792c:	1c004b58 	pcaddu12i	$r24,602(0x25a)
1c007930:	1c004b58 	pcaddu12i	$r24,602(0x25a)
1c007934:	1c004b58 	pcaddu12i	$r24,602(0x25a)
1c007938:	1c004b58 	pcaddu12i	$r24,602(0x25a)
1c00793c:	1c004b58 	pcaddu12i	$r24,602(0x25a)
1c007940:	1c004b58 	pcaddu12i	$r24,602(0x25a)
1c007944:	1c004b58 	pcaddu12i	$r24,602(0x25a)
1c007948:	1c004b58 	pcaddu12i	$r24,602(0x25a)
1c00794c:	1c004b58 	pcaddu12i	$r24,602(0x25a)
1c007950:	1c004b58 	pcaddu12i	$r24,602(0x25a)
1c007954:	1c004b58 	pcaddu12i	$r24,602(0x25a)
1c007958:	1c004b58 	pcaddu12i	$r24,602(0x25a)
1c00795c:	1c004b58 	pcaddu12i	$r24,602(0x25a)
1c007960:	1c004b58 	pcaddu12i	$r24,602(0x25a)
1c007964:	1c004b24 	pcaddu12i	$r4,601(0x259)

1c007968 <__FUNCTION__.1551>:
1c007968:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ede0 <_sidata+0x159ac>
1c00796c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e9d0 <_sidata+0x1559c>
1c007970:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bffa9d0 <_start-0x5630>
1c007974:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeae4 <_start-0x151c>
1c007978:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e7d8 <_sidata+0x53a4>
1c00797c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007980 <__FUNCTION__.1555>:
1c007980:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01edf8 <_sidata+0x159c4>
1c007984:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e9e8 <_sidata+0x155b4>
1c007988:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bffaae8 <_start-0x5518>
1c00798c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeafc <_start-0x1504>
1c007990:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e7f0 <_sidata+0x53bc>
1c007994:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007998 <__FUNCTION__.1559>:
1c007998:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee10 <_sidata+0x159dc>
1c00799c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea00 <_sidata+0x155cc>
1c0079a0:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bffac00 <_start-0x5400>
1c0079a4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb14 <_start-0x14ec>
1c0079a8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e808 <_sidata+0x53d4>
1c0079ac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0079b0 <__FUNCTION__.1563>:
1c0079b0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee28 <_sidata+0x159f4>
1c0079b4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea18 <_sidata+0x155e4>
1c0079b8:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bffad18 <_start-0x52e8>
1c0079bc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb2c <_start-0x14d4>
1c0079c0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e820 <_sidata+0x53ec>
1c0079c4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0079c8 <__FUNCTION__.1567>:
1c0079c8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee40 <_sidata+0x15a0c>
1c0079cc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea30 <_sidata+0x155fc>
1c0079d0:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bffae30 <_start-0x51d0>
1c0079d4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb44 <_start-0x14bc>
1c0079d8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e838 <_sidata+0x5404>
1c0079dc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0079e0 <__FUNCTION__.1571>:
1c0079e0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee58 <_sidata+0x15a24>
1c0079e4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea48 <_sidata+0x15614>
1c0079e8:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bffaf48 <_start-0x50b8>
1c0079ec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb5c <_start-0x14a4>
1c0079f0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e850 <_sidata+0x541c>
1c0079f4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0079f8 <__FUNCTION__.1575>:
1c0079f8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee70 <_sidata+0x15a3c>
1c0079fc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea60 <_sidata+0x1562c>
1c007a00:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bffb060 <_start-0x4fa0>
1c007a04:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb74 <_start-0x148c>
1c007a08:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e868 <_sidata+0x5434>
1c007a0c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a10 <__FUNCTION__.1579>:
1c007a10:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee88 <_sidata+0x15a54>
1c007a14:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea78 <_sidata+0x15644>
1c007a18:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bffb178 <_start-0x4e88>
1c007a1c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb8c <_start-0x1474>
1c007a20:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e880 <_sidata+0x544c>
1c007a24:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a28 <__FUNCTION__.1583>:
1c007a28:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eea0 <_sidata+0x15a6c>
1c007a2c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea90 <_sidata+0x1565c>
1c007a30:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bffaa90 <_start-0x5570>
1c007a34:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeba4 <_start-0x145c>
1c007a38:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e898 <_sidata+0x5464>
1c007a3c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a40 <__FUNCTION__.1587>:
1c007a40:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eeb8 <_sidata+0x15a84>
1c007a44:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eaa8 <_sidata+0x15674>
1c007a48:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bffaba8 <_start-0x5458>
1c007a4c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffebbc <_start-0x1444>
1c007a50:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e8b0 <_sidata+0x547c>
1c007a54:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a58 <__FUNCTION__.1591>:
1c007a58:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eed0 <_sidata+0x15a9c>
1c007a5c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eac0 <_sidata+0x1568c>
1c007a60:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bffacc0 <_start-0x5340>
1c007a64:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffebd4 <_start-0x142c>
1c007a68:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e8c8 <_sidata+0x5494>
1c007a6c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a70 <__FUNCTION__.1595>:
1c007a70:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eee8 <_sidata+0x15ab4>
1c007a74:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ead8 <_sidata+0x156a4>
1c007a78:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bffadd8 <_start-0x5228>
1c007a7c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffebec <_start-0x1414>
1c007a80:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e8e0 <_sidata+0x54ac>
1c007a84:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a88 <__FUNCTION__.1599>:
1c007a88:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef00 <_sidata+0x15acc>
1c007a8c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eaf0 <_sidata+0x156bc>
1c007a90:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bffaef0 <_start-0x5110>
1c007a94:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec04 <_start-0x13fc>
1c007a98:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e8f8 <_sidata+0x54c4>
1c007a9c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007aa0 <__FUNCTION__.1603>:
1c007aa0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef18 <_sidata+0x15ae4>
1c007aa4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb08 <_sidata+0x156d4>
1c007aa8:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bffb008 <_start-0x4ff8>
1c007aac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec1c <_start-0x13e4>
1c007ab0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e910 <_sidata+0x54dc>
1c007ab4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007ab8 <__FUNCTION__.1607>:
1c007ab8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef30 <_sidata+0x15afc>
1c007abc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb20 <_sidata+0x156ec>
1c007ac0:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bffb120 <_start-0x4ee0>
1c007ac4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec34 <_start-0x13cc>
1c007ac8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e928 <_sidata+0x54f4>
1c007acc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007ad0 <__FUNCTION__.1611>:
1c007ad0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef48 <_sidata+0x15b14>
1c007ad4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb38 <_sidata+0x15704>
1c007ad8:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bffb238 <_start-0x4dc8>
1c007adc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec4c <_start-0x13b4>
1c007ae0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e940 <_sidata+0x550c>
1c007ae4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007ae8 <__FUNCTION__.1615>:
1c007ae8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef60 <_sidata+0x15b2c>
1c007aec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb50 <_sidata+0x1571c>
1c007af0:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bffab50 <_start-0x54b0>
1c007af4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec64 <_start-0x139c>
1c007af8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e958 <_sidata+0x5524>
1c007afc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b00 <__FUNCTION__.1619>:
1c007b00:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef78 <_sidata+0x15b44>
1c007b04:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb68 <_sidata+0x15734>
1c007b08:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bffac68 <_start-0x5398>
1c007b0c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec7c <_start-0x1384>
1c007b10:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e970 <_sidata+0x553c>
1c007b14:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b18 <__FUNCTION__.1623>:
1c007b18:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef90 <_sidata+0x15b5c>
1c007b1c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb80 <_sidata+0x1574c>
1c007b20:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bffad80 <_start-0x5280>
1c007b24:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec94 <_start-0x136c>
1c007b28:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e988 <_sidata+0x5554>
1c007b2c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b30 <__FUNCTION__.1627>:
1c007b30:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01efa8 <_sidata+0x15b74>
1c007b34:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb98 <_sidata+0x15764>
1c007b38:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bffae98 <_start-0x5168>
1c007b3c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffecac <_start-0x1354>
1c007b40:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e9a0 <_sidata+0x556c>
1c007b44:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b48 <__FUNCTION__.1631>:
1c007b48:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01efc0 <_sidata+0x15b8c>
1c007b4c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ebb0 <_sidata+0x1577c>
1c007b50:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bffafb0 <_start-0x5050>
1c007b54:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffecc4 <_start-0x133c>
1c007b58:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e9b8 <_sidata+0x5584>
1c007b5c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b60 <__FUNCTION__.1635>:
1c007b60:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01efd8 <_sidata+0x15ba4>
1c007b64:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ebc8 <_sidata+0x15794>
1c007b68:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bffb0c8 <_start-0x4f38>
1c007b6c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffecdc <_start-0x1324>
1c007b70:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e9d0 <_sidata+0x559c>
1c007b74:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b78 <__FUNCTION__.1639>:
1c007b78:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eff0 <_sidata+0x15bbc>
1c007b7c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ebe0 <_sidata+0x157ac>
1c007b80:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bffb1e0 <_start-0x4e20>
1c007b84:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffecf4 <_start-0x130c>
1c007b88:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e9e8 <_sidata+0x55b4>
1c007b8c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b90 <__FUNCTION__.1643>:
1c007b90:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f008 <_sidata+0x15bd4>
1c007b94:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ebf8 <_sidata+0x157c4>
1c007b98:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bffb2f8 <_start-0x4d08>
1c007b9c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffed0c <_start-0x12f4>
1c007ba0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ea00 <_sidata+0x55cc>
1c007ba4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007ba8 <__FUNCTION__.1647>:
1c007ba8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f020 <_sidata+0x15bec>
1c007bac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ec10 <_sidata+0x157dc>
1c007bb0:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bffac14 <_start-0x53ec>
1c007bb4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffed24 <_start-0x12dc>
1c007bb8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ea18 <_sidata+0x55e4>
1c007bbc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007bc0 <__FUNCTION__.1651>:
1c007bc0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f038 <_sidata+0x15c04>
1c007bc4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ec28 <_sidata+0x157f4>
1c007bc8:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bffad2c <_start-0x52d4>
1c007bcc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffed3c <_start-0x12c4>
1c007bd0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ea30 <_sidata+0x55fc>
1c007bd4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007bd8 <__FUNCTION__.1655>:
1c007bd8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f050 <_sidata+0x15c1c>
1c007bdc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ec40 <_sidata+0x1580c>
1c007be0:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bffae44 <_start-0x51bc>
1c007be4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffed54 <_start-0x12ac>
1c007be8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ea48 <_sidata+0x5614>
1c007bec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007bf0 <__FUNCTION__.1659>:
1c007bf0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f068 <_sidata+0x15c34>
1c007bf4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ec58 <_sidata+0x15824>
1c007bf8:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bffaf5c <_start-0x50a4>
1c007bfc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffed6c <_start-0x1294>
1c007c00:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ea60 <_sidata+0x562c>
1c007c04:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007c08 <__FUNCTION__.1663>:
1c007c08:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f080 <_sidata+0x15c4c>
1c007c0c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ec70 <_sidata+0x1583c>
1c007c10:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bffb074 <_start-0x4f8c>
1c007c14:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffed84 <_start-0x127c>
1c007c18:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ea78 <_sidata+0x5644>
1c007c1c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007c20 <__FUNCTION__.1667>:
1c007c20:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f098 <_sidata+0x15c64>
1c007c24:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ec88 <_sidata+0x15854>
1c007c28:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bffb18c <_start-0x4e74>
1c007c2c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffed9c <_start-0x1264>
1c007c30:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ea90 <_sidata+0x565c>
1c007c34:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007c38 <__FUNCTION__.1671>:
1c007c38:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f0b0 <_sidata+0x15c7c>
1c007c3c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eca0 <_sidata+0x1586c>
1c007c40:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bffb2a4 <_start-0x4d5c>
1c007c44:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffedb4 <_start-0x124c>
1c007c48:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00eaa8 <_sidata+0x5674>
1c007c4c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007c50 <__FUNCTION__.1675>:
1c007c50:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f0c8 <_sidata+0x15c94>
1c007c54:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ecb8 <_sidata+0x15884>
1c007c58:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bffb3bc <_start-0x4c44>
1c007c5c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffedcc <_start-0x1234>
1c007c60:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00eac0 <_sidata+0x568c>
1c007c64:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
1c007c68:	65636552 	bge	$r10,$r18,90980(0x16364) # 1c01dfcc <_sidata+0x14b98>
1c007c6c:	64657669 	bge	$r19,$r9,25972(0x6574) # 1c00e1e0 <_sidata+0x4dac>
1c007c70:	6d6f6320 	bgeu	$r25,$r0,94048(0x16f60) # 1c01ebd0 <_sidata+0x1579c>
1c007c74:	646e616d 	bge	$r11,$r13,28256(0x6e60) # 1c00ead4 <_sidata+0x56a0>
1c007c78:	0000203a 	clo.d	$r26,$r1
1c007c7c:	00006325 	rdtimel.w	$r5,$r25
1c007c80:	0000000a 	0x0000000a
1c007c84:	2077654e 	ll.w	$r14,$r10,30564(0x7764)
1c007c88:	65726874 	bge	$r3,$r20,94824(0x17268) # 1c01eef0 <_sidata+0x15abc>
1c007c8c:	6c6f6873 	bgeu	$r3,$r19,28520(0x6f68) # 1c00ebf4 <_sidata+0x57c0>
1c007c90:	73207364 	0x73207364
1c007c94:	203a7465 	ll.w	$r5,$r3,14964(0x3a74)
1c007c98:	64253d54 	bge	$r10,$r20,9532(0x253c) # 1c00a1d4 <_sidata+0xda0>
1c007c9c:	3d48202c 	0x3d48202c
1c007ca0:	202c6425 	ll.w	$r5,$r1,11364(0x2c64)
1c007ca4:	64253d53 	bge	$r10,$r19,9532(0x253c) # 1c00a1e0 <_sidata+0xdac>
1c007ca8:	0000000a 	0x0000000a
1c007cac:	61766e49 	blt	$r18,$r9,95852(0x1766c) # 1c01f318 <_sidata+0x15ee4>
1c007cb0:	2064696c 	ll.w	$r12,$r11,25704(0x6468)
1c007cb4:	6d6d6f63 	bgeu	$r27,$r3,93548(0x16d6c) # 1c01ea20 <_sidata+0x155ec>
1c007cb8:	20646e61 	ll.w	$r1,$r19,25708(0x646c)
1c007cbc:	6d726f66 	bgeu	$r27,$r6,94828(0x1726c) # 1c01ef28 <_sidata+0x15af4>
1c007cc0:	0a217461 	xvfmadd.d	$xr1,$xr3,$xr29,$xr2
1c007cc4:	00000000 	0x00000000
1c007cc8:	74737953 	xvmin.w	$xr19,$xr10,$xr30
1c007ccc:	73206d65 	0x73206d65
1c007cd0:	74726174 	xvmin.b	$xr20,$xr11,$xr24
1c007cd4:	2e676e69 	0x2e676e69
1c007cd8:	000a2e2e 	0x000a2e2e
1c007cdc:	4f495047 	jirl	$r7,$r2,-46768(0x34950)
1c007ce0:	696e6920 	bltu	$r9,$r0,93800(0x16e68) # 1c01eb48 <_sidata+0x15714>
1c007ce4:	4b4f2074 	bceqz	$fcc3,-2928864(0x534f20) # 1bd3cc04 <_start-0x2c33fc>
1c007ce8:	0000000a 	0x0000000a
1c007cec:	20424752 	ll.w	$r18,$r26,16964(0x4244)
1c007cf0:	2044454c 	ll.w	$r12,$r10,17476(0x4444)
1c007cf4:	74696e69 	xvavgr.w	$xr9,$xr19,$xr27
1c007cf8:	0a4b4f20 	0x0a4b4f20
1c007cfc:	00000000 	0x00000000
1c007d00:	2044454c 	ll.w	$r12,$r10,17476(0x4444)
1c007d04:	74696e69 	xvavgr.w	$xr9,$xr19,$xr27
1c007d08:	0a4b4f20 	0x0a4b4f20
1c007d0c:	00000000 	0x00000000
1c007d10:	2059454b 	ll.w	$r11,$r10,22852(0x5944)
1c007d14:	74696e69 	xvavgr.w	$xr9,$xr19,$xr27
1c007d18:	0a4b4f20 	0x0a4b4f20
1c007d1c:	00000000 	0x00000000
1c007d20:	50454542 	b	84428100(0x5084544) # 2108c264 <_sidata+0x5082e30>
1c007d24:	696e6920 	bltu	$r9,$r0,93800(0x16e68) # 1c01eb8c <_sidata+0x15758>
1c007d28:	4b4f2074 	bceqz	$fcc3,-2928864(0x534f20) # 1bd3cc48 <_start-0x2c33b8>
1c007d2c:	0000000a 	0x0000000a
1c007d30:	44454c4f 	bnez	$r2,3949900(0x3c454c) # 1c3cc27c <_sidata+0x3c2e48>
1c007d34:	696e6920 	bltu	$r9,$r0,93800(0x16e68) # 1c01eb9c <_sidata+0x15768>
1c007d38:	4b4f2074 	bceqz	$fcc3,-2928864(0x534f20) # 1bd3cc58 <_start-0x2c33a8>
1c007d3c:	0000000a 	0x0000000a
1c007d40:	204e4146 	ll.w	$r6,$r10,20032(0x4e40)
1c007d44:	74696e69 	xvavgr.w	$xr9,$xr19,$xr27
1c007d48:	0a4b4f20 	0x0a4b4f20
1c007d4c:	00000000 	0x00000000
1c007d50:	65746e49 	bge	$r18,$r9,95340(0x1746c) # 1c01f1bc <_sidata+0x15d88>
1c007d54:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c007d58:	6e652074 	bgeu	$r3,$r20,-105184(0x26520) # 1bfee278 <_start-0x11d88>
1c007d5c:	656c6261 	bge	$r19,$r1,93280(0x16c60) # 1c01e9bc <_sidata+0x15588>
1c007d60:	00000a64 	0x00000a64
1c007d64:	6b6f6d53 	bltu	$r10,$r19,-37012(0x36f6c) # 1bffecd0 <_start-0x1330>
1c007d68:	65732065 	bge	$r3,$r5,95008(0x17320) # 1c01f088 <_sidata+0x15c54>
1c007d6c:	726f736e 	0x726f736e
1c007d70:	696e6920 	bltu	$r9,$r0,93800(0x16e68) # 1c01ebd8 <_sidata+0x157a4>
1c007d74:	4b4f2074 	bceqz	$fcc3,-2928864(0x534f20) # 1bd3cc94 <_start-0x2c336c>
1c007d78:	0000000a 	0x0000000a
1c007d7c:	75657551 	0x75657551
1c007d80:	6e692065 	bgeu	$r3,$r5,-104160(0x26920) # 1bfee6a0 <_start-0x11960>
1c007d84:	4f207469 	jirl	$r9,$r3,-57228(0x32074)
1c007d88:	00000a4b 	0x00000a4b
1c007d8c:	54524155 	bl	89412160(0x5545240) # 2154cfcc <_sidata+0x5543b98>
1c007d90:	6e692031 	bgeu	$r1,$r17,-104160(0x26920) # 1bfee6b0 <_start-0x11950>
1c007d94:	4f207469 	jirl	$r9,$r3,-57228(0x32074)
1c007d98:	00000a4b 	0x00000a4b
1c007d9c:	20434441 	ll.w	$r1,$r2,17220(0x4344)
1c007da0:	65776f70 	bge	$r27,$r16,96108(0x1776c) # 1c01f50c <_sidata+0x160d8>
1c007da4:	6e6f2072 	bgeu	$r3,$r18,-102624(0x26f20) # 1bfeecc4 <_start-0x1133c>
1c007da8:	0000000a 	0x0000000a
1c007dac:	20434441 	ll.w	$r1,$r2,17220(0x4344)
1c007db0:	6e616863 	bgeu	$r3,$r3,-106136(0x26168) # 1bfedf18 <_start-0x120e8>
1c007db4:	206c656e 	ll.w	$r14,$r11,27748(0x6c64)
1c007db8:	6e65706f 	bgeu	$r3,$r15,-105104(0x26570) # 1bfee328 <_start-0x11cd8>
1c007dbc:	000a6465 	0x000a6465
1c007dc0:	49595559 	bcnez	$fcc2,-1746604(0x655954) # 1be5d714 <_start-0x1a28ec>
1c007dc4:	6e69204e 	bgeu	$r2,$r14,-104160(0x26920) # 1bfee6e4 <_start-0x1191c>
1c007dc8:	4f207469 	jirl	$r9,$r3,-57228(0x32074)
1c007dcc:	00000a4b 	0x00000a4b
1c007dd0:	31544844 	vstelm.h	$vr4,$r2,36(0x24),0x5
1c007dd4:	6e692031 	bgeu	$r1,$r17,-104160(0x26920) # 1bfee6f4 <_start-0x1190c>
1c007dd8:	66207469 	bge	$r3,$r9,-122764(0x22074) # 1bfe9e4c <_start-0x161b4>
1c007ddc:	656c6961 	bge	$r11,$r1,93288(0x16c68) # 1c01ea44 <_sidata+0x15610>
1c007de0:	000a2164 	0x000a2164
1c007de4:	6d6d6f43 	bgeu	$r26,$r3,93548(0x16d6c) # 1c01eb50 <_sidata+0x1571c>
1c007de8:	20646e61 	ll.w	$r1,$r19,25708(0x646c)
1c007dec:	6f636e69 	bgeu	$r19,$r9,-40084(0x3636c) # 1bffe158 <_start-0x1ea8>
1c007df0:	656c706d 	bge	$r3,$r13,93296(0x16c70) # 1c01ea60 <_sidata+0x1562c>
1c007df4:	6f206574 	bgeu	$r11,$r20,-57244(0x32064) # 1bff9e58 <_start-0x61a8>
1c007df8:	69742072 	bltu	$r3,$r18,95264(0x17420) # 1c01f218 <_sidata+0x15de4>
1c007dfc:	756f656d 	0x756f656d
1c007e00:	000a2174 	0x000a2174
1c007e04:	504d4554 	b	89148740(0x5504d44) # 2150cb48 <_sidata+0x5503714>
1c007e08:	6425203a 	bge	$r1,$r26,9504(0x2520) # 1c00a328 <_sidata+0xef4>
1c007e0c:	5548202c 	bl	11618336(0xb14820) # 1cb1c62c <_sidata+0xb131f8>
1c007e10:	203a494d 	ll.w	$r13,$r10,14920(0x3a48)
1c007e14:	25256425 	stptr.w	$r5,$r1,9572(0x2564)
1c007e18:	202c4852 	ll.w	$r18,$r2,11336(0x2c48)
1c007e1c:	4b4f4d53 	bcnez	$fcc2,-3190964(0x4f4f4c) # 1bcfcd68 <_start-0x303298>
1c007e20:	25203a45 	stptr.w	$r5,$r18,8248(0x2038)
1c007e24:	6d707064 	bgeu	$r3,$r4,94320(0x17070) # 1c01ee94 <_sidata+0x15a60>
1c007e28:	0000000a 	0x0000000a
1c007e2c:	52525543 	b	84824660(0x50e5254) # 210ed080 <_sidata+0x50e3c4c>
1c007e30:	00544e45 	0x00544e45
1c007e34:	504d4554 	b	89148740(0x5504d44) # 2150cb78 <_sidata+0x5503744>
1c007e38:	6432253a 	bge	$r9,$r26,12836(0x3224) # 1c00b05c <_sidata+0x1c28>
1c007e3c:	008384e2 	bstrins.d	$r2,$r7,0x3,0x21
1c007e40:	494d5548 	bcnez	$fcc2,2182484(0x214d54) # 1c21cb94 <_sidata+0x213760>
1c007e44:	6432253a 	bge	$r9,$r26,12836(0x3224) # 1c00b068 <_sidata+0x1c34>
1c007e48:	48522525 	bcnez	$fcc1,1331748(0x145224) # 1c14d06c <_sidata+0x143c38>
1c007e4c:	00000000 	0x00000000
1c007e50:	4b4f4d53 	bcnez	$fcc2,-3190964(0x4f4f4c) # 1bcfcd9c <_start-0x303264>
1c007e54:	32253a45 	xvldrepl.w	$xr5,$r18,1336(0x538)
1c007e58:	6d707064 	bgeu	$r3,$r4,94320(0x17070) # 1c01eec8 <_sidata+0x15a94>
1c007e5c:	00000000 	0x00000000
1c007e60:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007e64:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007e68:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007e6c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007e70:	00000000 	0x00000000

1c007e74 <asc2_1608>:
	...
1c007e84:	f8000000 	0xf8000000
1c007e88:	00000000 	0x00000000
1c007e8c:	33000000 	0x33000000
1c007e90:	00000000 	0x00000000
1c007e94:	020c1000 	slti	$r0,$r0,772(0x304)
1c007e98:	00020c10 	0x00020c10
	...
1c007ea4:	78c04000 	0x78c04000
1c007ea8:	0078c040 	bstrpick.w	$r0,$r2,0x18,0x10
1c007eac:	043f0400 	csrrd	$r0,0xfc1
1c007eb0:	00043f04 	alsl.w	$r4,$r24,$r15,0x1
1c007eb4:	88887000 	0x88887000
1c007eb8:	003008fc 	0x003008fc
1c007ebc:	20201800 	ll.w	$r0,$r0,8216(0x2018)
1c007ec0:	001e21ff 	mulh.d	$r31,$r15,$r8
1c007ec4:	80f008f0 	0x80f008f0
1c007ec8:	00001860 	cto.w	$r0,$r3
1c007ecc:	030c3100 	lu52i.d	$r0,$r8,780(0x30c)
1c007ed0:	001e211e 	mulh.d	$r30,$r8,$r8
1c007ed4:	8808f000 	0x8808f000
1c007ed8:	00000070 	0x00000070
1c007edc:	2c23211e 	vld	$vr30,$r8,-1848(0x8c8)
1c007ee0:	10212719 	addu16i.d	$r25,$r24,2121(0x849)
1c007ee4:	000e1200 	bytepick.d	$r0,$r16,$r4,0x4
	...
1c007ef4:	e0000000 	0xe0000000
1c007ef8:	00020418 	0x00020418
1c007efc:	07000000 	0x07000000
1c007f00:	00402018 	0x00402018
1c007f04:	18040200 	pcaddi	$r0,8208(0x2010)
1c007f08:	000000e0 	0x000000e0
1c007f0c:	18204000 	pcaddi	$r0,66048(0x10200)
1c007f10:	00000007 	0x00000007
1c007f14:	f0804040 	0xf0804040
1c007f18:	00404080 	0x00404080
1c007f1c:	0f010202 	0x0f010202
1c007f20:	00020201 	0x00020201
1c007f24:	00000000 	0x00000000
1c007f28:	000000e0 	0x000000e0
1c007f2c:	01010100 	fadd.d	$f0,$f8,$f0
1c007f30:	0101010f 	fadd.d	$f15,$f8,$f0
	...
1c007f3c:	00709000 	bstrpick.w	$r0,$r0,0x10,0x4
	...
1c007f4c:	01010100 	fadd.d	$f0,$f8,$f0
1c007f50:	00010101 	0x00010101
	...
1c007f5c:	00303000 	0x00303000
	...
1c007f68:	000438c0 	alsl.w	$r0,$r6,$r14,0x1
1c007f6c:	07186000 	0x07186000
1c007f70:	00000000 	0x00000000
1c007f74:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c007f78:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007f7c:	20100f00 	ll.w	$r0,$r24,4108(0x100c)
1c007f80:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c007f84:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c007f88:	000000f8 	0x000000f8
1c007f8c:	20200000 	ll.w	$r0,$r0,8192(0x2000)
1c007f90:	0020203f 	div.w	$r31,$r1,$r8
1c007f94:	08087000 	0x08087000
1c007f98:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c007f9c:	24283000 	ldptr.w	$r0,$r0,10288(0x2830)
1c007fa0:	00302122 	0x00302122
1c007fa4:	08083000 	0x08083000
1c007fa8:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c007fac:	21201800 	sc.w	$r0,$r0,8216(0x2018)
1c007fb0:	001c2221 	mul.w	$r1,$r17,$r8
1c007fb4:	40800000 	beqz	$r0,32768(0x8000) # 1c00ffb4 <_sidata+0x6b80>
1c007fb8:	0000f830 	0x0000f830
1c007fbc:	24050600 	ldptr.w	$r0,$r16,1284(0x504)
1c007fc0:	24243f24 	ldptr.w	$r4,$r25,9276(0x243c)
1c007fc4:	8888f800 	0x8888f800
1c007fc8:	00080888 	bytepick.w	$r8,$r4,$r2,0x0
1c007fcc:	20201900 	ll.w	$r0,$r8,8216(0x2018)
1c007fd0:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c007fd4:	8810e000 	0x8810e000
1c007fd8:	00009088 	0x00009088
1c007fdc:	20110f00 	ll.w	$r0,$r24,4364(0x110c)
1c007fe0:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c007fe4:	08081800 	0x08081800
1c007fe8:	00186888 	sra.w	$r8,$r4,$r26
1c007fec:	3e000000 	0x3e000000
1c007ff0:	00000001 	0x00000001
1c007ff4:	08887000 	0x08887000
1c007ff8:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c007ffc:	21221c00 	sc.w	$r0,$r0,8732(0x221c)
1c008000:	001c2221 	mul.w	$r1,$r17,$r8
1c008004:	0808f000 	0x0808f000
1c008008:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00800c:	22120100 	ll.d	$r0,$r8,4608(0x1200)
1c008010:	000f1122 	bytepick.d	$r2,$r9,$r4,0x6
1c008014:	c0000000 	0xc0000000
1c008018:	000000c0 	0x000000c0
1c00801c:	30000000 	0x30000000
1c008020:	00000030 	0x00000030
1c008024:	80000000 	0x80000000
1c008028:	00000000 	0x00000000
1c00802c:	e0000000 	0xe0000000
1c008030:	00000000 	0x00000000
1c008034:	40800000 	beqz	$r0,32768(0x8000) # 1c010034 <_sidata+0x6c00>
1c008038:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c00803c:	04020100 	csrxchg	$r0,$r8,0x80
1c008040:	00201008 	div.w	$r8,$r0,$r4
1c008044:	40404000 	beqz	$r0,16448(0x4040) # 1c00c084 <_sidata+0x2c50>
1c008048:	00404040 	0x00404040
1c00804c:	02020200 	slti	$r0,$r16,128(0x80)
1c008050:	00020202 	0x00020202
1c008054:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c008058:	00008040 	0x00008040
1c00805c:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c008060:	00010204 	0x00010204
1c008064:	08487000 	0x08487000
1c008068:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c00806c:	30000000 	0x30000000
1c008070:	00000037 	0x00000037
1c008074:	28c830c0 	ld.d	$r0,$r6,524(0x20c)
1c008078:	00e010e8 	bstrpick.d	$r8,$r7,0x20,0x4
1c00807c:	28271807 	ld.b	$r7,$r0,-1594(0x9c6)
1c008080:	0017282f 	sll.w	$r15,$r1,$r10
1c008084:	38c00000 	0x38c00000
1c008088:	000000e0 	0x000000e0
1c00808c:	02233c20 	slti	$r0,$r1,-1841(0x8cf)
1c008090:	20382702 	ll.w	$r2,$r24,14372(0x3824)
1c008094:	8888f808 	0x8888f808
1c008098:	00007088 	0x00007088
1c00809c:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c0080a0:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c0080a4:	080830c0 	0x080830c0
1c0080a8:	00380808 	0x00380808
1c0080ac:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c0080b0:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c0080b4:	0808f808 	0x0808f808
1c0080b8:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c0080bc:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c0080c0:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c0080c4:	8888f808 	0x8888f808
1c0080c8:	001008e8 	add.w	$r8,$r7,$r2
1c0080cc:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c0080d0:	00182023 	sra.w	$r3,$r1,$r8
1c0080d4:	8888f808 	0x8888f808
1c0080d8:	001008e8 	add.w	$r8,$r7,$r2
1c0080dc:	00203f20 	div.w	$r0,$r25,$r15
1c0080e0:	00000003 	0x00000003
1c0080e4:	080830c0 	0x080830c0
1c0080e8:	00003808 	revb.2w	$r8,$r0
1c0080ec:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c0080f0:	00021e22 	0x00021e22
1c0080f4:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c0080f8:	08f80800 	0x08f80800
1c0080fc:	01213f20 	0x01213f20
1c008100:	203f2101 	ll.w	$r1,$r8,16160(0x3f20)
1c008104:	f8080800 	0xf8080800
1c008108:	00000808 	0x00000808
1c00810c:	3f202000 	0x3f202000
1c008110:	00002020 	clo.d	$r0,$r1
1c008114:	08080000 	0x08080000
1c008118:	000808f8 	bytepick.w	$r24,$r7,$r2,0x0
1c00811c:	808080c0 	0x808080c0
1c008120:	0000007f 	0x0000007f
1c008124:	c088f808 	0xc088f808
1c008128:	00081828 	bytepick.w	$r8,$r1,$r6,0x0
1c00812c:	01203f20 	0x01203f20
1c008130:	00203826 	div.w	$r6,$r1,$r14
1c008134:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c008138:	00000000 	0x00000000
1c00813c:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c008140:	00302020 	0x00302020
1c008144:	00f8f808 	bstrpick.d	$r8,$r0,0x38,0x3e
1c008148:	0008f8f8 	bytepick.w	$r24,$r7,$r30,0x1
1c00814c:	3e013f20 	0x3e013f20
1c008150:	00203f01 	div.w	$r1,$r24,$r15
1c008154:	c030f808 	0xc030f808
1c008158:	08f80800 	0x08f80800
1c00815c:	00203f20 	div.w	$r0,$r25,$r15
1c008160:	003f1807 	0x003f1807
1c008164:	080810e0 	0x080810e0
1c008168:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00816c:	2020100f 	ll.w	$r15,$r0,8208(0x2010)
1c008170:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c008174:	0808f808 	0x0808f808
1c008178:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c00817c:	01213f20 	0x01213f20
1c008180:	00000101 	0x00000101
1c008184:	080810e0 	0x080810e0
1c008188:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00818c:	2828100f 	ld.b	$r15,$r0,-1532(0xa04)
1c008190:	004f5030 	0x004f5030
1c008194:	8888f808 	0x8888f808
1c008198:	00708888 	bstrpick.w	$r8,$r4,0x10,0x2
1c00819c:	00203f20 	div.w	$r0,$r25,$r15
1c0081a0:	20300c03 	ll.w	$r3,$r0,12300(0x300c)
1c0081a4:	08887000 	0x08887000
1c0081a8:	00380808 	0x00380808
1c0081ac:	21203800 	sc.w	$r0,$r0,8248(0x2038)
1c0081b0:	001c2221 	mul.w	$r1,$r17,$r8
1c0081b4:	f8080818 	0xf8080818
1c0081b8:	00180808 	sra.w	$r8,$r0,$r2
1c0081bc:	3f200000 	0x3f200000
1c0081c0:	00000020 	0x00000020
1c0081c4:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c0081c8:	08f80800 	0x08f80800
1c0081cc:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c0081d0:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c0081d4:	00887808 	bstrins.d	$r8,$r0,0x8,0x1e
1c0081d8:	0838c800 	0x0838c800
1c0081dc:	38070000 	0x38070000
1c0081e0:	0000010e 	0x0000010e
1c0081e4:	f800f808 	0xf800f808
1c0081e8:	0008f800 	bytepick.w	$r0,$r0,$r30,0x1
1c0081ec:	013e0300 	0x013e0300
1c0081f0:	0000033e 	0x0000033e
1c0081f4:	80681808 	0x80681808
1c0081f8:	08186880 	fmadd.s	$f0,$f4,$f26,$f16
1c0081fc:	032c3020 	lu52i.d	$r0,$r1,-1268(0xb0c)
1c008200:	20302c03 	ll.w	$r3,$r0,12332(0x302c)
1c008204:	00c83808 	bstrpick.d	$r8,$r0,0x8,0xe
1c008208:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c00820c:	3f200000 	0x3f200000
1c008210:	00000020 	0x00000020
1c008214:	08080810 	0x08080810
1c008218:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c00821c:	21263820 	sc.w	$r0,$r1,9784(0x2638)
1c008220:	00182020 	sra.w	$r0,$r1,$r8
1c008224:	fe000000 	0xfe000000
1c008228:	00020202 	0x00020202
1c00822c:	7f000000 	0x7f000000
1c008230:	00404040 	0x00404040
1c008234:	c0380400 	0xc0380400
1c008238:	00000000 	0x00000000
1c00823c:	01000000 	0x01000000
1c008240:	00c03806 	bstrpick.d	$r6,$r0,0x0,0xe
1c008244:	02020200 	slti	$r0,$r16,128(0x80)
1c008248:	000000fe 	0x000000fe
1c00824c:	40404000 	beqz	$r0,16448(0x4040) # 1c00c28c <_sidata+0x2e58>
1c008250:	0000007f 	0x0000007f
1c008254:	02040000 	slti	$r0,$r0,256(0x100)
1c008258:	00000402 	0x00000402
	...
1c00826c:	80808080 	0x80808080
1c008270:	80808080 	0x80808080
1c008274:	04020200 	csrxchg	$r0,$r16,0x80
	...
1c008284:	80800000 	0x80800000
1c008288:	00000080 	0x00000080
1c00828c:	24241900 	ldptr.w	$r0,$r8,9240(0x2418)
1c008290:	00203f12 	div.w	$r18,$r24,$r15
1c008294:	8000f010 	0x8000f010
1c008298:	00000080 	0x00000080
1c00829c:	20113f00 	ll.w	$r0,$r24,4412(0x113c)
1c0082a0:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c0082a4:	80000000 	0x80000000
1c0082a8:	00008080 	0x00008080
1c0082ac:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c0082b0:	00112020 	sub.w	$r0,$r1,$r8
1c0082b4:	80800000 	0x80800000
1c0082b8:	00f09080 	bstrpick.d	$r0,$r4,0x30,0x24
1c0082bc:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c0082c0:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c0082c4:	80800000 	0x80800000
1c0082c8:	00008080 	0x00008080
1c0082cc:	24241f00 	ldptr.w	$r0,$r24,9244(0x241c)
1c0082d0:	00172424 	sll.w	$r4,$r1,$r9
1c0082d4:	e0808000 	0xe0808000
1c0082d8:	00209090 	mod.w	$r16,$r4,$r4
1c0082dc:	3f202000 	0x3f202000
1c0082e0:	00002020 	clo.d	$r0,$r1
1c0082e4:	80800000 	0x80800000
1c0082e8:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0082ec:	94946b00 	0x94946b00
1c0082f0:	00609394 	bstrpick.w	$r20,$r28,0x0,0x4
1c0082f4:	8000f010 	0x8000f010
1c0082f8:	00008080 	0x00008080
1c0082fc:	00213f20 	div.wu	$r0,$r25,$r15
1c008300:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c008304:	98988000 	0x98988000
1c008308:	00000000 	0x00000000
1c00830c:	3f202000 	0x3f202000
1c008310:	00002020 	clo.d	$r0,$r1
1c008314:	80000000 	0x80000000
1c008318:	00009898 	0x00009898
1c00831c:	8080c000 	0x8080c000
1c008320:	00007f80 	0x00007f80
1c008324:	0000f010 	0x0000f010
1c008328:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00832c:	06243f20 	cacop	0x0,$r25,-1777(0x90f)
1c008330:	00203029 	div.w	$r9,$r1,$r12
1c008334:	f8101000 	0xf8101000
1c008338:	00000000 	0x00000000
1c00833c:	3f202000 	0x3f202000
1c008340:	00002020 	clo.d	$r0,$r1
1c008344:	80808080 	0x80808080
1c008348:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00834c:	00203f20 	div.w	$r0,$r25,$r15
1c008350:	3f00203f 	0x3f00203f
1c008354:	80008080 	0x80008080
1c008358:	00008080 	0x00008080
1c00835c:	00213f20 	div.wu	$r0,$r25,$r15
1c008360:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c008364:	80800000 	0x80800000
1c008368:	00008080 	0x00008080
1c00836c:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c008370:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c008374:	80008080 	0x80008080
1c008378:	00000080 	0x00000080
1c00837c:	2091ff80 	ll.w	$r0,$r28,-28164(0x91fc)
1c008380:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c008384:	80000000 	0x80000000
1c008388:	00800080 	bstrins.d	$r0,$r4,0x0,0x0
1c00838c:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c008390:	80ff9120 	0x80ff9120
1c008394:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008398:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00839c:	213f2020 	sc.w	$r0,$r1,16160(0x3f20)
1c0083a0:	00010020 	asrtle.d	$r1,$r0
1c0083a4:	80800000 	0x80800000
1c0083a8:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0083ac:	24243300 	ldptr.w	$r0,$r24,9264(0x2430)
1c0083b0:	00192424 	srl.d	$r4,$r1,$r9
1c0083b4:	e0808000 	0xe0808000
1c0083b8:	00008080 	0x00008080
1c0083bc:	1f000000 	pcaddu18i	$r0,-524288(0x80000)
1c0083c0:	00102020 	add.w	$r0,$r1,$r8
1c0083c4:	00008080 	0x00008080
1c0083c8:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c0083cc:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c0083d0:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c0083d4:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0083d8:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0083dc:	300c0300 	0x300c0300
1c0083e0:	0000030c 	0x0000030c
1c0083e4:	80008080 	0x80008080
1c0083e8:	80800080 	0x80800080
1c0083ec:	0c300e01 	0x0c300e01
1c0083f0:	01063807 	0x01063807
1c0083f4:	80808000 	0x80808000
1c0083f8:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c0083fc:	0e312000 	0x0e312000
1c008400:	0020312e 	div.w	$r14,$r9,$r12
1c008404:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008408:	80808000 	0x80808000
1c00840c:	78868100 	0x78868100
1c008410:	00010618 	0x00010618
1c008414:	80808000 	0x80808000
1c008418:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00841c:	2c302100 	vld	$vr0,$r8,-1016(0xc08)
1c008420:	00302122 	0x00302122
1c008424:	00000000 	0x00000000
1c008428:	0202fc00 	slti	$r0,$r0,191(0xbf)
1c00842c:	00000000 	0x00000000
1c008430:	40403e01 	beqz	$r16,278588(0x4403c) # 1c04c46c <_sidata+0x43038>
1c008434:	00000000 	0x00000000
1c008438:	000000ff 	0x000000ff
1c00843c:	00000000 	0x00000000
1c008440:	000000ff 	0x000000ff
1c008444:	00fc0202 	bstrpick.d	$r2,$r16,0x3c,0x0
1c008448:	00000000 	0x00000000
1c00844c:	013e4040 	0x013e4040
1c008450:	00000000 	0x00000000
1c008454:	02010200 	slti	$r0,$r16,64(0x40)
1c008458:	00020402 	0x00020402
	...

1c008464 <tfont16>:
1c008464:	00be9be5 	bstrins.d	$r5,$r31,0x3e,0x26
1c008468:	224202fe 	ll.d	$r30,$r23,16896(0x4200)
1c00846c:	52925e32 	b	-120941988(0x8ca925c) # 14cb16c8 <_start-0x734e938>
1c008470:	02021232 	slti	$r18,$r17,132(0x84)
1c008474:	000000fe 	0x000000fe
1c008478:	424242ff 	beqz	$r23,-114112(0x7e4240) # 1bfec6b8 <_start-0x13948>
1c00847c:	69645551 	bltu	$r10,$r17,91220(0x16454) # 1c01e8d0 <_sidata+0x1549c>
1c008480:	42424241 	beqz	$r18,410176(0x64240) # 1c06c6c0 <_sidata+0x6328c>
1c008484:	e60000ff 	0xe60000ff
1c008488:	08088796 	0x08088796
1c00848c:	08c83808 	0x08c83808
1c008490:	08080e09 	0x08080e09
1c008494:	080838c8 	0x080838c8
1c008498:	80800008 	0x80800008
1c00849c:	11204040 	addu16i.d	$r0,$r2,18448(0x4810)
1c0084a0:	110a040a 	addu16i.d	$r10,$r0,17025(0x4281)
1c0084a4:	80404020 	0x80404020
1c0084a8:	98e60080 	0x98e60080
1c0084ac:	000000be 	0x000000be
1c0084b0:	929292fe 	0x929292fe
1c0084b4:	92929292 	0x92929292
1c0084b8:	000000fe 	0x000000fe
1c0084bc:	44424000 	bnez	$r0,16960(0x4240) # 1c00c6fc <_sidata+0x32c8>
1c0084c0:	407f4058 	beqz	$r2,-2064576(0x607f40) # 1be10400 <_start-0x1efc00>
1c0084c4:	407f4040 	beqz	$r2,32576(0x7f40) # 1c010404 <_sidata+0x6fd0>
1c0084c8:	40464850 	beqz	$r2,-4176312(0x404648) # 1bc0cb10 <_start-0x3f34f0>
1c0084cc:	baa4e700 	0xbaa4e700
1c0084d0:	42424040 	beqz	$r2,148032(0x24240) # 1c02c710 <_sidata+0x232dc>
1c0084d4:	c2424242 	0xc2424242
1c0084d8:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac718 <_sidata+0xa32e4>
1c0084dc:	00404042 	0x00404042
1c0084e0:	06081020 	cacop	0x0,$r1,516(0x204)
1c0084e4:	7f804000 	0x7f804000
1c0084e8:	02000000 	slti	$r0,$r0,0
1c0084ec:	00300804 	0x00300804
1c0084f0:	109eaee5 	addu16i.d	$r5,$r23,10155(0x27ab)
1c0084f4:	1484040c 	lu12i.w	$r12,270368(0x42020)
1c0084f8:	f4060564 	0xf4060564
1c0084fc:	04040404 	csrrd	$r4,0x101
1c008500:	04000c14 	csrrd	$r20,0x3
1c008504:	47448484 	bnez	$r4,1262724(0x134484) # 1c13c988 <_sidata+0x133554>
1c008508:	070c1424 	0x070c1424
1c00850c:	4424140c 	bnez	$r0,3154964(0x302414) # 1c30a920 <_sidata+0x3014ec>
1c008510:	e9000484 	0xe9000484
1c008514:	fa028caa 	0xfa028caa
1c008518:	80fe8282 	0x80fe8282
1c00851c:	4c502040 	jirl	$r0,$r2,20512(0x5020)
1c008520:	20504c43 	ll.w	$r3,$r2,20556(0x504c)
1c008524:	18080040 	pcaddi	$r0,16386(0x4002)
1c008528:	3f448448 	0x3f448448
1c00852c:	41584440 	beqz	$r2,88132(0x15844) # 1c01dd70 <_sidata+0x1493c>
1c008530:	4758604e 	bnez	$r2,3889248(0x3b5860) # 1c3bdd90 <_sidata+0x3b495c>
1c008534:	b8e60040 	0xb8e60040
1c008538:	026010a9 	sltui	$r9,$r5,-2044(0x804)
1c00853c:	fe00008c 	0xfe00008c
1c008540:	92929292 	0x92929292
1c008544:	0000fe92 	0x0000fe92
1c008548:	7e040400 	0x7e040400
1c00854c:	427e4001 	beqz	$r0,425536(0x67e40) # 1c07038c <_sidata+0x66f58>
1c008550:	7e427e42 	0x7e427e42
1c008554:	407e4242 	beqz	$r18,556608(0x87e40) # 1c090394 <_sidata+0x86f60>
1c008558:	bfb9e600 	0xbfb9e600
1c00855c:	8c026010 	0x8c026010
1c008560:	9292fe00 	0x9292fe00
1c008564:	92929292 	0x92929292
1c008568:	000000fe 	0x000000fe
1c00856c:	017e0404 	0x017e0404
1c008570:	7f504844 	0x7f504844
1c008574:	507f4040 	b	16809792(0x1007f40) # 1d0104b4 <_sidata+0x1007080>
1c008578:	00404448 	0x00404448
1c00857c:	00a6bae5 	bstrins.d	$r5,$r23,0x26,0x2e
1c008580:	2424fc00 	ldptr.w	$r0,$r0,9468(0x24fc)
1c008584:	2625fc24 	ldptr.d	$r4,$r1,9724(0x25fc)
1c008588:	2424fc24 	ldptr.w	$r4,$r1,9468(0x24fc)
1c00858c:	40000424 	beqz	$r1,1048580(0x100004) # 1c108590 <_sidata+0xff15c>
1c008590:	84808f30 	0x84808f30
1c008594:	2525554c 	stptr.w	$r12,$r10,9556(0x2554)
1c008598:	804c5525 	0x804c5525
1c00859c:	e6008080 	0xe6008080
1c0085a0:	101080a3 	addu16i.d	$r3,$r5,1056(0x420)
1c0085a4:	5090ffd0 	b	-12545796(0xf4090fc) # 1b4116a0 <_start-0xbee960>
1c0085a8:	434c5020 	beqz	$r1,216144(0x34c50) # 1c03d1f8 <_sidata+0x33dc4>
1c0085ac:	4020504c 	beqz	$r2,3154000(0x302050) # 1c30a5fc <_sidata+0x3011c8>
1c0085b0:	03040040 	lu52i.d	$r0,$r2,256(0x100)
1c0085b4:	4100ff00 	beqz	$r24,65788(0x100fc) # 1c0186b0 <_sidata+0xf27c>
1c0085b8:	4e415844 	jirl	$r4,$r2,-114344(0x24158)
1c0085bc:	40475860 	beqz	$r3,18264(0x4758) # 1c00cd14 <_sidata+0x38e0>
1c0085c0:	b5e60040 	0xb5e60040
1c0085c4:	0260108b 	sltui	$r11,$r4,-2044(0x804)
1c0085c8:	02fe008c 	addi.d	$r12,$r4,-128(0xf80)
1c0085cc:	00fe02f2 	bstrpick.d	$r18,$r23,0x3e,0x0
1c0085d0:	00ff00f8 	bstrpick.d	$r24,$r7,0x3f,0x0
1c0085d4:	7e040400 	0x7e040400
1c0085d8:	30478001 	vldrepl.h	$vr1,$r0,960(0x3c0)
1c0085dc:	0027100f 	crcc.w.w.w	$r15,$r0,$r4
1c0085e0:	007f8047 	bstrpick.w	$r7,$r2,0x1f,0x0
1c0085e4:	9eaee500 	0x9eaee500
1c0085e8:	84040c10 	0x84040c10
1c0085ec:	06056414 	cacop	0x14,$r0,345(0x159)
1c0085f0:	040404f4 	csrxchg	$r20,$r7,0x101
1c0085f4:	000c1404 	bytepick.d	$r4,$r0,$r5,0x0
1c0085f8:	44848404 	bnez	$r0,1082500(0x108484) # 1c110a7c <_sidata+0x107648>
1c0085fc:	0c142447 	fcmp.cun.s	$fcc7,$f2,$f9
1c008600:	24140c07 	ldptr.w	$r7,$r0,5132(0x140c)
1c008604:	00048444 	alsl.w	$r4,$r2,$r1,0x2
1c008608:	028caae9 	addi.w	$r9,$r23,810(0x32a)
1c00860c:	fe8282fa 	0xfe8282fa
1c008610:	50204080 	b	33562688(0x2002040) # 1e00a650 <_sidata+0x200121c>
1c008614:	504c434c 	b	-47166400(0xd304c40) # 1930d254 <_start-0x2cf2dac>
1c008618:	08004020 	0x08004020
1c00861c:	44844818 	bnez	$r0,-2063288(0x608448) # 1be10a64 <_start-0x1ef59c>
1c008620:	5844403f 	beq	$r1,$r31,17472(0x4440) # 1c00ca60 <_sidata+0x362c>
1c008624:	58604e41 	beq	$r18,$r1,24652(0x604c) # 1c00e670 <_sidata+0x523c>
1c008628:	e2004047 	0xe2004047
1c00862c:	09068384 	0x09068384
1c008630:	0cf8e609 	0x0cf8e609
1c008634:	02020204 	slti	$r4,$r16,128(0x80)
1c008638:	1e040202 	pcaddu18i	$r2,8208(0x2010)
1c00863c:	00000000 	0x00000000
1c008640:	301f0700 	0x301f0700
1c008644:	40404020 	beqz	$r1,16448(0x4040) # 1c00c684 <_sidata+0x3250>
1c008648:	10204040 	addu16i.d	$r0,$r2,2064(0x810)
1c00864c:	a4e70000 	0xa4e70000
1c008650:	424040ba 	beqz	$r5,-1425344(0x6a4040) # 1beac690 <_start-0x153970>
1c008654:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac894 <_sidata+0xa3460>
1c008658:	424242c2 	beqz	$r22,672320(0xa4240) # 1c0ac898 <_sidata+0xa3464>
1c00865c:	40404242 	beqz	$r18,540736(0x84040) # 1c08c69c <_sidata+0x83268>
1c008660:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c008664:	80400006 	0x80400006
1c008668:	0000007f 	0x0000007f
1c00866c:	30080402 	0x30080402
1c008670:	be98e600 	0xbe98e600
1c008674:	fe000000 	0xfe000000
1c008678:	92929292 	0x92929292
1c00867c:	fe929292 	0xfe929292
1c008680:	00000000 	0x00000000
1c008684:	58444240 	beq	$r18,$r0,17472(0x4440) # 1c00cac4 <_sidata+0x3690>
1c008688:	40407f40 	beqz	$r26,16508(0x407c) # 1c00c704 <_sidata+0x32d0>
1c00868c:	50407f40 	b	-50315140(0xd00407c) # 1900c708 <_start-0x2ff38f8>
1c008690:	00404648 	0x00404648
1c008694:	109eaee5 	addu16i.d	$r5,$r23,10155(0x27ab)
1c008698:	1484040c 	lu12i.w	$r12,270368(0x42020)
1c00869c:	f4060564 	0xf4060564
1c0086a0:	04040404 	csrrd	$r4,0x101
1c0086a4:	04000c14 	csrrd	$r20,0x3
1c0086a8:	47448484 	bnez	$r4,1262724(0x134484) # 1c13cb2c <_sidata+0x1336f8>
1c0086ac:	070c1424 	0x070c1424
1c0086b0:	4424140c 	bnez	$r0,3154964(0x302414) # 1c30aac4 <_sidata+0x301690>
1c0086b4:	e9000484 	0xe9000484
1c0086b8:	fa028caa 	0xfa028caa
1c0086bc:	80fe8282 	0x80fe8282
1c0086c0:	4c502040 	jirl	$r0,$r2,20512(0x5020)
1c0086c4:	20504c43 	ll.w	$r3,$r2,20556(0x504c)
1c0086c8:	18080040 	pcaddi	$r0,16386(0x4002)
1c0086cc:	3f448448 	0x3f448448
1c0086d0:	41584440 	beqz	$r2,88132(0x15844) # 1c01df14 <_sidata+0x14ae0>
1c0086d4:	4758604e 	bnez	$r2,3889248(0x3b5860) # 1c3bdf34 <_sidata+0x3b4b00>
1c0086d8:	99e70040 	0x99e70040
1c0086dc:	e20202be 	0xe20202be
1c0086e0:	2a322222 	ld.bu	$r2,$r17,-888(0xc88)
1c0086e4:	22222226 	ll.d	$r6,$r17,8736(0x2220)
1c0086e8:	0202e222 	slti	$r2,$r17,184(0xb8)
1c0086ec:	ff000000 	0xff000000
1c0086f0:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac930 <_sidata+0xa34fc>
1c0086f4:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac934 <_sidata+0xa3500>
1c0086f8:	0000ff42 	0x0000ff42
1c0086fc:	91a7e700 	0x91a7e700
1c008700:	fea42424 	0xfea42424
1c008704:	220022a3 	ll.d	$r3,$r21,32(0x20)
1c008708:	ff0000cc 	0xff0000cc
1c00870c:	00000000 	0x00000000
1c008710:	ff010608 	0xff010608
1c008714:	04040100 	csrxchg	$r0,$r8,0x100
1c008718:	ff040404 	0xff040404
1c00871c:	00020202 	0x00020202
1c008720:	84a38de8 	0x84a38de8
1c008724:	2f242464 	0x2f242464
1c008728:	24a42424 	ldptr.w	$r4,$r1,-23516(0xa424)
1c00872c:	24242f24 	ldptr.w	$r4,$r25,9260(0x242c)
1c008730:	400064a4 	beqz	$r5,1048676(0x100064) # 1c108794 <_sidata+0xff360>
1c008734:	12222242 	addu16i.d	$r2,$r18,-30584(0x8888)
1c008738:	06ff060a 	0x06ff060a
1c00873c:	2222120a 	ll.d	$r10,$r16,8720(0x2210)
1c008740:	e5004042 	0xe5004042
1c008744:	20409b88 	ll.w	$r8,$r28,16536(0x4098)
1c008748:	44434cd0 	bnez	$r6,-4177076(0x40434c) # 1bc0ca94 <_start-0x3f356c>
1c00874c:	002010c8 	div.w	$r8,$r6,$r4
1c008750:	ff0000f8 	0xff0000f8
1c008754:	00000000 	0x00000000
1c008758:	4844403f 	bceqz	$fcc1,-244672(0x7c4440) # 1bfccb98 <_start-0x33468>
1c00875c:	00704047 	bstrins.w	$r7,$r2,0x10,0x10
1c008760:	7f80400f 	0x7f80400f
1c008764:	b0e80000 	0xb0e80000
1c008768:	cc4240a2 	0xcc4240a2
1c00876c:	56fc0000 	bl	195584(0x2fc00) # 1c03836c <_sidata+0x2ef38>
1c008770:	1080fc55 	addu16i.d	$r21,$r2,8255(0x203f)
1c008774:	1010ff10 	addu16i.d	$r16,$r24,1087(0x43f)
1c008778:	3f000000 	0x3f000000
1c00877c:	4a132a10 	0x4a132a10
1c008780:	43007f86 	beqz	$r28,1769596(0x1b007c) # 1c1b87fc <_sidata+0x1af3c8>
1c008784:	00007f80 	0x00007f80
1c008788:	9381e900 	0x9381e900
1c00878c:	cc424040 	0xcc424040
1c008790:	aae90800 	0xaae90800
1c008794:	aaa8a8b8 	0xaaa8a8b8
1c008798:	000008e9 	0x000008e9
1c00879c:	1f204000 	pcaddu18i	$r0,-458240(0x90200)
1c0087a0:	4a5f4020 	bceqz	$fcc1,155456(0x25f40) # 1c02e6e0 <_sidata+0x252ac>
1c0087a4:	4a4a4a4a 	0x4a4a4a4a
1c0087a8:	0040405f 	0x0040405f
1c0087ac:	1090bae6 	addu16i.d	$r6,$r23,9262(0x242e)
1c0087b0:	008c0260 	bstrins.d	$r0,$r19,0xc,0x0
1c0087b4:	52f202fe 	b	-67440128(0xbfaf200) # 17fb79b4 <_start-0x404864c>
1c0087b8:	5252565a 	b	-110472620(0x96a5254) # 156ada0c <_start-0x69525f4>
1c0087bc:	040002f2 	csrxchg	$r18,$r23,0x0
1c0087c0:	30417e04 	vldrepl.h	$vr4,$r16,190(0xbe)
1c0087c4:	4913200f 	bceqz	$fcc0,4002592(0x3d1320) # 1c3d9ae4 <_sidata+0x3d06b0>
1c0087c8:	09017f81 	0x09017f81
1c0087cc:	e6002013 	0xe6002013
1c0087d0:	601096b9 	blt	$r21,$r25,4244(0x1094) # 1c009864 <_sidata+0x430>
1c0087d4:	88008c02 	0x88008c02
1c0087d8:	8888ff88 	0x8888ff88
1c0087dc:	2222fe00 	ll.d	$r0,$r16,8956(0x22fc)
1c0087e0:	040400fe 	csrxchg	$r30,$r7,0x100
1c0087e4:	1f00017e 	pcaddu18i	$r30,-524277(0x8000b)
1c0087e8:	9f080808 	0x9f080808
1c0087ec:	82421f60 	0x82421f60
1c0087f0:	8de5007f 	0x8de5007f
1c0087f4:	24e40497 	ldptr.w	$r23,$r4,-7164(0xe404)
1c0087f8:	24a46424 	ldptr.w	$r4,$r1,-23452(0xa464)
1c0087fc:	64a4243f 	bge	$r1,$r31,42020(0xa424) # 1c012c20 <_sidata+0x97ec>
1c008800:	04e42424 	csrwr	$r4,0x3909
1c008804:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c008808:	09090908 	0x09090908
1c00880c:	0909097f 	0x0909097f
1c008810:	007f8048 	bstrpick.w	$r8,$r2,0x1f,0x0
1c008814:	a5b7e500 	0xa5b7e500
1c008818:	04040400 	csrrd	$r0,0x101
1c00881c:	fc040404 	0xfc040404
1c008820:	04040404 	csrrd	$r4,0x101
1c008824:	00000404 	0x00000404
1c008828:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00882c:	3f202020 	0x3f202020
1c008830:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008834:	00202020 	div.w	$r0,$r1,$r8
1c008838:	009ab8e4 	bstrins.d	$r4,$r7,0x1a,0x2e
1c00883c:	00806010 	bstrins.d	$r16,$r0,0x0,0x18
1c008840:	000000ff 	0x000000ff
1c008844:	c00000ff 	0xc00000ff
1c008848:	40000030 	beqz	$r1,-4194304(0x400000) # 1bc08848 <_start-0x3f77b8>
1c00884c:	40434040 	beqz	$r2,17216(0x4340) # 1c00cb8c <_sidata+0x3758>
1c008850:	4040407f 	beqz	$r3,-245696(0x7c4040) # 1bfcc890 <_start-0x33770>
1c008854:	4041427f 	beqz	$r19,-245440(0x7c4140) # 1bfcc994 <_start-0x3366c>
1c008858:	e5004040 	0xe5004040
1c00885c:	2020a7a4 	ll.w	$r4,$r29,8356(0x20a4)
1c008860:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008864:	2020ff20 	ll.w	$r0,$r25,8444(0x20fc)
1c008868:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00886c:	80800020 	0x80800020
1c008870:	0c102040 	fcmp.caf.s	$fcc0,$f2,$f8
1c008874:	0c030003 	0x0c030003
1c008878:	80402010 	0x80402010
1c00887c:	ade50080 	0xade50080
1c008880:	113040a6 	addu16i.d	$r6,$r5,19472(0x4c10)
1c008884:	91909096 	0x91909096
1c008888:	98909096 	0x98909096
1c00888c:	30501314 	vldrepl.h	$vr20,$r24,-2040(0x808)
1c008890:	04040400 	csrrd	$r0,0x101
1c008894:	84440404 	0x84440404
1c008898:	0405067e 	csrxchg	$r30,$r19,0x141
1c00889c:	04040404 	csrrd	$r4,0x101
1c0088a0:	a8bde800 	0xa8bde800
1c0088a4:	e88fb8c8 	0xe88fb8c8
1c0088a8:	10108888 	addu16i.d	$r8,$r4,1058(0x422)
1c0088ac:	f01010ff 	0xf01010ff
1c0088b0:	00000000 	0x00000000
1c0088b4:	ff081808 	0xff081808
1c0088b8:	30408404 	vldrepl.h	$vr4,$r0,66(0x42)
1c0088bc:	3f00000f 	0x3f00000f
1c0088c0:	00784040 	bstrins.w	$r0,$r2,0x18,0x10
1c0088c4:	409381e9 	beqz	$r15,2397056(0x249380) # 1c251c44 <_sidata+0x248810>
1c0088c8:	00cc4240 	bstrpick.d	$r0,$r18,0xc,0x10
1c0088cc:	b8aae908 	0xb8aae908
1c0088d0:	e9aaa8a8 	0xe9aaa8a8
1c0088d4:	00000008 	0x00000008
1c0088d8:	201f2040 	ll.w	$r0,$r2,7968(0x1f20)
1c0088dc:	4a4a5f40 	0x4a4a5f40
1c0088e0:	5f4a4a4a 	bne	$r18,$r10,-46520(0x34a48) # 1bffd328 <_start-0x2cd8>
1c0088e4:	e4004040 	0xe4004040
1c0088e8:	0808a4ba 	0x0808a4ba
1c0088ec:	08086888 	0x08086888
1c0088f0:	08080e09 	0x08080e09
1c0088f4:	88482888 	0x88482888
1c0088f8:	81800008 	0x81800008
1c0088fc:	22214040 	ll.d	$r0,$r2,8512(0x2140)
1c008900:	22140814 	ll.d	$r20,$r0,5128(0x1408)
1c008904:	81804041 	0x81804041
1c008908:	80e90080 	0x80e90080
1c00890c:	cc42409a 	0xcc42409a
1c008910:	22e20000 	ll.d	$r0,$r0,-7680(0xe200)
1c008914:	2af22a2a 	preld	0xa,$r17,-886(0xc8a)
1c008918:	00e02226 	bstrpick.d	$r6,$r17,0x20,0x8
1c00891c:	3f408000 	0x3f408000
1c008920:	89ff8040 	0x89ff8040
1c008924:	89bf8989 	0x89bf8989
1c008928:	80bfc9a9 	0x80bfc9a9
1c00892c:	a6ade500 	0xa6ade500
1c008930:	96113040 	0x96113040
1c008934:	96919090 	0x96919090
1c008938:	14989090 	lu12i.w	$r16,312452(0x4c484)
1c00893c:	00305013 	0x00305013
1c008940:	04040404 	csrrd	$r4,0x101
1c008944:	7e844404 	0x7e844404
1c008948:	04040506 	csrxchg	$r6,$r8,0x101
1c00894c:	00040404 	alsl.w	$r4,$r0,$r1,0x1
1c008950:	00a299e9 	bstrins.d	$r9,$r15,0x22,0x26
1c008954:	865a22fe 	0x865a22fe
1c008958:	24240c10 	ldptr.w	$r16,$r0,9228(0x240c)
1c00895c:	24242625 	ldptr.w	$r5,$r17,9252(0x2424)
1c008960:	00000c14 	0x00000c14
1c008964:	070804ff 	0x070804ff
1c008968:	0f314180 	0x0f314180
1c00896c:	413f0101 	beqz	$r8,343808(0x53f00) # 1c05c86c <_sidata+0x53438>
1c008970:	00007141 	0x00007141

1c008974 <tfont32>:
1c008974:	00be99e7 	bstrins.d	$r7,$r15,0x3e,0x26
1c008978:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c00897c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008980:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008984:	70f0f010 	vsrlr.h	$vr16,$vr0,$vr28
1c008988:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00898c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008990:	10181010 	addu16i.d	$r16,$r0,1540(0x604)
	...
1c00899c:	f8fc0000 	0xf8fc0000
1c0089a0:	08080808 	0x08080808
1c0089a4:	08080b0c 	0x08080b0c
1c0089a8:	08080808 	0x08080808
1c0089ac:	f8fc0808 	0xf8fc0808
	...
1c0089bc:	ffff0000 	0xffff0000
1c0089c0:	08080808 	0x08080808
1c0089c4:	08080808 	0x08080808
1c0089c8:	08080808 	0x08080808
1c0089cc:	ffff0808 	0xffff0808
	...
1c0089dc:	3f7f0000 	0x3f7f0000
1c0089e0:	08080808 	0x08080808
1c0089e4:	08080808 	0x08080808
1c0089e8:	08080808 	0x08080808
1c0089ec:	3f7f0808 	0x3f7f0808
1c0089f0:	00000000 	0x00000000
1c0089f4:	e7000000 	0xe7000000
1c0089f8:	000091a7 	0x000091a7
1c0089fc:	20404040 	ll.w	$r0,$r2,16448(0x4040)
1c008a00:	e0e02020 	0xe0e02020
1c008a04:	18181030 	pcaddi	$r16,49281(0xc081)
1c008a08:	80000000 	0x80000000
1c008a0c:	00000080 	0x00000080
1c008a10:	f8fc0000 	0xf8fc0000
1c008a14:	00000008 	0x00000008
1c008a18:	00000000 	0x00000000
1c008a1c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008a20:	ffff9010 	0xffff9010
1c008a24:	18101010 	pcaddi	$r16,32896(0x8080)
1c008a28:	c0000010 	0xc0000010
1c008a2c:	00060781 	alsl.wu	$r1,$r28,$r1,0x1
1c008a30:	ffff0000 	0xffff0000
	...
1c008a3c:	18204080 	pcaddi	$r0,66052(0x10204)
1c008a40:	ffff030e 	0xffff030e
1c008a44:	5e060301 	bne	$r24,$r1,-129536(0x20600) # 1bfe9044 <_start-0x16fbc>
1c008a48:	20202040 	ll.w	$r0,$r2,8224(0x2020)
1c008a4c:	10102321 	addu16i.d	$r1,$r25,1032(0x408)
1c008a50:	ffff1010 	0xffff1010
1c008a54:	0c0c0808 	0x0c0c0808
1c008a58:	01000000 	0x01000000
1c008a5c:	00000000 	0x00000000
1c008a60:	3f7f0000 	0x3f7f0000
	...
1c008a70:	3f7f0000 	0x3f7f0000
1c008a74:	00000000 	0x00000000
1c008a78:	8de80000 	0x8de80000
1c008a7c:	000000a3 	0x000000a3
1c008a80:	80808080 	0x80808080
1c008a84:	80808080 	0x80808080
1c008a88:	8088f8fc 	0x8088f8fc
1c008a8c:	80808080 	0x80808080
1c008a90:	8088f8fc 	0x8088f8fc
1c008a94:	e0c08080 	0xe0c08080
1c008a98:	000080c0 	0x000080c0
1c008a9c:	00000000 	0x00000000
1c008aa0:	10f8c080 	addu16i.d	$r0,$r4,15920(0x3e30)
1c008aa4:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008aa8:	10101717 	addu16i.d	$r23,$r24,1029(0x405)
1c008aac:	1050f0f0 	addu16i.d	$r16,$r7,5180(0x143c)
1c008ab0:	10101317 	addu16i.d	$r23,$r24,1028(0x404)
1c008ab4:	f0d01010 	0xf0d01010
1c008ab8:	00001038 	clo.w	$r24,$r1
1c008abc:	00000000 	0x00000000
1c008ac0:	02020200 	slti	$r0,$r16,128(0x80)
1c008ac4:	c2820202 	0xc2820202
1c008ac8:	061e3a62 	cacop	0x2,$r19,1934(0x78e)
1c008acc:	0e02ffff 	0x0e02ffff
1c008ad0:	82c26212 	0x82c26212
1c008ad4:	03020282 	lu52i.d	$r2,$r20,128(0x80)
1c008ad8:	00000203 	0x00000203
1c008adc:	10000000 	addu16i.d	$r0,$r0,0
1c008ae0:	06040808 	cacop	0x8,$r0,258(0x102)
1c008ae4:	00010102 	0x00010102
1c008ae8:	00000000 	0x00000000
1c008aec:	00003f7f 	revb.d	$r31,$r27
1c008af0:	01000000 	0x01000000
1c008af4:	0e060303 	0x0e060303
1c008af8:	0004040e 	alsl.w	$r14,$r0,$r1,0x1
1c008afc:	9b88e500 	0x9b88e500
1c008b00:	00000000 	0x00000000
1c008b04:	c0000000 	0xc0000000
1c008b08:	28183cf0 	ld.b	$r16,$r7,1551(0x60f)
1c008b0c:	80c04060 	0x80c04060
	...
1c008b18:	f8000000 	0xf8000000
1c008b1c:	000000f8 	0x000000f8
1c008b20:	40800000 	beqz	$r0,32768(0x8000) # 1c010b20 <_sidata+0x76ec>
1c008b24:	23e6f830 	sc.d	$r16,$r1,-6408(0xe6f8)
1c008b28:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008b2c:	23f0e020 	sc.d	$r0,$r1,-3872(0xf0e0)
1c008b30:	00000207 	0x00000207
1c008b34:	0002ff00 	0x0002ff00
1c008b38:	ff000000 	0xff000000
1c008b3c:	000000ff 	0x000000ff
1c008b40:	00000100 	0x00000100
1c008b44:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
1c008b48:	60200000 	blt	$r0,$r0,8192(0x2000) # 1c00ab48 <_sidata+0x1714>
1c008b4c:	001f3f60 	mulw.d.w	$r0,$r27,$r15
1c008b50:	00008000 	0x00008000
1c008b54:	00007f00 	0x00007f00
1c008b58:	ff000000 	0xff000000
1c008b5c:	000000ff 	0x000000ff
1c008b60:	00000000 	0x00000000
1c008b64:	303f0700 	0x303f0700
1c008b68:	30303030 	0x30303030
1c008b6c:	30303030 	0x30303030
1c008b70:	00103f38 	add.w	$r24,$r25,$r15
1c008b74:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c008b78:	3f703030 	0x3f703030
1c008b7c:	0000001f 	0x0000001f
1c008b80:	0088bcef 	bstrins.d	$r15,$r7,0x8,0x2f
	...
1c008b98:	40800000 	beqz	$r0,32768(0x8000) # 1c010b98 <_sidata+0x7764>
1c008b9c:	00102040 	add.w	$r0,$r2,$r8
	...
1c008bb4:	1cf00000 	pcaddu12i	$r0,491520(0x78000)
1c008bb8:	00000306 	0x00000306
	...
1c008bd4:	701f0000 	vaddwev.d.w	$vr0,$vr0,$vr0
1c008bd8:	000000c0 	0x000000c0
	...
1c008bf8:	04020100 	csrxchg	$r0,$r8,0x80
1c008bfc:	0010080c 	add.w	$r12,$r0,$r2
1c008c00:	e5000000 	0xe5000000
1c008c04:	0000978c 	0x0000978c
	...
1c008c10:	08f8fc00 	0x08f8fc00
1c008c14:	00000000 	0x00000000
1c008c18:	0008f8fc 	bytepick.w	$r28,$r7,$r30,0x1
	...
1c008c28:	08080808 	0x08080808
1c008c2c:	08080808 	0x08080808
1c008c30:	00ffff08 	bstrpick.d	$r8,$r24,0x3f,0x3f
1c008c34:	00000000 	0x00000000
1c008c38:	4040ffff 	beqz	$r31,-245508(0x7c40fc) # 1bfccd34 <_start-0x332cc>
1c008c3c:	18103020 	pcaddi	$r0,33153(0x8181)
1c008c40:	00040e0c 	alsl.w	$r12,$r16,$r3,0x1
	...
1c008c4c:	80000000 	0x80000000
1c008c50:	00ffff80 	bstrpick.d	$r0,$r28,0x3f,0x3f
1c008c54:	00000000 	0x00000000
1c008c58:	0000ffff 	0x0000ffff
1c008c5c:	00000000 	0x00000000
1c008c60:	00c00000 	bstrpick.d	$r0,$r0,0x0,0x0
1c008c64:	00000000 	0x00000000
1c008c68:	03060606 	lu52i.d	$r6,$r16,385(0x181)
1c008c6c:	00010103 	0x00010103
1c008c70:	003f7f00 	0x003f7f00
1c008c74:	00000000 	0x00000000
1c008c78:	30303f1f 	0x30303f1f
1c008c7c:	30303030 	0x30303030
1c008c80:	183f3830 	pcaddi	$r16,129473(0x1f9c1)
1c008c84:	bae40000 	0xbae40000
1c008c88:	800000ac 	0x800000ac
1c008c8c:	80808080 	0x80808080
1c008c90:	80808080 	0x80808080
1c008c94:	8c808080 	0x8c808080
1c008c98:	80b0f898 	0x80b0f898
1c008c9c:	80808080 	0x80808080
1c008ca0:	c0808080 	0xc0808080
1c008ca4:	0080c0e0 	bstrins.d	$r0,$r7,0x0,0x30
	...
1c008cb0:	08f8f800 	0x08f8f800
1c008cb4:	08080808 	0x08080808
1c008cb8:	08080808 	0x08080808
1c008cbc:	f8080808 	0xf8080808
1c008cc0:	000008fc 	0x000008fc
	...
1c008cd0:	e4cf0f00 	0xe4cf0f00
1c008cd4:	04040444 	csrxchg	$r4,$r2,0x101
1c008cd8:	0404fcfc 	csrxchg	$r28,$r7,0x13f
1c008cdc:	cf442404 	0xcf442404
1c008ce0:	0000008f 	0x0000008f
1c008ce4:	00000000 	0x00000000
1c008ce8:	20000000 	ll.w	$r0,$r0,0
1c008cec:	04081010 	csrrd	$r16,0x204
1c008cf0:	00010306 	0x00010306
1c008cf4:	70301010 	vsubwev.h.bu	$vr16,$vr0,$vr4
1c008cf8:	00003f3f 	revb.d	$r31,$r25
1c008cfc:	00000000 	0x00000000
1c008d00:	1e0e0301 	pcaddu18i	$r1,28696(0x7018)
1c008d04:	00000018 	0x00000018
1c008d08:	89bcef00 	0x89bcef00
1c008d0c:	00000000 	0x00000000
1c008d10:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c008d14:	0080c060 	bstrins.d	$r0,$r3,0x0,0x30
	...
1c008d34:	06010000 	cacop	0x0,$r0,64(0x40)
1c008d38:	0000f03c 	0x0000f03c
	...
1c008d54:	c0800000 	0xc0800000
1c008d58:	00000f78 	0x00000f78
	...
1c008d70:	0c081000 	0x0c081000
1c008d74:	00010306 	0x00010306
	...
1c008d8c:	0091a7e7 	bstrins.d	$r7,$r31,0x11,0x29
1c008d90:	40404000 	beqz	$r0,16448(0x4040) # 1c00cdd0 <_sidata+0x399c>
1c008d94:	e0202020 	0xe0202020
1c008d98:	181030e0 	pcaddi	$r0,33159(0x8187)
1c008d9c:	00000018 	0x00000018
1c008da0:	00008080 	0x00008080
1c008da4:	fc000000 	0xfc000000
1c008da8:	000008f8 	0x000008f8
1c008dac:	00000000 	0x00000000
1c008db0:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c008db4:	ff901010 	0xff901010
1c008db8:	101010ff 	addu16i.d	$r31,$r7,1028(0x404)
1c008dbc:	00001018 	clo.w	$r24,$r0
1c008dc0:	060781c0 	cacop	0x0,$r14,480(0x1e0)
1c008dc4:	ff000000 	0xff000000
1c008dc8:	000000ff 	0x000000ff
1c008dcc:	00000000 	0x00000000
1c008dd0:	20408000 	ll.w	$r0,$r0,16512(0x4080)
1c008dd4:	ff030e18 	0xff030e18
1c008dd8:	060301ff 	cacop	0x1f,$r15,192(0xc0)
1c008ddc:	2020405e 	ll.w	$r30,$r2,8256(0x2040)
1c008de0:	10232120 	addu16i.d	$r0,$r9,2248(0x8c8)
1c008de4:	ff101010 	0xff101010
1c008de8:	0c0808ff 	0x0c0808ff
1c008dec:	0000000c 	0x0000000c
1c008df0:	00000001 	0x00000001
1c008df4:	7f000000 	0x7f000000
1c008df8:	0000003f 	0x0000003f
	...
1c008e04:	7f000000 	0x7f000000
1c008e08:	0000003f 	0x0000003f
1c008e0c:	e6000000 	0xe6000000
1c008e10:	0000808a 	0x0000808a
1c008e14:	00000000 	0x00000000
1c008e18:	08f8fc00 	0x08f8fc00
	...
1c008e24:	f8fc0000 	0xf8fc0000
1c008e28:	00000008 	0x00000008
	...
1c008e34:	02020202 	slti	$r2,$r16,128(0x80)
1c008e38:	02ffff02 	addi.d	$r2,$r24,-1(0xfff)
1c008e3c:	42438382 	beqz	$r28,672640(0xa4380) # 1c0ad1bc <_sidata+0xa3d88>
1c008e40:	82828282 	0x82828282
1c008e44:	ffff8282 	0xffff8282
1c008e48:	82828282 	0x82828282
1c008e4c:	020383c2 	slti	$r2,$r30,224(0xe0)
1c008e50:	00000000 	0x00000000
1c008e54:	06060c0c 	cacop	0xc,$r0,387(0x183)
1c008e58:	01ffff02 	0x01ffff02
1c008e5c:	00000000 	0x00000000
1c008e60:	1c030000 	pcaddu12i	$r0,6144(0x1800)
1c008e64:	8000c070 	0x8000c070
1c008e68:	0f3c70c0 	0x0f3c70c0
1c008e6c:	00000003 	0x00000003
1c008e70:	00000000 	0x00000000
1c008e74:	30101000 	vldrepl.d	$vr0,$r0,32(0x20)
1c008e78:	003f3f70 	0x003f3f70
1c008e7c:	20204040 	ll.w	$r0,$r2,8256(0x2040)
1c008e80:	08181020 	fmadd.s	$f0,$f1,$f4,$f16
1c008e84:	0703060c 	0x0703060c
1c008e88:	38180c0f 	stx.w	$r15,$r0,$r3
1c008e8c:	20303030 	ll.w	$r16,$r1,12336(0x3030)
1c008e90:	8fe50000 	0x8fe50000
1c008e94:	00000091 	0x00000091
1c008e98:	f0800000 	0xf0800000
1c008e9c:	00000070 	0x00000070
1c008ea0:	18fcc000 	pcaddi	$r0,517632(0x7e600)
1c008ea4:	00000000 	0x00000000
1c008ea8:	70100800 	0x70100800
1c008eac:	0000c0e0 	0x0000c0e0
	...
1c008eb8:	05070e04 	0x05070e04
1c008ebc:	84040404 	0x84040404
1c008ec0:	8487fff4 	0x8487fff4
1c008ec4:	84848484 	0x84848484
1c008ec8:	84848484 	0x84848484
1c008ecc:	0484c584 	csrxchg	$r4,$r12,0x2131
1c008ed0:	00040606 	alsl.w	$r6,$r16,$r1,0x1
	...
1c008edc:	0f3ce080 	0x0f3ce080
1c008ee0:	06010003 	cacop	0x3,$r0,64(0x40)
1c008ee4:	80e03018 	0x80e03018
1c008ee8:	1e3860c0 	pcaddu18i	$r0,115462(0x1c306)
1c008eec:	00000307 	0x00000307
1c008ef0:	00000000 	0x00000000
1c008ef4:	20000000 	ll.w	$r0,$r0,0
1c008ef8:	03040810 	lu52i.d	$r16,$r0,258(0x102)
1c008efc:	20204041 	ll.w	$r1,$r2,8256(0x2040)
1c008f00:	08181020 	fmadd.s	$f0,$f1,$f4,$f16
1c008f04:	0303060c 	lu52i.d	$r12,$r16,193(0xc1)
1c008f08:	0c060703 	0x0c060703
1c008f0c:	3038181c 	0x3038181c
1c008f10:	00103030 	add.w	$r16,$r1,$r12
1c008f14:	95b1e500 	0x95b1e500
1c008f18:	00000000 	0x00000000
1c008f1c:	08f80400 	0x08f80400
1c008f20:	08080808 	0x08080808
1c008f24:	08080808 	0x08080808
1c008f28:	08080808 	0x08080808
1c008f2c:	08080808 	0x08080808
1c008f30:	08f8fc08 	0x08f8fc08
	...
1c008f3c:	21ff0000 	sc.w	$r0,$r0,-256(0xff00)
1c008f40:	21212121 	sc.w	$r1,$r9,8480(0x2120)
1c008f44:	21fdff21 	sc.w	$r1,$r25,-516(0xfdfc)
1c008f48:	21212121 	sc.w	$r1,$r9,8480(0x2120)
1c008f4c:	2121fdff 	sc.w	$r31,$r15,8700(0x21fc)
1c008f50:	00233321 	div.du	$r1,$r25,$r12
	...
1c008f5c:	043fff00 	csrxchg	$r0,$r24,0xfff
1c008f60:	fc040404 	0xfc040404
1c008f64:	040707fc 	csrxchg	$r28,$r31,0x1c1
1c008f68:	04c4740c 	csrrd	$r12,0x311d
1c008f6c:	64448707 	bge	$r24,$r7,17540(0x4484) # 1c00d3f0 <_sidata+0x3fbc>
1c008f70:	06062434 	cacop	0x14,$r1,393(0x189)
1c008f74:	00000004 	0x00000004
1c008f78:	18204000 	pcaddi	$r0,66048(0x10200)
1c008f7c:	00000107 	0x00000107
1c008f80:	3f000000 	0x3f000000
1c008f84:	0818103f 	fmadd.s	$f31,$f1,$f4,$f16
1c008f88:	03000004 	lu52i.d	$r4,$r0,0
1c008f8c:	180c0607 	pcaddi	$r7,24624(0x6030)
1c008f90:	30383818 	0x30383818
1c008f94:	00001010 	clo.w	$r16,$r0
1c008f98:	00899ce6 	bstrins.d	$r6,$r7,0x9,0x27
1c008f9c:	80808000 	0x80808000
1c008fa0:	80808080 	0x80808080
1c008fa4:	80808080 	0x80808080
1c008fa8:	88b8fce0 	0x88b8fce0
1c008fac:	80808080 	0x80808080
1c008fb0:	80808080 	0x80808080
1c008fb4:	c0e0c080 	0xc0e0c080
1c008fb8:	00000080 	0x00000080
1c008fbc:	00000000 	0x00000000
1c008fc0:	c0800000 	0xc0800000
1c008fc4:	171cf8e0 	lu32i.d	$r0,-464953(0x8e7c7)
1c008fc8:	10101013 	addu16i.d	$r19,$r0,1028(0x404)
1c008fcc:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008fd0:	10f81010 	addu16i.d	$r16,$r0,15876(0x3e04)
	...
1c008fdc:	04081000 	csrrd	$r0,0x204
1c008fe0:	00010306 	0x00010306
1c008fe4:	4242ffff 	beqz	$r31,-113924(0x7e42fc) # 1bfed2e0 <_start-0x12d20>
1c008fe8:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ad228 <_sidata+0xa3df4>
1c008fec:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ad22c <_sidata+0xa3df8>
1c008ff0:	00ff4242 	bstrpick.d	$r2,$r18,0x3f,0x10
	...
1c009004:	00003f7f 	revb.d	$r31,$r27
1c009008:	00000000 	0x00000000
1c00900c:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c009010:	003f7030 	0x003f7030
1c009014:	00000000 	0x00000000
1c009018:	e9000000 	0xe9000000
1c00901c:	00009099 	0x00009099
1c009020:	10f00800 	addu16i.d	$r0,$r0,15362(0x3c02)
1c009024:	f0101010 	0xf0101010
1c009028:	00001078 	clo.w	$r24,$r3
1c00902c:	1010f0f8 	addu16i.d	$r24,$r7,1084(0x43c)
1c009030:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c009034:	f8101010 	0xf8101010
1c009038:	00000010 	0x00000010
1c00903c:	00000000 	0x00000000
1c009040:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c009044:	c33e0000 	0xc33e0000
1c009048:	00000000 	0x00000000
1c00904c:	8484ffff 	0x8484ffff
1c009050:	84848484 	0x84848484
1c009054:	ff848484 	0xff848484
	...
1c009060:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c009064:	c0c04000 	0xc0c04000
1c009068:	00007eff 	0x00007eff
1c00906c:	0000ffff 	0x0000ffff
1c009070:	c0701e01 	0xc0701e01
1c009074:	0d1030a0 	vbitsel.v	$vr0,$vr5,$vr12,$vr0
1c009078:	0000040e 	0x0000040e
1c00907c:	00000000 	0x00000000
1c009080:	007f0000 	bstrins.w	$r0,$r0,0x1f,0x0
1c009084:	00010000 	asrtle.d	$r0,$r0
1c009088:	00000000 	0x00000000
1c00908c:	08183f1f 	fmadd.s	$f31,$f24,$f15,$f16
1c009090:	01020204 	0x01020204
1c009094:	1c0e0703 	pcaddu12i	$r3,28728(0x7038)
1c009098:	00183818 	sra.w	$r24,$r0,$r14
1c00909c:	85e50000 	0x85e50000
1c0090a0:	000000ac 	0x000000ac
1c0090a4:	00000000 	0x00000000
1c0090a8:	80000000 	0x80000000
1c0090ac:	001078e0 	add.w	$r0,$r7,$r30
1c0090b0:	1c000000 	pcaddu12i	$r0,0
1c0090b4:	000080e0 	0x000080e0
	...
1c0090c4:	c0800000 	0xc0800000
1c0090c8:	070e3860 	0x070e3860
1c0090cc:	00000001 	0x00000001
1c0090d0:	0080c0e0 	bstrins.d	$r0,$r7,0x0,0x30
1c0090d4:	1c0e0300 	pcaddu12i	$r0,28696(0x7018)
1c0090d8:	c0c0e070 	0xc0c0e070
1c0090dc:	00000080 	0x00000080
1c0090e0:	04000000 	csrrd	$r0,0x0
1c0090e4:	00010302 	0x00010302
1c0090e8:	c0000000 	0xc0000000
1c0090ec:	071c3860 	0x071c3860
1c0090f0:	00000103 	0x00000103
1c0090f4:	0080c020 	bstrins.d	$r0,$r1,0x0,0x30
1c0090f8:	03010000 	lu52i.d	$r0,$r0,64(0x40)
1c0090fc:	00010103 	0x00010103
1c009100:	00000000 	0x00000000
1c009104:	38080000 	ldx.w	$r0,$r0,$r0
1c009108:	191b1e3c 	pcaddi	$r28,-468751(0x8d8f1)
1c00910c:	08081818 	0x08081818
1c009110:	08080808 	0x08080808
1c009114:	0f090808 	0x0f090808
1c009118:	00307c1e 	0x00307c1e
1c00911c:	00000000 	0x00000000
1c009120:	b88fe500 	0xb88fe500
1c009124:	00000000 	0x00000000
1c009128:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c00912c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c009130:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c009134:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c009138:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00913c:	00f0f810 	bstrpick.d	$r16,$r0,0x30,0x3e
1c009140:	00000000 	0x00000000
1c009144:	04000000 	csrrd	$r0,0x0
1c009148:	84c40404 	0x84c40404
1c00914c:	84848484 	0x84848484
1c009150:	84848484 	0x84848484
1c009154:	0684c484 	0x0684c484
1c009158:	00000406 	0x00000406
1c00915c:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
	...
1c009168:	ffff0000 	0xffff0000
1c00916c:	40404040 	beqz	$r2,16448(0x4040) # 1c00d1ac <_sidata+0x3d78>
1c009170:	40404040 	beqz	$r2,16448(0x4040) # 1c00d1b0 <_sidata+0x3d7c>
1c009174:	0000ff40 	0x0000ff40
1c009178:	00000000 	0x00000000
1c00917c:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
	...
1c009188:	01030000 	fsub.d	$f0,$f0,$f0
	...
1c009194:	00010100 	asrtle.d	$r8,$r0
1c009198:	30101010 	vldrepl.d	$vr16,$r0,32(0x20)
1c00919c:	000f3f70 	bytepick.d	$r16,$r27,$r15,0x6
1c0091a0:	00000000 	0x00000000
1c0091a4:	00be98e6 	bstrins.d	$r6,$r7,0x3e,0x26
1c0091a8:	00000000 	0x00000000
1c0091ac:	f0080000 	0xf0080000
1c0091b0:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0091b4:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0091b8:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0091bc:	f0f81010 	0xf0f81010
	...
1c0091cc:	ff000000 	0xff000000
1c0091d0:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ad410 <_sidata+0xa3fdc>
1c0091d4:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ad414 <_sidata+0xa3fe0>
1c0091d8:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ad418 <_sidata+0xa3fe4>
1c0091dc:	ffff4242 	0xffff4242
	...
1c0091e8:	08000000 	0x08000000
1c0091ec:	c0e17030 	0xc0e17030
1c0091f0:	fe000000 	0xfe000000
1c0091f4:	000000fe 	0x000000fe
1c0091f8:	00fefe00 	bstrpick.d	$r0,$r16,0x3e,0x3f
1c0091fc:	60c08000 	blt	$r0,$r0,49280(0xc080) # 1c01527c <_sidata+0xbe48>
1c009200:	00081c38 	bytepick.w	$r24,$r1,$r7,0x0
1c009204:	00000000 	0x00000000
1c009208:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c00920c:	13111010 	addu16i.d	$r16,$r0,-15292(0xc444)
1c009210:	1f101010 	pcaddu18i	$r16,-491392(0x88080)
1c009214:	1010101f 	addu16i.d	$r31,$r0,1028(0x404)
1c009218:	141f1f10 	lu12i.w	$r16,63736(0xf8f8)
1c00921c:	10101112 	addu16i.d	$r18,$r8,1028(0x404)
1c009220:	10181810 	addu16i.d	$r16,$r0,1542(0x606)
1c009224:	e7000000 	0xe7000000
1c009228:	0000baa4 	0x0000baa4
1c00922c:	00000000 	0x00000000
1c009230:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c009234:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c009238:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00923c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c009240:	30382020 	0x30382020
1c009244:	00000020 	0x00000020
1c009248:	00000000 	0x00000000
1c00924c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c009250:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c009254:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c009258:	20e0e020 	ll.w	$r0,$r1,-7968(0xe0e0)
1c00925c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c009260:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c009264:	20303020 	ll.w	$r0,$r1,12336(0x3030)
1c009268:	00000000 	0x00000000
1c00926c:	80000000 	0x80000000
1c009270:	1e3c70c0 	pcaddu18i	$r0,123782(0x1e386)
1c009274:	00000406 	0x00000406
1c009278:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
1c00927c:	04020000 	csrrd	$r0,0x80
1c009280:	e0701808 	0xe0701808
1c009284:	000080c0 	0x000080c0
1c009288:	00000000 	0x00000000
1c00928c:	01030408 	fsub.d	$f8,$f0,$f1
1c009290:	08000000 	0x08000000
1c009294:	30101008 	vldrepl.d	$vr8,$r0,32(0x20)
1c009298:	001f3f70 	mulw.d.w	$r16,$r27,$r15
	...
1c0092a4:	00030701 	0x00030701
1c0092a8:	aee50000 	0xaee50000
1c0092ac:	0000009e 	0x0000009e
1c0092b0:	00800000 	bstrins.d	$r0,$r0,0x0,0x0
1c0092b4:	00000000 	0x00000000
1c0092b8:	04000000 	csrrd	$r0,0x0
1c0092bc:	0070f818 	bstrpick.w	$r24,$r0,0x10,0x1e
	...
1c0092c8:	00000080 	0x00000080
1c0092cc:	00000000 	0x00000000
1c0092d0:	810f1c18 	0x810f1c18
1c0092d4:	09010101 	0x09010101
1c0092d8:	01713919 	0x01713919
1c0092dc:	fdff0101 	0xfdff0101
1c0092e0:	01010105 	fadd.d	$f5,$f8,$f0
1c0092e4:	07090101 	0x07090101
1c0092e8:	00020307 	0x00020307
1c0092ec:	10000000 	addu16i.d	$r0,$r0,0
1c0092f0:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0092f4:	1e171311 	pcaddu18i	$r17,47256(0xb898)
1c0092f8:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0092fc:	93bffcd0 	0x93bffcd0
1c009300:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c009304:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c009308:	00101818 	add.w	$r24,$r0,$r6
1c00930c:	40000000 	beqz	$r0,0 # 1c00930c <tfont32+0x998>
1c009310:	20404040 	ll.w	$r0,$r2,16448(0x4040)
1c009314:	10102020 	addu16i.d	$r0,$r1,1032(0x408)
1c009318:	070e0c18 	0x070e0c18
1c00931c:	01000003 	0x01000003
1c009320:	06020301 	cacop	0x1,$r24,128(0x80)
1c009324:	383c1c0e 	fstx.d	$f14,$r0,$r7
1c009328:	00000030 	0x00000030
1c00932c:	8caae900 	0x8caae900
1c009330:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c009334:	10109090 	addu16i.d	$r16,$r4,1060(0x424)
1c009338:	10f81010 	addu16i.d	$r16,$r0,15876(0x3e04)
1c00933c:	00000000 	0x00000000
1c009340:	f0800000 	0xf0800000
1c009344:	80e8183c 	0x80e8183c
	...
1c009350:	80000000 	0x80000000
1c009354:	00001fff 	ctz.w	$r31,$r31
1c009358:	003fff00 	0x003fff00
1c00935c:	50204080 	b	33562688(0x2002040) # 1e00b39c <_sidata+0x2001f68>
1c009360:	4043474c 	beqz	$r26,3162948(0x304344) # 1c30d6a4 <_sidata+0x304270>
1c009364:	43404040 	beqz	$r2,213056(0x34040) # 1c03d3a4 <_sidata+0x33f70>
1c009368:	70784c66 	0x70784c66
1c00936c:	00202070 	div.w	$r16,$r3,$r8
1c009370:	c1c14000 	0xc1c14000
1c009374:	21214143 	sc.w	$r3,$r10,8512(0x2140)
1c009378:	ff810121 	0xff810121
1c00937c:	1c00000f 	pcaddu12i	$r15,0
1c009380:	0c02c0f0 	0x0c02c0f0
1c009384:	0000e0f8 	0x0000e0f8
1c009388:	061f7cc0 	cacop	0x0,$r6,2015(0x7df)
	...
1c009394:	18080800 	pcaddi	$r0,16448(0x4040)
1c009398:	070f1838 	0x070f1838
1c00939c:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c0093a0:	10101113 	addu16i.d	$r19,$r8,1028(0x404)
1c0093a4:	1e101011 	pcaddu18i	$r17,32896(0x8080)
1c0093a8:	18101013 	pcaddi	$r19,32896(0x8080)
1c0093ac:	00001018 	clo.w	$r24,$r0
1c0093b0:	00cc4240 	bstrpick.d	$r0,$r18,0xc,0x10
1c0093b4:	5556fc00 	bl	87804(0x156fc) # 1c01eab0 <_sidata+0x1567c>
1c0093b8:	101080fc 	addu16i.d	$r28,$r7,1056(0x420)
1c0093bc:	001010ff 	add.w	$r31,$r7,$r4
	...

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	1c0070c9 	pcaddu12i	$r9,902(0x386)
80001008:	8000000c 	0x8000000c
8000100c:	80001028 	0x80001028
80001010:	80000010 	0x80000010
80001014:	80000138 	0x80000138
80001018:	80000268 	0x80000268
8000101c:	80000014 	0x80000014
80001020:	1c0070c0 	pcaddu12i	$r0,902(0x386)
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
