
1c102_demo.elf:     file format elf32-loongarch
1c102_demo.elf


Disassembly of section .text:

1c000000 <_start>:
_start():
1c000000:	0015000d 	move	$r13,$r0
1c000004:	50002000 	b	32(0x20) # 1c000024 <LoopCopyDataInit>

1c000008 <CopyDataInit>:
CopyDataInit():
1c000008:	143800ef 	lu12i.w	$r15,114695(0x1c007)
1c00000c:	03b8a1ef 	ori	$r15,$r15,0xe28
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
1c000030:	038091ef 	ori	$r15,$r15,0x24
1c000034:	0010358e 	add.w	$r14,$r12,$r13
1c000038:	5fffd1cf 	bne	$r14,$r15,-48(0x3ffd0) # 1c000008 <CopyDataInit>
1c00003c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c000040:	0380018c 	ori	$r12,$r12,0x0
1c000044:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c000048:	0385a1ad 	ori	$r13,$r13,0x168
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
1c001090:	54369400 	bl	13972(0x3694) # 1c004724 <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	5436d400 	bl	14036(0x36d4) # 1c00476c <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	54376000 	bl	14176(0x3760) # 1c004800 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	54379400 	bl	14228(0x3794) # 1c00483c <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	5435bc00 	bl	13756(0x35bc) # 1c00466c <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	54390800 	bl	14600(0x3908) # 1c0049c0 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	54384c00 	bl	14412(0x384c) # 1c004914 <intc_handler>
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
1c001290:	28b64084 	ld.w	$r4,$r4,-624(0xd90)
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
1c0013d4:	541c9c00 	bl	7324(0x1c9c) # 1c003070 <DisableInt>
1c0013d8:	541bc400 	bl	7108(0x1bc4) # 1c002f9c <SystemClockInit>
1c0013dc:	57ff53ff 	bl	-176(0xfffff50) # 1c00132c <GPIOInit>
1c0013e0:	54233c00 	bl	9020(0x233c) # 1c00371c <WdgInit>
1c0013e4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0013e8:	54227c00 	bl	8828(0x227c) # 1c003664 <WDG_SetWatchDog>
1c0013ec:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013f0:	03880184 	ori	$r4,$r12,0x200
1c0013f4:	5415e800 	bl	5608(0x15e8) # 1c0029dc <Uart1_init>
1c0013f8:	541e6c00 	bl	7788(0x1e6c) # 1c003264 <ls1x_logo>
1c0013fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001400:	0380118c 	ori	$r12,$r12,0x4
1c001404:	2880018e 	ld.w	$r14,$r12,0
1c001408:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00140c:	0380118c 	ori	$r12,$r12,0x4
1c001410:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c001414:	001535cd 	or	$r13,$r14,$r13
1c001418:	2980018d 	st.w	$r13,$r12,0
1c00141c:	541c7800 	bl	7288(0x1c78) # 1c003094 <EnableInt>
1c001420:	541f0c00 	bl	7948(0x1f0c) # 1c00332c <open_count>
1c001424:	02801804 	addi.w	$r4,$r0,6(0x6)
1c001428:	541cd400 	bl	7380(0x1cd4) # 1c0030fc <Wake_Set>
1c00142c:	5422c400 	bl	8900(0x22c4) # 1c0036f0 <WDG_DogFeed>
1c001430:	541d7800 	bl	7544(0x1d78) # 1c0031a8 <PMU_GetRstRrc>
1c001434:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001438:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00143c:	44003180 	bnez	$r12,48(0x30) # 1c00146c <bsp_init+0xa8>
1c001440:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c001444:	02a1f084 	addi.w	$r4,$r4,-1924(0x87c)
1c001448:	54074c00 	bl	1868(0x74c) # 1c001b94 <myprintf>
1c00144c:	541dc800 	bl	7624(0x1dc8) # 1c003214 <PMU_GetBootSpiStatus>
1c001450:	0015008c 	move	$r12,$r4
1c001454:	40001180 	beqz	$r12,16(0x10) # 1c001464 <bsp_init+0xa0>
1c001458:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c00145c:	02a1d084 	addi.w	$r4,$r4,-1932(0x874)
1c001460:	54073400 	bl	1844(0x734) # 1c001b94 <myprintf>
1c001464:	54359400 	bl	13716(0x3594) # 1c0049f8 <main>
1c001468:	50004000 	b	64(0x40) # 1c0014a8 <bsp_init+0xe4>
1c00146c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001470:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001474:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c00148c <bsp_init+0xc8>
1c001478:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c00147c:	02a18084 	addi.w	$r4,$r4,-1952(0x860)
1c001480:	54071400 	bl	1812(0x714) # 1c001b94 <myprintf>
1c001484:	54357400 	bl	13684(0x3574) # 1c0049f8 <main>
1c001488:	50002000 	b	32(0x20) # 1c0014a8 <bsp_init+0xe4>
1c00148c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001490:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c001494:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0014a8 <bsp_init+0xe4>
1c001498:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c00149c:	02a14084 	addi.w	$r4,$r4,-1968(0x850)
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
1c001c2c:	1c00008c 	pcaddu12i	$r12,4(0x4)
1c001c30:	0283218c 	addi.w	$r12,$r12,200(0xc8)
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
1c001f54:	54160000 	bl	5632(0x1600) # 1c003554 <strlen>
1c001f58:	0015008c 	move	$r12,$r4
1c001f5c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f60:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c001f64:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c001f68:	54159000 	bl	5520(0x1590) # 1c0034f8 <strcpy>
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
1c0021c4:	1c00008c 	pcaddu12i	$r12,4(0x4)
1c0021c8:	02b2018c 	addi.w	$r12,$r12,-896(0xc80)
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

1c0029dc <Uart1_init>:
Uart1_init():
1c0029dc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0029e0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0029e4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0029e8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0029ec:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0029f0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0029f4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0029f8:	57ec5fff 	bl	-5028(0xfffec5c) # 1c001654 <gpio_pin_remap>
1c0029fc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002a00:	02802404 	addi.w	$r4,$r0,9(0x9)
1c002a04:	57ec53ff 	bl	-5040(0xfffec50) # 1c001654 <gpio_pin_remap>
1c002a08:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002a0c:	00150184 	move	$r4,$r12
1c002a10:	57fe7fff 	bl	-388(0xffffe7c) # 1c00288c <UART_StructInit>
1c002a14:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002a18:	2897e18c 	ld.w	$r12,$r12,1528(0x5f8)
1c002a1c:	2880018c 	ld.w	$r12,$r12,0
1c002a20:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002a24:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a28:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002a2c:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002a30:	00150185 	move	$r5,$r12
1c002a34:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002a38:	57fb5bff 	bl	-1192(0xffffb58) # 1c002590 <UART_Init>
1c002a3c:	00150006 	move	$r6,$r0
1c002a40:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002a44:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002a48:	57fec3ff 	bl	-320(0xffffec0) # 1c002908 <UART_ITConfig>
1c002a4c:	03400000 	andi	$r0,$r0,0x0
1c002a50:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002a54:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002a58:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002a5c:	4c000020 	jirl	$r0,$r1,0

1c002a60 <CLOCK_WaitForHSEStartUp>:
CLOCK_WaitForHSEStartUp():
1c002a60:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002a64:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002a68:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002a6c:	1400006c 	lu12i.w	$r12,3(0x3)
1c002a70:	03ba018c 	ori	$r12,$r12,0xe80
1c002a74:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002a78:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002a7c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002a80:	2880018d 	ld.w	$r13,$r12,0
1c002a84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002a88:	038101ad 	ori	$r13,$r13,0x40
1c002a8c:	2980018d 	st.w	$r13,$r12,0
1c002a90:	03400000 	andi	$r0,$r0,0x0
1c002a94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002a98:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002a9c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002aa0:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c002a94 <CLOCK_WaitForHSEStartUp+0x34>
1c002aa4:	50001c00 	b	28(0x1c) # 1c002ac0 <CLOCK_WaitForHSEStartUp+0x60>
1c002aa8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002aac:	2880018e 	ld.w	$r14,$r12,0
1c002ab0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ab4:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002ab8:	0014b5cd 	and	$r13,$r14,$r13
1c002abc:	2980018d 	st.w	$r13,$r12,0
1c002ac0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ac4:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002ac8:	63ffe180 	blt	$r12,$r0,-32(0x3ffe0) # 1c002aa8 <CLOCK_WaitForHSEStartUp+0x48>
1c002acc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ad0:	2880018d 	ld.w	$r13,$r12,0
1c002ad4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ad8:	038201ad 	ori	$r13,$r13,0x80
1c002adc:	2980018d 	st.w	$r13,$r12,0
1c002ae0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002ae4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002ae8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002aec:	00150184 	move	$r4,$r12
1c002af0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002af4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002af8:	4c000020 	jirl	$r0,$r1,0

1c002afc <CLOCK_WaitForLSEStartUp>:
CLOCK_WaitForLSEStartUp():
1c002afc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002b00:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002b04:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002b08:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002b0c:	50008800 	b	136(0x88) # 1c002b94 <CLOCK_WaitForLSEStartUp+0x98>
1c002b10:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b14:	2880018e 	ld.w	$r14,$r12,0
1c002b18:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b1c:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002b20:	0014b5cd 	and	$r13,$r14,$r13
1c002b24:	2980018d 	st.w	$r13,$r12,0
1c002b28:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002b2c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002b30:	50001400 	b	20(0x14) # 1c002b44 <CLOCK_WaitForLSEStartUp+0x48>
1c002b34:	03400000 	andi	$r0,$r0,0x0
1c002b38:	03400000 	andi	$r0,$r0,0x0
1c002b3c:	03400000 	andi	$r0,$r0,0x0
1c002b40:	03400000 	andi	$r0,$r0,0x0
1c002b44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002b48:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002b4c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002b50:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002b34 <CLOCK_WaitForLSEStartUp+0x38>
1c002b54:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b58:	2880018d 	ld.w	$r13,$r12,0
1c002b5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b60:	038081ad 	ori	$r13,$r13,0x20
1c002b64:	2980018d 	st.w	$r13,$r12,0
1c002b68:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002b6c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002b70:	50001400 	b	20(0x14) # 1c002b84 <CLOCK_WaitForLSEStartUp+0x88>
1c002b74:	03400000 	andi	$r0,$r0,0x0
1c002b78:	03400000 	andi	$r0,$r0,0x0
1c002b7c:	03400000 	andi	$r0,$r0,0x0
1c002b80:	03400000 	andi	$r0,$r0,0x0
1c002b84:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002b88:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002b8c:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002b90:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002b74 <CLOCK_WaitForLSEStartUp+0x78>
1c002b94:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b98:	0380118c 	ori	$r12,$r12,0x4
1c002b9c:	2880018d 	ld.w	$r13,$r12,0
1c002ba0:	1420000c 	lu12i.w	$r12,65536(0x10000)
1c002ba4:	0014b1ac 	and	$r12,$r13,$r12
1c002ba8:	43ff699f 	beqz	$r12,-152(0x7fff68) # 1c002b10 <CLOCK_WaitForLSEStartUp+0x14>
1c002bac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bb0:	0380118c 	ori	$r12,$r12,0x4
1c002bb4:	2880018d 	ld.w	$r13,$r12,0
1c002bb8:	1440000c 	lu12i.w	$r12,131072(0x20000)
1c002bbc:	0014b1ac 	and	$r12,$r13,$r12
1c002bc0:	47ff519f 	bnez	$r12,-176(0x7fff50) # 1c002b10 <CLOCK_WaitForLSEStartUp+0x14>
1c002bc4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002bc8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002bcc:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002bd0:	00150184 	move	$r4,$r12
1c002bd4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002bd8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002bdc:	4c000020 	jirl	$r0,$r1,0

1c002be0 <CLOCK_HSEConfig>:
CLOCK_HSEConfig():
1c002be0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002be4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002be8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002bec:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002bf0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002bf4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002bf8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bfc:	2880018e 	ld.w	$r14,$r12,0
1c002c00:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002c04:	0014300d 	nor	$r13,$r0,$r12
1c002c08:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c0c:	0014b5cd 	and	$r13,$r14,$r13
1c002c10:	2980018d 	st.w	$r13,$r12,0
1c002c14:	1400002c 	lu12i.w	$r12,1(0x1)
1c002c18:	03b4bd8c 	ori	$r12,$r12,0xd2f
1c002c1c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002c20:	50001400 	b	20(0x14) # 1c002c34 <CLOCK_HSEConfig+0x54>
1c002c24:	03400000 	andi	$r0,$r0,0x0
1c002c28:	03400000 	andi	$r0,$r0,0x0
1c002c2c:	03400000 	andi	$r0,$r0,0x0
1c002c30:	03400000 	andi	$r0,$r0,0x0
1c002c34:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002c38:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002c3c:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002c40:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002c24 <CLOCK_HSEConfig+0x44>
1c002c44:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002c48:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002c4c:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002c5c <CLOCK_HSEConfig+0x7c>
1c002c50:	57fe13ff 	bl	-496(0xffffe10) # 1c002a60 <CLOCK_WaitForHSEStartUp>
1c002c54:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002c58:	50002400 	b	36(0x24) # 1c002c7c <CLOCK_HSEConfig+0x9c>
1c002c5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c60:	2880018e 	ld.w	$r14,$r12,0
1c002c64:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c68:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002c6c:	0014b5cd 	and	$r13,$r14,$r13
1c002c70:	2980018d 	st.w	$r13,$r12,0
1c002c74:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002c78:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002c7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c80:	00150184 	move	$r4,$r12
1c002c84:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002c88:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002c8c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002c90:	4c000020 	jirl	$r0,$r1,0

1c002c94 <CLOCK_LSEConfig>:
CLOCK_LSEConfig():
1c002c94:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002c98:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002c9c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002ca0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002ca4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002ca8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002cac:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002cb0:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c002cb4:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002cc4 <CLOCK_LSEConfig+0x30>
1c002cb8:	57fe47ff 	bl	-444(0xffffe44) # 1c002afc <CLOCK_WaitForLSEStartUp>
1c002cbc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002cc0:	50002400 	b	36(0x24) # 1c002ce4 <CLOCK_LSEConfig+0x50>
1c002cc4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cc8:	2880018e 	ld.w	$r14,$r12,0
1c002ccc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cd0:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002cd4:	0014b5cd 	and	$r13,$r14,$r13
1c002cd8:	2980018d 	st.w	$r13,$r12,0
1c002cdc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002ce0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002ce4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ce8:	00150184 	move	$r4,$r12
1c002cec:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002cf0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002cf4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002cf8:	4c000020 	jirl	$r0,$r1,0

1c002cfc <CLOCK_StructInit>:
CLOCK_StructInit():
1c002cfc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002d00:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002d04:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002d08:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002d0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d10:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c002d14:	2980018d 	st.w	$r13,$r12,0
1c002d18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d1c:	0282000d 	addi.w	$r13,$r0,128(0x80)
1c002d20:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002d24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d28:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c002d2c:	2980218d 	st.w	$r13,$r12,8(0x8)
1c002d30:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d34:	29803180 	st.w	$r0,$r12,12(0xc)
1c002d38:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d3c:	29804180 	st.w	$r0,$r12,16(0x10)
1c002d40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d44:	29805180 	st.w	$r0,$r12,20(0x14)
1c002d48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d4c:	29806180 	st.w	$r0,$r12,24(0x18)
1c002d50:	03400000 	andi	$r0,$r0,0x0
1c002d54:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002d58:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002d5c:	4c000020 	jirl	$r0,$r1,0

1c002d60 <CLOCK_Init>:
CLOCK_Init():
1c002d60:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002d64:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002d68:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002d6c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002d70:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002d74:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002d78:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d7c:	2880018e 	ld.w	$r14,$r12,0
1c002d80:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d84:	02b3fc0d 	addi.w	$r13,$r0,-769(0xcff)
1c002d88:	0014b5cd 	and	$r13,$r14,$r13
1c002d8c:	2980018d 	st.w	$r13,$r12,0
1c002d90:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d94:	2880018e 	ld.w	$r14,$r12,0
1c002d98:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002d9c:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c002da0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002da4:	001535cd 	or	$r13,$r14,$r13
1c002da8:	2980018d 	st.w	$r13,$r12,0
1c002dac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002db0:	2880018e 	ld.w	$r14,$r12,0
1c002db4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002db8:	02bfbc0d 	addi.w	$r13,$r0,-17(0xfef)
1c002dbc:	0014b5cd 	and	$r13,$r14,$r13
1c002dc0:	2980018d 	st.w	$r13,$r12,0
1c002dc4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002dc8:	2880018e 	ld.w	$r14,$r12,0
1c002dcc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002dd0:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c002dd4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002dd8:	001535cd 	or	$r13,$r14,$r13
1c002ddc:	2980018d 	st.w	$r13,$r12,0
1c002de0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002de4:	2880018e 	ld.w	$r14,$r12,0
1c002de8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002dec:	15ffffed 	lu12i.w	$r13,-1(0xfffff)
1c002df0:	039ffdad 	ori	$r13,$r13,0x7ff
1c002df4:	0014b5cd 	and	$r13,$r14,$r13
1c002df8:	2980018d 	st.w	$r13,$r12,0
1c002dfc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e00:	2880018e 	ld.w	$r14,$r12,0
1c002e04:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e08:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c002e0c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e10:	001535cd 	or	$r13,$r14,$r13
1c002e14:	2980018d 	st.w	$r13,$r12,0
1c002e18:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e1c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002e20:	00150184 	move	$r4,$r12
1c002e24:	57fdbfff 	bl	-580(0xffffdbc) # 1c002be0 <CLOCK_HSEConfig>
1c002e28:	0015008d 	move	$r13,$r4
1c002e2c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002e30:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002e3c <CLOCK_Init+0xdc>
1c002e34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e38:	50015000 	b	336(0x150) # 1c002f88 <CLOCK_Init+0x228>
1c002e3c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e40:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c002e44:	00150184 	move	$r4,$r12
1c002e48:	57fe4fff 	bl	-436(0xffffe4c) # 1c002c94 <CLOCK_LSEConfig>
1c002e4c:	0015008d 	move	$r13,$r4
1c002e50:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002e54:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002e60 <CLOCK_Init+0x100>
1c002e58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e5c:	50012c00 	b	300(0x12c) # 1c002f88 <CLOCK_Init+0x228>
1c002e60:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e64:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002e68:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002e6c:	5800fdac 	beq	$r13,$r12,252(0xfc) # 1c002f68 <CLOCK_Init+0x208>
1c002e70:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e74:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c002e78:	4000a180 	beqz	$r12,160(0xa0) # 1c002f18 <CLOCK_Init+0x1b8>
1c002e7c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e80:	2880018e 	ld.w	$r14,$r12,0
1c002e84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e88:	15efffed 	lu12i.w	$r13,-32769(0xf7fff)
1c002e8c:	03bffdad 	ori	$r13,$r13,0xfff
1c002e90:	0014b5cd 	and	$r13,$r14,$r13
1c002e94:	2980018d 	st.w	$r13,$r12,0
1c002e98:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e9c:	2880018e 	ld.w	$r14,$r12,0
1c002ea0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ea4:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c002ea8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002eac:	001535cd 	or	$r13,$r14,$r13
1c002eb0:	2980018d 	st.w	$r13,$r12,0
1c002eb4:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002eb8:	0386c18c 	ori	$r12,$r12,0x1b0
1c002ebc:	2880018c 	ld.w	$r12,$r12,0
1c002ec0:	40004180 	beqz	$r12,64(0x40) # 1c002f00 <CLOCK_Init+0x1a0>
1c002ec4:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002ec8:	0386c18c 	ori	$r12,$r12,0x1b0
1c002ecc:	2880018c 	ld.w	$r12,$r12,0
1c002ed0:	0040898e 	slli.w	$r14,$r12,0x2
1c002ed4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002ed8:	002031cd 	div.w	$r13,$r14,$r12
1c002edc:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002ee4 <CLOCK_Init+0x184>
1c002ee0:	002a0007 	break	0x7
1c002ee4:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c002ee8:	001c31ac 	mul.w	$r12,$r13,$r12
1c002eec:	0015018d 	move	$r13,$r12
1c002ef0:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002ef4:	0284c18c 	addi.w	$r12,$r12,304(0x130)
1c002ef8:	2980018d 	st.w	$r13,$r12,0
1c002efc:	50008000 	b	128(0x80) # 1c002f7c <CLOCK_Init+0x21c>
1c002f00:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002f04:	0284818c 	addi.w	$r12,$r12,288(0x120)
1c002f08:	1401458d 	lu12i.w	$r13,2604(0xa2c)
1c002f0c:	038fe1ad 	ori	$r13,$r13,0x3f8
1c002f10:	2980018d 	st.w	$r13,$r12,0
1c002f14:	50006800 	b	104(0x68) # 1c002f7c <CLOCK_Init+0x21c>
1c002f18:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002f1c:	0386c18c 	ori	$r12,$r12,0x1b0
1c002f20:	2880018c 	ld.w	$r12,$r12,0
1c002f24:	40002d80 	beqz	$r12,44(0x2c) # 1c002f50 <CLOCK_Init+0x1f0>
1c002f28:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002f2c:	0386c18c 	ori	$r12,$r12,0x1b0
1c002f30:	2880018d 	ld.w	$r13,$r12,0
1c002f34:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c002f38:	001c31ac 	mul.w	$r12,$r13,$r12
1c002f3c:	0015018d 	move	$r13,$r12
1c002f40:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002f44:	0283818c 	addi.w	$r12,$r12,224(0xe0)
1c002f48:	2980018d 	st.w	$r13,$r12,0
1c002f4c:	50003000 	b	48(0x30) # 1c002f7c <CLOCK_Init+0x21c>
1c002f50:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002f54:	0283418c 	addi.w	$r12,$r12,208(0xd0)
1c002f58:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c002f5c:	038801ad 	ori	$r13,$r13,0x200
1c002f60:	2980018d 	st.w	$r13,$r12,0
1c002f64:	50001800 	b	24(0x18) # 1c002f7c <CLOCK_Init+0x21c>
1c002f68:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002f6c:	0282e18c 	addi.w	$r12,$r12,184(0xb8)
1c002f70:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c002f74:	038801ad 	ori	$r13,$r13,0x200
1c002f78:	2980018d 	st.w	$r13,$r12,0
1c002f7c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002f80:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002f84:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f88:	00150184 	move	$r4,$r12
1c002f8c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002f90:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002f94:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002f98:	4c000020 	jirl	$r0,$r1,0

1c002f9c <SystemClockInit>:
SystemClockInit():
1c002f9c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002fa0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002fa4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002fa8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002fac:	29bf52c0 	st.w	$r0,$r22,-44(0xfd4)
1c002fb0:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c002fb4:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c002fb8:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c002fbc:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002fc0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002fc4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002fc8:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c002fcc:	00150184 	move	$r4,$r12
1c002fd0:	57fd2fff 	bl	-724(0xffffd2c) # 1c002cfc <CLOCK_StructInit>
1c002fd4:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c002fd8:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c002fdc:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002fe0:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c002fe4:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c002fe8:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c002fec:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c002ff0:	0284000c 	addi.w	$r12,$r0,256(0x100)
1c002ff4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002ff8:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002ffc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003000:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003004:	00150184 	move	$r4,$r12
1c003008:	57fd5bff 	bl	-680(0xffffd58) # 1c002d60 <CLOCK_Init>
1c00300c:	0015008d 	move	$r13,$r4
1c003010:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003014:	58000dac 	beq	$r13,$r12,12(0xc) # 1c003020 <SystemClockInit+0x84>
1c003018:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c00301c:	50000800 	b	8(0x8) # 1c003024 <SystemClockInit+0x88>
1c003020:	0015000c 	move	$r12,$r0
1c003024:	00150184 	move	$r4,$r12
1c003028:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00302c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003030:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003034:	4c000020 	jirl	$r0,$r1,0

1c003038 <IsGlobalIntOpen>:
IsGlobalIntOpen():
1c003038:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00303c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003040:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003044:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003048:	0400000c 	csrrd	$r12,0x0
1c00304c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003050:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003054:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003058:	0340118c 	andi	$r12,$r12,0x4
1c00305c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003060:	00150184 	move	$r4,$r12
1c003064:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003068:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00306c:	4c000020 	jirl	$r0,$r1,0

1c003070 <DisableInt>:
DisableInt():
1c003070:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003074:	29803076 	st.w	$r22,$r3,12(0xc)
1c003078:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00307c:	0380100c 	ori	$r12,$r0,0x4
1c003080:	04000180 	csrxchg	$r0,$r12,0x0
1c003084:	03400000 	andi	$r0,$r0,0x0
1c003088:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00308c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003090:	4c000020 	jirl	$r0,$r1,0

1c003094 <EnableInt>:
EnableInt():
1c003094:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003098:	29803076 	st.w	$r22,$r3,12(0xc)
1c00309c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0030a0:	0380100c 	ori	$r12,$r0,0x4
1c0030a4:	0400018c 	csrxchg	$r12,$r12,0x0
1c0030a8:	03400000 	andi	$r0,$r0,0x0
1c0030ac:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0030b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0030b4:	4c000020 	jirl	$r0,$r1,0

1c0030b8 <Set_Timer_stop>:
Set_Timer_stop():
1c0030b8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0030bc:	29803076 	st.w	$r22,$r3,12(0xc)
1c0030c0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0030c4:	04010420 	csrwr	$r0,0x41
1c0030c8:	03400000 	andi	$r0,$r0,0x0
1c0030cc:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0030d0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0030d4:	4c000020 	jirl	$r0,$r1,0

1c0030d8 <Set_Timer_clear>:
Set_Timer_clear():
1c0030d8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0030dc:	29803076 	st.w	$r22,$r3,12(0xc)
1c0030e0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0030e4:	0380040c 	ori	$r12,$r0,0x1
1c0030e8:	0401102c 	csrwr	$r12,0x44
1c0030ec:	03400000 	andi	$r0,$r0,0x0
1c0030f0:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0030f4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0030f8:	4c000020 	jirl	$r0,$r1,0

1c0030fc <Wake_Set>:
Wake_Set():
1c0030fc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003100:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003104:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003108:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00310c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003110:	40006980 	beqz	$r12,104(0x68) # 1c003178 <Wake_Set+0x7c>
1c003114:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003118:	0040a18c 	slli.w	$r12,$r12,0x8
1c00311c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003120:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003124:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003128:	0380218c 	ori	$r12,$r12,0x8
1c00312c:	2880018d 	ld.w	$r13,$r12,0
1c003130:	14001fec 	lu12i.w	$r12,255(0xff)
1c003134:	03bffd8c 	ori	$r12,$r12,0xfff
1c003138:	0014b1ac 	and	$r12,$r13,$r12
1c00313c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003140:	001031ac 	add.w	$r12,$r13,$r12
1c003144:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003148:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00314c:	0380318c 	ori	$r12,$r12,0xc
1c003150:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c003154:	2980018d 	st.w	$r13,$r12,0
1c003158:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00315c:	0380118c 	ori	$r12,$r12,0x4
1c003160:	2880018d 	ld.w	$r13,$r12,0
1c003164:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003168:	0380118c 	ori	$r12,$r12,0x4
1c00316c:	038601ad 	ori	$r13,$r13,0x180
1c003170:	2980018d 	st.w	$r13,$r12,0
1c003174:	50002400 	b	36(0x24) # 1c003198 <Wake_Set+0x9c>
1c003178:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00317c:	0380118c 	ori	$r12,$r12,0x4
1c003180:	2880018e 	ld.w	$r14,$r12,0
1c003184:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003188:	0380118c 	ori	$r12,$r12,0x4
1c00318c:	02b9fc0d 	addi.w	$r13,$r0,-385(0xe7f)
1c003190:	0014b5cd 	and	$r13,$r14,$r13
1c003194:	2980018d 	st.w	$r13,$r12,0
1c003198:	03400000 	andi	$r0,$r0,0x0
1c00319c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0031a0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0031a4:	4c000020 	jirl	$r0,$r1,0

1c0031a8 <PMU_GetRstRrc>:
PMU_GetRstRrc():
1c0031a8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0031ac:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0031b0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0031b4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0031b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0031bc:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0031c0:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c0031c4:	0014b1ac 	and	$r12,$r13,$r12
1c0031c8:	44000d80 	bnez	$r12,12(0xc) # 1c0031d4 <PMU_GetRstRrc+0x2c>
1c0031cc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0031d0:	50003000 	b	48(0x30) # 1c003200 <PMU_GetRstRrc+0x58>
1c0031d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0031d8:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0031dc:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c0031e0:	0014b1ad 	and	$r13,$r13,$r12
1c0031e4:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c0031e8:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0031f8 <PMU_GetRstRrc+0x50>
1c0031ec:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0031f0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0031f4:	50000c00 	b	12(0xc) # 1c003200 <PMU_GetRstRrc+0x58>
1c0031f8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0031fc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003200:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003204:	00150184 	move	$r4,$r12
1c003208:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00320c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003210:	4c000020 	jirl	$r0,$r1,0

1c003214 <PMU_GetBootSpiStatus>:
PMU_GetBootSpiStatus():
1c003214:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003218:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00321c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003220:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003224:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003228:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00322c:	0380198c 	ori	$r12,$r12,0x6
1c003230:	2a00018c 	ld.bu	$r12,$r12,0
1c003234:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003238:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00323c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003240:	0340058c 	andi	$r12,$r12,0x1
1c003244:	40000d80 	beqz	$r12,12(0xc) # 1c003250 <PMU_GetBootSpiStatus+0x3c>
1c003248:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00324c:	50000800 	b	8(0x8) # 1c003254 <PMU_GetBootSpiStatus+0x40>
1c003250:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003254:	00150184 	move	$r4,$r12
1c003258:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00325c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003260:	4c000020 	jirl	$r0,$r1,0

1c003264 <ls1x_logo>:
ls1x_logo():
1c003264:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003268:	29803061 	st.w	$r1,$r3,12(0xc)
1c00326c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003270:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003274:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003278:	02b48084 	addi.w	$r4,$r4,-736(0xd20)
1c00327c:	57e91bff 	bl	-5864(0xfffe918) # 1c001b94 <myprintf>
1c003280:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003284:	02b46084 	addi.w	$r4,$r4,-744(0xd18)
1c003288:	57e90fff 	bl	-5876(0xfffe90c) # 1c001b94 <myprintf>
1c00328c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003290:	02b5c084 	addi.w	$r4,$r4,-656(0xd70)
1c003294:	57e903ff 	bl	-5888(0xfffe900) # 1c001b94 <myprintf>
1c003298:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00329c:	02b72084 	addi.w	$r4,$r4,-568(0xdc8)
1c0032a0:	57e8f7ff 	bl	-5900(0xfffe8f4) # 1c001b94 <myprintf>
1c0032a4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0032a8:	02b88084 	addi.w	$r4,$r4,-480(0xe20)
1c0032ac:	57e8ebff 	bl	-5912(0xfffe8e8) # 1c001b94 <myprintf>
1c0032b0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0032b4:	02b9e084 	addi.w	$r4,$r4,-392(0xe78)
1c0032b8:	57e8dfff 	bl	-5924(0xfffe8dc) # 1c001b94 <myprintf>
1c0032bc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0032c0:	02bb4084 	addi.w	$r4,$r4,-304(0xed0)
1c0032c4:	57e8d3ff 	bl	-5936(0xfffe8d0) # 1c001b94 <myprintf>
1c0032c8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0032cc:	02bca084 	addi.w	$r4,$r4,-216(0xf28)
1c0032d0:	57e8c7ff 	bl	-5948(0xfffe8c4) # 1c001b94 <myprintf>
1c0032d4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0032d8:	02be0084 	addi.w	$r4,$r4,-128(0xf80)
1c0032dc:	57e8bbff 	bl	-5960(0xfffe8b8) # 1c001b94 <myprintf>
1c0032e0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0032e4:	02bf6084 	addi.w	$r4,$r4,-40(0xfd8)
1c0032e8:	57e8afff 	bl	-5972(0xfffe8ac) # 1c001b94 <myprintf>
1c0032ec:	03400000 	andi	$r0,$r0,0x0
1c0032f0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0032f4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0032f8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0032fc:	4c000020 	jirl	$r0,$r1,0

1c003300 <get_count>:
get_count():
1c003300:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003304:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003308:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00330c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003310:	0000600c 	rdtimel.w	$r12,$r0
1c003314:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003318:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00331c:	00150184 	move	$r4,$r12
1c003320:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003324:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003328:	4c000020 	jirl	$r0,$r1,0

1c00332c <open_count>:
open_count():
1c00332c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003330:	29803076 	st.w	$r22,$r3,12(0xc)
1c003334:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003338:	0380400c 	ori	$r12,$r0,0x10
1c00333c:	0402bd80 	csrxchg	$r0,$r12,0xaf
1c003340:	03400000 	andi	$r0,$r0,0x0
1c003344:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003348:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00334c:	4c000020 	jirl	$r0,$r1,0

1c003350 <start_count>:
start_count():
1c003350:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003354:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003358:	29806076 	st.w	$r22,$r3,24(0x18)
1c00335c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003360:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003364:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003368:	29800180 	st.w	$r0,$r12,0
1c00336c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003370:	29801180 	st.w	$r0,$r12,4(0x4)
1c003374:	57ff8fff 	bl	-116(0xfffff8c) # 1c003300 <get_count>
1c003378:	0015008d 	move	$r13,$r4
1c00337c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003380:	2980018d 	st.w	$r13,$r12,0
1c003384:	03400000 	andi	$r0,$r0,0x0
1c003388:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00338c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003390:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003394:	4c000020 	jirl	$r0,$r1,0

1c003398 <stop_count>:
stop_count():
1c003398:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00339c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0033a0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0033a4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0033a8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0033ac:	57ff57ff 	bl	-172(0xfffff54) # 1c003300 <get_count>
1c0033b0:	0015008d 	move	$r13,$r4
1c0033b4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0033b8:	2980118d 	st.w	$r13,$r12,4(0x4)
1c0033bc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0033c0:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0033c4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0033c8:	2880018c 	ld.w	$r12,$r12,0
1c0033cc:	68001dac 	bltu	$r13,$r12,28(0x1c) # 1c0033e8 <stop_count+0x50>
1c0033d0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0033d4:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0033d8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0033dc:	2880018c 	ld.w	$r12,$r12,0
1c0033e0:	001131ac 	sub.w	$r12,$r13,$r12
1c0033e4:	50002800 	b	40(0x28) # 1c00340c <stop_count+0x74>
1c0033e8:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0033ec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0033f0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0033f4:	2880018c 	ld.w	$r12,$r12,0
1c0033f8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0033fc:	001131ad 	sub.w	$r13,$r13,$r12
1c003400:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003404:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c003408:	001031ac 	add.w	$r12,$r13,$r12
1c00340c:	00150184 	move	$r4,$r12
1c003410:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003414:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003418:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00341c:	4c000020 	jirl	$r0,$r1,0

1c003420 <delay_cycle>:
delay_cycle():
1c003420:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003424:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003428:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00342c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003430:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003434:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003438:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c00343c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003440:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c003444:	00150184 	move	$r4,$r12
1c003448:	57ff0bff 	bl	-248(0xfffff08) # 1c003350 <start_count>
1c00344c:	50001400 	b	20(0x14) # 1c003460 <delay_cycle+0x40>
1c003450:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c003454:	00150184 	move	$r4,$r12
1c003458:	57ff43ff 	bl	-192(0xfffff40) # 1c003398 <stop_count>
1c00345c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003460:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003464:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003468:	6bffe9ac 	bltu	$r13,$r12,-24(0x3ffe8) # 1c003450 <delay_cycle+0x30>
1c00346c:	03400000 	andi	$r0,$r0,0x0
1c003470:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003474:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003478:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00347c:	4c000020 	jirl	$r0,$r1,0

1c003480 <delay_us>:
delay_us():
1c003480:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003484:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003488:	29806076 	st.w	$r22,$r3,24(0x18)
1c00348c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003490:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003494:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003498:	00408d8c 	slli.w	$r12,$r12,0x3
1c00349c:	00150184 	move	$r4,$r12
1c0034a0:	57ff83ff 	bl	-128(0xfffff80) # 1c003420 <delay_cycle>
1c0034a4:	03400000 	andi	$r0,$r0,0x0
1c0034a8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0034ac:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0034b0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0034b4:	4c000020 	jirl	$r0,$r1,0

1c0034b8 <delay_ms>:
delay_ms():
1c0034b8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0034bc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0034c0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0034c4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0034c8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0034cc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0034d0:	1400002c 	lu12i.w	$r12,1(0x1)
1c0034d4:	03bd018c 	ori	$r12,$r12,0xf40
1c0034d8:	001c31ac 	mul.w	$r12,$r13,$r12
1c0034dc:	00150184 	move	$r4,$r12
1c0034e0:	57ff43ff 	bl	-192(0xfffff40) # 1c003420 <delay_cycle>
1c0034e4:	03400000 	andi	$r0,$r0,0x0
1c0034e8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0034ec:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0034f0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0034f4:	4c000020 	jirl	$r0,$r1,0

1c0034f8 <strcpy>:
strcpy():
1c0034f8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0034fc:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003500:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003504:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003508:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00350c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003510:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003514:	03400000 	andi	$r0,$r0,0x0
1c003518:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00351c:	028005ac 	addi.w	$r12,$r13,1(0x1)
1c003520:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c003524:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003528:	0280058e 	addi.w	$r14,$r12,1(0x1)
1c00352c:	29bf72ce 	st.w	$r14,$r22,-36(0xfdc)
1c003530:	280001ad 	ld.b	$r13,$r13,0
1c003534:	2900018d 	st.b	$r13,$r12,0
1c003538:	2800018c 	ld.b	$r12,$r12,0
1c00353c:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c003518 <strcpy+0x20>
1c003540:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003544:	00150184 	move	$r4,$r12
1c003548:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00354c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003550:	4c000020 	jirl	$r0,$r1,0

1c003554 <strlen>:
strlen():
1c003554:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003558:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00355c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003560:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003564:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003568:	50001000 	b	16(0x10) # 1c003578 <strlen+0x24>
1c00356c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003570:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003574:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003578:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00357c:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c003580:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c003584:	2800018c 	ld.b	$r12,$r12,0
1c003588:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00356c <strlen+0x18>
1c00358c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003590:	00150184 	move	$r4,$r12
1c003594:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003598:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00359c:	4c000020 	jirl	$r0,$r1,0

1c0035a0 <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c0035a0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0035a4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0035a8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0035ac:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0035b0:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c0035b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0035b8:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c0035bc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0035c0:	001531ad 	or	$r13,$r13,$r12
1c0035c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0035c8:	2980318d 	st.w	$r13,$r12,12(0xc)
1c0035cc:	03400000 	andi	$r0,$r0,0x0
1c0035d0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0035d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0035d8:	4c000020 	jirl	$r0,$r1,0

1c0035dc <WDG_getOddValue>:
WDG_getOddValue():
1c0035dc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0035e0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0035e4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0035e8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0035ec:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0035f0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0035f4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0035f8:	50003800 	b	56(0x38) # 1c003630 <WDG_getOddValue+0x54>
1c0035fc:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003600:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003604:	001731ac 	sll.w	$r12,$r13,$r12
1c003608:	0015018d 	move	$r13,$r12
1c00360c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003610:	0014b1ac 	and	$r12,$r13,$r12
1c003614:	40001180 	beqz	$r12,16(0x10) # 1c003624 <WDG_getOddValue+0x48>
1c003618:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00361c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003620:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003624:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003628:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00362c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003630:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003634:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c003638:	67ffc58d 	bge	$r12,$r13,-60(0x3ffc4) # 1c0035fc <WDG_getOddValue+0x20>
1c00363c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003640:	0340058c 	andi	$r12,$r12,0x1
1c003644:	44000d80 	bnez	$r12,12(0xc) # 1c003650 <WDG_getOddValue+0x74>
1c003648:	1400010c 	lu12i.w	$r12,8(0x8)
1c00364c:	50000800 	b	8(0x8) # 1c003654 <WDG_getOddValue+0x78>
1c003650:	0015000c 	move	$r12,$r0
1c003654:	00150184 	move	$r4,$r12
1c003658:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00365c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003660:	4c000020 	jirl	$r0,$r1,0

1c003664 <WDG_SetWatchDog>:
WDG_SetWatchDog():
1c003664:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003668:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00366c:	29806076 	st.w	$r22,$r3,24(0x18)
1c003670:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003674:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003678:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00367c:	140000ec 	lu12i.w	$r12,7(0x7)
1c003680:	03bffd8c 	ori	$r12,$r12,0xfff
1c003684:	0014b1ac 	and	$r12,$r13,$r12
1c003688:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00368c:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c003690:	57ff4fff 	bl	-180(0xfffff4c) # 1c0035dc <WDG_getOddValue>
1c003694:	0015008c 	move	$r12,$r4
1c003698:	0015018d 	move	$r13,$r12
1c00369c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036a0:	0015358c 	or	$r12,$r12,$r13
1c0036a4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0036a8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0036ac:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c0036b0:	0396a9ad 	ori	$r13,$r13,0x5aa
1c0036b4:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c0036b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036bc:	0014300c 	nor	$r12,$r0,$r12
1c0036c0:	0040c18c 	slli.w	$r12,$r12,0x10
1c0036c4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0036c8:	001531ac 	or	$r12,$r13,$r12
1c0036cc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0036d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0036d4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0036d8:	2980c18d 	st.w	$r13,$r12,48(0x30)
1c0036dc:	03400000 	andi	$r0,$r0,0x0
1c0036e0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0036e4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0036e8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0036ec:	4c000020 	jirl	$r0,$r1,0

1c0036f0 <WDG_DogFeed>:
WDG_DogFeed():
1c0036f0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0036f4:	29803076 	st.w	$r22,$r3,12(0xc)
1c0036f8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0036fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003700:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c003704:	0396a9ad 	ori	$r13,$r13,0x5aa
1c003708:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c00370c:	03400000 	andi	$r0,$r0,0x0
1c003710:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003714:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003718:	4c000020 	jirl	$r0,$r1,0

1c00371c <WdgInit>:
WdgInit():
1c00371c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003720:	29803061 	st.w	$r1,$r3,12(0xc)
1c003724:	29802076 	st.w	$r22,$r3,8(0x8)
1c003728:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00372c:	150000ec 	lu12i.w	$r12,-524281(0x80007)
1c003730:	03bffd84 	ori	$r4,$r12,0xfff
1c003734:	57ff33ff 	bl	-208(0xfffff30) # 1c003664 <WDG_SetWatchDog>
1c003738:	03400000 	andi	$r0,$r0,0x0
1c00373c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003740:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003744:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003748:	4c000020 	jirl	$r0,$r1,0

1c00374c <Adc_powerOn>:
Adc_powerOn():
1c00374c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003750:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003754:	29806076 	st.w	$r22,$r3,24(0x18)
1c003758:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00375c:	57f8dfff 	bl	-1828(0xffff8dc) # 1c003038 <IsGlobalIntOpen>
1c003760:	0015008c 	move	$r12,$r4
1c003764:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003768:	57f90bff 	bl	-1784(0xffff908) # 1c003070 <DisableInt>
1c00376c:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c003770:	288001ac 	ld.w	$r12,$r13,0
1c003774:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c003778:	007041cc 	bstrins.w	$r12,$r14,0x10,0x10
1c00377c:	298001ac 	st.w	$r12,$r13,0
1c003780:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003784:	40000980 	beqz	$r12,8(0x8) # 1c00378c <Adc_powerOn+0x40>
1c003788:	57f90fff 	bl	-1780(0xffff90c) # 1c003094 <EnableInt>
1c00378c:	03400000 	andi	$r0,$r0,0x0
1c003790:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003794:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003798:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00379c:	4c000020 	jirl	$r0,$r1,0

1c0037a0 <Adc_open>:
Adc_open():
1c0037a0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0037a4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0037a8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0037ac:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0037b0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0037b4:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0037b8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0037bc:	001731ac 	sll.w	$r12,$r13,$r12
1c0037c0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0037c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037c8:	0340058c 	andi	$r12,$r12,0x1
1c0037cc:	40003580 	beqz	$r12,52(0x34) # 1c003800 <Adc_open+0x60>
1c0037d0:	57f86bff 	bl	-1944(0xffff868) # 1c003038 <IsGlobalIntOpen>
1c0037d4:	0015008c 	move	$r12,$r4
1c0037d8:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0037dc:	57f897ff 	bl	-1900(0xffff894) # 1c003070 <DisableInt>
1c0037e0:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c0037e4:	288001ac 	ld.w	$r12,$r13,0
1c0037e8:	0071440c 	bstrins.w	$r12,$r0,0x11,0x11
1c0037ec:	298001ac 	st.w	$r12,$r13,0
1c0037f0:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c0037f4:	40004980 	beqz	$r12,72(0x48) # 1c00383c <Adc_open+0x9c>
1c0037f8:	57f89fff 	bl	-1892(0xffff89c) # 1c003094 <EnableInt>
1c0037fc:	50004000 	b	64(0x40) # 1c00383c <Adc_open+0x9c>
1c003800:	57f83bff 	bl	-1992(0xffff838) # 1c003038 <IsGlobalIntOpen>
1c003804:	0015008c 	move	$r12,$r4
1c003808:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c00380c:	57f867ff 	bl	-1948(0xffff864) # 1c003070 <DisableInt>
1c003810:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003814:	0044918c 	srli.w	$r12,$r12,0x4
1c003818:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c00381c:	03403d8c 	andi	$r12,$r12,0xf
1c003820:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c003824:	288001ac 	ld.w	$r12,$r13,0
1c003828:	007751cc 	bstrins.w	$r12,$r14,0x17,0x14
1c00382c:	298001ac 	st.w	$r12,$r13,0
1c003830:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c003834:	40000980 	beqz	$r12,8(0x8) # 1c00383c <Adc_open+0x9c>
1c003838:	57f85fff 	bl	-1956(0xffff85c) # 1c003094 <EnableInt>
1c00383c:	03400000 	andi	$r0,$r0,0x0
1c003840:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003844:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003848:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00384c:	4c000020 	jirl	$r0,$r1,0

1c003850 <TOUCH_GetBaseVal>:
TOUCH_GetBaseVal():
1c003850:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003854:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003858:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00385c:	0015008c 	move	$r12,$r4
1c003860:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003864:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003868:	0040898c 	slli.w	$r12,$r12,0x2
1c00386c:	0015018d 	move	$r13,$r12
1c003870:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003874:	0381018c 	ori	$r12,$r12,0x40
1c003878:	001031ac 	add.w	$r12,$r13,$r12
1c00387c:	2880018c 	ld.w	$r12,$r12,0
1c003880:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003884:	037ffd8c 	andi	$r12,$r12,0xfff
1c003888:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00388c:	00150184 	move	$r4,$r12
1c003890:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003894:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003898:	4c000020 	jirl	$r0,$r1,0

1c00389c <TOUCH_GetCountValue>:
TOUCH_GetCountValue():
1c00389c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0038a0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0038a4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0038a8:	0015008c 	move	$r12,$r4
1c0038ac:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0038b0:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0038b4:	0040898c 	slli.w	$r12,$r12,0x2
1c0038b8:	0015018d 	move	$r13,$r12
1c0038bc:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0038c0:	0382018c 	ori	$r12,$r12,0x80
1c0038c4:	001031ac 	add.w	$r12,$r13,$r12
1c0038c8:	2880018c 	ld.w	$r12,$r12,0
1c0038cc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0038d0:	037ffd8c 	andi	$r12,$r12,0xfff
1c0038d4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0038d8:	00150184 	move	$r4,$r12
1c0038dc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0038e0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0038e4:	4c000020 	jirl	$r0,$r1,0

1c0038e8 <Printf_KeyChannel>:
Printf_KeyChannel():
1c0038e8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0038ec:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0038f0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0038f4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0038f8:	0015008c 	move	$r12,$r4
1c0038fc:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c003900:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003904:	50003400 	b	52(0x34) # 1c003938 <Printf_KeyChannel+0x50>
1c003908:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c00390c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003910:	001831ac 	sra.w	$r12,$r13,$r12
1c003914:	0340058c 	andi	$r12,$r12,0x1
1c003918:	40001580 	beqz	$r12,20(0x14) # 1c00392c <Printf_KeyChannel+0x44>
1c00391c:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c003920:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003924:	02a7f084 	addi.w	$r4,$r4,-1540(0x9fc)
1c003928:	57e26fff 	bl	-7572(0xfffe26c) # 1c001b94 <myprintf>
1c00392c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003930:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003934:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003938:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00393c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003940:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c003908 <Printf_KeyChannel+0x20>
1c003944:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003948:	02a77084 	addi.w	$r4,$r4,-1572(0x9dc)
1c00394c:	57e24bff 	bl	-7608(0xfffe248) # 1c001b94 <myprintf>
1c003950:	03400000 	andi	$r0,$r0,0x0
1c003954:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003958:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00395c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003960:	4c000020 	jirl	$r0,$r1,0

1c003964 <Printf_KeyType>:
Printf_KeyType():
1c003964:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003968:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00396c:	29806076 	st.w	$r22,$r3,24(0x18)
1c003970:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003974:	0015008c 	move	$r12,$r4
1c003978:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00397c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003980:	0340058c 	andi	$r12,$r12,0x1
1c003984:	40001180 	beqz	$r12,16(0x10) # 1c003994 <Printf_KeyType+0x30>
1c003988:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00398c:	02a67084 	addi.w	$r4,$r4,-1636(0x99c)
1c003990:	57e207ff 	bl	-7676(0xfffe204) # 1c001b94 <myprintf>
1c003994:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003998:	0340098c 	andi	$r12,$r12,0x2
1c00399c:	40001180 	beqz	$r12,16(0x10) # 1c0039ac <Printf_KeyType+0x48>
1c0039a0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0039a4:	02a63084 	addi.w	$r4,$r4,-1652(0x98c)
1c0039a8:	57e1efff 	bl	-7700(0xfffe1ec) # 1c001b94 <myprintf>
1c0039ac:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0039b0:	0340118c 	andi	$r12,$r12,0x4
1c0039b4:	40001180 	beqz	$r12,16(0x10) # 1c0039c4 <Printf_KeyType+0x60>
1c0039b8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0039bc:	02a5f084 	addi.w	$r4,$r4,-1668(0x97c)
1c0039c0:	57e1d7ff 	bl	-7724(0xfffe1d4) # 1c001b94 <myprintf>
1c0039c4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0039c8:	0340218c 	andi	$r12,$r12,0x8
1c0039cc:	40001180 	beqz	$r12,16(0x10) # 1c0039dc <Printf_KeyType+0x78>
1c0039d0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0039d4:	02a5c084 	addi.w	$r4,$r4,-1680(0x970)
1c0039d8:	57e1bfff 	bl	-7748(0xfffe1bc) # 1c001b94 <myprintf>
1c0039dc:	03400000 	andi	$r0,$r0,0x0
1c0039e0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0039e4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0039e8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0039ec:	4c000020 	jirl	$r0,$r1,0

1c0039f0 <Printf_KeyVal>:
Printf_KeyVal():
1c0039f0:	02bd4063 	addi.w	$r3,$r3,-176(0xf50)
1c0039f4:	2982b061 	st.w	$r1,$r3,172(0xac)
1c0039f8:	2982a076 	st.w	$r22,$r3,168(0xa8)
1c0039fc:	0282c076 	addi.w	$r22,$r3,176(0xb0)
1c003a00:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003a04:	5000d800 	b	216(0xd8) # 1c003adc <Printf_KeyVal+0xec>
1c003a08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a0c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003a10:	00150184 	move	$r4,$r12
1c003a14:	57fe8bff 	bl	-376(0xffffe88) # 1c00389c <TOUCH_GetCountValue>
1c003a18:	0015008c 	move	$r12,$r4
1c003a1c:	0015018d 	move	$r13,$r12
1c003a20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a24:	0040898c 	slli.w	$r12,$r12,0x2
1c003a28:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003a2c:	001031cc 	add.w	$r12,$r14,$r12
1c003a30:	29bdb18d 	st.w	$r13,$r12,-148(0xf6c)
1c003a34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a38:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003a3c:	00150184 	move	$r4,$r12
1c003a40:	57fe13ff 	bl	-496(0xffffe10) # 1c003850 <TOUCH_GetBaseVal>
1c003a44:	0015008c 	move	$r12,$r4
1c003a48:	0015018d 	move	$r13,$r12
1c003a4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a50:	0040898c 	slli.w	$r12,$r12,0x2
1c003a54:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003a58:	001031cc 	add.w	$r12,$r14,$r12
1c003a5c:	29be718d 	st.w	$r13,$r12,-100(0xf9c)
1c003a60:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a64:	0040898c 	slli.w	$r12,$r12,0x2
1c003a68:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003a6c:	001031ac 	add.w	$r12,$r13,$r12
1c003a70:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003a74:	40004980 	beqz	$r12,72(0x48) # 1c003abc <Printf_KeyVal+0xcc>
1c003a78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a7c:	0040898c 	slli.w	$r12,$r12,0x2
1c003a80:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003a84:	001031ac 	add.w	$r12,$r13,$r12
1c003a88:	28be718d 	ld.w	$r13,$r12,-100(0xf9c)
1c003a8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a90:	0040898c 	slli.w	$r12,$r12,0x2
1c003a94:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003a98:	001031cc 	add.w	$r12,$r14,$r12
1c003a9c:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003aa0:	001131ad 	sub.w	$r13,$r13,$r12
1c003aa4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003aa8:	0040898c 	slli.w	$r12,$r12,0x2
1c003aac:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003ab0:	001031cc 	add.w	$r12,$r14,$r12
1c003ab4:	29bf318d 	st.w	$r13,$r12,-52(0xfcc)
1c003ab8:	50001800 	b	24(0x18) # 1c003ad0 <Printf_KeyVal+0xe0>
1c003abc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ac0:	0040898c 	slli.w	$r12,$r12,0x2
1c003ac4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003ac8:	001031ac 	add.w	$r12,$r13,$r12
1c003acc:	29bf3180 	st.w	$r0,$r12,-52(0xfcc)
1c003ad0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ad4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003ad8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003adc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003ae0:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003ae4:	67ff258d 	bge	$r12,$r13,-220(0x3ff24) # 1c003a08 <Printf_KeyVal+0x18>
1c003ae8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003aec:	02a19084 	addi.w	$r4,$r4,-1948(0x864)
1c003af0:	57e0a7ff 	bl	-8028(0xfffe0a4) # 1c001b94 <myprintf>
1c003af4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003af8:	02a20084 	addi.w	$r4,$r4,-1920(0x880)
1c003afc:	57e09bff 	bl	-8040(0xfffe098) # 1c001b94 <myprintf>
1c003b00:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003b04:	50003400 	b	52(0x34) # 1c003b38 <Printf_KeyVal+0x148>
1c003b08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b0c:	0040898c 	slli.w	$r12,$r12,0x2
1c003b10:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003b14:	001031ac 	add.w	$r12,$r13,$r12
1c003b18:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003b1c:	00150185 	move	$r5,$r12
1c003b20:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003b24:	02a17084 	addi.w	$r4,$r4,-1956(0x85c)
1c003b28:	57e06fff 	bl	-8084(0xfffe06c) # 1c001b94 <myprintf>
1c003b2c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b30:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003b34:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003b38:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003b3c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003b40:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003b08 <Printf_KeyVal+0x118>
1c003b44:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003b48:	02a10084 	addi.w	$r4,$r4,-1984(0x840)
1c003b4c:	57e04bff 	bl	-8120(0xfffe048) # 1c001b94 <myprintf>
1c003b50:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003b54:	50003400 	b	52(0x34) # 1c003b88 <Printf_KeyVal+0x198>
1c003b58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b5c:	0040898c 	slli.w	$r12,$r12,0x2
1c003b60:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003b64:	001031ac 	add.w	$r12,$r13,$r12
1c003b68:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003b6c:	00150185 	move	$r5,$r12
1c003b70:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003b74:	02a03084 	addi.w	$r4,$r4,-2036(0x80c)
1c003b78:	57e01fff 	bl	-8164(0xfffe01c) # 1c001b94 <myprintf>
1c003b7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b80:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003b84:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003b88:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003b8c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003b90:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003b58 <Printf_KeyVal+0x168>
1c003b94:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003b98:	029ff084 	addi.w	$r4,$r4,2044(0x7fc)
1c003b9c:	57dffbff 	bl	-8200(0xfffdff8) # 1c001b94 <myprintf>
1c003ba0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003ba4:	50007400 	b	116(0x74) # 1c003c18 <Printf_KeyVal+0x228>
1c003ba8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003bac:	0040898c 	slli.w	$r12,$r12,0x2
1c003bb0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003bb4:	001031ac 	add.w	$r12,$r13,$r12
1c003bb8:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003bbc:	64002d80 	bge	$r12,$r0,44(0x2c) # 1c003be8 <Printf_KeyVal+0x1f8>
1c003bc0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003bc4:	0040898c 	slli.w	$r12,$r12,0x2
1c003bc8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003bcc:	001031ac 	add.w	$r12,$r13,$r12
1c003bd0:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003bd4:	00150185 	move	$r5,$r12
1c003bd8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003bdc:	029f1084 	addi.w	$r4,$r4,1988(0x7c4)
1c003be0:	57dfb7ff 	bl	-8268(0xfffdfb4) # 1c001b94 <myprintf>
1c003be4:	50002800 	b	40(0x28) # 1c003c0c <Printf_KeyVal+0x21c>
1c003be8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003bec:	0040898c 	slli.w	$r12,$r12,0x2
1c003bf0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003bf4:	001031ac 	add.w	$r12,$r13,$r12
1c003bf8:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003bfc:	00150185 	move	$r5,$r12
1c003c00:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003c04:	029e9084 	addi.w	$r4,$r4,1956(0x7a4)
1c003c08:	57df8fff 	bl	-8308(0xfffdf8c) # 1c001b94 <myprintf>
1c003c0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c10:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003c14:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003c18:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003c1c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003c20:	67ff898d 	bge	$r12,$r13,-120(0x3ff88) # 1c003ba8 <Printf_KeyVal+0x1b8>
1c003c24:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003c28:	029bf084 	addi.w	$r4,$r4,1788(0x6fc)
1c003c2c:	57df6bff 	bl	-8344(0xfffdf68) # 1c001b94 <myprintf>
1c003c30:	03400000 	andi	$r0,$r0,0x0
1c003c34:	2882b061 	ld.w	$r1,$r3,172(0xac)
1c003c38:	2882a076 	ld.w	$r22,$r3,168(0xa8)
1c003c3c:	0282c063 	addi.w	$r3,$r3,176(0xb0)
1c003c40:	4c000020 	jirl	$r0,$r1,0

1c003c44 <TIM_GetITStatus>:
TIM_GetITStatus():
1c003c44:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003c48:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003c4c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003c50:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003c54:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003c58:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003c5c:	2880018d 	ld.w	$r13,$r12,0
1c003c60:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003c64:	0014b1ac 	and	$r12,$r13,$r12
1c003c68:	40001180 	beqz	$r12,16(0x10) # 1c003c78 <TIM_GetITStatus+0x34>
1c003c6c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003c70:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003c74:	50000800 	b	8(0x8) # 1c003c7c <TIM_GetITStatus+0x38>
1c003c78:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003c7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c80:	00150184 	move	$r4,$r12
1c003c84:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003c88:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003c8c:	4c000020 	jirl	$r0,$r1,0

1c003c90 <TIM_ClearIT>:
TIM_ClearIT():
1c003c90:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003c94:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003c98:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003c9c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003ca0:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003ca4:	2880018e 	ld.w	$r14,$r12,0
1c003ca8:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003cac:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003cb0:	001535cd 	or	$r13,$r14,$r13
1c003cb4:	2980018d 	st.w	$r13,$r12,0
1c003cb8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003cbc:	03800d8c 	ori	$r12,$r12,0x3
1c003cc0:	2a00018c 	ld.bu	$r12,$r12,0
1c003cc4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003cc8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003ccc:	03800d8c 	ori	$r12,$r12,0x3
1c003cd0:	038005ad 	ori	$r13,$r13,0x1
1c003cd4:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003cd8:	2900018d 	st.b	$r13,$r12,0
1c003cdc:	03400000 	andi	$r0,$r0,0x0
1c003ce0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003ce4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003ce8:	4c000020 	jirl	$r0,$r1,0

1c003cec <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c003cec:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003cf0:	29803061 	st.w	$r1,$r3,12(0xc)
1c003cf4:	29802076 	st.w	$r22,$r3,8(0x8)
1c003cf8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003cfc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003d00:	02a130c6 	addi.w	$r6,$r6,-1972(0x84c)
1c003d04:	02804805 	addi.w	$r5,$r0,18(0x12)
1c003d08:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003d0c:	029a9084 	addi.w	$r4,$r4,1700(0x6a4)
1c003d10:	57de87ff 	bl	-8572(0xfffde84) # 1c001b94 <myprintf>
1c003d14:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003d18:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003d1c:	03808184 	ori	$r4,$r12,0x20
1c003d20:	57f883ff 	bl	-1920(0xffff880) # 1c0035a0 <EXTI_ClearITPendingBit>
1c003d24:	03400000 	andi	$r0,$r0,0x0
1c003d28:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003d2c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003d30:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003d34:	4c000020 	jirl	$r0,$r1,0

1c003d38 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c003d38:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003d3c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003d40:	29802076 	st.w	$r22,$r3,8(0x8)
1c003d44:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003d48:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003d4c:	02a060c6 	addi.w	$r6,$r6,-2024(0x818)
1c003d50:	02805c05 	addi.w	$r5,$r0,23(0x17)
1c003d54:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003d58:	02996084 	addi.w	$r4,$r4,1624(0x658)
1c003d5c:	57de3bff 	bl	-8648(0xfffde38) # 1c001b94 <myprintf>
1c003d60:	02800805 	addi.w	$r5,$r0,2(0x2)
1c003d64:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003d68:	03808184 	ori	$r4,$r12,0x20
1c003d6c:	57f837ff 	bl	-1996(0xffff834) # 1c0035a0 <EXTI_ClearITPendingBit>
1c003d70:	03400000 	andi	$r0,$r0,0x0
1c003d74:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003d78:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003d7c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003d80:	4c000020 	jirl	$r0,$r1,0

1c003d84 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c003d84:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003d88:	29803061 	st.w	$r1,$r3,12(0xc)
1c003d8c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003d90:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003d94:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003d98:	029f90c6 	addi.w	$r6,$r6,2020(0x7e4)
1c003d9c:	02807005 	addi.w	$r5,$r0,28(0x1c)
1c003da0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003da4:	02983084 	addi.w	$r4,$r4,1548(0x60c)
1c003da8:	57ddefff 	bl	-8724(0xfffddec) # 1c001b94 <myprintf>
1c003dac:	02801005 	addi.w	$r5,$r0,4(0x4)
1c003db0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003db4:	03808184 	ori	$r4,$r12,0x20
1c003db8:	57f7ebff 	bl	-2072(0xffff7e8) # 1c0035a0 <EXTI_ClearITPendingBit>
1c003dbc:	03400000 	andi	$r0,$r0,0x0
1c003dc0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003dc4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003dc8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003dcc:	4c000020 	jirl	$r0,$r1,0

1c003dd0 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c003dd0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003dd4:	29803061 	st.w	$r1,$r3,12(0xc)
1c003dd8:	29802076 	st.w	$r22,$r3,8(0x8)
1c003ddc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003de0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003de4:	029ec0c6 	addi.w	$r6,$r6,1968(0x7b0)
1c003de8:	02808405 	addi.w	$r5,$r0,33(0x21)
1c003dec:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003df0:	02970084 	addi.w	$r4,$r4,1472(0x5c0)
1c003df4:	57dda3ff 	bl	-8800(0xfffdda0) # 1c001b94 <myprintf>
1c003df8:	02802005 	addi.w	$r5,$r0,8(0x8)
1c003dfc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003e00:	03808184 	ori	$r4,$r12,0x20
1c003e04:	57f79fff 	bl	-2148(0xffff79c) # 1c0035a0 <EXTI_ClearITPendingBit>
1c003e08:	03400000 	andi	$r0,$r0,0x0
1c003e0c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003e10:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003e14:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003e18:	4c000020 	jirl	$r0,$r1,0

1c003e1c <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c003e1c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003e20:	29803061 	st.w	$r1,$r3,12(0xc)
1c003e24:	29802076 	st.w	$r22,$r3,8(0x8)
1c003e28:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003e2c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003e30:	029df0c6 	addi.w	$r6,$r6,1916(0x77c)
1c003e34:	02809805 	addi.w	$r5,$r0,38(0x26)
1c003e38:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003e3c:	0295d084 	addi.w	$r4,$r4,1396(0x574)
1c003e40:	57dd57ff 	bl	-8876(0xfffdd54) # 1c001b94 <myprintf>
1c003e44:	02804005 	addi.w	$r5,$r0,16(0x10)
1c003e48:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003e4c:	03808184 	ori	$r4,$r12,0x20
1c003e50:	57f753ff 	bl	-2224(0xffff750) # 1c0035a0 <EXTI_ClearITPendingBit>
1c003e54:	03400000 	andi	$r0,$r0,0x0
1c003e58:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003e5c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003e60:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003e64:	4c000020 	jirl	$r0,$r1,0

1c003e68 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c003e68:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003e6c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003e70:	29802076 	st.w	$r22,$r3,8(0x8)
1c003e74:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003e78:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003e7c:	029d20c6 	addi.w	$r6,$r6,1864(0x748)
1c003e80:	0280ac05 	addi.w	$r5,$r0,43(0x2b)
1c003e84:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003e88:	0294a084 	addi.w	$r4,$r4,1320(0x528)
1c003e8c:	57dd0bff 	bl	-8952(0xfffdd08) # 1c001b94 <myprintf>
1c003e90:	02808005 	addi.w	$r5,$r0,32(0x20)
1c003e94:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003e98:	03808184 	ori	$r4,$r12,0x20
1c003e9c:	57f707ff 	bl	-2300(0xffff704) # 1c0035a0 <EXTI_ClearITPendingBit>
1c003ea0:	03400000 	andi	$r0,$r0,0x0
1c003ea4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003ea8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003eac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003eb0:	4c000020 	jirl	$r0,$r1,0

1c003eb4 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c003eb4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003eb8:	29803061 	st.w	$r1,$r3,12(0xc)
1c003ebc:	29802076 	st.w	$r22,$r3,8(0x8)
1c003ec0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003ec4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003ec8:	029c50c6 	addi.w	$r6,$r6,1812(0x714)
1c003ecc:	0280c005 	addi.w	$r5,$r0,48(0x30)
1c003ed0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003ed4:	02937084 	addi.w	$r4,$r4,1244(0x4dc)
1c003ed8:	57dcbfff 	bl	-9028(0xfffdcbc) # 1c001b94 <myprintf>
1c003edc:	02810005 	addi.w	$r5,$r0,64(0x40)
1c003ee0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003ee4:	03808184 	ori	$r4,$r12,0x20
1c003ee8:	57f6bbff 	bl	-2376(0xffff6b8) # 1c0035a0 <EXTI_ClearITPendingBit>
1c003eec:	03400000 	andi	$r0,$r0,0x0
1c003ef0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003ef4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003ef8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003efc:	4c000020 	jirl	$r0,$r1,0

1c003f00 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c003f00:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003f04:	29803061 	st.w	$r1,$r3,12(0xc)
1c003f08:	29802076 	st.w	$r22,$r3,8(0x8)
1c003f0c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003f10:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003f14:	029b80c6 	addi.w	$r6,$r6,1760(0x6e0)
1c003f18:	0280d405 	addi.w	$r5,$r0,53(0x35)
1c003f1c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003f20:	02924084 	addi.w	$r4,$r4,1168(0x490)
1c003f24:	57dc73ff 	bl	-9104(0xfffdc70) # 1c001b94 <myprintf>
1c003f28:	02820005 	addi.w	$r5,$r0,128(0x80)
1c003f2c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003f30:	03808184 	ori	$r4,$r12,0x20
1c003f34:	57f66fff 	bl	-2452(0xffff66c) # 1c0035a0 <EXTI_ClearITPendingBit>
1c003f38:	03400000 	andi	$r0,$r0,0x0
1c003f3c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003f40:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003f44:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003f48:	4c000020 	jirl	$r0,$r1,0

1c003f4c <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c003f4c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003f50:	29803061 	st.w	$r1,$r3,12(0xc)
1c003f54:	29802076 	st.w	$r22,$r3,8(0x8)
1c003f58:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003f5c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003f60:	029ab0c6 	addi.w	$r6,$r6,1708(0x6ac)
1c003f64:	0280e805 	addi.w	$r5,$r0,58(0x3a)
1c003f68:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003f6c:	02911084 	addi.w	$r4,$r4,1092(0x444)
1c003f70:	57dc27ff 	bl	-9180(0xfffdc24) # 1c001b94 <myprintf>
1c003f74:	02840005 	addi.w	$r5,$r0,256(0x100)
1c003f78:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003f7c:	03808184 	ori	$r4,$r12,0x20
1c003f80:	57f623ff 	bl	-2528(0xffff620) # 1c0035a0 <EXTI_ClearITPendingBit>
1c003f84:	03400000 	andi	$r0,$r0,0x0
1c003f88:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003f8c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003f90:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003f94:	4c000020 	jirl	$r0,$r1,0

1c003f98 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c003f98:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003f9c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003fa0:	29802076 	st.w	$r22,$r3,8(0x8)
1c003fa4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003fa8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003fac:	0299e0c6 	addi.w	$r6,$r6,1656(0x678)
1c003fb0:	0280fc05 	addi.w	$r5,$r0,63(0x3f)
1c003fb4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003fb8:	028fe084 	addi.w	$r4,$r4,1016(0x3f8)
1c003fbc:	57dbdbff 	bl	-9256(0xfffdbd8) # 1c001b94 <myprintf>
1c003fc0:	02880005 	addi.w	$r5,$r0,512(0x200)
1c003fc4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003fc8:	03808184 	ori	$r4,$r12,0x20
1c003fcc:	57f5d7ff 	bl	-2604(0xffff5d4) # 1c0035a0 <EXTI_ClearITPendingBit>
1c003fd0:	03400000 	andi	$r0,$r0,0x0
1c003fd4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003fd8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003fdc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003fe0:	4c000020 	jirl	$r0,$r1,0

1c003fe4 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c003fe4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003fe8:	29803061 	st.w	$r1,$r3,12(0xc)
1c003fec:	29802076 	st.w	$r22,$r3,8(0x8)
1c003ff0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003ff4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003ff8:	029910c6 	addi.w	$r6,$r6,1604(0x644)
1c003ffc:	02811005 	addi.w	$r5,$r0,68(0x44)
1c004000:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004004:	028eb084 	addi.w	$r4,$r4,940(0x3ac)
1c004008:	57db8fff 	bl	-9332(0xfffdb8c) # 1c001b94 <myprintf>
1c00400c:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c004010:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004014:	03808184 	ori	$r4,$r12,0x20
1c004018:	57f58bff 	bl	-2680(0xffff588) # 1c0035a0 <EXTI_ClearITPendingBit>
1c00401c:	03400000 	andi	$r0,$r0,0x0
1c004020:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004024:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004028:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00402c:	4c000020 	jirl	$r0,$r1,0

1c004030 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c004030:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004034:	29803061 	st.w	$r1,$r3,12(0xc)
1c004038:	29802076 	st.w	$r22,$r3,8(0x8)
1c00403c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004040:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004044:	029840c6 	addi.w	$r6,$r6,1552(0x610)
1c004048:	02812405 	addi.w	$r5,$r0,73(0x49)
1c00404c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004050:	028d8084 	addi.w	$r4,$r4,864(0x360)
1c004054:	57db43ff 	bl	-9408(0xfffdb40) # 1c001b94 <myprintf>
1c004058:	03a00005 	ori	$r5,$r0,0x800
1c00405c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004060:	03808184 	ori	$r4,$r12,0x20
1c004064:	57f53fff 	bl	-2756(0xffff53c) # 1c0035a0 <EXTI_ClearITPendingBit>
1c004068:	03400000 	andi	$r0,$r0,0x0
1c00406c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004070:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004074:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004078:	4c000020 	jirl	$r0,$r1,0

1c00407c <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c00407c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004080:	29803061 	st.w	$r1,$r3,12(0xc)
1c004084:	29802076 	st.w	$r22,$r3,8(0x8)
1c004088:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00408c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004090:	029770c6 	addi.w	$r6,$r6,1500(0x5dc)
1c004094:	02813805 	addi.w	$r5,$r0,78(0x4e)
1c004098:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00409c:	028c5084 	addi.w	$r4,$r4,788(0x314)
1c0040a0:	57daf7ff 	bl	-9484(0xfffdaf4) # 1c001b94 <myprintf>
1c0040a4:	14000025 	lu12i.w	$r5,1(0x1)
1c0040a8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0040ac:	03808184 	ori	$r4,$r12,0x20
1c0040b0:	57f4f3ff 	bl	-2832(0xffff4f0) # 1c0035a0 <EXTI_ClearITPendingBit>
1c0040b4:	03400000 	andi	$r0,$r0,0x0
1c0040b8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0040bc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0040c0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0040c4:	4c000020 	jirl	$r0,$r1,0

1c0040c8 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c0040c8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0040cc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0040d0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0040d4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0040d8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0040dc:	0296a0c6 	addi.w	$r6,$r6,1448(0x5a8)
1c0040e0:	02814c05 	addi.w	$r5,$r0,83(0x53)
1c0040e4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0040e8:	028b2084 	addi.w	$r4,$r4,712(0x2c8)
1c0040ec:	57daabff 	bl	-9560(0xfffdaa8) # 1c001b94 <myprintf>
1c0040f0:	14000045 	lu12i.w	$r5,2(0x2)
1c0040f4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0040f8:	03808184 	ori	$r4,$r12,0x20
1c0040fc:	57f4a7ff 	bl	-2908(0xffff4a4) # 1c0035a0 <EXTI_ClearITPendingBit>
1c004100:	03400000 	andi	$r0,$r0,0x0
1c004104:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004108:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00410c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004110:	4c000020 	jirl	$r0,$r1,0

1c004114 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c004114:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004118:	29803061 	st.w	$r1,$r3,12(0xc)
1c00411c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004120:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004124:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004128:	0295d0c6 	addi.w	$r6,$r6,1396(0x574)
1c00412c:	02816005 	addi.w	$r5,$r0,88(0x58)
1c004130:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004134:	0289f084 	addi.w	$r4,$r4,636(0x27c)
1c004138:	57da5fff 	bl	-9636(0xfffda5c) # 1c001b94 <myprintf>
1c00413c:	14000085 	lu12i.w	$r5,4(0x4)
1c004140:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004144:	03808184 	ori	$r4,$r12,0x20
1c004148:	57f45bff 	bl	-2984(0xffff458) # 1c0035a0 <EXTI_ClearITPendingBit>
1c00414c:	03400000 	andi	$r0,$r0,0x0
1c004150:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004154:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004158:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00415c:	4c000020 	jirl	$r0,$r1,0

1c004160 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c004160:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004164:	29803061 	st.w	$r1,$r3,12(0xc)
1c004168:	29802076 	st.w	$r22,$r3,8(0x8)
1c00416c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004170:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004174:	029500c6 	addi.w	$r6,$r6,1344(0x540)
1c004178:	02817405 	addi.w	$r5,$r0,93(0x5d)
1c00417c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004180:	0288c084 	addi.w	$r4,$r4,560(0x230)
1c004184:	57da13ff 	bl	-9712(0xfffda10) # 1c001b94 <myprintf>
1c004188:	14000105 	lu12i.w	$r5,8(0x8)
1c00418c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004190:	03808184 	ori	$r4,$r12,0x20
1c004194:	57f40fff 	bl	-3060(0xffff40c) # 1c0035a0 <EXTI_ClearITPendingBit>
1c004198:	03400000 	andi	$r0,$r0,0x0
1c00419c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0041a0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0041a4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0041a8:	4c000020 	jirl	$r0,$r1,0

1c0041ac <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c0041ac:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0041b0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0041b4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0041b8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0041bc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0041c0:	029430c6 	addi.w	$r6,$r6,1292(0x50c)
1c0041c4:	02818c05 	addi.w	$r5,$r0,99(0x63)
1c0041c8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0041cc:	02879084 	addi.w	$r4,$r4,484(0x1e4)
1c0041d0:	57d9c7ff 	bl	-9788(0xfffd9c4) # 1c001b94 <myprintf>
1c0041d4:	14000205 	lu12i.w	$r5,16(0x10)
1c0041d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0041dc:	03808184 	ori	$r4,$r12,0x20
1c0041e0:	57f3c3ff 	bl	-3136(0xffff3c0) # 1c0035a0 <EXTI_ClearITPendingBit>
1c0041e4:	03400000 	andi	$r0,$r0,0x0
1c0041e8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0041ec:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0041f0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0041f4:	4c000020 	jirl	$r0,$r1,0

1c0041f8 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c0041f8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0041fc:	29803061 	st.w	$r1,$r3,12(0xc)
1c004200:	29802076 	st.w	$r22,$r3,8(0x8)
1c004204:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004208:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00420c:	029360c6 	addi.w	$r6,$r6,1240(0x4d8)
1c004210:	0281a005 	addi.w	$r5,$r0,104(0x68)
1c004214:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004218:	02866084 	addi.w	$r4,$r4,408(0x198)
1c00421c:	57d97bff 	bl	-9864(0xfffd978) # 1c001b94 <myprintf>
1c004220:	14000405 	lu12i.w	$r5,32(0x20)
1c004224:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004228:	03808184 	ori	$r4,$r12,0x20
1c00422c:	57f377ff 	bl	-3212(0xffff374) # 1c0035a0 <EXTI_ClearITPendingBit>
1c004230:	03400000 	andi	$r0,$r0,0x0
1c004234:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004238:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00423c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004240:	4c000020 	jirl	$r0,$r1,0

1c004244 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c004244:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004248:	29803061 	st.w	$r1,$r3,12(0xc)
1c00424c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004250:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004254:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004258:	029290c6 	addi.w	$r6,$r6,1188(0x4a4)
1c00425c:	0281b405 	addi.w	$r5,$r0,109(0x6d)
1c004260:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004264:	02853084 	addi.w	$r4,$r4,332(0x14c)
1c004268:	57d92fff 	bl	-9940(0xfffd92c) # 1c001b94 <myprintf>
1c00426c:	14000805 	lu12i.w	$r5,64(0x40)
1c004270:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004274:	03808184 	ori	$r4,$r12,0x20
1c004278:	57f32bff 	bl	-3288(0xffff328) # 1c0035a0 <EXTI_ClearITPendingBit>
1c00427c:	03400000 	andi	$r0,$r0,0x0
1c004280:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004284:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004288:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00428c:	4c000020 	jirl	$r0,$r1,0

1c004290 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c004290:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004294:	29803061 	st.w	$r1,$r3,12(0xc)
1c004298:	29802076 	st.w	$r22,$r3,8(0x8)
1c00429c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0042a0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0042a4:	0291c0c6 	addi.w	$r6,$r6,1136(0x470)
1c0042a8:	0281c805 	addi.w	$r5,$r0,114(0x72)
1c0042ac:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0042b0:	02840084 	addi.w	$r4,$r4,256(0x100)
1c0042b4:	57d8e3ff 	bl	-10016(0xfffd8e0) # 1c001b94 <myprintf>
1c0042b8:	14001005 	lu12i.w	$r5,128(0x80)
1c0042bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0042c0:	03808184 	ori	$r4,$r12,0x20
1c0042c4:	57f2dfff 	bl	-3364(0xffff2dc) # 1c0035a0 <EXTI_ClearITPendingBit>
1c0042c8:	03400000 	andi	$r0,$r0,0x0
1c0042cc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0042d0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0042d4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0042d8:	4c000020 	jirl	$r0,$r1,0

1c0042dc <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c0042dc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0042e0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0042e4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0042e8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0042ec:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0042f0:	0290f0c6 	addi.w	$r6,$r6,1084(0x43c)
1c0042f4:	0281dc05 	addi.w	$r5,$r0,119(0x77)
1c0042f8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0042fc:	0282d084 	addi.w	$r4,$r4,180(0xb4)
1c004300:	57d897ff 	bl	-10092(0xfffd894) # 1c001b94 <myprintf>
1c004304:	14002005 	lu12i.w	$r5,256(0x100)
1c004308:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00430c:	03808184 	ori	$r4,$r12,0x20
1c004310:	57f293ff 	bl	-3440(0xffff290) # 1c0035a0 <EXTI_ClearITPendingBit>
1c004314:	03400000 	andi	$r0,$r0,0x0
1c004318:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00431c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004320:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004324:	4c000020 	jirl	$r0,$r1,0

1c004328 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c004328:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00432c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004330:	29802076 	st.w	$r22,$r3,8(0x8)
1c004334:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004338:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00433c:	029020c6 	addi.w	$r6,$r6,1032(0x408)
1c004340:	0281f005 	addi.w	$r5,$r0,124(0x7c)
1c004344:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004348:	0281a084 	addi.w	$r4,$r4,104(0x68)
1c00434c:	57d84bff 	bl	-10168(0xfffd848) # 1c001b94 <myprintf>
1c004350:	14004005 	lu12i.w	$r5,512(0x200)
1c004354:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004358:	03808184 	ori	$r4,$r12,0x20
1c00435c:	57f247ff 	bl	-3516(0xffff244) # 1c0035a0 <EXTI_ClearITPendingBit>
1c004360:	03400000 	andi	$r0,$r0,0x0
1c004364:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004368:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00436c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004370:	4c000020 	jirl	$r0,$r1,0

1c004374 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c004374:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004378:	29803061 	st.w	$r1,$r3,12(0xc)
1c00437c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004380:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004384:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004388:	028f50c6 	addi.w	$r6,$r6,980(0x3d4)
1c00438c:	02820405 	addi.w	$r5,$r0,129(0x81)
1c004390:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004394:	02807084 	addi.w	$r4,$r4,28(0x1c)
1c004398:	57d7ffff 	bl	-10244(0xfffd7fc) # 1c001b94 <myprintf>
1c00439c:	14008005 	lu12i.w	$r5,1024(0x400)
1c0043a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0043a4:	03808184 	ori	$r4,$r12,0x20
1c0043a8:	57f1fbff 	bl	-3592(0xffff1f8) # 1c0035a0 <EXTI_ClearITPendingBit>
1c0043ac:	03400000 	andi	$r0,$r0,0x0
1c0043b0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0043b4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0043b8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0043bc:	4c000020 	jirl	$r0,$r1,0

1c0043c0 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c0043c0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0043c4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0043c8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0043cc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0043d0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0043d4:	028e80c6 	addi.w	$r6,$r6,928(0x3a0)
1c0043d8:	02821805 	addi.w	$r5,$r0,134(0x86)
1c0043dc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0043e0:	02bf4084 	addi.w	$r4,$r4,-48(0xfd0)
1c0043e4:	57d7b3ff 	bl	-10320(0xfffd7b0) # 1c001b94 <myprintf>
1c0043e8:	14010005 	lu12i.w	$r5,2048(0x800)
1c0043ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0043f0:	03808184 	ori	$r4,$r12,0x20
1c0043f4:	57f1afff 	bl	-3668(0xffff1ac) # 1c0035a0 <EXTI_ClearITPendingBit>
1c0043f8:	03400000 	andi	$r0,$r0,0x0
1c0043fc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004400:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004404:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004408:	4c000020 	jirl	$r0,$r1,0

1c00440c <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c00440c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004410:	29803061 	st.w	$r1,$r3,12(0xc)
1c004414:	29802076 	st.w	$r22,$r3,8(0x8)
1c004418:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00441c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004420:	028db0c6 	addi.w	$r6,$r6,876(0x36c)
1c004424:	02822c05 	addi.w	$r5,$r0,139(0x8b)
1c004428:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00442c:	02be1084 	addi.w	$r4,$r4,-124(0xf84)
1c004430:	57d767ff 	bl	-10396(0xfffd764) # 1c001b94 <myprintf>
1c004434:	14020005 	lu12i.w	$r5,4096(0x1000)
1c004438:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00443c:	03808184 	ori	$r4,$r12,0x20
1c004440:	57f163ff 	bl	-3744(0xffff160) # 1c0035a0 <EXTI_ClearITPendingBit>
1c004444:	03400000 	andi	$r0,$r0,0x0
1c004448:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00444c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004450:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004454:	4c000020 	jirl	$r0,$r1,0

1c004458 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c004458:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00445c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004460:	29802076 	st.w	$r22,$r3,8(0x8)
1c004464:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004468:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00446c:	028ce0c6 	addi.w	$r6,$r6,824(0x338)
1c004470:	02824005 	addi.w	$r5,$r0,144(0x90)
1c004474:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004478:	02bce084 	addi.w	$r4,$r4,-200(0xf38)
1c00447c:	57d71bff 	bl	-10472(0xfffd718) # 1c001b94 <myprintf>
1c004480:	14040005 	lu12i.w	$r5,8192(0x2000)
1c004484:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004488:	03808184 	ori	$r4,$r12,0x20
1c00448c:	57f117ff 	bl	-3820(0xffff114) # 1c0035a0 <EXTI_ClearITPendingBit>
1c004490:	03400000 	andi	$r0,$r0,0x0
1c004494:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004498:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00449c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0044a0:	4c000020 	jirl	$r0,$r1,0

1c0044a4 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c0044a4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0044a8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0044ac:	29802076 	st.w	$r22,$r3,8(0x8)
1c0044b0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0044b4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0044b8:	028c10c6 	addi.w	$r6,$r6,772(0x304)
1c0044bc:	02825405 	addi.w	$r5,$r0,149(0x95)
1c0044c0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0044c4:	02bbb084 	addi.w	$r4,$r4,-276(0xeec)
1c0044c8:	57d6cfff 	bl	-10548(0xfffd6cc) # 1c001b94 <myprintf>
1c0044cc:	14080005 	lu12i.w	$r5,16384(0x4000)
1c0044d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0044d4:	03808184 	ori	$r4,$r12,0x20
1c0044d8:	57f0cbff 	bl	-3896(0xffff0c8) # 1c0035a0 <EXTI_ClearITPendingBit>
1c0044dc:	03400000 	andi	$r0,$r0,0x0
1c0044e0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0044e4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0044e8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0044ec:	4c000020 	jirl	$r0,$r1,0

1c0044f0 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c0044f0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0044f4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0044f8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0044fc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004500:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004504:	028b40c6 	addi.w	$r6,$r6,720(0x2d0)
1c004508:	02826805 	addi.w	$r5,$r0,154(0x9a)
1c00450c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004510:	02ba8084 	addi.w	$r4,$r4,-352(0xea0)
1c004514:	57d683ff 	bl	-10624(0xfffd680) # 1c001b94 <myprintf>
1c004518:	14100005 	lu12i.w	$r5,32768(0x8000)
1c00451c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004520:	03808184 	ori	$r4,$r12,0x20
1c004524:	57f07fff 	bl	-3972(0xffff07c) # 1c0035a0 <EXTI_ClearITPendingBit>
1c004528:	03400000 	andi	$r0,$r0,0x0
1c00452c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004530:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004534:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004538:	4c000020 	jirl	$r0,$r1,0

1c00453c <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c00453c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004540:	29803061 	st.w	$r1,$r3,12(0xc)
1c004544:	29802076 	st.w	$r22,$r3,8(0x8)
1c004548:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00454c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004550:	028a70c6 	addi.w	$r6,$r6,668(0x29c)
1c004554:	02827c05 	addi.w	$r5,$r0,159(0x9f)
1c004558:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00455c:	02b95084 	addi.w	$r4,$r4,-428(0xe54)
1c004560:	57d637ff 	bl	-10700(0xfffd634) # 1c001b94 <myprintf>
1c004564:	14200005 	lu12i.w	$r5,65536(0x10000)
1c004568:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00456c:	03808184 	ori	$r4,$r12,0x20
1c004570:	57f033ff 	bl	-4048(0xffff030) # 1c0035a0 <EXTI_ClearITPendingBit>
1c004574:	03400000 	andi	$r0,$r0,0x0
1c004578:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00457c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004580:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004584:	4c000020 	jirl	$r0,$r1,0

1c004588 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c004588:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00458c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004590:	29802076 	st.w	$r22,$r3,8(0x8)
1c004594:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004598:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00459c:	0289a0c6 	addi.w	$r6,$r6,616(0x268)
1c0045a0:	02829405 	addi.w	$r5,$r0,165(0xa5)
1c0045a4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0045a8:	02b82084 	addi.w	$r4,$r4,-504(0xe08)
1c0045ac:	57d5ebff 	bl	-10776(0xfffd5e8) # 1c001b94 <myprintf>
1c0045b0:	14400005 	lu12i.w	$r5,131072(0x20000)
1c0045b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0045b8:	03808184 	ori	$r4,$r12,0x20
1c0045bc:	57efe7ff 	bl	-4124(0xfffefe4) # 1c0035a0 <EXTI_ClearITPendingBit>
1c0045c0:	03400000 	andi	$r0,$r0,0x0
1c0045c4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0045c8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0045cc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0045d0:	4c000020 	jirl	$r0,$r1,0

1c0045d4 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c0045d4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045d8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045dc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045e0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045e4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0045e8:	0288d0c6 	addi.w	$r6,$r6,564(0x234)
1c0045ec:	0282a805 	addi.w	$r5,$r0,170(0xaa)
1c0045f0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0045f4:	02b6f084 	addi.w	$r4,$r4,-580(0xdbc)
1c0045f8:	57d59fff 	bl	-10852(0xfffd59c) # 1c001b94 <myprintf>
1c0045fc:	14800005 	lu12i.w	$r5,262144(0x40000)
1c004600:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004604:	03808184 	ori	$r4,$r12,0x20
1c004608:	57ef9bff 	bl	-4200(0xfffef98) # 1c0035a0 <EXTI_ClearITPendingBit>
1c00460c:	03400000 	andi	$r0,$r0,0x0
1c004610:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004614:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004618:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00461c:	4c000020 	jirl	$r0,$r1,0

1c004620 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c004620:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004624:	29803061 	st.w	$r1,$r3,12(0xc)
1c004628:	29802076 	st.w	$r22,$r3,8(0x8)
1c00462c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004630:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004634:	028800c6 	addi.w	$r6,$r6,512(0x200)
1c004638:	0282bc05 	addi.w	$r5,$r0,175(0xaf)
1c00463c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004640:	02b5c084 	addi.w	$r4,$r4,-656(0xd70)
1c004644:	57d553ff 	bl	-10928(0xfffd550) # 1c001b94 <myprintf>
1c004648:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c00464c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004650:	03808184 	ori	$r4,$r12,0x20
1c004654:	57ef4fff 	bl	-4276(0xfffef4c) # 1c0035a0 <EXTI_ClearITPendingBit>
1c004658:	03400000 	andi	$r0,$r0,0x0
1c00465c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004660:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004664:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004668:	4c000020 	jirl	$r0,$r1,0

1c00466c <ext_handler>:
ext_handler():
1c00466c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004670:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004674:	29806076 	st.w	$r22,$r3,24(0x18)
1c004678:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00467c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004680:	0380f18c 	ori	$r12,$r12,0x3c
1c004684:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c004688:	2980018d 	st.w	$r13,$r12,0
1c00468c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004690:	0380818c 	ori	$r12,$r12,0x20
1c004694:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c004698:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00469c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0046a0:	0380818c 	ori	$r12,$r12,0x20
1c0046a4:	2880018c 	ld.w	$r12,$r12,0
1c0046a8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0046ac:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0046b0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0046b4:	0014b1ac 	and	$r12,$r13,$r12
1c0046b8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0046bc:	03400000 	andi	$r0,$r0,0x0
1c0046c0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0046c4:	50004000 	b	64(0x40) # 1c004704 <ext_handler+0x98>
1c0046c8:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0046cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0046d0:	0017b1ac 	srl.w	$r12,$r13,$r12
1c0046d4:	0340058c 	andi	$r12,$r12,0x1
1c0046d8:	40002180 	beqz	$r12,32(0x20) # 1c0046f8 <ext_handler+0x8c>
1c0046dc:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c0046e0:	02b6a1ad 	addi.w	$r13,$r13,-600(0xda8)
1c0046e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0046e8:	0040898c 	slli.w	$r12,$r12,0x2
1c0046ec:	001031ac 	add.w	$r12,$r13,$r12
1c0046f0:	2880018c 	ld.w	$r12,$r12,0
1c0046f4:	4c000181 	jirl	$r1,$r12,0
1c0046f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0046fc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004700:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004704:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004708:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c00470c:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c0046c8 <ext_handler+0x5c>
1c004710:	03400000 	andi	$r0,$r0,0x0
1c004714:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004718:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00471c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004720:	4c000020 	jirl	$r0,$r1,0

1c004724 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c004724:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004728:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00472c:	29806076 	st.w	$r22,$r3,24(0x18)
1c004730:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004734:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004738:	0380f18c 	ori	$r12,$r12,0x3c
1c00473c:	1400020d 	lu12i.w	$r13,16(0x10)
1c004740:	2980018d 	st.w	$r13,$r12,0
1c004744:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004748:	0380118c 	ori	$r12,$r12,0x4
1c00474c:	2880018c 	ld.w	$r12,$r12,0
1c004750:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004754:	57ef9fff 	bl	-4196(0xfffef9c) # 1c0036f0 <WDG_DogFeed>
1c004758:	03400000 	andi	$r0,$r0,0x0
1c00475c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004760:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004764:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004768:	4c000020 	jirl	$r0,$r1,0

1c00476c <TOUCH>:
TOUCH():
1c00476c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004770:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004774:	29806076 	st.w	$r22,$r3,24(0x18)
1c004778:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00477c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004780:	0380118c 	ori	$r12,$r12,0x4
1c004784:	2880018c 	ld.w	$r12,$r12,0
1c004788:	0044c18c 	srli.w	$r12,$r12,0x10
1c00478c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004790:	037ffd8c 	andi	$r12,$r12,0xfff
1c004794:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c004798:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00479c:	0380118c 	ori	$r12,$r12,0x4
1c0047a0:	2880018c 	ld.w	$r12,$r12,0
1c0047a4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0047a8:	03403d8c 	andi	$r12,$r12,0xf
1c0047ac:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c0047b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0047b4:	0380f18c 	ori	$r12,$r12,0x3c
1c0047b8:	1400040d 	lu12i.w	$r13,32(0x20)
1c0047bc:	2980018d 	st.w	$r13,$r12,0
1c0047c0:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0047c4:	0380118c 	ori	$r12,$r12,0x4
1c0047c8:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c0047cc:	2980018d 	st.w	$r13,$r12,0
1c0047d0:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c0047d4:	00150184 	move	$r4,$r12
1c0047d8:	57f18fff 	bl	-3700(0xffff18c) # 1c003964 <Printf_KeyType>
1c0047dc:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0047e0:	00150184 	move	$r4,$r12
1c0047e4:	57f107ff 	bl	-3836(0xffff104) # 1c0038e8 <Printf_KeyChannel>
1c0047e8:	57f20bff 	bl	-3576(0xffff208) # 1c0039f0 <Printf_KeyVal>
1c0047ec:	03400000 	andi	$r0,$r0,0x0
1c0047f0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0047f4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0047f8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0047fc:	4c000020 	jirl	$r0,$r1,0

1c004800 <UART2_INT>:
UART2_INT():
1c004800:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004804:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004808:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00480c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004810:	0380f18c 	ori	$r12,$r12,0x3c
1c004814:	1400080d 	lu12i.w	$r13,64(0x40)
1c004818:	2980018d 	st.w	$r13,$r12,0
1c00481c:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c004820:	0380098c 	ori	$r12,$r12,0x2
1c004824:	2a00018c 	ld.bu	$r12,$r12,0
1c004828:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00482c:	03400000 	andi	$r0,$r0,0x0
1c004830:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004834:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004838:	4c000020 	jirl	$r0,$r1,0

1c00483c <BAT_FAIL>:
BAT_FAIL():
1c00483c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004840:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004844:	29806076 	st.w	$r22,$r3,24(0x18)
1c004848:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00484c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004850:	0380118c 	ori	$r12,$r12,0x4
1c004854:	2880018c 	ld.w	$r12,$r12,0
1c004858:	0044cd8c 	srli.w	$r12,$r12,0x13
1c00485c:	03407d8c 	andi	$r12,$r12,0x1f
1c004860:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004864:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004868:	0380118c 	ori	$r12,$r12,0x4
1c00486c:	2880018e 	ld.w	$r14,$r12,0
1c004870:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004874:	0380f18c 	ori	$r12,$r12,0x3c
1c004878:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c00487c:	0014b5cd 	and	$r13,$r14,$r13
1c004880:	2980018d 	st.w	$r13,$r12,0
1c004884:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004888:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00488c:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c0048fc <BAT_FAIL+0xc0>
1c004890:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004894:	0040898d 	slli.w	$r13,$r12,0x2
1c004898:	1c00004c 	pcaddu12i	$r12,2(0x2)
1c00489c:	02b1b18c 	addi.w	$r12,$r12,-916(0xc6c)
1c0048a0:	001031ac 	add.w	$r12,$r13,$r12
1c0048a4:	2880018c 	ld.w	$r12,$r12,0
1c0048a8:	4c000180 	jirl	$r0,$r12,0
1c0048ac:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0048b0:	02ad1084 	addi.w	$r4,$r4,-1212(0xb44)
1c0048b4:	57d2e3ff 	bl	-11552(0xfffd2e0) # 1c001b94 <myprintf>
1c0048b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0048bc:	0380118c 	ori	$r12,$r12,0x4
1c0048c0:	29800180 	st.w	$r0,$r12,0
1c0048c4:	50003c00 	b	60(0x3c) # 1c004900 <BAT_FAIL+0xc4>
1c0048c8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0048cc:	02ad4084 	addi.w	$r4,$r4,-1200(0xb50)
1c0048d0:	57d2c7ff 	bl	-11580(0xfffd2c4) # 1c001b94 <myprintf>
1c0048d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0048d8:	0380118c 	ori	$r12,$r12,0x4
1c0048dc:	2880018e 	ld.w	$r14,$r12,0
1c0048e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0048e4:	0380118c 	ori	$r12,$r12,0x4
1c0048e8:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c0048ec:	03bffdad 	ori	$r13,$r13,0xfff
1c0048f0:	0014b5cd 	and	$r13,$r14,$r13
1c0048f4:	2980018d 	st.w	$r13,$r12,0
1c0048f8:	50000800 	b	8(0x8) # 1c004900 <BAT_FAIL+0xc4>
1c0048fc:	03400000 	andi	$r0,$r0,0x0
1c004900:	03400000 	andi	$r0,$r0,0x0
1c004904:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004908:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00490c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004910:	4c000020 	jirl	$r0,$r1,0

1c004914 <intc_handler>:
intc_handler():
1c004914:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004918:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00491c:	29806076 	st.w	$r22,$r3,24(0x18)
1c004920:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004924:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004928:	0380158c 	ori	$r12,$r12,0x5
1c00492c:	2a00018c 	ld.bu	$r12,$r12,0
1c004930:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004934:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004938:	0340058c 	andi	$r12,$r12,0x1
1c00493c:	40002980 	beqz	$r12,40(0x28) # 1c004964 <intc_handler+0x50>
1c004940:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004944:	57f303ff 	bl	-3328(0xffff300) # 1c003c44 <TIM_GetITStatus>
1c004948:	0015008c 	move	$r12,$r4
1c00494c:	40001980 	beqz	$r12,24(0x18) # 1c004964 <intc_handler+0x50>
1c004950:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004954:	57f33fff 	bl	-3268(0xffff33c) # 1c003c90 <TIM_ClearIT>
1c004958:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00495c:	02ab9084 	addi.w	$r4,$r4,-1308(0xae4)
1c004960:	57d237ff 	bl	-11724(0xfffd234) # 1c001b94 <myprintf>
1c004964:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004968:	0340118c 	andi	$r12,$r12,0x4
1c00496c:	40001580 	beqz	$r12,20(0x14) # 1c004980 <intc_handler+0x6c>
1c004970:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004974:	03800d8c 	ori	$r12,$r12,0x3
1c004978:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c00497c:	2900018d 	st.b	$r13,$r12,0
1c004980:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004984:	0340218c 	andi	$r12,$r12,0x8
1c004988:	40001580 	beqz	$r12,20(0x14) # 1c00499c <intc_handler+0x88>
1c00498c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004990:	03800d8c 	ori	$r12,$r12,0x3
1c004994:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c004998:	2900018d 	st.b	$r13,$r12,0
1c00499c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0049a0:	03800d8c 	ori	$r12,$r12,0x3
1c0049a4:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c0049a8:	2900018d 	st.b	$r13,$r12,0
1c0049ac:	03400000 	andi	$r0,$r0,0x0
1c0049b0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0049b4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0049b8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0049bc:	4c000020 	jirl	$r0,$r1,0

1c0049c0 <TIMER_HANDLER>:
TIMER_HANDLER():
1c0049c0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0049c4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0049c8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0049cc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0049d0:	57e70bff 	bl	-6392(0xfffe708) # 1c0030d8 <Set_Timer_clear>
1c0049d4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0049d8:	02aa4084 	addi.w	$r4,$r4,-1392(0xa90)
1c0049dc:	57d1bbff 	bl	-11848(0xfffd1b8) # 1c001b94 <myprintf>
1c0049e0:	57e6dbff 	bl	-6440(0xfffe6d8) # 1c0030b8 <Set_Timer_stop>
1c0049e4:	03400000 	andi	$r0,$r0,0x0
1c0049e8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0049ec:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0049f0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0049f4:	4c000020 	jirl	$r0,$r1,0

1c0049f8 <main>:
main():
1c0049f8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0049fc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004a00:	29806076 	st.w	$r22,$r3,24(0x18)
1c004a04:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004a08:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004a0c:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c004a10:	57e58fff 	bl	-6772(0xfffe58c) # 1c002f9c <SystemClockInit>
1c004a14:	57c91bff 	bl	-14056(0xfffc918) # 1c00132c <GPIOInit>
1c004a18:	54080000 	bl	2048(0x800) # 1c005218 <LED_Init>
1c004a1c:	5409e400 	bl	2532(0x9e4) # 1c005400 <OLED_Init>
1c004a20:	57e677ff 	bl	-6540(0xfffe674) # 1c003094 <EnableInt>
1c004a24:	57ed2bff 	bl	-4824(0xfffed28) # 1c00374c <Adc_powerOn>
1c004a28:	02801804 	addi.w	$r4,$r0,6(0x6)
1c004a2c:	57ed77ff 	bl	-4748(0xfffed74) # 1c0037a0 <Adc_open>
1c004a30:	03400000 	andi	$r0,$r0,0x0
1c004a34:	5407a400 	bl	1956(0x7a4) # 1c0051d8 <DHT11_Init>
1c004a38:	0015008c 	move	$r12,$r4
1c004a3c:	47fff99f 	bnez	$r12,-8(0x7ffff8) # 1c004a34 <main+0x3c>
1c004a40:	1cc7ff85 	pcaddu12i	$r5,409596(0x63ffc)
1c004a44:	289720a5 	ld.w	$r5,$r5,1480(0x5c8)
1c004a48:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004a4c:	28972084 	ld.w	$r4,$r4,1480(0x5c8)
1c004a50:	54067c00 	bl	1660(0x67c) # 1c0050cc <DHT11_Read_Data>
1c004a54:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004a58:	2896f18c 	ld.w	$r12,$r12,1468(0x5bc)
1c004a5c:	2a40018d 	ld.hu	$r13,$r12,0
1c004a60:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004a64:	002131ae 	div.wu	$r14,$r13,$r12
1c004a68:	5c000980 	bne	$r12,$r0,8(0x8) # 1c004a70 <main+0x78>
1c004a6c:	002a0007 	break	0x7
1c004a70:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c004a74:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004a78:	2896718c 	ld.w	$r12,$r12,1436(0x59c)
1c004a7c:	2940018d 	st.h	$r13,$r12,0
1c004a80:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004a84:	2896218c 	ld.w	$r12,$r12,1416(0x588)
1c004a88:	2a40018d 	ld.hu	$r13,$r12,0
1c004a8c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004a90:	002131ae 	div.wu	$r14,$r13,$r12
1c004a94:	5c000980 	bne	$r12,$r0,8(0x8) # 1c004a9c <main+0xa4>
1c004a98:	002a0007 	break	0x7
1c004a9c:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c004aa0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004aa4:	2895a18c 	ld.w	$r12,$r12,1384(0x568)
1c004aa8:	2940018d 	st.h	$r13,$r12,0
1c004aac:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004ab0:	2895918c 	ld.w	$r12,$r12,1380(0x564)
1c004ab4:	2a40018c 	ld.hu	$r12,$r12,0
1c004ab8:	00150186 	move	$r6,$r12
1c004abc:	1c000045 	pcaddu12i	$r5,2(0x2)
1c004ac0:	02b630a5 	addi.w	$r5,$r5,-628(0xd8c)
1c004ac4:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004ac8:	28954084 	ld.w	$r4,$r4,1360(0x550)
1c004acc:	57da5bff 	bl	-9640(0xfffda58) # 1c002524 <sprintf>
1c004ad0:	02802007 	addi.w	$r7,$r0,8(0x8)
1c004ad4:	1cc7ff86 	pcaddu12i	$r6,409596(0x63ffc)
1c004ad8:	289500c6 	ld.w	$r6,$r6,1344(0x540)
1c004adc:	00150005 	move	$r5,$r0
1c004ae0:	00150004 	move	$r4,$r0
1c004ae4:	540f4c00 	bl	3916(0xf4c) # 1c005a30 <OLED_Show_Str>
1c004ae8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004aec:	2894818c 	ld.w	$r12,$r12,1312(0x520)
1c004af0:	2a40018c 	ld.hu	$r12,$r12,0
1c004af4:	00150186 	move	$r6,$r12
1c004af8:	1c000045 	pcaddu12i	$r5,2(0x2)
1c004afc:	02b580a5 	addi.w	$r5,$r5,-672(0xd60)
1c004b00:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004b04:	28946084 	ld.w	$r4,$r4,1304(0x518)
1c004b08:	57da1fff 	bl	-9700(0xfffda1c) # 1c002524 <sprintf>
1c004b0c:	02802007 	addi.w	$r7,$r0,8(0x8)
1c004b10:	1cc7ff86 	pcaddu12i	$r6,409596(0x63ffc)
1c004b14:	289420c6 	ld.w	$r6,$r6,1288(0x508)
1c004b18:	02800805 	addi.w	$r5,$r0,2(0x2)
1c004b1c:	00150004 	move	$r4,$r0
1c004b20:	540f1000 	bl	3856(0xf10) # 1c005a30 <OLED_Show_Str>
1c004b24:	0015000c 	move	$r12,$r0
1c004b28:	00150184 	move	$r4,$r12
1c004b2c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004b30:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004b34:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004b38:	4c000020 	jirl	$r0,$r1,0

1c004b3c <IIC_Delay>:
IIC_Delay():
1c004b3c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004b40:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004b44:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004b48:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004b4c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004b50:	50001000 	b	16(0x10) # 1c004b60 <IIC_Delay+0x24>
1c004b54:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004b58:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c004b5c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004b60:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004b64:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c004b54 <IIC_Delay+0x18>
1c004b68:	03400000 	andi	$r0,$r0,0x0
1c004b6c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004b70:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004b74:	4c000020 	jirl	$r0,$r1,0

1c004b78 <IIC_Init>:
IIC_Init():
1c004b78:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004b7c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004b80:	29802076 	st.w	$r22,$r3,8(0x8)
1c004b84:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004b88:	00150005 	move	$r5,$r0
1c004b8c:	02801004 	addi.w	$r4,$r0,4(0x4)
1c004b90:	57cac7ff 	bl	-13628(0xfffcac4) # 1c001654 <gpio_pin_remap>
1c004b94:	00150005 	move	$r5,$r0
1c004b98:	02801404 	addi.w	$r4,$r0,5(0x5)
1c004b9c:	57cabbff 	bl	-13640(0xfffcab8) # 1c001654 <gpio_pin_remap>
1c004ba0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004ba4:	02801004 	addi.w	$r4,$r0,4(0x4)
1c004ba8:	57ccbbff 	bl	-13128(0xfffccb8) # 1c001860 <gpio_set_direction>
1c004bac:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004bb0:	02801404 	addi.w	$r4,$r0,5(0x5)
1c004bb4:	57ccafff 	bl	-13140(0xfffccac) # 1c001860 <gpio_set_direction>
1c004bb8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004bbc:	02801004 	addi.w	$r4,$r0,4(0x4)
1c004bc0:	57ca1fff 	bl	-13796(0xfffca1c) # 1c0015dc <gpio_write_pin>
1c004bc4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004bc8:	02801404 	addi.w	$r4,$r0,5(0x5)
1c004bcc:	57ca13ff 	bl	-13808(0xfffca10) # 1c0015dc <gpio_write_pin>
1c004bd0:	03400000 	andi	$r0,$r0,0x0
1c004bd4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004bd8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004bdc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004be0:	4c000020 	jirl	$r0,$r1,0

1c004be4 <SDA_IN>:
SDA_IN():
1c004be4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004be8:	29803061 	st.w	$r1,$r3,12(0xc)
1c004bec:	29802076 	st.w	$r22,$r3,8(0x8)
1c004bf0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004bf4:	00150005 	move	$r5,$r0
1c004bf8:	02801404 	addi.w	$r4,$r0,5(0x5)
1c004bfc:	57cc67ff 	bl	-13212(0xfffcc64) # 1c001860 <gpio_set_direction>
1c004c00:	03400000 	andi	$r0,$r0,0x0
1c004c04:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004c08:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004c0c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004c10:	4c000020 	jirl	$r0,$r1,0

1c004c14 <SDA_OUT>:
SDA_OUT():
1c004c14:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004c18:	29803061 	st.w	$r1,$r3,12(0xc)
1c004c1c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004c20:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004c24:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004c28:	02801404 	addi.w	$r4,$r0,5(0x5)
1c004c2c:	57cc37ff 	bl	-13260(0xfffcc34) # 1c001860 <gpio_set_direction>
1c004c30:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004c34:	02801404 	addi.w	$r4,$r0,5(0x5)
1c004c38:	57c9a7ff 	bl	-13916(0xfffc9a4) # 1c0015dc <gpio_write_pin>
1c004c3c:	03400000 	andi	$r0,$r0,0x0
1c004c40:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004c44:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004c48:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004c4c:	4c000020 	jirl	$r0,$r1,0

1c004c50 <IIC_Start>:
IIC_Start():
1c004c50:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004c54:	29803061 	st.w	$r1,$r3,12(0xc)
1c004c58:	29802076 	st.w	$r22,$r3,8(0x8)
1c004c5c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004c60:	57ffb7ff 	bl	-76(0xfffffb4) # 1c004c14 <SDA_OUT>
1c004c64:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004c68:	02801404 	addi.w	$r4,$r0,5(0x5)
1c004c6c:	57c973ff 	bl	-13968(0xfffc970) # 1c0015dc <gpio_write_pin>
1c004c70:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004c74:	02801004 	addi.w	$r4,$r0,4(0x4)
1c004c78:	57c967ff 	bl	-13980(0xfffc964) # 1c0015dc <gpio_write_pin>
1c004c7c:	57fec3ff 	bl	-320(0xffffec0) # 1c004b3c <IIC_Delay>
1c004c80:	00150005 	move	$r5,$r0
1c004c84:	02801404 	addi.w	$r4,$r0,5(0x5)
1c004c88:	57c957ff 	bl	-13996(0xfffc954) # 1c0015dc <gpio_write_pin>
1c004c8c:	57feb3ff 	bl	-336(0xffffeb0) # 1c004b3c <IIC_Delay>
1c004c90:	00150005 	move	$r5,$r0
1c004c94:	02801004 	addi.w	$r4,$r0,4(0x4)
1c004c98:	57c947ff 	bl	-14012(0xfffc944) # 1c0015dc <gpio_write_pin>
1c004c9c:	03400000 	andi	$r0,$r0,0x0
1c004ca0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004ca4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004ca8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004cac:	4c000020 	jirl	$r0,$r1,0

1c004cb0 <IIC_Stop>:
IIC_Stop():
1c004cb0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004cb4:	29803061 	st.w	$r1,$r3,12(0xc)
1c004cb8:	29802076 	st.w	$r22,$r3,8(0x8)
1c004cbc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004cc0:	57ff57ff 	bl	-172(0xfffff54) # 1c004c14 <SDA_OUT>
1c004cc4:	00150005 	move	$r5,$r0
1c004cc8:	02801004 	addi.w	$r4,$r0,4(0x4)
1c004ccc:	57c913ff 	bl	-14064(0xfffc910) # 1c0015dc <gpio_write_pin>
1c004cd0:	00150005 	move	$r5,$r0
1c004cd4:	02801404 	addi.w	$r4,$r0,5(0x5)
1c004cd8:	57c907ff 	bl	-14076(0xfffc904) # 1c0015dc <gpio_write_pin>
1c004cdc:	57fe63ff 	bl	-416(0xffffe60) # 1c004b3c <IIC_Delay>
1c004ce0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004ce4:	02801004 	addi.w	$r4,$r0,4(0x4)
1c004ce8:	57c8f7ff 	bl	-14092(0xfffc8f4) # 1c0015dc <gpio_write_pin>
1c004cec:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004cf0:	02801404 	addi.w	$r4,$r0,5(0x5)
1c004cf4:	57c8ebff 	bl	-14104(0xfffc8e8) # 1c0015dc <gpio_write_pin>
1c004cf8:	57fe47ff 	bl	-444(0xffffe44) # 1c004b3c <IIC_Delay>
1c004cfc:	03400000 	andi	$r0,$r0,0x0
1c004d00:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004d04:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004d08:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004d0c:	4c000020 	jirl	$r0,$r1,0

1c004d10 <IIC_Wait_Ack>:
IIC_Wait_Ack():
1c004d10:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004d14:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004d18:	29806076 	st.w	$r22,$r3,24(0x18)
1c004d1c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004d20:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004d24:	57fec3ff 	bl	-320(0xffffec0) # 1c004be4 <SDA_IN>
1c004d28:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004d2c:	02801404 	addi.w	$r4,$r0,5(0x5)
1c004d30:	57c8afff 	bl	-14164(0xfffc8ac) # 1c0015dc <gpio_write_pin>
1c004d34:	57fe0bff 	bl	-504(0xffffe08) # 1c004b3c <IIC_Delay>
1c004d38:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004d3c:	02801004 	addi.w	$r4,$r0,4(0x4)
1c004d40:	57c89fff 	bl	-14180(0xfffc89c) # 1c0015dc <gpio_write_pin>
1c004d44:	57fdfbff 	bl	-520(0xffffdf8) # 1c004b3c <IIC_Delay>
1c004d48:	50002800 	b	40(0x28) # 1c004d70 <IIC_Wait_Ack+0x60>
1c004d4c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004d50:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004d54:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004d58:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004d5c:	0283e80c 	addi.w	$r12,$r0,250(0xfa)
1c004d60:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c004d70 <IIC_Wait_Ack+0x60>
1c004d64:	57ff4fff 	bl	-180(0xfffff4c) # 1c004cb0 <IIC_Stop>
1c004d68:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004d6c:	50002400 	b	36(0x24) # 1c004d90 <IIC_Wait_Ack+0x80>
1c004d70:	02801404 	addi.w	$r4,$r0,5(0x5)
1c004d74:	57c81bff 	bl	-14312(0xfffc818) # 1c00158c <gpio_get_pin>
1c004d78:	0015008c 	move	$r12,$r4
1c004d7c:	47ffd19f 	bnez	$r12,-48(0x7fffd0) # 1c004d4c <IIC_Wait_Ack+0x3c>
1c004d80:	00150005 	move	$r5,$r0
1c004d84:	02801004 	addi.w	$r4,$r0,4(0x4)
1c004d88:	57c857ff 	bl	-14252(0xfffc854) # 1c0015dc <gpio_write_pin>
1c004d8c:	0015000c 	move	$r12,$r0
1c004d90:	00150184 	move	$r4,$r12
1c004d94:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004d98:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004d9c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004da0:	4c000020 	jirl	$r0,$r1,0

1c004da4 <IIC_Send_Byte>:
IIC_Send_Byte():
1c004da4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004da8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004dac:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004db0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004db4:	0015008c 	move	$r12,$r4
1c004db8:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c004dbc:	57fe5bff 	bl	-424(0xffffe58) # 1c004c14 <SDA_OUT>
1c004dc0:	00150005 	move	$r5,$r0
1c004dc4:	02801004 	addi.w	$r4,$r0,4(0x4)
1c004dc8:	57c817ff 	bl	-14316(0xfffc814) # 1c0015dc <gpio_write_pin>
1c004dcc:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004dd0:	50006000 	b	96(0x60) # 1c004e30 <IIC_Send_Byte+0x8c>
1c004dd4:	283f7ecc 	ld.b	$r12,$r22,-33(0xfdf)
1c004dd8:	64001580 	bge	$r12,$r0,20(0x14) # 1c004dec <IIC_Send_Byte+0x48>
1c004ddc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004de0:	02801404 	addi.w	$r4,$r0,5(0x5)
1c004de4:	57c7fbff 	bl	-14344(0xfffc7f8) # 1c0015dc <gpio_write_pin>
1c004de8:	50001000 	b	16(0x10) # 1c004df8 <IIC_Send_Byte+0x54>
1c004dec:	00150005 	move	$r5,$r0
1c004df0:	02801404 	addi.w	$r4,$r0,5(0x5)
1c004df4:	57c7ebff 	bl	-14360(0xfffc7e8) # 1c0015dc <gpio_write_pin>
1c004df8:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c004dfc:	0040858c 	slli.w	$r12,$r12,0x1
1c004e00:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c004e04:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004e08:	02801004 	addi.w	$r4,$r0,4(0x4)
1c004e0c:	57c7d3ff 	bl	-14384(0xfffc7d0) # 1c0015dc <gpio_write_pin>
1c004e10:	57fd2fff 	bl	-724(0xffffd2c) # 1c004b3c <IIC_Delay>
1c004e14:	00150005 	move	$r5,$r0
1c004e18:	02801004 	addi.w	$r4,$r0,4(0x4)
1c004e1c:	57c7c3ff 	bl	-14400(0xfffc7c0) # 1c0015dc <gpio_write_pin>
1c004e20:	57fd1fff 	bl	-740(0xffffd1c) # 1c004b3c <IIC_Delay>
1c004e24:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004e28:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004e2c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004e30:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004e34:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c004e38:	6fff9d8d 	bgeu	$r12,$r13,-100(0x3ff9c) # 1c004dd4 <IIC_Send_Byte+0x30>
1c004e3c:	03400000 	andi	$r0,$r0,0x0
1c004e40:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004e44:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004e48:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004e4c:	4c000020 	jirl	$r0,$r1,0

1c004e50 <DHT11_Rst>:
DHT11_Rst():
1c004e50:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004e54:	29803061 	st.w	$r1,$r3,12(0xc)
1c004e58:	29802076 	st.w	$r22,$r3,8(0x8)
1c004e5c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004e60:	54007000 	bl	112(0x70) # 1c004ed0 <DHT11_IO_Out>
1c004e64:	00150005 	move	$r5,$r0
1c004e68:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004e6c:	57c773ff 	bl	-14480(0xfffc770) # 1c0015dc <gpio_write_pin>
1c004e70:	02805004 	addi.w	$r4,$r0,20(0x14)
1c004e74:	57e647ff 	bl	-6588(0xfffe644) # 1c0034b8 <delay_ms>
1c004e78:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004e7c:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004e80:	57c75fff 	bl	-14500(0xfffc75c) # 1c0015dc <gpio_write_pin>
1c004e84:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c004e88:	57e5fbff 	bl	-6664(0xfffe5f8) # 1c003480 <delay_us>
1c004e8c:	03400000 	andi	$r0,$r0,0x0
1c004e90:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004e94:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004e98:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004e9c:	4c000020 	jirl	$r0,$r1,0

1c004ea0 <DHT11_IO_In>:
DHT11_IO_In():
1c004ea0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004ea4:	29803061 	st.w	$r1,$r3,12(0xc)
1c004ea8:	29802076 	st.w	$r22,$r3,8(0x8)
1c004eac:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004eb0:	00150005 	move	$r5,$r0
1c004eb4:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004eb8:	57c9abff 	bl	-13912(0xfffc9a8) # 1c001860 <gpio_set_direction>
1c004ebc:	03400000 	andi	$r0,$r0,0x0
1c004ec0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004ec4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004ec8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004ecc:	4c000020 	jirl	$r0,$r1,0

1c004ed0 <DHT11_IO_Out>:
DHT11_IO_Out():
1c004ed0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004ed4:	29803061 	st.w	$r1,$r3,12(0xc)
1c004ed8:	29802076 	st.w	$r22,$r3,8(0x8)
1c004edc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004ee0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004ee4:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004ee8:	57c97bff 	bl	-13960(0xfffc978) # 1c001860 <gpio_set_direction>
1c004eec:	03400000 	andi	$r0,$r0,0x0
1c004ef0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004ef4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004ef8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004efc:	4c000020 	jirl	$r0,$r1,0

1c004f00 <DHT11_Check>:
DHT11_Check():
1c004f00:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004f04:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004f08:	29806076 	st.w	$r22,$r3,24(0x18)
1c004f0c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004f10:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004f14:	57ff8fff 	bl	-116(0xfffff8c) # 1c004ea0 <DHT11_IO_In>
1c004f18:	50001000 	b	16(0x10) # 1c004f28 <DHT11_Check+0x28>
1c004f1c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004f20:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004f24:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004f28:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004f2c:	57c663ff 	bl	-14752(0xfffc660) # 1c00158c <gpio_get_pin>
1c004f30:	0015008c 	move	$r12,$r4
1c004f34:	40001180 	beqz	$r12,16(0x10) # 1c004f44 <DHT11_Check+0x44>
1c004f38:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004f3c:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c004f40:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c004f1c <DHT11_Check+0x1c>
1c004f44:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004f48:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c004f4c:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c004f58 <DHT11_Check+0x58>
1c004f50:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004f54:	50004c00 	b	76(0x4c) # 1c004fa0 <DHT11_Check+0xa0>
1c004f58:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004f5c:	50001000 	b	16(0x10) # 1c004f6c <DHT11_Check+0x6c>
1c004f60:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004f64:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004f68:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004f6c:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004f70:	57c61fff 	bl	-14820(0xfffc61c) # 1c00158c <gpio_get_pin>
1c004f74:	0015008c 	move	$r12,$r4
1c004f78:	44001180 	bnez	$r12,16(0x10) # 1c004f88 <DHT11_Check+0x88>
1c004f7c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004f80:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c004f84:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c004f60 <DHT11_Check+0x60>
1c004f88:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004f8c:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c004f90:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c004f9c <DHT11_Check+0x9c>
1c004f94:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004f98:	50000800 	b	8(0x8) # 1c004fa0 <DHT11_Check+0xa0>
1c004f9c:	0015000c 	move	$r12,$r0
1c004fa0:	00150184 	move	$r4,$r12
1c004fa4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004fa8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004fac:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004fb0:	4c000020 	jirl	$r0,$r1,0

1c004fb4 <DHT11_Read_Bit>:
DHT11_Read_Bit():
1c004fb4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004fb8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004fbc:	29806076 	st.w	$r22,$r3,24(0x18)
1c004fc0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004fc4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004fc8:	50001000 	b	16(0x10) # 1c004fd8 <DHT11_Read_Bit+0x24>
1c004fcc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004fd0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004fd4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004fd8:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004fdc:	57c5b3ff 	bl	-14928(0xfffc5b0) # 1c00158c <gpio_get_pin>
1c004fe0:	0015008c 	move	$r12,$r4
1c004fe4:	40001180 	beqz	$r12,16(0x10) # 1c004ff4 <DHT11_Read_Bit+0x40>
1c004fe8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004fec:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c004ff0:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c004fcc <DHT11_Read_Bit+0x18>
1c004ff4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004ff8:	50001000 	b	16(0x10) # 1c005008 <DHT11_Read_Bit+0x54>
1c004ffc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005000:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005004:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005008:	02804404 	addi.w	$r4,$r0,17(0x11)
1c00500c:	57c583ff 	bl	-14976(0xfffc580) # 1c00158c <gpio_get_pin>
1c005010:	0015008c 	move	$r12,$r4
1c005014:	44001180 	bnez	$r12,16(0x10) # 1c005024 <DHT11_Read_Bit+0x70>
1c005018:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00501c:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c005020:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c004ffc <DHT11_Read_Bit+0x48>
1c005024:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c005028:	57e45bff 	bl	-7080(0xfffe458) # 1c003480 <delay_us>
1c00502c:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005030:	57c55fff 	bl	-15012(0xfffc55c) # 1c00158c <gpio_get_pin>
1c005034:	0015008c 	move	$r12,$r4
1c005038:	40000d80 	beqz	$r12,12(0xc) # 1c005044 <DHT11_Read_Bit+0x90>
1c00503c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005040:	50000800 	b	8(0x8) # 1c005048 <DHT11_Read_Bit+0x94>
1c005044:	0015000c 	move	$r12,$r0
1c005048:	00150184 	move	$r4,$r12
1c00504c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005050:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005054:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005058:	4c000020 	jirl	$r0,$r1,0

1c00505c <DHT11_Read_Byte>:
DHT11_Read_Byte():
1c00505c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005060:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005064:	29806076 	st.w	$r22,$r3,24(0x18)
1c005068:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00506c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005070:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005074:	50003400 	b	52(0x34) # 1c0050a8 <DHT11_Read_Byte+0x4c>
1c005078:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00507c:	0040858c 	slli.w	$r12,$r12,0x1
1c005080:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005084:	57ff33ff 	bl	-208(0xfffff30) # 1c004fb4 <DHT11_Read_Bit>
1c005088:	0015008c 	move	$r12,$r4
1c00508c:	0015018d 	move	$r13,$r12
1c005090:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005094:	001531ac 	or	$r12,$r13,$r12
1c005098:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c00509c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0050a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0050a4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0050a8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0050ac:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0050b0:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c005078 <DHT11_Read_Byte+0x1c>
1c0050b4:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0050b8:	00150184 	move	$r4,$r12
1c0050bc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0050c0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0050c4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0050c8:	4c000020 	jirl	$r0,$r1,0

1c0050cc <DHT11_Read_Data>:
DHT11_Read_Data():
1c0050cc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0050d0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0050d4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0050d8:	29809077 	st.w	$r23,$r3,36(0x24)
1c0050dc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0050e0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0050e4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0050e8:	57fd6bff 	bl	-664(0xffffd68) # 1c004e50 <DHT11_Rst>
1c0050ec:	57fe17ff 	bl	-492(0xffffe14) # 1c004f00 <DHT11_Check>
1c0050f0:	0015008c 	move	$r12,$r4
1c0050f4:	4400c180 	bnez	$r12,192(0xc0) # 1c0051b4 <DHT11_Read_Data+0xe8>
1c0050f8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0050fc:	50002800 	b	40(0x28) # 1c005124 <DHT11_Read_Data+0x58>
1c005100:	2a3fbed7 	ld.bu	$r23,$r22,-17(0xfef)
1c005104:	57ff5bff 	bl	-168(0xfffff58) # 1c00505c <DHT11_Read_Byte>
1c005108:	0015008c 	move	$r12,$r4
1c00510c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c005110:	00105dad 	add.w	$r13,$r13,$r23
1c005114:	293fe1ac 	st.b	$r12,$r13,-8(0xff8)
1c005118:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00511c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005120:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005124:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005128:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c00512c:	6fffd58d 	bgeu	$r12,$r13,-44(0x3ffd4) # 1c005100 <DHT11_Read_Data+0x34>
1c005130:	2a3fa2cc 	ld.bu	$r12,$r22,-24(0xfe8)
1c005134:	0015018d 	move	$r13,$r12
1c005138:	2a3fa6cc 	ld.bu	$r12,$r22,-23(0xfe9)
1c00513c:	001031ac 	add.w	$r12,$r13,$r12
1c005140:	2a3faacd 	ld.bu	$r13,$r22,-22(0xfea)
1c005144:	0010358c 	add.w	$r12,$r12,$r13
1c005148:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c00514c:	0010358c 	add.w	$r12,$r12,$r13
1c005150:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c005154:	5c00698d 	bne	$r12,$r13,104(0x68) # 1c0051bc <DHT11_Read_Data+0xf0>
1c005158:	2a3fa2cc 	ld.bu	$r12,$r22,-24(0xfe8)
1c00515c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005160:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005164:	001c31ac 	mul.w	$r12,$r13,$r12
1c005168:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00516c:	2a3fa6cc 	ld.bu	$r12,$r22,-23(0xfe9)
1c005170:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005174:	001031ac 	add.w	$r12,$r13,$r12
1c005178:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00517c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005180:	2940018d 	st.h	$r13,$r12,0
1c005184:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c005188:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00518c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005190:	001c31ac 	mul.w	$r12,$r13,$r12
1c005194:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005198:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c00519c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0051a0:	001031ac 	add.w	$r12,$r13,$r12
1c0051a4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0051a8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0051ac:	2940018d 	st.h	$r13,$r12,0
1c0051b0:	50000c00 	b	12(0xc) # 1c0051bc <DHT11_Read_Data+0xf0>
1c0051b4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0051b8:	50000800 	b	8(0x8) # 1c0051c0 <DHT11_Read_Data+0xf4>
1c0051bc:	0015000c 	move	$r12,$r0
1c0051c0:	00150184 	move	$r4,$r12
1c0051c4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0051c8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0051cc:	28809077 	ld.w	$r23,$r3,36(0x24)
1c0051d0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0051d4:	4c000020 	jirl	$r0,$r1,0

1c0051d8 <DHT11_Init>:
DHT11_Init():
1c0051d8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0051dc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0051e0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0051e4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0051e8:	00150005 	move	$r5,$r0
1c0051ec:	02804404 	addi.w	$r4,$r0,17(0x11)
1c0051f0:	57c467ff 	bl	-15260(0xfffc464) # 1c001654 <gpio_pin_remap>
1c0051f4:	57fcdfff 	bl	-804(0xffffcdc) # 1c004ed0 <DHT11_IO_Out>
1c0051f8:	57fc5bff 	bl	-936(0xffffc58) # 1c004e50 <DHT11_Rst>
1c0051fc:	57fd07ff 	bl	-764(0xffffd04) # 1c004f00 <DHT11_Check>
1c005200:	0015008c 	move	$r12,$r4
1c005204:	00150184 	move	$r4,$r12
1c005208:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00520c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005210:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005214:	4c000020 	jirl	$r0,$r1,0

1c005218 <LED_Init>:
LED_Init():
1c005218:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00521c:	29803061 	st.w	$r1,$r3,12(0xc)
1c005220:	29802076 	st.w	$r22,$r3,8(0x8)
1c005224:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005228:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00522c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005230:	57c633ff 	bl	-14800(0xfffc630) # 1c001860 <gpio_set_direction>
1c005234:	03400000 	andi	$r0,$r0,0x0
1c005238:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00523c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005240:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005244:	4c000020 	jirl	$r0,$r1,0

1c005248 <OLED_Hardware_Init>:
OLED_Hardware_Init():
1c005248:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00524c:	29803061 	st.w	$r1,$r3,12(0xc)
1c005250:	29802076 	st.w	$r22,$r3,8(0x8)
1c005254:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005258:	57f923ff 	bl	-1760(0xffff920) # 1c004b78 <IIC_Init>
1c00525c:	03400000 	andi	$r0,$r0,0x0
1c005260:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005264:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005268:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00526c:	4c000020 	jirl	$r0,$r1,0

1c005270 <OLED_WR_Byte>:
OLED_WR_Byte():
1c005270:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005274:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005278:	29806076 	st.w	$r22,$r3,24(0x18)
1c00527c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005280:	0015008c 	move	$r12,$r4
1c005284:	001500ad 	move	$r13,$r5
1c005288:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00528c:	001501ac 	move	$r12,$r13
1c005290:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005294:	57f9bfff 	bl	-1604(0xffff9bc) # 1c004c50 <IIC_Start>
1c005298:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c00529c:	57fb0bff 	bl	-1272(0xffffb08) # 1c004da4 <IIC_Send_Byte>
1c0052a0:	57fa73ff 	bl	-1424(0xffffa70) # 1c004d10 <IIC_Wait_Ack>
1c0052a4:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0052a8:	00150184 	move	$r4,$r12
1c0052ac:	57fafbff 	bl	-1288(0xffffaf8) # 1c004da4 <IIC_Send_Byte>
1c0052b0:	57fa63ff 	bl	-1440(0xffffa60) # 1c004d10 <IIC_Wait_Ack>
1c0052b4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0052b8:	00150184 	move	$r4,$r12
1c0052bc:	57faebff 	bl	-1304(0xffffae8) # 1c004da4 <IIC_Send_Byte>
1c0052c0:	57fa53ff 	bl	-1456(0xffffa50) # 1c004d10 <IIC_Wait_Ack>
1c0052c4:	57f9efff 	bl	-1556(0xffff9ec) # 1c004cb0 <IIC_Stop>
1c0052c8:	03400000 	andi	$r0,$r0,0x0
1c0052cc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0052d0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0052d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0052d8:	4c000020 	jirl	$r0,$r1,0

1c0052dc <OLED_Set_Pos>:
OLED_Set_Pos():
1c0052dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0052e0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0052e4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0052e8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0052ec:	0015008c 	move	$r12,$r4
1c0052f0:	001500ad 	move	$r13,$r5
1c0052f4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0052f8:	001501ac 	move	$r12,$r13
1c0052fc:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005300:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005304:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c005308:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00530c:	00150005 	move	$r5,$r0
1c005310:	00150184 	move	$r4,$r12
1c005314:	57ff5fff 	bl	-164(0xfffff5c) # 1c005270 <OLED_WR_Byte>
1c005318:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00531c:	0044918c 	srli.w	$r12,$r12,0x4
1c005320:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005324:	0380418c 	ori	$r12,$r12,0x10
1c005328:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00532c:	00150005 	move	$r5,$r0
1c005330:	00150184 	move	$r4,$r12
1c005334:	57ff3fff 	bl	-196(0xfffff3c) # 1c005270 <OLED_WR_Byte>
1c005338:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00533c:	03403d8c 	andi	$r12,$r12,0xf
1c005340:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005344:	00150005 	move	$r5,$r0
1c005348:	00150184 	move	$r4,$r12
1c00534c:	57ff27ff 	bl	-220(0xfffff24) # 1c005270 <OLED_WR_Byte>
1c005350:	03400000 	andi	$r0,$r0,0x0
1c005354:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005358:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00535c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005360:	4c000020 	jirl	$r0,$r1,0

1c005364 <OLED_Clear>:
OLED_Clear():
1c005364:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005368:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00536c:	29806076 	st.w	$r22,$r3,24(0x18)
1c005370:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005374:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005378:	50006800 	b	104(0x68) # 1c0053e0 <OLED_Clear+0x7c>
1c00537c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005380:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c005384:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005388:	00150005 	move	$r5,$r0
1c00538c:	00150184 	move	$r4,$r12
1c005390:	57fee3ff 	bl	-288(0xffffee0) # 1c005270 <OLED_WR_Byte>
1c005394:	00150005 	move	$r5,$r0
1c005398:	02800804 	addi.w	$r4,$r0,2(0x2)
1c00539c:	57fed7ff 	bl	-300(0xffffed4) # 1c005270 <OLED_WR_Byte>
1c0053a0:	00150005 	move	$r5,$r0
1c0053a4:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0053a8:	57fecbff 	bl	-312(0xffffec8) # 1c005270 <OLED_WR_Byte>
1c0053ac:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0053b0:	50001c00 	b	28(0x1c) # 1c0053cc <OLED_Clear+0x68>
1c0053b4:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0053b8:	00150004 	move	$r4,$r0
1c0053bc:	57feb7ff 	bl	-332(0xffffeb4) # 1c005270 <OLED_WR_Byte>
1c0053c0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0053c4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0053c8:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0053cc:	283fbacc 	ld.b	$r12,$r22,-18(0xfee)
1c0053d0:	67ffe580 	bge	$r12,$r0,-28(0x3ffe4) # 1c0053b4 <OLED_Clear+0x50>
1c0053d4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0053d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0053dc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0053e0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0053e4:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0053e8:	6fff958d 	bgeu	$r12,$r13,-108(0x3ff94) # 1c00537c <OLED_Clear+0x18>
1c0053ec:	03400000 	andi	$r0,$r0,0x0
1c0053f0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0053f4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0053f8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0053fc:	4c000020 	jirl	$r0,$r1,0

1c005400 <OLED_Init>:
OLED_Init():
1c005400:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005404:	29803061 	st.w	$r1,$r3,12(0xc)
1c005408:	29802076 	st.w	$r22,$r3,8(0x8)
1c00540c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005410:	57fe3bff 	bl	-456(0xffffe38) # 1c005248 <OLED_Hardware_Init>
1c005414:	02819004 	addi.w	$r4,$r0,100(0x64)
1c005418:	57e0a3ff 	bl	-8032(0xfffe0a0) # 1c0034b8 <delay_ms>
1c00541c:	57ff4bff 	bl	-184(0xfffff48) # 1c005364 <OLED_Clear>
1c005420:	00150005 	move	$r5,$r0
1c005424:	00150004 	move	$r4,$r0
1c005428:	57feb7ff 	bl	-332(0xffffeb4) # 1c0052dc <OLED_Set_Pos>
1c00542c:	00150005 	move	$r5,$r0
1c005430:	0282b804 	addi.w	$r4,$r0,174(0xae)
1c005434:	57fe3fff 	bl	-452(0xffffe3c) # 1c005270 <OLED_WR_Byte>
1c005438:	00150005 	move	$r5,$r0
1c00543c:	00150004 	move	$r4,$r0
1c005440:	57fe33ff 	bl	-464(0xffffe30) # 1c005270 <OLED_WR_Byte>
1c005444:	00150005 	move	$r5,$r0
1c005448:	02804004 	addi.w	$r4,$r0,16(0x10)
1c00544c:	57fe27ff 	bl	-476(0xffffe24) # 1c005270 <OLED_WR_Byte>
1c005450:	00150005 	move	$r5,$r0
1c005454:	02810004 	addi.w	$r4,$r0,64(0x40)
1c005458:	57fe1bff 	bl	-488(0xffffe18) # 1c005270 <OLED_WR_Byte>
1c00545c:	00150005 	move	$r5,$r0
1c005460:	02820404 	addi.w	$r4,$r0,129(0x81)
1c005464:	57fe0fff 	bl	-500(0xffffe0c) # 1c005270 <OLED_WR_Byte>
1c005468:	00150005 	move	$r5,$r0
1c00546c:	02833c04 	addi.w	$r4,$r0,207(0xcf)
1c005470:	57fe03ff 	bl	-512(0xffffe00) # 1c005270 <OLED_WR_Byte>
1c005474:	00150005 	move	$r5,$r0
1c005478:	02828404 	addi.w	$r4,$r0,161(0xa1)
1c00547c:	57fdf7ff 	bl	-524(0xffffdf4) # 1c005270 <OLED_WR_Byte>
1c005480:	00150005 	move	$r5,$r0
1c005484:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c005488:	57fdebff 	bl	-536(0xffffde8) # 1c005270 <OLED_WR_Byte>
1c00548c:	00150005 	move	$r5,$r0
1c005490:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c005494:	57fddfff 	bl	-548(0xffffddc) # 1c005270 <OLED_WR_Byte>
1c005498:	00150005 	move	$r5,$r0
1c00549c:	0282a004 	addi.w	$r4,$r0,168(0xa8)
1c0054a0:	57fdd3ff 	bl	-560(0xffffdd0) # 1c005270 <OLED_WR_Byte>
1c0054a4:	00150005 	move	$r5,$r0
1c0054a8:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c0054ac:	57fdc7ff 	bl	-572(0xffffdc4) # 1c005270 <OLED_WR_Byte>
1c0054b0:	00150005 	move	$r5,$r0
1c0054b4:	02820404 	addi.w	$r4,$r0,129(0x81)
1c0054b8:	57fdbbff 	bl	-584(0xffffdb8) # 1c005270 <OLED_WR_Byte>
1c0054bc:	00150005 	move	$r5,$r0
1c0054c0:	0283fc04 	addi.w	$r4,$r0,255(0xff)
1c0054c4:	57fdafff 	bl	-596(0xffffdac) # 1c005270 <OLED_WR_Byte>
1c0054c8:	00150005 	move	$r5,$r0
1c0054cc:	02834c04 	addi.w	$r4,$r0,211(0xd3)
1c0054d0:	57fda3ff 	bl	-608(0xffffda0) # 1c005270 <OLED_WR_Byte>
1c0054d4:	00150005 	move	$r5,$r0
1c0054d8:	00150004 	move	$r4,$r0
1c0054dc:	57fd97ff 	bl	-620(0xffffd94) # 1c005270 <OLED_WR_Byte>
1c0054e0:	00150005 	move	$r5,$r0
1c0054e4:	02835404 	addi.w	$r4,$r0,213(0xd5)
1c0054e8:	57fd8bff 	bl	-632(0xffffd88) # 1c005270 <OLED_WR_Byte>
1c0054ec:	00150005 	move	$r5,$r0
1c0054f0:	02820004 	addi.w	$r4,$r0,128(0x80)
1c0054f4:	57fd7fff 	bl	-644(0xffffd7c) # 1c005270 <OLED_WR_Byte>
1c0054f8:	00150005 	move	$r5,$r0
1c0054fc:	02836404 	addi.w	$r4,$r0,217(0xd9)
1c005500:	57fd73ff 	bl	-656(0xffffd70) # 1c005270 <OLED_WR_Byte>
1c005504:	00150005 	move	$r5,$r0
1c005508:	0283c404 	addi.w	$r4,$r0,241(0xf1)
1c00550c:	57fd67ff 	bl	-668(0xffffd64) # 1c005270 <OLED_WR_Byte>
1c005510:	00150005 	move	$r5,$r0
1c005514:	02836804 	addi.w	$r4,$r0,218(0xda)
1c005518:	57fd5bff 	bl	-680(0xffffd58) # 1c005270 <OLED_WR_Byte>
1c00551c:	00150005 	move	$r5,$r0
1c005520:	02804804 	addi.w	$r4,$r0,18(0x12)
1c005524:	57fd4fff 	bl	-692(0xffffd4c) # 1c005270 <OLED_WR_Byte>
1c005528:	00150005 	move	$r5,$r0
1c00552c:	02836c04 	addi.w	$r4,$r0,219(0xdb)
1c005530:	57fd43ff 	bl	-704(0xffffd40) # 1c005270 <OLED_WR_Byte>
1c005534:	00150005 	move	$r5,$r0
1c005538:	02810004 	addi.w	$r4,$r0,64(0x40)
1c00553c:	57fd37ff 	bl	-716(0xffffd34) # 1c005270 <OLED_WR_Byte>
1c005540:	00150005 	move	$r5,$r0
1c005544:	02808004 	addi.w	$r4,$r0,32(0x20)
1c005548:	57fd2bff 	bl	-728(0xffffd28) # 1c005270 <OLED_WR_Byte>
1c00554c:	00150005 	move	$r5,$r0
1c005550:	02800804 	addi.w	$r4,$r0,2(0x2)
1c005554:	57fd1fff 	bl	-740(0xffffd1c) # 1c005270 <OLED_WR_Byte>
1c005558:	00150005 	move	$r5,$r0
1c00555c:	02823404 	addi.w	$r4,$r0,141(0x8d)
1c005560:	57fd13ff 	bl	-752(0xffffd10) # 1c005270 <OLED_WR_Byte>
1c005564:	00150005 	move	$r5,$r0
1c005568:	02805004 	addi.w	$r4,$r0,20(0x14)
1c00556c:	57fd07ff 	bl	-764(0xffffd04) # 1c005270 <OLED_WR_Byte>
1c005570:	00150005 	move	$r5,$r0
1c005574:	02829004 	addi.w	$r4,$r0,164(0xa4)
1c005578:	57fcfbff 	bl	-776(0xffffcf8) # 1c005270 <OLED_WR_Byte>
1c00557c:	00150005 	move	$r5,$r0
1c005580:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c005584:	57fcefff 	bl	-788(0xffffcec) # 1c005270 <OLED_WR_Byte>
1c005588:	00150005 	move	$r5,$r0
1c00558c:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c005590:	57fce3ff 	bl	-800(0xffffce0) # 1c005270 <OLED_WR_Byte>
1c005594:	00150005 	move	$r5,$r0
1c005598:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c00559c:	57fcd7ff 	bl	-812(0xffffcd4) # 1c005270 <OLED_WR_Byte>
1c0055a0:	57fdc7ff 	bl	-572(0xffffdc4) # 1c005364 <OLED_Clear>
1c0055a4:	00150005 	move	$r5,$r0
1c0055a8:	00150004 	move	$r4,$r0
1c0055ac:	57fd33ff 	bl	-720(0xffffd30) # 1c0052dc <OLED_Set_Pos>
1c0055b0:	03400000 	andi	$r0,$r0,0x0
1c0055b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0055b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0055bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0055c0:	4c000020 	jirl	$r0,$r1,0

1c0055c4 <OLED_ShowChar>:
OLED_ShowChar():
1c0055c4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0055c8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0055cc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0055d0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0055d4:	0015008c 	move	$r12,$r4
1c0055d8:	001500af 	move	$r15,$r5
1c0055dc:	001500ce 	move	$r14,$r6
1c0055e0:	001500ed 	move	$r13,$r7
1c0055e4:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0055e8:	001501ec 	move	$r12,$r15
1c0055ec:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c0055f0:	001501cc 	move	$r12,$r14
1c0055f4:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c0055f8:	001501ac 	move	$r12,$r13
1c0055fc:	293f6acc 	st.b	$r12,$r22,-38(0xfda)
1c005600:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005604:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005608:	2a3f6acd 	ld.bu	$r13,$r22,-38(0xfda)
1c00560c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005610:	58000dac 	beq	$r13,$r12,12(0xc) # 1c00561c <OLED_ShowChar+0x58>
1c005614:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005618:	293f6acc 	st.b	$r12,$r22,-38(0xfda)
1c00561c:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c005620:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c005624:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c005628:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00562c:	50009800 	b	152(0x98) # 1c0056c4 <OLED_ShowChar+0x100>
1c005630:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005634:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c005638:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c00563c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005640:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005644:	001031ac 	add.w	$r12,$r13,$r12
1c005648:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00564c:	00150185 	move	$r5,$r12
1c005650:	001501c4 	move	$r4,$r14
1c005654:	57fc8bff 	bl	-888(0xffffc88) # 1c0052dc <OLED_Set_Pos>
1c005658:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c00565c:	50004800 	b	72(0x48) # 1c0056a4 <OLED_ShowChar+0xe0>
1c005660:	2a3f6ecd 	ld.bu	$r13,$r22,-37(0xfdb)
1c005664:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005668:	00408d8e 	slli.w	$r14,$r12,0x3
1c00566c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005670:	001031cc 	add.w	$r12,$r14,$r12
1c005674:	1c00002e 	pcaddu12i	$r14,1(0x1)
1c005678:	0287d1ce 	addi.w	$r14,$r14,500(0x1f4)
1c00567c:	004091ad 	slli.w	$r13,$r13,0x4
1c005680:	001035cd 	add.w	$r13,$r14,$r13
1c005684:	001031ac 	add.w	$r12,$r13,$r12
1c005688:	2a00018c 	ld.bu	$r12,$r12,0
1c00568c:	02810005 	addi.w	$r5,$r0,64(0x40)
1c005690:	00150184 	move	$r4,$r12
1c005694:	57fbdfff 	bl	-1060(0xffffbdc) # 1c005270 <OLED_WR_Byte>
1c005698:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00569c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0056a0:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0056a4:	2a3f6acc 	ld.bu	$r12,$r22,-38(0xfda)
1c0056a8:	0044858c 	srli.w	$r12,$r12,0x1
1c0056ac:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0056b0:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c0056b4:	6bffadac 	bltu	$r13,$r12,-84(0x3ffac) # 1c005660 <OLED_ShowChar+0x9c>
1c0056b8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0056bc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0056c0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0056c4:	2a3f6acc 	ld.bu	$r12,$r22,-38(0xfda)
1c0056c8:	00448d8c 	srli.w	$r12,$r12,0x3
1c0056cc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0056d0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0056d4:	6bff5dac 	bltu	$r13,$r12,-164(0x3ff5c) # 1c005630 <OLED_ShowChar+0x6c>
1c0056d8:	03400000 	andi	$r0,$r0,0x0
1c0056dc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0056e0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0056e4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0056e8:	4c000020 	jirl	$r0,$r1,0

1c0056ec <OLED_DrawFont16>:
OLED_DrawFont16():
1c0056ec:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0056f0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0056f4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0056f8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0056fc:	0015008c 	move	$r12,$r4
1c005700:	001500ad 	move	$r13,$r5
1c005704:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c005708:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c00570c:	001501ac 	move	$r12,$r13
1c005710:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005714:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005718:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c00571c:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c005720:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c005724:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c005728:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c00572c:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c005730:	50013800 	b	312(0x138) # 1c005868 <OLED_DrawFont16+0x17c>
1c005734:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c005738:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c00573c:	029c81ad 	addi.w	$r13,$r13,1824(0x720)
1c005740:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005744:	001c31cc 	mul.w	$r12,$r14,$r12
1c005748:	001031ac 	add.w	$r12,$r13,$r12
1c00574c:	2a00018d 	ld.bu	$r13,$r12,0
1c005750:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005754:	2a00018c 	ld.bu	$r12,$r12,0
1c005758:	5c0105ac 	bne	$r13,$r12,260(0x104) # 1c00585c <OLED_DrawFont16+0x170>
1c00575c:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c005760:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c005764:	029be1ad 	addi.w	$r13,$r13,1784(0x6f8)
1c005768:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c00576c:	001c31cc 	mul.w	$r12,$r14,$r12
1c005770:	001031ac 	add.w	$r12,$r13,$r12
1c005774:	2a00058d 	ld.bu	$r13,$r12,1(0x1)
1c005778:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00577c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005780:	2a00018c 	ld.bu	$r12,$r12,0
1c005784:	5c00d9ac 	bne	$r13,$r12,216(0xd8) # 1c00585c <OLED_DrawFont16+0x170>
1c005788:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c00578c:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c005790:	029b31ad 	addi.w	$r13,$r13,1740(0x6cc)
1c005794:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005798:	001c31cc 	mul.w	$r12,$r14,$r12
1c00579c:	001031ac 	add.w	$r12,$r13,$r12
1c0057a0:	2a00098d 	ld.bu	$r13,$r12,2(0x2)
1c0057a4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0057a8:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0057ac:	2a00018c 	ld.bu	$r12,$r12,0
1c0057b0:	5c00adac 	bne	$r13,$r12,172(0xac) # 1c00585c <OLED_DrawFont16+0x170>
1c0057b4:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0057b8:	50009400 	b	148(0x94) # 1c00584c <OLED_DrawFont16+0x160>
1c0057bc:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0057c0:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c0057c4:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0057c8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0057cc:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0057d0:	001031ac 	add.w	$r12,$r13,$r12
1c0057d4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0057d8:	00150185 	move	$r5,$r12
1c0057dc:	001501c4 	move	$r4,$r14
1c0057e0:	57faffff 	bl	-1284(0xffffafc) # 1c0052dc <OLED_Set_Pos>
1c0057e4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0057e8:	50004c00 	b	76(0x4c) # 1c005834 <OLED_DrawFont16+0x148>
1c0057ec:	2a7fb2cf 	ld.hu	$r15,$r22,-20(0xfec)
1c0057f0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0057f4:	0040918d 	slli.w	$r13,$r12,0x4
1c0057f8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0057fc:	001031ad 	add.w	$r13,$r13,$r12
1c005800:	1c00002e 	pcaddu12i	$r14,1(0x1)
1c005804:	029961ce 	addi.w	$r14,$r14,1624(0x658)
1c005808:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c00580c:	001c31ec 	mul.w	$r12,$r15,$r12
1c005810:	001031cc 	add.w	$r12,$r14,$r12
1c005814:	0010358c 	add.w	$r12,$r12,$r13
1c005818:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c00581c:	02810005 	addi.w	$r5,$r0,64(0x40)
1c005820:	00150184 	move	$r4,$r12
1c005824:	57fa4fff 	bl	-1460(0xffffa4c) # 1c005270 <OLED_WR_Byte>
1c005828:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00582c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005830:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005834:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005838:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c00583c:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c0057ec <OLED_DrawFont16+0x100>
1c005840:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005844:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005848:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c00584c:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c005850:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005854:	6fff698d 	bgeu	$r12,$r13,-152(0x3ff68) # 1c0057bc <OLED_DrawFont16+0xd0>
1c005858:	50001c00 	b	28(0x1c) # 1c005874 <OLED_DrawFont16+0x188>
1c00585c:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c005860:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005864:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c005868:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c00586c:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c005870:	6bfec5ac 	bltu	$r13,$r12,-316(0x3fec4) # 1c005734 <OLED_DrawFont16+0x48>
1c005874:	03400000 	andi	$r0,$r0,0x0
1c005878:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00587c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005880:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005884:	4c000020 	jirl	$r0,$r1,0

1c005888 <OLED_DrawFont32>:
OLED_DrawFont32():
1c005888:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00588c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005890:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005894:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005898:	0015008c 	move	$r12,$r4
1c00589c:	001500ad 	move	$r13,$r5
1c0058a0:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c0058a4:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0058a8:	001501ac 	move	$r12,$r13
1c0058ac:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c0058b0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0058b4:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0058b8:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c0058bc:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c0058c0:	0280540c 	addi.w	$r12,$r0,21(0x15)
1c0058c4:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c0058c8:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c0058cc:	50014400 	b	324(0x144) # 1c005a10 <OLED_DrawFont32+0x188>
1c0058d0:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c0058d4:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c0058d8:	029611ad 	addi.w	$r13,$r13,1412(0x584)
1c0058dc:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c0058e0:	001c31cc 	mul.w	$r12,$r14,$r12
1c0058e4:	001031ac 	add.w	$r12,$r13,$r12
1c0058e8:	2a00018c 	ld.bu	$r12,$r12,0
1c0058ec:	0015018d 	move	$r13,$r12
1c0058f0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0058f4:	2800018c 	ld.b	$r12,$r12,0
1c0058f8:	5c010dac 	bne	$r13,$r12,268(0x10c) # 1c005a04 <OLED_DrawFont32+0x17c>
1c0058fc:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c005900:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c005904:	029561ad 	addi.w	$r13,$r13,1368(0x558)
1c005908:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c00590c:	001c31cc 	mul.w	$r12,$r14,$r12
1c005910:	001031ac 	add.w	$r12,$r13,$r12
1c005914:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c005918:	0015018d 	move	$r13,$r12
1c00591c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005920:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005924:	2800018c 	ld.b	$r12,$r12,0
1c005928:	5c00ddac 	bne	$r13,$r12,220(0xdc) # 1c005a04 <OLED_DrawFont32+0x17c>
1c00592c:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c005930:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c005934:	0294a1ad 	addi.w	$r13,$r13,1320(0x528)
1c005938:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c00593c:	001c31cc 	mul.w	$r12,$r14,$r12
1c005940:	001031ac 	add.w	$r12,$r13,$r12
1c005944:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c005948:	0015018d 	move	$r13,$r12
1c00594c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005950:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005954:	2800018c 	ld.b	$r12,$r12,0
1c005958:	5c00adac 	bne	$r13,$r12,172(0xac) # 1c005a04 <OLED_DrawFont32+0x17c>
1c00595c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005960:	50009400 	b	148(0x94) # 1c0059f4 <OLED_DrawFont32+0x16c>
1c005964:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005968:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c00596c:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005970:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005974:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005978:	001031ac 	add.w	$r12,$r13,$r12
1c00597c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005980:	00150185 	move	$r5,$r12
1c005984:	001501c4 	move	$r4,$r14
1c005988:	57f957ff 	bl	-1708(0xffff954) # 1c0052dc <OLED_Set_Pos>
1c00598c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005990:	50004c00 	b	76(0x4c) # 1c0059dc <OLED_DrawFont32+0x154>
1c005994:	2a7fb2cf 	ld.hu	$r15,$r22,-20(0xfec)
1c005998:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00599c:	0040958d 	slli.w	$r13,$r12,0x5
1c0059a0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0059a4:	001031ad 	add.w	$r13,$r13,$r12
1c0059a8:	1c00004e 	pcaddu12i	$r14,2(0x2)
1c0059ac:	02a701ce 	addi.w	$r14,$r14,-1600(0x9c0)
1c0059b0:	02820c0c 	addi.w	$r12,$r0,131(0x83)
1c0059b4:	001c31ec 	mul.w	$r12,$r15,$r12
1c0059b8:	001031cc 	add.w	$r12,$r14,$r12
1c0059bc:	0010358c 	add.w	$r12,$r12,$r13
1c0059c0:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0059c4:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0059c8:	00150184 	move	$r4,$r12
1c0059cc:	57f8a7ff 	bl	-1884(0xffff8a4) # 1c005270 <OLED_WR_Byte>
1c0059d0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0059d4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0059d8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0059dc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0059e0:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c0059e4:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c005994 <OLED_DrawFont32+0x10c>
1c0059e8:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0059ec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0059f0:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0059f4:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c0059f8:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0059fc:	6fff698d 	bgeu	$r12,$r13,-152(0x3ff68) # 1c005964 <OLED_DrawFont32+0xdc>
1c005a00:	50001c00 	b	28(0x1c) # 1c005a1c <OLED_DrawFont32+0x194>
1c005a04:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c005a08:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005a0c:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c005a10:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c005a14:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c005a18:	6bfeb9ac 	bltu	$r13,$r12,-328(0x3feb8) # 1c0058d0 <OLED_DrawFont32+0x48>
1c005a1c:	03400000 	andi	$r0,$r0,0x0
1c005a20:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005a24:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005a28:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005a2c:	4c000020 	jirl	$r0,$r1,0

1c005a30 <OLED_Show_Str>:
OLED_Show_Str():
1c005a30:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005a34:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005a38:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005a3c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005a40:	0015008c 	move	$r12,$r4
1c005a44:	001500ae 	move	$r14,$r5
1c005a48:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c005a4c:	001500ed 	move	$r13,$r7
1c005a50:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005a54:	001501cc 	move	$r12,$r14
1c005a58:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005a5c:	001501ac 	move	$r12,$r13
1c005a60:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c005a64:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005a68:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c005a6c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005a70:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c005a74:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c005a78:	580209ac 	beq	$r13,$r12,520(0x208) # 1c005c80 <OLED_Show_Str+0x250>
1c005a7c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005a80:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c005a84:	5001fc00 	b	508(0x1fc) # 1c005c80 <OLED_Show_Str+0x250>
1c005a88:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005a8c:	44012580 	bnez	$r12,292(0x124) # 1c005bb0 <OLED_Show_Str+0x180>
1c005a90:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c005a94:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005a98:	0044858c 	srli.w	$r12,$r12,0x1
1c005a9c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005aa0:	0015018e 	move	$r14,$r12
1c005aa4:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c005aa8:	0011398c 	sub.w	$r12,$r12,$r14
1c005aac:	64002d8d 	bge	$r12,$r13,44(0x2c) # 1c005ad8 <OLED_Show_Str+0xa8>
1c005ab0:	297f7ac0 	st.h	$r0,$r22,-34(0xfde)
1c005ab4:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005ab8:	00448d8c 	srli.w	$r12,$r12,0x3
1c005abc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005ac0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005ac4:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005ac8:	001031ac 	add.w	$r12,$r13,$r12
1c005acc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005ad0:	03401d8c 	andi	$r12,$r12,0x7
1c005ad4:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005ad8:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005adc:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005ae0:	00448d8c 	srli.w	$r12,$r12,0x3
1c005ae4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005ae8:	0015018e 	move	$r14,$r12
1c005aec:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c005af0:	0011398c 	sub.w	$r12,$r12,$r14
1c005af4:	6400098d 	bge	$r12,$r13,8(0x8) # 1c005afc <OLED_Show_Str+0xcc>
1c005af8:	297f72c0 	st.h	$r0,$r22,-36(0xfdc)
1c005afc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005b00:	2800018c 	ld.b	$r12,$r12,0
1c005b04:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005b08:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c005b0c:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c005b1c <OLED_Show_Str+0xec>
1c005b10:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005b14:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005b18:	50016800 	b	360(0x168) # 1c005c80 <OLED_Show_Str+0x250>
1c005b1c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005b20:	2800018d 	ld.b	$r13,$r12,0
1c005b24:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c005b28:	5c0031ac 	bne	$r13,$r12,48(0x30) # 1c005b58 <OLED_Show_Str+0x128>
1c005b2c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005b30:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005b34:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005b38:	001031ac 	add.w	$r12,$r13,$r12
1c005b3c:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005b40:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c005b44:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005b48:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005b4c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005b50:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005b54:	50004c00 	b	76(0x4c) # 1c005ba0 <OLED_Show_Str+0x170>
1c005b58:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005b5c:	2800018c 	ld.b	$r12,$r12,0
1c005b60:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c005b64:	2a3f5ecf 	ld.bu	$r15,$r22,-41(0xfd7)
1c005b68:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005b6c:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005b70:	001501e7 	move	$r7,$r15
1c005b74:	001501c6 	move	$r6,$r14
1c005b78:	001501a5 	move	$r5,$r13
1c005b7c:	00150184 	move	$r4,$r12
1c005b80:	57fa47ff 	bl	-1468(0xffffa44) # 1c0055c4 <OLED_ShowChar>
1c005b84:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005b88:	0044858c 	srli.w	$r12,$r12,0x1
1c005b8c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005b90:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005b94:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005b98:	001031ac 	add.w	$r12,$r13,$r12
1c005b9c:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005ba0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005ba4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005ba8:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005bac:	5000d400 	b	212(0xd4) # 1c005c80 <OLED_Show_Str+0x250>
1c005bb0:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c005bb4:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005bb8:	0282000e 	addi.w	$r14,$r0,128(0x80)
1c005bbc:	001131cc 	sub.w	$r12,$r14,$r12
1c005bc0:	64002d8d 	bge	$r12,$r13,44(0x2c) # 1c005bec <OLED_Show_Str+0x1bc>
1c005bc4:	297f7ac0 	st.h	$r0,$r22,-34(0xfde)
1c005bc8:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005bcc:	00448d8c 	srli.w	$r12,$r12,0x3
1c005bd0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005bd4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005bd8:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005bdc:	001031ac 	add.w	$r12,$r13,$r12
1c005be0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005be4:	03401d8c 	andi	$r12,$r12,0x7
1c005be8:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005bec:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005bf0:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005bf4:	00448d8c 	srli.w	$r12,$r12,0x3
1c005bf8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005bfc:	0015018e 	move	$r14,$r12
1c005c00:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c005c04:	0011398c 	sub.w	$r12,$r12,$r14
1c005c08:	6400098d 	bge	$r12,$r13,8(0x8) # 1c005c10 <OLED_Show_Str+0x1e0>
1c005c0c:	297f72c0 	st.h	$r0,$r22,-36(0xfdc)
1c005c10:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005c14:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c005c18:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c005c1c:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c005c3c <OLED_Show_Str+0x20c>
1c005c20:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005c24:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005c28:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c005c2c:	001501a5 	move	$r5,$r13
1c005c30:	00150184 	move	$r4,$r12
1c005c34:	57fc57ff 	bl	-940(0xffffc54) # 1c005888 <OLED_DrawFont32>
1c005c38:	50002800 	b	40(0x28) # 1c005c60 <OLED_Show_Str+0x230>
1c005c3c:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c005c40:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005c44:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c005c60 <OLED_Show_Str+0x230>
1c005c48:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005c4c:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005c50:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c005c54:	001501a5 	move	$r5,$r13
1c005c58:	00150184 	move	$r4,$r12
1c005c5c:	57fa93ff 	bl	-1392(0xffffa90) # 1c0056ec <OLED_DrawFont16>
1c005c60:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005c64:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c005c68:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005c6c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005c70:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005c74:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005c78:	001031ac 	add.w	$r12,$r13,$r12
1c005c7c:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005c80:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005c84:	2800018c 	ld.b	$r12,$r12,0
1c005c88:	47fe019f 	bnez	$r12,-512(0x7ffe00) # 1c005a88 <OLED_Show_Str+0x58>
1c005c8c:	03400000 	andi	$r0,$r0,0x0
1c005c90:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005c94:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005c98:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005c9c:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c005ca0 <msg_wakeup>:
msg_wakeup():
1c005ca0:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01c800 <_sidata+0x149d8>
1c005ca4:	0a217075 	xvfmadd.d	$xr21,$xr3,$xr28,$xr2
	...

1c005ca9 <hexdecarr>:
hexdecarr():
1c005ca9:	33323130 	xvstelm.w	$xr16,$r9,-464(0x230),0x4
1c005cad:	37363534 	0x37363534
1c005cb1:	62613938 	blt	$r9,$r24,-106184(0x26138) # 1bfebde9 <_start-0x14217>
1c005cb5:	66656463 	bge	$r3,$r3,-105116(0x26564) # 1bfec219 <_start-0x13de7>
1c005cb9:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c005cbd:	79654b0a 	0x79654b0a
1c005cc1:	73657220 	vssrani.wu.d	$vr0,$vr17,0x1c
1c005cc5:	0d217465 	xvbitsel.v	$xr5,$xr3,$xr29,$xr2
1c005cc9:	0d00000a 	fsel	$f10,$f0,$f0,$fcc0
1c005ccd:	6970730a 	bltu	$r24,$r10,94320(0x17070) # 1c01cd3d <_sidata+0x14f15>
1c005cd1:	6f6f6220 	bgeu	$r17,$r0,-37024(0x36f60) # 1bffcc31 <_start-0x33cf>
1c005cd5:	0d000074 	fsel	$f20,$f3,$f0,$fcc0
1c005cd9:	676f640a 	bge	$r0,$r10,-37020(0x36f64) # 1bffcc3d <_start-0x33c3>
1c005cdd:	72616220 	0x72616220
1c005ce1:	0a0d216b 	0x0a0d216b
1c005ce5:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c005ce9:	6b61770a 	bltu	$r24,$r10,-40588(0x36174) # 1bffbe5d <_start-0x41a3>
1c005ced:	21705565 	sc.w	$r5,$r11,28756(0x7054)
1c005cf1:	b4000a0d 	0xb4000a0d
1c005cf5:	d01c001d 	0xd01c001d
1c005cf9:	d01c001e 	0xd01c001e
1c005cfd:	d01c001e 	0xd01c001e
1c005d01:	d01c001e 	0xd01c001e
1c005d05:	d01c001e 	0xd01c001e
1c005d09:	d01c001e 	0xd01c001e
1c005d0d:	d01c001e 	0xd01c001e
1c005d11:	d01c001e 	0xd01c001e
1c005d15:	d01c001e 	0xd01c001e
1c005d19:	d01c001e 	0xd01c001e
1c005d1d:	cc1c001e 	0xcc1c001e
1c005d21:	541c001d 	bl	7609344(0x741c00) # 1c747921 <_sidata+0x73faf9>
1c005d25:	541c001e 	bl	7871488(0x781c00) # 1c787925 <_sidata+0x77fafd>
1c005d29:	541c001e 	bl	7871488(0x781c00) # 1c787929 <_sidata+0x77fb01>
1c005d2d:	541c001e 	bl	7871488(0x781c00) # 1c78792d <_sidata+0x77fb05>
1c005d31:	541c001e 	bl	7871488(0x781c00) # 1c787931 <_sidata+0x77fb09>
1c005d35:	541c001e 	bl	7871488(0x781c00) # 1c787935 <_sidata+0x77fb0d>
1c005d39:	541c001e 	bl	7871488(0x781c00) # 1c787939 <_sidata+0x77fb11>
1c005d3d:	541c001e 	bl	7871488(0x781c00) # 1c78793d <_sidata+0x77fb15>
1c005d41:	541c001e 	bl	7871488(0x781c00) # 1c787941 <_sidata+0x77fb19>
1c005d45:	d01c001e 	0xd01c001e
1c005d49:	d01c001e 	0xd01c001e
1c005d4d:	d01c001e 	0xd01c001e
1c005d51:	d01c001e 	0xd01c001e
1c005d55:	d01c001e 	0xd01c001e
1c005d59:	d01c001e 	0xd01c001e
1c005d5d:	d01c001e 	0xd01c001e
1c005d61:	d01c001e 	0xd01c001e
1c005d65:	d01c001e 	0xd01c001e
1c005d69:	d01c001e 	0xd01c001e
1c005d6d:	d01c001e 	0xd01c001e
1c005d71:	d01c001e 	0xd01c001e
1c005d75:	d01c001e 	0xd01c001e
1c005d79:	d01c001e 	0xd01c001e
1c005d7d:	d01c001e 	0xd01c001e
1c005d81:	d01c001e 	0xd01c001e
1c005d85:	d01c001e 	0xd01c001e
1c005d89:	d01c001e 	0xd01c001e
1c005d8d:	d01c001e 	0xd01c001e
1c005d91:	d01c001e 	0xd01c001e
1c005d95:	d01c001e 	0xd01c001e
1c005d99:	d01c001e 	0xd01c001e
1c005d9d:	d01c001e 	0xd01c001e
1c005da1:	d01c001e 	0xd01c001e
1c005da5:	d01c001e 	0xd01c001e
1c005da9:	d01c001e 	0xd01c001e
1c005dad:	d01c001e 	0xd01c001e
1c005db1:	d01c001e 	0xd01c001e
1c005db5:	d01c001e 	0xd01c001e
1c005db9:	d01c001e 	0xd01c001e
1c005dbd:	d01c001e 	0xd01c001e
1c005dc1:	d01c001e 	0xd01c001e
1c005dc5:	d01c001e 	0xd01c001e
1c005dc9:	d01c001e 	0xd01c001e
1c005dcd:	d01c001e 	0xd01c001e
1c005dd1:	d01c001e 	0xd01c001e
1c005dd5:	d01c001e 	0xd01c001e
1c005dd9:	d01c001e 	0xd01c001e
1c005ddd:	d01c001e 	0xd01c001e
1c005de1:	d01c001e 	0xd01c001e
1c005de5:	441c001e 	bnez	$r0,-517120(0x781c00) # 1bf879e5 <_start-0x7861b>
1c005de9:	6c1c001d 	bgeu	$r0,$r29,7168(0x1c00) # 1c0079e9 <tfont32+0x681>
1c005ded:	d41c001c 	0xd41c001c
1c005df1:	d01c001c 	0xd01c001c
1c005df5:	d01c001e 	0xd01c001e
1c005df9:	d01c001e 	0xd01c001e
1c005dfd:	d01c001e 	0xd01c001e
1c005e01:	d01c001e 	0xd01c001e
1c005e05:	d01c001e 	0xd01c001e
1c005e09:	d01c001e 	0xd01c001e
1c005e0d:	d01c001e 	0xd01c001e
1c005e11:	d01c001e 	0xd01c001e
1c005e15:	d01c001e 	0xd01c001e
1c005e19:	0c1c001e 	0x0c1c001e
1c005e1d:	7c1c001d 	0x7c1c001d
1c005e21:	d01c001d 	0xd01c001d
1c005e25:	d01c001e 	0xd01c001e
1c005e29:	401c001e 	beqz	$r0,-517120(0x781c00) # 1bf87a29 <_start-0x785d7>
1c005e2d:	d01c001c 	0xd01c001c
1c005e31:	9c1c001e 	0x9c1c001e
1c005e35:	d01c001c 	0xd01c001c
1c005e39:	d01c001e 	0xd01c001e
1c005e3d:	7c1c001e 	0x7c1c001e
1c005e41:	681c001d 	bltu	$r0,$r29,7168(0x1c00) # 1c007a41 <tfont32+0x6d9>
1c005e45:	8c1c0023 	0x8c1c0023
1c005e49:	8c1c0024 	0x8c1c0024
1c005e4d:	8c1c0024 	0x8c1c0024
1c005e51:	8c1c0024 	0x8c1c0024
1c005e55:	8c1c0024 	0x8c1c0024
1c005e59:	8c1c0024 	0x8c1c0024
1c005e5d:	8c1c0024 	0x8c1c0024
1c005e61:	8c1c0024 	0x8c1c0024
1c005e65:	8c1c0024 	0x8c1c0024
1c005e69:	8c1c0024 	0x8c1c0024
1c005e6d:	881c0024 	0x881c0024
1c005e71:	101c0023 	addu16i.d	$r3,$r1,1792(0x700)
1c005e75:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c005e79:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c005e7d:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c005e81:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c005e85:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c005e89:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c005e8d:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c005e91:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c005e95:	8c1c0024 	0x8c1c0024
1c005e99:	8c1c0024 	0x8c1c0024
1c005e9d:	8c1c0024 	0x8c1c0024
1c005ea1:	8c1c0024 	0x8c1c0024
1c005ea5:	8c1c0024 	0x8c1c0024
1c005ea9:	8c1c0024 	0x8c1c0024
1c005ead:	8c1c0024 	0x8c1c0024
1c005eb1:	8c1c0024 	0x8c1c0024
1c005eb5:	8c1c0024 	0x8c1c0024
1c005eb9:	8c1c0024 	0x8c1c0024
1c005ebd:	8c1c0024 	0x8c1c0024
1c005ec1:	8c1c0024 	0x8c1c0024
1c005ec5:	8c1c0024 	0x8c1c0024
1c005ec9:	8c1c0024 	0x8c1c0024
1c005ecd:	8c1c0024 	0x8c1c0024
1c005ed1:	8c1c0024 	0x8c1c0024
1c005ed5:	8c1c0024 	0x8c1c0024
1c005ed9:	8c1c0024 	0x8c1c0024
1c005edd:	8c1c0024 	0x8c1c0024
1c005ee1:	8c1c0024 	0x8c1c0024
1c005ee5:	8c1c0024 	0x8c1c0024
1c005ee9:	8c1c0024 	0x8c1c0024
1c005eed:	8c1c0024 	0x8c1c0024
1c005ef1:	8c1c0024 	0x8c1c0024
1c005ef5:	8c1c0024 	0x8c1c0024
1c005ef9:	8c1c0024 	0x8c1c0024
1c005efd:	8c1c0024 	0x8c1c0024
1c005f01:	8c1c0024 	0x8c1c0024
1c005f05:	8c1c0024 	0x8c1c0024
1c005f09:	8c1c0024 	0x8c1c0024
1c005f0d:	8c1c0024 	0x8c1c0024
1c005f11:	8c1c0024 	0x8c1c0024
1c005f15:	8c1c0024 	0x8c1c0024
1c005f19:	8c1c0024 	0x8c1c0024
1c005f1d:	8c1c0024 	0x8c1c0024
1c005f21:	8c1c0024 	0x8c1c0024
1c005f25:	8c1c0024 	0x8c1c0024
1c005f29:	8c1c0024 	0x8c1c0024
1c005f2d:	8c1c0024 	0x8c1c0024
1c005f31:	8c1c0024 	0x8c1c0024
1c005f35:	f01c0024 	0xf01c0024
1c005f39:	081c0022 	fmadd.s	$f2,$f1,$f0,$f24
1c005f3d:	781c0022 	0x781c0022
1c005f41:	8c1c0022 	0x8c1c0022
1c005f45:	8c1c0024 	0x8c1c0024
1c005f49:	8c1c0024 	0x8c1c0024
1c005f4d:	8c1c0024 	0x8c1c0024
1c005f51:	8c1c0024 	0x8c1c0024
1c005f55:	8c1c0024 	0x8c1c0024
1c005f59:	8c1c0024 	0x8c1c0024
1c005f5d:	8c1c0024 	0x8c1c0024
1c005f61:	8c1c0024 	0x8c1c0024
1c005f65:	8c1c0024 	0x8c1c0024
1c005f69:	b41c0024 	0xb41c0024
1c005f6d:	2c1c0022 	vld	$vr2,$r1,1792(0x700)
1c005f71:	8c1c0023 	0x8c1c0023
1c005f75:	8c1c0024 	0x8c1c0024
1c005f79:	d81c0024 	0xd81c0024
1c005f7d:	8c1c0021 	0x8c1c0021
1c005f81:	3c1c0024 	0x3c1c0024
1c005f85:	8c1c0022 	0x8c1c0022
1c005f89:	8c1c0024 	0x8c1c0024
1c005f8d:	2c1c0024 	vld	$vr4,$r1,1792(0x700)
1c005f91:	0a1c0023 	xvfmadd.s	$xr3,$xr1,$xr0,$xr24
1c005f95:	7c000000 	0x7c000000
1c005f99:	7c7c7c7c 	0x7c7c7c7c
1c005f9d:	7c7c7c7c 	0x7c7c7c7c
1c005fa1:	7c7c7c7c 	0x7c7c7c7c
1c005fa5:	7c7c7c7c 	0x7c7c7c7c
1c005fa9:	7c7c7c7c 	0x7c7c7c7c
1c005fad:	7c7c7c7c 	0x7c7c7c7c
1c005fb1:	7c7c7c7c 	0x7c7c7c7c
1c005fb5:	7c7c7c7c 	0x7c7c7c7c
1c005fb9:	7c7c7c7c 	0x7c7c7c7c
1c005fbd:	7c7c7c7c 	0x7c7c7c7c
1c005fc1:	7c7c7c7c 	0x7c7c7c7c
1c005fc5:	7c7c7c7c 	0x7c7c7c7c
1c005fc9:	7c7c7c7c 	0x7c7c7c7c
1c005fcd:	7c7c7c7c 	0x7c7c7c7c
1c005fd1:	7c7c7c7c 	0x7c7c7c7c
1c005fd5:	7c7c7c7c 	0x7c7c7c7c
1c005fd9:	7c7c7c7c 	0x7c7c7c7c
1c005fdd:	7c7c7c7c 	0x7c7c7c7c
1c005fe1:	7c7c7c7c 	0x7c7c7c7c
1c005fe5:	7c7c7c7c 	0x7c7c7c7c
1c005fe9:	7c7c7c7c 	0x7c7c7c7c
1c005fed:	7c7c7c7c 	0x7c7c7c7c
1c005ff1:	7c7c7c7c 	0x7c7c7c7c
1c005ff5:	7c7c7c7c 	0x7c7c7c7c
1c005ff9:	7c00000a 	0x7c00000a
1c005ffd:	7c20207c 	0x7c20207c
1c006001:	7c7c7c7c 	0x7c7c7c7c
1c006005:	7c7c7c7c 	0x7c7c7c7c
1c006009:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00600d:	7c202020 	0x7c202020
1c006011:	7c7c7c7c 	0x7c7c7c7c
1c006015:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006019:	7c202020 	0x7c202020
1c00601d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006021:	7c7c2020 	0x7c7c2020
1c006025:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006029:	7c7c7c20 	0x7c7c7c20
1c00602d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006031:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006035:	7c7c7c7c 	0x7c7c7c7c
1c006039:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00603d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006041:	7c7c7c7c 	0x7c7c7c7c
1c006045:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006049:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00604d:	7c7c7c7c 	0x7c7c7c7c
1c006051:	7c202020 	0x7c202020
1c006055:	7c7c7c7c 	0x7c7c7c7c
1c006059:	7c7c2020 	0x7c7c2020
1c00605d:	7c00000a 	0x7c00000a
1c006061:	7c20207c 	0x7c20207c
1c006065:	7c7c7c7c 	0x7c7c7c7c
1c006069:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00606d:	7c7c2020 	0x7c7c2020
1c006071:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006075:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006079:	7c7c2020 	0x7c7c2020
1c00607d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006081:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006085:	7c202020 	0x7c202020
1c006089:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00608d:	7c7c7c20 	0x7c7c7c20
1c006091:	7c20207c 	0x7c20207c
1c006095:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006099:	7c7c7c20 	0x7c7c7c20
1c00609d:	7c202020 	0x7c202020
1c0060a1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0060a5:	7c7c7c20 	0x7c7c7c20
1c0060a9:	7c202020 	0x7c202020
1c0060ad:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0060b1:	7c7c7c20 	0x7c7c7c20
1c0060b5:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0060b9:	7c7c7c7c 	0x7c7c7c7c
1c0060bd:	7c7c2020 	0x7c7c2020
1c0060c1:	7c00000a 	0x7c00000a
1c0060c5:	7c20207c 	0x7c20207c
1c0060c9:	7c7c7c7c 	0x7c7c7c7c
1c0060cd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0060d1:	7c7c7c20 	0x7c7c7c20
1c0060d5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0060d9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0060dd:	7c7c7c20 	0x7c7c7c20
1c0060e1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0060e5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0060e9:	20207c20 	ll.w	$r0,$r1,8316(0x207c)
1c0060ed:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0060f1:	7c7c7c20 	0x7c7c7c20
1c0060f5:	7c7c2020 	0x7c7c2020
1c0060f9:	7c7c7c7c 	0x7c7c7c7c
1c0060fd:	7c7c7c7c 	0x7c7c7c7c
1c006101:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006105:	7c7c7c20 	0x7c7c7c20
1c006109:	7c7c7c7c 	0x7c7c7c7c
1c00610d:	7c7c2020 	0x7c7c2020
1c006111:	7c7c7c7c 	0x7c7c7c7c
1c006115:	7c7c7c20 	0x7c7c7c20
1c006119:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c00611d:	7c7c7c20 	0x7c7c7c20
1c006121:	7c7c2020 	0x7c7c2020
1c006125:	7c00000a 	0x7c00000a
1c006129:	7c20207c 	0x7c20207c
1c00612d:	7c7c7c7c 	0x7c7c7c7c
1c006131:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006135:	7c7c7c20 	0x7c7c7c20
1c006139:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00613d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006141:	7c7c7c20 	0x7c7c7c20
1c006145:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006149:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00614d:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c006151:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c006155:	7c7c7c20 	0x7c7c7c20
1c006159:	7c7c2020 	0x7c7c2020
1c00615d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006161:	7c7c7c20 	0x7c7c7c20
1c006165:	7c7c7c7c 	0x7c7c7c7c
1c006169:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00616d:	7c7c7c7c 	0x7c7c7c7c
1c006171:	7c7c2020 	0x7c7c2020
1c006175:	7c7c7c7c 	0x7c7c7c7c
1c006179:	7c7c7c20 	0x7c7c7c20
1c00617d:	7c7c2020 	0x7c7c2020
1c006181:	7c7c2020 	0x7c7c2020
1c006185:	7c7c2020 	0x7c7c2020
1c006189:	7c00000a 	0x7c00000a
1c00618d:	7c20207c 	0x7c20207c
1c006191:	7c7c7c7c 	0x7c7c7c7c
1c006195:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006199:	7c7c7c20 	0x7c7c7c20
1c00619d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0061a1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0061a5:	7c7c7c20 	0x7c7c7c20
1c0061a9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0061ad:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0061b1:	7c7c7c20 	0x7c7c7c20
1c0061b5:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c0061b9:	7c7c7c20 	0x7c7c7c20
1c0061bd:	7c7c2020 	0x7c7c2020
1c0061c1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0061c5:	7c7c7c20 	0x7c7c7c20
1c0061c9:	7c7c7c7c 	0x7c7c7c7c
1c0061cd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0061d1:	7c7c7c20 	0x7c7c7c20
1c0061d5:	7c7c2020 	0x7c7c2020
1c0061d9:	7c7c7c7c 	0x7c7c7c7c
1c0061dd:	7c7c7c20 	0x7c7c7c20
1c0061e1:	7c7c2020 	0x7c7c2020
1c0061e5:	7c20207c 	0x7c20207c
1c0061e9:	7c7c2020 	0x7c7c2020
1c0061ed:	7c00000a 	0x7c00000a
1c0061f1:	7c20207c 	0x7c20207c
1c0061f5:	7c7c7c7c 	0x7c7c7c7c
1c0061f9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0061fd:	7c7c2020 	0x7c7c2020
1c006201:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006205:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006209:	7c7c2020 	0x7c7c2020
1c00620d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006211:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006215:	7c7c7c20 	0x7c7c7c20
1c006219:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00621d:	7c7c7c20 	0x7c7c7c20
1c006221:	7c202020 	0x7c202020
1c006225:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006229:	7c7c7c20 	0x7c7c7c20
1c00622d:	7c202020 	0x7c202020
1c006231:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006235:	7c7c7c7c 	0x7c7c7c7c
1c006239:	7c202020 	0x7c202020
1c00623d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006241:	7c7c7c20 	0x7c7c7c20
1c006245:	7c7c2020 	0x7c7c2020
1c006249:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c00624d:	7c7c2020 	0x7c7c2020
1c006251:	7c00000a 	0x7c00000a
1c006255:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006259:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00625d:	7c7c7c7c 	0x7c7c7c7c
1c006261:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006265:	7c202020 	0x7c202020
1c006269:	7c7c7c7c 	0x7c7c7c7c
1c00626d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006271:	7c202020 	0x7c202020
1c006275:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006279:	7c7c7c20 	0x7c7c7c20
1c00627d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006281:	7c7c7c20 	0x7c7c7c20
1c006285:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006289:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00628d:	7c7c7c7c 	0x7c7c7c7c
1c006291:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006295:	7c202020 	0x7c202020
1c006299:	7c7c7c7c 	0x7c7c7c7c
1c00629d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0062a1:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0062a5:	7c7c7c7c 	0x7c7c7c7c
1c0062a9:	7c7c2020 	0x7c7c2020
1c0062ad:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0062b1:	7c7c2020 	0x7c7c2020
1c0062b5:	7c00000a 	0x7c00000a
1c0062b9:	7c7c7c7c 	0x7c7c7c7c
1c0062bd:	7c7c7c7c 	0x7c7c7c7c
1c0062c1:	7c7c7c7c 	0x7c7c7c7c
1c0062c5:	7c7c7c7c 	0x7c7c7c7c
1c0062c9:	7c7c7c7c 	0x7c7c7c7c
1c0062cd:	7c7c7c7c 	0x7c7c7c7c
1c0062d1:	7c7c7c7c 	0x7c7c7c7c
1c0062d5:	7c7c7c7c 	0x7c7c7c7c
1c0062d9:	7c7c7c7c 	0x7c7c7c7c
1c0062dd:	325b7c7c 	xvldrepl.h	$xr28,$r3,-578(0xdbe)
1c0062e1:	20303230 	ll.w	$r16,$r17,12336(0x3030)
1c0062e5:	4e4f4f4c 	jirl	$r12,$r26,-110772(0x24f4c)
1c0062e9:	4e4f5347 	jirl	$r7,$r26,-110768(0x24f50)
1c0062ed:	7c7c7c5d 	0x7c7c7c5d
1c0062f1:	7c7c7c7c 	0x7c7c7c7c
1c0062f5:	7c7c7c7c 	0x7c7c7c7c
1c0062f9:	7c7c7c7c 	0x7c7c7c7c
1c0062fd:	7c7c7c7c 	0x7c7c7c7c
1c006301:	7c7c7c7c 	0x7c7c7c7c
1c006305:	7c7c7c7c 	0x7c7c7c7c
1c006309:	7c7c7c7c 	0x7c7c7c7c
1c00630d:	7c7c7c7c 	0x7c7c7c7c
1c006311:	7c7c7c7c 	0x7c7c7c7c
1c006315:	7c7c7c7c 	0x7c7c7c7c
1c006319:	0900000a 	0x0900000a
1c00631d:	0a006425 	0x0a006425
1c006321:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006325:	776f440a 	xvssrarni.du.q	$xr10,$xr0,0x51
1c006329:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c00632d:	0050550a 	0x0050550a
1c006331:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006335:	6c754d0a 	bgeu	$r8,$r10,30028(0x754c) # 1c00d881 <_sidata+0x5a59>
1c006339:	776f4469 	xvssrarni.du.q	$xr9,$xr3,0x51
1c00633d:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c006341:	756f430a 	0x756f430a
1c006345:	4f20746e 	jirl	$r14,$r3,-57228(0x32074)
1c006349:	0d000056 	fsel	$f22,$f2,$f0,$fcc0
1c00634d:	3030090a 	0x3030090a
1c006351:	09313009 	0x09313009
1c006355:	30093230 	0x30093230
1c006359:	34300933 	0x34300933
1c00635d:	09353009 	0x09353009
1c006361:	30093630 	0x30093630
1c006365:	38300937 	fldx.s	$f23,$r9,$r2
1c006369:	09393009 	0x09393009
1c00636d:	31093031 	0x31093031
1c006371:	0d000031 	fsel	$f17,$f1,$f0,$fcc0
1c006375:	746e630a 	0x746e630a
1c006379:	09000000 	0x09000000
1c00637d:	00643425 	bstrins.w	$r5,$r1,0x4,0xd
1c006381:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006385:	7361420a 	vssrani.w.d	$vr10,$vr16,0x10
1c006389:	6c615665 	bgeu	$r19,$r5,24916(0x6154) # 1c00c4dd <_sidata+0x46b5>
1c00638d:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006391:	6275530a 	blt	$r24,$r10,-101040(0x27550) # 1bfed8e1 <_start-0x1271f>
1c006395:	006c6156 	bstrins.w	$r22,$r10,0xc,0x18
1c006399:	09000000 	0x09000000
1c00639d:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c0063a1:	09000000 	0x09000000
1c0063a5:	00643325 	bstrins.w	$r5,$r25,0x4,0xc
1c0063a9:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0063ad:	203c200a 	ll.w	$r10,$r0,15392(0x3c20)
1c0063b1:	3a515249 	0x3a515249
1c0063b5:	20642520 	ll.w	$r0,$r9,25636(0x6424)
1c0063b9:	636e7566 	blt	$r11,$r6,-37260(0x36e74) # 1bffd22d <_start-0x2dd3>
1c0063bd:	2073253a 	ll.w	$r26,$r9,29476(0x7324)
1c0063c1:	0d3e2020 	0x0d3e2020
1c0063c5:	0a00000a 	0x0a00000a
1c0063c9:	2e2e2e2e 	0x2e2e2e2e
1c0063cd:	2e2e2e2e 	0x2e2e2e2e
1c0063d1:	2e2e2e2e 	0x2e2e2e2e
1c0063d5:	464f532e 	bnez	$r25,3821392(0x3a4f50) # 1c3ab325 <_sidata+0x3a34fd>
1c0063d9:	4e495f54 	jirl	$r20,$r26,-112292(0x2495c)
1c0063dd:	2e2e2e54 	0x2e2e2e54
1c0063e1:	2e2e2e2e 	0x2e2e2e2e
1c0063e5:	2e2e2e2e 	0x2e2e2e2e
1c0063e9:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c0063ed:	0a00000d 	0x0a00000d
1c0063f1:	2e2e2e2e 	0x2e2e2e2e
1c0063f5:	2e2e2e2e 	0x2e2e2e2e
1c0063f9:	2e2e2e2e 	0x2e2e2e2e
1c0063fd:	5441422e 	bl	-122142400(0x8b84140) # 14b8a53d <_start-0x7475ac3>
1c006401:	4941465f 	0x4941465f
1c006405:	2e2e2e4c 	0x2e2e2e4c
1c006409:	2e2e2e2e 	0x2e2e2e2e
1c00640d:	2e2e2e2e 	0x2e2e2e2e
1c006411:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c006415:	0a00000d 	0x0a00000d
1c006419:	2e2e2e2e 	0x2e2e2e2e
1c00641d:	2e2e2e2e 	0x2e2e2e2e
1c006421:	2e2e2e2e 	0x2e2e2e2e
1c006425:	4344412e 	beqz	$r9,3884096(0x3b4440) # 1c3ba865 <_sidata+0x3b2a3d>
1c006429:	2e2e2e2e 	0x2e2e2e2e
1c00642d:	2e2e2e2e 	0x2e2e2e2e
1c006431:	2e2e2e2e 	0x2e2e2e2e
1c006435:	0d0a2e2e 	0x0d0a2e2e
1c006439:	50000000 	b	0 # 1c006439 <hexdecarr+0x790>
1c00643d:	70697265 	vavgr.w	$vr5,$vr19,$vr28
1c006441:	61726568 	blt	$r11,$r8,94820(0x17264) # 1c01d6a5 <_sidata+0x1587d>
1c006445:	5420736c 	bl	-38789008(0xdb02070) # 19b084b5 <_start-0x24f7b4b>
1c006449:	72656d69 	0x72656d69
1c00644d:	656c6320 	bge	$r25,$r0,93280(0x16c60) # 1c01d0ad <_sidata+0x15285>
1c006451:	69207261 	bltu	$r19,$r1,73840(0x12070) # 1c0184c1 <_sidata+0x10699>
1c006455:	7265746e 	0x7265746e
1c006459:	74707572 	xvmax.b	$xr18,$xr11,$xr29
1c00645d:	000a2e2e 	0x000a2e2e
1c006461:	43000000 	beqz	$r0,196608(0x30000) # 1c036461 <_sidata+0x2e639>
1c006465:	2065726f 	ll.w	$r15,$r19,25968(0x6570)
1c006469:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01d1d1 <_sidata+0x153a9>
1c00646d:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00c78d <_sidata+0x4965>
1c006471:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c006475:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c01d8e1 <_sidata+0x15ab9>
1c006479:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c00647d:	0a2e2e74 	xvfmadd.d	$xr20,$xr19,$xr11,$xr28
1c006481:	 	0xec000000

1c006484 <Ext_IrqHandle>:
1c006484:	1c003cec 	pcaddu12i	$r12,487(0x1e7)
1c006488:	1c003d38 	pcaddu12i	$r24,489(0x1e9)
1c00648c:	1c003d84 	pcaddu12i	$r4,492(0x1ec)
1c006490:	1c003dd0 	pcaddu12i	$r16,494(0x1ee)
1c006494:	1c003e1c 	pcaddu12i	$r28,496(0x1f0)
1c006498:	1c003e68 	pcaddu12i	$r8,499(0x1f3)
1c00649c:	1c003eb4 	pcaddu12i	$r20,501(0x1f5)
1c0064a0:	1c003f00 	pcaddu12i	$r0,504(0x1f8)
1c0064a4:	1c003f4c 	pcaddu12i	$r12,506(0x1fa)
1c0064a8:	1c003f98 	pcaddu12i	$r24,508(0x1fc)
1c0064ac:	1c003fe4 	pcaddu12i	$r4,511(0x1ff)
1c0064b0:	1c004030 	pcaddu12i	$r16,513(0x201)
1c0064b4:	1c00407c 	pcaddu12i	$r28,515(0x203)
1c0064b8:	1c0040c8 	pcaddu12i	$r8,518(0x206)
1c0064bc:	1c004114 	pcaddu12i	$r20,520(0x208)
1c0064c0:	1c004160 	pcaddu12i	$r0,523(0x20b)
1c0064c4:	1c0041ac 	pcaddu12i	$r12,525(0x20d)
1c0064c8:	1c0041f8 	pcaddu12i	$r24,527(0x20f)
1c0064cc:	1c004244 	pcaddu12i	$r4,530(0x212)
1c0064d0:	1c004290 	pcaddu12i	$r16,532(0x214)
1c0064d4:	1c0042dc 	pcaddu12i	$r28,534(0x216)
1c0064d8:	1c004328 	pcaddu12i	$r8,537(0x219)
1c0064dc:	1c004374 	pcaddu12i	$r20,539(0x21b)
1c0064e0:	1c0043c0 	pcaddu12i	$r0,542(0x21e)
1c0064e4:	1c00440c 	pcaddu12i	$r12,544(0x220)
1c0064e8:	1c004458 	pcaddu12i	$r24,546(0x222)
1c0064ec:	1c0044a4 	pcaddu12i	$r4,549(0x225)
1c0064f0:	1c0044f0 	pcaddu12i	$r16,551(0x227)
1c0064f4:	1c00453c 	pcaddu12i	$r28,553(0x229)
1c0064f8:	1c004588 	pcaddu12i	$r8,556(0x22c)
1c0064fc:	1c0045d4 	pcaddu12i	$r20,558(0x22e)
1c006500:	1c004620 	pcaddu12i	$r0,561(0x231)
1c006504:	1c0048fc 	pcaddu12i	$r28,583(0x247)
1c006508:	1c0048ac 	pcaddu12i	$r12,581(0x245)
1c00650c:	1c0048fc 	pcaddu12i	$r28,583(0x247)
1c006510:	1c0048fc 	pcaddu12i	$r28,583(0x247)
1c006514:	1c0048fc 	pcaddu12i	$r28,583(0x247)
1c006518:	1c0048fc 	pcaddu12i	$r28,583(0x247)
1c00651c:	1c0048fc 	pcaddu12i	$r28,583(0x247)
1c006520:	1c0048fc 	pcaddu12i	$r28,583(0x247)
1c006524:	1c0048fc 	pcaddu12i	$r28,583(0x247)
1c006528:	1c0048fc 	pcaddu12i	$r28,583(0x247)
1c00652c:	1c0048fc 	pcaddu12i	$r28,583(0x247)
1c006530:	1c0048fc 	pcaddu12i	$r28,583(0x247)
1c006534:	1c0048fc 	pcaddu12i	$r28,583(0x247)
1c006538:	1c0048fc 	pcaddu12i	$r28,583(0x247)
1c00653c:	1c0048fc 	pcaddu12i	$r28,583(0x247)
1c006540:	1c0048fc 	pcaddu12i	$r28,583(0x247)
1c006544:	1c0048c8 	pcaddu12i	$r8,582(0x246)

1c006548 <__FUNCTION__.1575>:
1c006548:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d9c0 <_sidata+0x15b98>
1c00654c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d5b0 <_sidata+0x15788>
1c006550:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bff95b0 <_start-0x6a50>
1c006554:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd6c4 <_start-0x293c>
1c006558:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d3b8 <_sidata+0x5590>
1c00655c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006560 <__FUNCTION__.1579>:
1c006560:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d9d8 <_sidata+0x15bb0>
1c006564:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d5c8 <_sidata+0x157a0>
1c006568:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bff96c8 <_start-0x6938>
1c00656c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd6dc <_start-0x2924>
1c006570:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d3d0 <_sidata+0x55a8>
1c006574:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006578 <__FUNCTION__.1583>:
1c006578:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d9f0 <_sidata+0x15bc8>
1c00657c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d5e0 <_sidata+0x157b8>
1c006580:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bff97e0 <_start-0x6820>
1c006584:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd6f4 <_start-0x290c>
1c006588:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d3e8 <_sidata+0x55c0>
1c00658c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006590 <__FUNCTION__.1587>:
1c006590:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01da08 <_sidata+0x15be0>
1c006594:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d5f8 <_sidata+0x157d0>
1c006598:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bff98f8 <_start-0x6708>
1c00659c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd70c <_start-0x28f4>
1c0065a0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d400 <_sidata+0x55d8>
1c0065a4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0065a8 <__FUNCTION__.1591>:
1c0065a8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01da20 <_sidata+0x15bf8>
1c0065ac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d610 <_sidata+0x157e8>
1c0065b0:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bff9a10 <_start-0x65f0>
1c0065b4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd724 <_start-0x28dc>
1c0065b8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d418 <_sidata+0x55f0>
1c0065bc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0065c0 <__FUNCTION__.1595>:
1c0065c0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01da38 <_sidata+0x15c10>
1c0065c4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d628 <_sidata+0x15800>
1c0065c8:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bff9b28 <_start-0x64d8>
1c0065cc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd73c <_start-0x28c4>
1c0065d0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d430 <_sidata+0x5608>
1c0065d4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0065d8 <__FUNCTION__.1599>:
1c0065d8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01da50 <_sidata+0x15c28>
1c0065dc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d640 <_sidata+0x15818>
1c0065e0:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bff9c40 <_start-0x63c0>
1c0065e4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd754 <_start-0x28ac>
1c0065e8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d448 <_sidata+0x5620>
1c0065ec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0065f0 <__FUNCTION__.1603>:
1c0065f0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01da68 <_sidata+0x15c40>
1c0065f4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d658 <_sidata+0x15830>
1c0065f8:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bff9d58 <_start-0x62a8>
1c0065fc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd76c <_start-0x2894>
1c006600:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d460 <_sidata+0x5638>
1c006604:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006608 <__FUNCTION__.1607>:
1c006608:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01da80 <_sidata+0x15c58>
1c00660c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d670 <_sidata+0x15848>
1c006610:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bff9670 <_start-0x6990>
1c006614:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd784 <_start-0x287c>
1c006618:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d478 <_sidata+0x5650>
1c00661c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006620 <__FUNCTION__.1611>:
1c006620:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01da98 <_sidata+0x15c70>
1c006624:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d688 <_sidata+0x15860>
1c006628:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bff9788 <_start-0x6878>
1c00662c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd79c <_start-0x2864>
1c006630:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d490 <_sidata+0x5668>
1c006634:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006638 <__FUNCTION__.1615>:
1c006638:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dab0 <_sidata+0x15c88>
1c00663c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d6a0 <_sidata+0x15878>
1c006640:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bff98a0 <_start-0x6760>
1c006644:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd7b4 <_start-0x284c>
1c006648:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d4a8 <_sidata+0x5680>
1c00664c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006650 <__FUNCTION__.1619>:
1c006650:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dac8 <_sidata+0x15ca0>
1c006654:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d6b8 <_sidata+0x15890>
1c006658:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bff99b8 <_start-0x6648>
1c00665c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd7cc <_start-0x2834>
1c006660:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d4c0 <_sidata+0x5698>
1c006664:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006668 <__FUNCTION__.1623>:
1c006668:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dae0 <_sidata+0x15cb8>
1c00666c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d6d0 <_sidata+0x158a8>
1c006670:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bff9ad0 <_start-0x6530>
1c006674:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd7e4 <_start-0x281c>
1c006678:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d4d8 <_sidata+0x56b0>
1c00667c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006680 <__FUNCTION__.1627>:
1c006680:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01daf8 <_sidata+0x15cd0>
1c006684:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d6e8 <_sidata+0x158c0>
1c006688:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bff9be8 <_start-0x6418>
1c00668c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd7fc <_start-0x2804>
1c006690:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d4f0 <_sidata+0x56c8>
1c006694:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006698 <__FUNCTION__.1631>:
1c006698:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01db10 <_sidata+0x15ce8>
1c00669c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d700 <_sidata+0x158d8>
1c0066a0:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bff9d00 <_start-0x6300>
1c0066a4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd814 <_start-0x27ec>
1c0066a8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d508 <_sidata+0x56e0>
1c0066ac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0066b0 <__FUNCTION__.1635>:
1c0066b0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01db28 <_sidata+0x15d00>
1c0066b4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d718 <_sidata+0x158f0>
1c0066b8:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bff9e18 <_start-0x61e8>
1c0066bc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd82c <_start-0x27d4>
1c0066c0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d520 <_sidata+0x56f8>
1c0066c4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0066c8 <__FUNCTION__.1639>:
1c0066c8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01db40 <_sidata+0x15d18>
1c0066cc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d730 <_sidata+0x15908>
1c0066d0:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bff9730 <_start-0x68d0>
1c0066d4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd844 <_start-0x27bc>
1c0066d8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d538 <_sidata+0x5710>
1c0066dc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0066e0 <__FUNCTION__.1643>:
1c0066e0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01db58 <_sidata+0x15d30>
1c0066e4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d748 <_sidata+0x15920>
1c0066e8:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bff9848 <_start-0x67b8>
1c0066ec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd85c <_start-0x27a4>
1c0066f0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d550 <_sidata+0x5728>
1c0066f4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0066f8 <__FUNCTION__.1647>:
1c0066f8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01db70 <_sidata+0x15d48>
1c0066fc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d760 <_sidata+0x15938>
1c006700:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bff9960 <_start-0x66a0>
1c006704:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd874 <_start-0x278c>
1c006708:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d568 <_sidata+0x5740>
1c00670c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006710 <__FUNCTION__.1651>:
1c006710:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01db88 <_sidata+0x15d60>
1c006714:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d778 <_sidata+0x15950>
1c006718:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bff9a78 <_start-0x6588>
1c00671c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd88c <_start-0x2774>
1c006720:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d580 <_sidata+0x5758>
1c006724:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006728 <__FUNCTION__.1655>:
1c006728:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dba0 <_sidata+0x15d78>
1c00672c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d790 <_sidata+0x15968>
1c006730:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bff9b90 <_start-0x6470>
1c006734:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd8a4 <_start-0x275c>
1c006738:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d598 <_sidata+0x5770>
1c00673c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006740 <__FUNCTION__.1659>:
1c006740:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dbb8 <_sidata+0x15d90>
1c006744:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d7a8 <_sidata+0x15980>
1c006748:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bff9ca8 <_start-0x6358>
1c00674c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd8bc <_start-0x2744>
1c006750:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d5b0 <_sidata+0x5788>
1c006754:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006758 <__FUNCTION__.1663>:
1c006758:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dbd0 <_sidata+0x15da8>
1c00675c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d7c0 <_sidata+0x15998>
1c006760:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bff9dc0 <_start-0x6240>
1c006764:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd8d4 <_start-0x272c>
1c006768:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d5c8 <_sidata+0x57a0>
1c00676c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006770 <__FUNCTION__.1667>:
1c006770:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dbe8 <_sidata+0x15dc0>
1c006774:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d7d8 <_sidata+0x159b0>
1c006778:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bff9ed8 <_start-0x6128>
1c00677c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd8ec <_start-0x2714>
1c006780:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d5e0 <_sidata+0x57b8>
1c006784:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006788 <__FUNCTION__.1671>:
1c006788:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dc00 <_sidata+0x15dd8>
1c00678c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d7f0 <_sidata+0x159c8>
1c006790:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bff97f4 <_start-0x680c>
1c006794:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd904 <_start-0x26fc>
1c006798:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d5f8 <_sidata+0x57d0>
1c00679c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0067a0 <__FUNCTION__.1675>:
1c0067a0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dc18 <_sidata+0x15df0>
1c0067a4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d808 <_sidata+0x159e0>
1c0067a8:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bff990c <_start-0x66f4>
1c0067ac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd91c <_start-0x26e4>
1c0067b0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d610 <_sidata+0x57e8>
1c0067b4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0067b8 <__FUNCTION__.1679>:
1c0067b8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dc30 <_sidata+0x15e08>
1c0067bc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d820 <_sidata+0x159f8>
1c0067c0:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bff9a24 <_start-0x65dc>
1c0067c4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd934 <_start-0x26cc>
1c0067c8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d628 <_sidata+0x5800>
1c0067cc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0067d0 <__FUNCTION__.1683>:
1c0067d0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dc48 <_sidata+0x15e20>
1c0067d4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d838 <_sidata+0x15a10>
1c0067d8:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bff9b3c <_start-0x64c4>
1c0067dc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd94c <_start-0x26b4>
1c0067e0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d640 <_sidata+0x5818>
1c0067e4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0067e8 <__FUNCTION__.1687>:
1c0067e8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dc60 <_sidata+0x15e38>
1c0067ec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d850 <_sidata+0x15a28>
1c0067f0:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bff9c54 <_start-0x63ac>
1c0067f4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd964 <_start-0x269c>
1c0067f8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d658 <_sidata+0x5830>
1c0067fc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006800 <__FUNCTION__.1691>:
1c006800:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dc78 <_sidata+0x15e50>
1c006804:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d868 <_sidata+0x15a40>
1c006808:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bff9d6c <_start-0x6294>
1c00680c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd97c <_start-0x2684>
1c006810:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d670 <_sidata+0x5848>
1c006814:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006818 <__FUNCTION__.1695>:
1c006818:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dc90 <_sidata+0x15e68>
1c00681c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d880 <_sidata+0x15a58>
1c006820:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bff9e84 <_start-0x617c>
1c006824:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd994 <_start-0x266c>
1c006828:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d688 <_sidata+0x5860>
1c00682c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006830 <__FUNCTION__.1699>:
1c006830:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dca8 <_sidata+0x15e80>
1c006834:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d898 <_sidata+0x15a70>
1c006838:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bff9f9c <_start-0x6064>
1c00683c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd9ac <_start-0x2654>
1c006840:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d6a0 <_sidata+0x5878>
1c006844:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
1c006848:	504d4554 	b	89148740(0x5504d44) # 2150b58c <_sidata+0x5503764>
1c00684c:	3225203a 	xvldrepl.w	$xr26,$r1,1312(0x520)
1c006850:	8384e264 	0x8384e264
1c006854:	00000000 	0x00000000
1c006858:	494d5548 	bcnez	$fcc2,2182484(0x214d54) # 1c21b5ac <_sidata+0x213784>
1c00685c:	3225203a 	xvldrepl.w	$xr26,$r1,1312(0x520)
1c006860:	52252564 	b	93463844(0x5922524) # 21928d84 <_sidata+0x5920f5c>
1c006864:	00000048 	0x00000048

1c006868 <asc2_1608>:
	...
1c006878:	f8000000 	0xf8000000
1c00687c:	00000000 	0x00000000
1c006880:	33000000 	0x33000000
1c006884:	00000000 	0x00000000
1c006888:	020c1000 	slti	$r0,$r0,772(0x304)
1c00688c:	00020c10 	0x00020c10
	...
1c006898:	78c04000 	0x78c04000
1c00689c:	0078c040 	bstrpick.w	$r0,$r2,0x18,0x10
1c0068a0:	043f0400 	csrrd	$r0,0xfc1
1c0068a4:	00043f04 	alsl.w	$r4,$r24,$r15,0x1
1c0068a8:	88887000 	0x88887000
1c0068ac:	003008fc 	0x003008fc
1c0068b0:	20201800 	ll.w	$r0,$r0,8216(0x2018)
1c0068b4:	001e21ff 	mulh.d	$r31,$r15,$r8
1c0068b8:	80f008f0 	0x80f008f0
1c0068bc:	00001860 	cto.w	$r0,$r3
1c0068c0:	030c3100 	lu52i.d	$r0,$r8,780(0x30c)
1c0068c4:	001e211e 	mulh.d	$r30,$r8,$r8
1c0068c8:	8808f000 	0x8808f000
1c0068cc:	00000070 	0x00000070
1c0068d0:	2c23211e 	vld	$vr30,$r8,-1848(0x8c8)
1c0068d4:	10212719 	addu16i.d	$r25,$r24,2121(0x849)
1c0068d8:	000e1200 	bytepick.d	$r0,$r16,$r4,0x4
	...
1c0068e8:	e0000000 	0xe0000000
1c0068ec:	00020418 	0x00020418
1c0068f0:	07000000 	0x07000000
1c0068f4:	00402018 	0x00402018
1c0068f8:	18040200 	pcaddi	$r0,8208(0x2010)
1c0068fc:	000000e0 	0x000000e0
1c006900:	18204000 	pcaddi	$r0,66048(0x10200)
1c006904:	00000007 	0x00000007
1c006908:	f0804040 	0xf0804040
1c00690c:	00404080 	0x00404080
1c006910:	0f010202 	0x0f010202
1c006914:	00020201 	0x00020201
1c006918:	00000000 	0x00000000
1c00691c:	000000e0 	0x000000e0
1c006920:	01010100 	fadd.d	$f0,$f8,$f0
1c006924:	0101010f 	fadd.d	$f15,$f8,$f0
	...
1c006930:	00709000 	bstrpick.w	$r0,$r0,0x10,0x4
	...
1c006940:	01010100 	fadd.d	$f0,$f8,$f0
1c006944:	00010101 	0x00010101
	...
1c006950:	00303000 	0x00303000
	...
1c00695c:	000438c0 	alsl.w	$r0,$r6,$r14,0x1
1c006960:	07186000 	0x07186000
1c006964:	00000000 	0x00000000
1c006968:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c00696c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c006970:	20100f00 	ll.w	$r0,$r24,4108(0x100c)
1c006974:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c006978:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c00697c:	000000f8 	0x000000f8
1c006980:	20200000 	ll.w	$r0,$r0,8192(0x2000)
1c006984:	0020203f 	div.w	$r31,$r1,$r8
1c006988:	08087000 	0x08087000
1c00698c:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c006990:	24283000 	ldptr.w	$r0,$r0,10288(0x2830)
1c006994:	00302122 	0x00302122
1c006998:	08083000 	0x08083000
1c00699c:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c0069a0:	21201800 	sc.w	$r0,$r0,8216(0x2018)
1c0069a4:	001c2221 	mul.w	$r1,$r17,$r8
1c0069a8:	40800000 	beqz	$r0,32768(0x8000) # 1c00e9a8 <_sidata+0x6b80>
1c0069ac:	0000f830 	0x0000f830
1c0069b0:	24050600 	ldptr.w	$r0,$r16,1284(0x504)
1c0069b4:	24243f24 	ldptr.w	$r4,$r25,9276(0x243c)
1c0069b8:	8888f800 	0x8888f800
1c0069bc:	00080888 	bytepick.w	$r8,$r4,$r2,0x0
1c0069c0:	20201900 	ll.w	$r0,$r8,8216(0x2018)
1c0069c4:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c0069c8:	8810e000 	0x8810e000
1c0069cc:	00009088 	0x00009088
1c0069d0:	20110f00 	ll.w	$r0,$r24,4364(0x110c)
1c0069d4:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c0069d8:	08081800 	0x08081800
1c0069dc:	00186888 	sra.w	$r8,$r4,$r26
1c0069e0:	3e000000 	0x3e000000
1c0069e4:	00000001 	0x00000001
1c0069e8:	08887000 	0x08887000
1c0069ec:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c0069f0:	21221c00 	sc.w	$r0,$r0,8732(0x221c)
1c0069f4:	001c2221 	mul.w	$r1,$r17,$r8
1c0069f8:	0808f000 	0x0808f000
1c0069fc:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c006a00:	22120100 	ll.d	$r0,$r8,4608(0x1200)
1c006a04:	000f1122 	bytepick.d	$r2,$r9,$r4,0x6
1c006a08:	c0000000 	0xc0000000
1c006a0c:	000000c0 	0x000000c0
1c006a10:	30000000 	0x30000000
1c006a14:	00000030 	0x00000030
1c006a18:	80000000 	0x80000000
1c006a1c:	00000000 	0x00000000
1c006a20:	e0000000 	0xe0000000
1c006a24:	00000000 	0x00000000
1c006a28:	40800000 	beqz	$r0,32768(0x8000) # 1c00ea28 <_sidata+0x6c00>
1c006a2c:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c006a30:	04020100 	csrxchg	$r0,$r8,0x80
1c006a34:	00201008 	div.w	$r8,$r0,$r4
1c006a38:	40404000 	beqz	$r0,16448(0x4040) # 1c00aa78 <_sidata+0x2c50>
1c006a3c:	00404040 	0x00404040
1c006a40:	02020200 	slti	$r0,$r16,128(0x80)
1c006a44:	00020202 	0x00020202
1c006a48:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c006a4c:	00008040 	0x00008040
1c006a50:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c006a54:	00010204 	0x00010204
1c006a58:	08487000 	0x08487000
1c006a5c:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c006a60:	30000000 	0x30000000
1c006a64:	00000037 	0x00000037
1c006a68:	28c830c0 	ld.d	$r0,$r6,524(0x20c)
1c006a6c:	00e010e8 	bstrpick.d	$r8,$r7,0x20,0x4
1c006a70:	28271807 	ld.b	$r7,$r0,-1594(0x9c6)
1c006a74:	0017282f 	sll.w	$r15,$r1,$r10
1c006a78:	38c00000 	0x38c00000
1c006a7c:	000000e0 	0x000000e0
1c006a80:	02233c20 	slti	$r0,$r1,-1841(0x8cf)
1c006a84:	20382702 	ll.w	$r2,$r24,14372(0x3824)
1c006a88:	8888f808 	0x8888f808
1c006a8c:	00007088 	0x00007088
1c006a90:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c006a94:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c006a98:	080830c0 	0x080830c0
1c006a9c:	00380808 	0x00380808
1c006aa0:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c006aa4:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c006aa8:	0808f808 	0x0808f808
1c006aac:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c006ab0:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c006ab4:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c006ab8:	8888f808 	0x8888f808
1c006abc:	001008e8 	add.w	$r8,$r7,$r2
1c006ac0:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c006ac4:	00182023 	sra.w	$r3,$r1,$r8
1c006ac8:	8888f808 	0x8888f808
1c006acc:	001008e8 	add.w	$r8,$r7,$r2
1c006ad0:	00203f20 	div.w	$r0,$r25,$r15
1c006ad4:	00000003 	0x00000003
1c006ad8:	080830c0 	0x080830c0
1c006adc:	00003808 	revb.2w	$r8,$r0
1c006ae0:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c006ae4:	00021e22 	0x00021e22
1c006ae8:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c006aec:	08f80800 	0x08f80800
1c006af0:	01213f20 	0x01213f20
1c006af4:	203f2101 	ll.w	$r1,$r8,16160(0x3f20)
1c006af8:	f8080800 	0xf8080800
1c006afc:	00000808 	0x00000808
1c006b00:	3f202000 	0x3f202000
1c006b04:	00002020 	clo.d	$r0,$r1
1c006b08:	08080000 	0x08080000
1c006b0c:	000808f8 	bytepick.w	$r24,$r7,$r2,0x0
1c006b10:	808080c0 	0x808080c0
1c006b14:	0000007f 	0x0000007f
1c006b18:	c088f808 	0xc088f808
1c006b1c:	00081828 	bytepick.w	$r8,$r1,$r6,0x0
1c006b20:	01203f20 	0x01203f20
1c006b24:	00203826 	div.w	$r6,$r1,$r14
1c006b28:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c006b2c:	00000000 	0x00000000
1c006b30:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c006b34:	00302020 	0x00302020
1c006b38:	00f8f808 	bstrpick.d	$r8,$r0,0x38,0x3e
1c006b3c:	0008f8f8 	bytepick.w	$r24,$r7,$r30,0x1
1c006b40:	3e013f20 	0x3e013f20
1c006b44:	00203f01 	div.w	$r1,$r24,$r15
1c006b48:	c030f808 	0xc030f808
1c006b4c:	08f80800 	0x08f80800
1c006b50:	00203f20 	div.w	$r0,$r25,$r15
1c006b54:	003f1807 	0x003f1807
1c006b58:	080810e0 	0x080810e0
1c006b5c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c006b60:	2020100f 	ll.w	$r15,$r0,8208(0x2010)
1c006b64:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c006b68:	0808f808 	0x0808f808
1c006b6c:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c006b70:	01213f20 	0x01213f20
1c006b74:	00000101 	0x00000101
1c006b78:	080810e0 	0x080810e0
1c006b7c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c006b80:	2828100f 	ld.b	$r15,$r0,-1532(0xa04)
1c006b84:	004f5030 	0x004f5030
1c006b88:	8888f808 	0x8888f808
1c006b8c:	00708888 	bstrpick.w	$r8,$r4,0x10,0x2
1c006b90:	00203f20 	div.w	$r0,$r25,$r15
1c006b94:	20300c03 	ll.w	$r3,$r0,12300(0x300c)
1c006b98:	08887000 	0x08887000
1c006b9c:	00380808 	0x00380808
1c006ba0:	21203800 	sc.w	$r0,$r0,8248(0x2038)
1c006ba4:	001c2221 	mul.w	$r1,$r17,$r8
1c006ba8:	f8080818 	0xf8080818
1c006bac:	00180808 	sra.w	$r8,$r0,$r2
1c006bb0:	3f200000 	0x3f200000
1c006bb4:	00000020 	0x00000020
1c006bb8:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c006bbc:	08f80800 	0x08f80800
1c006bc0:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c006bc4:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c006bc8:	00887808 	bstrins.d	$r8,$r0,0x8,0x1e
1c006bcc:	0838c800 	0x0838c800
1c006bd0:	38070000 	0x38070000
1c006bd4:	0000010e 	0x0000010e
1c006bd8:	f800f808 	0xf800f808
1c006bdc:	0008f800 	bytepick.w	$r0,$r0,$r30,0x1
1c006be0:	013e0300 	0x013e0300
1c006be4:	0000033e 	0x0000033e
1c006be8:	80681808 	0x80681808
1c006bec:	08186880 	fmadd.s	$f0,$f4,$f26,$f16
1c006bf0:	032c3020 	lu52i.d	$r0,$r1,-1268(0xb0c)
1c006bf4:	20302c03 	ll.w	$r3,$r0,12332(0x302c)
1c006bf8:	00c83808 	bstrpick.d	$r8,$r0,0x8,0xe
1c006bfc:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c006c00:	3f200000 	0x3f200000
1c006c04:	00000020 	0x00000020
1c006c08:	08080810 	0x08080810
1c006c0c:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c006c10:	21263820 	sc.w	$r0,$r1,9784(0x2638)
1c006c14:	00182020 	sra.w	$r0,$r1,$r8
1c006c18:	fe000000 	0xfe000000
1c006c1c:	00020202 	0x00020202
1c006c20:	7f000000 	0x7f000000
1c006c24:	00404040 	0x00404040
1c006c28:	c0380400 	0xc0380400
1c006c2c:	00000000 	0x00000000
1c006c30:	01000000 	0x01000000
1c006c34:	00c03806 	bstrpick.d	$r6,$r0,0x0,0xe
1c006c38:	02020200 	slti	$r0,$r16,128(0x80)
1c006c3c:	000000fe 	0x000000fe
1c006c40:	40404000 	beqz	$r0,16448(0x4040) # 1c00ac80 <_sidata+0x2e58>
1c006c44:	0000007f 	0x0000007f
1c006c48:	02040000 	slti	$r0,$r0,256(0x100)
1c006c4c:	00000402 	0x00000402
	...
1c006c60:	80808080 	0x80808080
1c006c64:	80808080 	0x80808080
1c006c68:	04020200 	csrxchg	$r0,$r16,0x80
	...
1c006c78:	80800000 	0x80800000
1c006c7c:	00000080 	0x00000080
1c006c80:	24241900 	ldptr.w	$r0,$r8,9240(0x2418)
1c006c84:	00203f12 	div.w	$r18,$r24,$r15
1c006c88:	8000f010 	0x8000f010
1c006c8c:	00000080 	0x00000080
1c006c90:	20113f00 	ll.w	$r0,$r24,4412(0x113c)
1c006c94:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c006c98:	80000000 	0x80000000
1c006c9c:	00008080 	0x00008080
1c006ca0:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c006ca4:	00112020 	sub.w	$r0,$r1,$r8
1c006ca8:	80800000 	0x80800000
1c006cac:	00f09080 	bstrpick.d	$r0,$r4,0x30,0x24
1c006cb0:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c006cb4:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c006cb8:	80800000 	0x80800000
1c006cbc:	00008080 	0x00008080
1c006cc0:	24241f00 	ldptr.w	$r0,$r24,9244(0x241c)
1c006cc4:	00172424 	sll.w	$r4,$r1,$r9
1c006cc8:	e0808000 	0xe0808000
1c006ccc:	00209090 	mod.w	$r16,$r4,$r4
1c006cd0:	3f202000 	0x3f202000
1c006cd4:	00002020 	clo.d	$r0,$r1
1c006cd8:	80800000 	0x80800000
1c006cdc:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006ce0:	94946b00 	0x94946b00
1c006ce4:	00609394 	bstrpick.w	$r20,$r28,0x0,0x4
1c006ce8:	8000f010 	0x8000f010
1c006cec:	00008080 	0x00008080
1c006cf0:	00213f20 	div.wu	$r0,$r25,$r15
1c006cf4:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c006cf8:	98988000 	0x98988000
1c006cfc:	00000000 	0x00000000
1c006d00:	3f202000 	0x3f202000
1c006d04:	00002020 	clo.d	$r0,$r1
1c006d08:	80000000 	0x80000000
1c006d0c:	00009898 	0x00009898
1c006d10:	8080c000 	0x8080c000
1c006d14:	00007f80 	0x00007f80
1c006d18:	0000f010 	0x0000f010
1c006d1c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006d20:	06243f20 	cacop	0x0,$r25,-1777(0x90f)
1c006d24:	00203029 	div.w	$r9,$r1,$r12
1c006d28:	f8101000 	0xf8101000
1c006d2c:	00000000 	0x00000000
1c006d30:	3f202000 	0x3f202000
1c006d34:	00002020 	clo.d	$r0,$r1
1c006d38:	80808080 	0x80808080
1c006d3c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006d40:	00203f20 	div.w	$r0,$r25,$r15
1c006d44:	3f00203f 	0x3f00203f
1c006d48:	80008080 	0x80008080
1c006d4c:	00008080 	0x00008080
1c006d50:	00213f20 	div.wu	$r0,$r25,$r15
1c006d54:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c006d58:	80800000 	0x80800000
1c006d5c:	00008080 	0x00008080
1c006d60:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c006d64:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c006d68:	80008080 	0x80008080
1c006d6c:	00000080 	0x00000080
1c006d70:	2091ff80 	ll.w	$r0,$r28,-28164(0x91fc)
1c006d74:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c006d78:	80000000 	0x80000000
1c006d7c:	00800080 	bstrins.d	$r0,$r4,0x0,0x0
1c006d80:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c006d84:	80ff9120 	0x80ff9120
1c006d88:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006d8c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006d90:	213f2020 	sc.w	$r0,$r1,16160(0x3f20)
1c006d94:	00010020 	asrtle.d	$r1,$r0
1c006d98:	80800000 	0x80800000
1c006d9c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006da0:	24243300 	ldptr.w	$r0,$r24,9264(0x2430)
1c006da4:	00192424 	srl.d	$r4,$r1,$r9
1c006da8:	e0808000 	0xe0808000
1c006dac:	00008080 	0x00008080
1c006db0:	1f000000 	pcaddu18i	$r0,-524288(0x80000)
1c006db4:	00102020 	add.w	$r0,$r1,$r8
1c006db8:	00008080 	0x00008080
1c006dbc:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c006dc0:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c006dc4:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c006dc8:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006dcc:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006dd0:	300c0300 	0x300c0300
1c006dd4:	0000030c 	0x0000030c
1c006dd8:	80008080 	0x80008080
1c006ddc:	80800080 	0x80800080
1c006de0:	0c300e01 	0x0c300e01
1c006de4:	01063807 	0x01063807
1c006de8:	80808000 	0x80808000
1c006dec:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c006df0:	0e312000 	0x0e312000
1c006df4:	0020312e 	div.w	$r14,$r9,$r12
1c006df8:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006dfc:	80808000 	0x80808000
1c006e00:	78868100 	0x78868100
1c006e04:	00010618 	0x00010618
1c006e08:	80808000 	0x80808000
1c006e0c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006e10:	2c302100 	vld	$vr0,$r8,-1016(0xc08)
1c006e14:	00302122 	0x00302122
1c006e18:	00000000 	0x00000000
1c006e1c:	0202fc00 	slti	$r0,$r0,191(0xbf)
1c006e20:	00000000 	0x00000000
1c006e24:	40403e01 	beqz	$r16,278588(0x4403c) # 1c04ae60 <_sidata+0x43038>
1c006e28:	00000000 	0x00000000
1c006e2c:	000000ff 	0x000000ff
1c006e30:	00000000 	0x00000000
1c006e34:	000000ff 	0x000000ff
1c006e38:	00fc0202 	bstrpick.d	$r2,$r16,0x3c,0x0
1c006e3c:	00000000 	0x00000000
1c006e40:	013e4040 	0x013e4040
1c006e44:	00000000 	0x00000000
1c006e48:	02010200 	slti	$r0,$r16,64(0x40)
1c006e4c:	00020402 	0x00020402
	...

1c006e58 <tfont16>:
1c006e58:	00be9be5 	bstrins.d	$r5,$r31,0x3e,0x26
1c006e5c:	224202fe 	ll.d	$r30,$r23,16896(0x4200)
1c006e60:	52925e32 	b	-120941988(0x8ca925c) # 14cb00bc <_start-0x734ff44>
1c006e64:	02021232 	slti	$r18,$r17,132(0x84)
1c006e68:	000000fe 	0x000000fe
1c006e6c:	424242ff 	beqz	$r23,-114112(0x7e4240) # 1bfeb0ac <_start-0x14f54>
1c006e70:	69645551 	bltu	$r10,$r17,91220(0x16454) # 1c01d2c4 <_sidata+0x1549c>
1c006e74:	42424241 	beqz	$r18,410176(0x64240) # 1c06b0b4 <_sidata+0x6328c>
1c006e78:	e60000ff 	0xe60000ff
1c006e7c:	08088796 	0x08088796
1c006e80:	08c83808 	0x08c83808
1c006e84:	08080e09 	0x08080e09
1c006e88:	080838c8 	0x080838c8
1c006e8c:	80800008 	0x80800008
1c006e90:	11204040 	addu16i.d	$r0,$r2,18448(0x4810)
1c006e94:	110a040a 	addu16i.d	$r10,$r0,17025(0x4281)
1c006e98:	80404020 	0x80404020
1c006e9c:	98e60080 	0x98e60080
1c006ea0:	000000be 	0x000000be
1c006ea4:	929292fe 	0x929292fe
1c006ea8:	92929292 	0x92929292
1c006eac:	000000fe 	0x000000fe
1c006eb0:	44424000 	bnez	$r0,16960(0x4240) # 1c00b0f0 <_sidata+0x32c8>
1c006eb4:	407f4058 	beqz	$r2,-2064576(0x607f40) # 1be0edf4 <_start-0x1f120c>
1c006eb8:	407f4040 	beqz	$r2,32576(0x7f40) # 1c00edf8 <_sidata+0x6fd0>
1c006ebc:	40464850 	beqz	$r2,-4176312(0x404648) # 1bc0b504 <_start-0x3f4afc>
1c006ec0:	baa4e700 	0xbaa4e700
1c006ec4:	42424040 	beqz	$r2,148032(0x24240) # 1c02b104 <_sidata+0x232dc>
1c006ec8:	c2424242 	0xc2424242
1c006ecc:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ab10c <_sidata+0xa32e4>
1c006ed0:	00404042 	0x00404042
1c006ed4:	06081020 	cacop	0x0,$r1,516(0x204)
1c006ed8:	7f804000 	0x7f804000
1c006edc:	02000000 	slti	$r0,$r0,0
1c006ee0:	00300804 	0x00300804
1c006ee4:	109eaee5 	addu16i.d	$r5,$r23,10155(0x27ab)
1c006ee8:	1484040c 	lu12i.w	$r12,270368(0x42020)
1c006eec:	f4060564 	0xf4060564
1c006ef0:	04040404 	csrrd	$r4,0x101
1c006ef4:	04000c14 	csrrd	$r20,0x3
1c006ef8:	47448484 	bnez	$r4,1262724(0x134484) # 1c13b37c <_sidata+0x133554>
1c006efc:	070c1424 	0x070c1424
1c006f00:	4424140c 	bnez	$r0,3154964(0x302414) # 1c309314 <_sidata+0x3014ec>
1c006f04:	e9000484 	0xe9000484
1c006f08:	fa028caa 	0xfa028caa
1c006f0c:	80fe8282 	0x80fe8282
1c006f10:	4c502040 	jirl	$r0,$r2,20512(0x5020)
1c006f14:	20504c43 	ll.w	$r3,$r2,20556(0x504c)
1c006f18:	18080040 	pcaddi	$r0,16386(0x4002)
1c006f1c:	3f448448 	0x3f448448
1c006f20:	41584440 	beqz	$r2,88132(0x15844) # 1c01c764 <_sidata+0x1493c>
1c006f24:	4758604e 	bnez	$r2,3889248(0x3b5860) # 1c3bc784 <_sidata+0x3b495c>
1c006f28:	b8e60040 	0xb8e60040
1c006f2c:	026010a9 	sltui	$r9,$r5,-2044(0x804)
1c006f30:	fe00008c 	0xfe00008c
1c006f34:	92929292 	0x92929292
1c006f38:	0000fe92 	0x0000fe92
1c006f3c:	7e040400 	0x7e040400
1c006f40:	427e4001 	beqz	$r0,425536(0x67e40) # 1c06ed80 <_sidata+0x66f58>
1c006f44:	7e427e42 	0x7e427e42
1c006f48:	407e4242 	beqz	$r18,556608(0x87e40) # 1c08ed88 <_sidata+0x86f60>
1c006f4c:	bfb9e600 	0xbfb9e600
1c006f50:	8c026010 	0x8c026010
1c006f54:	9292fe00 	0x9292fe00
1c006f58:	92929292 	0x92929292
1c006f5c:	000000fe 	0x000000fe
1c006f60:	017e0404 	0x017e0404
1c006f64:	7f504844 	0x7f504844
1c006f68:	507f4040 	b	16809792(0x1007f40) # 1d00eea8 <_sidata+0x1007080>
1c006f6c:	00404448 	0x00404448
1c006f70:	00a6bae5 	bstrins.d	$r5,$r23,0x26,0x2e
1c006f74:	2424fc00 	ldptr.w	$r0,$r0,9468(0x24fc)
1c006f78:	2625fc24 	ldptr.d	$r4,$r1,9724(0x25fc)
1c006f7c:	2424fc24 	ldptr.w	$r4,$r1,9468(0x24fc)
1c006f80:	40000424 	beqz	$r1,1048580(0x100004) # 1c106f84 <_sidata+0xff15c>
1c006f84:	84808f30 	0x84808f30
1c006f88:	2525554c 	stptr.w	$r12,$r10,9556(0x2554)
1c006f8c:	804c5525 	0x804c5525
1c006f90:	e6008080 	0xe6008080
1c006f94:	101080a3 	addu16i.d	$r3,$r5,1056(0x420)
1c006f98:	5090ffd0 	b	-12545796(0xf4090fc) # 1b410094 <_start-0xbeff6c>
1c006f9c:	434c5020 	beqz	$r1,216144(0x34c50) # 1c03bbec <_sidata+0x33dc4>
1c006fa0:	4020504c 	beqz	$r2,3154000(0x302050) # 1c308ff0 <_sidata+0x3011c8>
1c006fa4:	03040040 	lu52i.d	$r0,$r2,256(0x100)
1c006fa8:	4100ff00 	beqz	$r24,65788(0x100fc) # 1c0170a4 <_sidata+0xf27c>
1c006fac:	4e415844 	jirl	$r4,$r2,-114344(0x24158)
1c006fb0:	40475860 	beqz	$r3,18264(0x4758) # 1c00b708 <_sidata+0x38e0>
1c006fb4:	b5e60040 	0xb5e60040
1c006fb8:	0260108b 	sltui	$r11,$r4,-2044(0x804)
1c006fbc:	02fe008c 	addi.d	$r12,$r4,-128(0xf80)
1c006fc0:	00fe02f2 	bstrpick.d	$r18,$r23,0x3e,0x0
1c006fc4:	00ff00f8 	bstrpick.d	$r24,$r7,0x3f,0x0
1c006fc8:	7e040400 	0x7e040400
1c006fcc:	30478001 	vldrepl.h	$vr1,$r0,960(0x3c0)
1c006fd0:	0027100f 	crcc.w.w.w	$r15,$r0,$r4
1c006fd4:	007f8047 	bstrpick.w	$r7,$r2,0x1f,0x0
1c006fd8:	9eaee500 	0x9eaee500
1c006fdc:	84040c10 	0x84040c10
1c006fe0:	06056414 	cacop	0x14,$r0,345(0x159)
1c006fe4:	040404f4 	csrxchg	$r20,$r7,0x101
1c006fe8:	000c1404 	bytepick.d	$r4,$r0,$r5,0x0
1c006fec:	44848404 	bnez	$r0,1082500(0x108484) # 1c10f470 <_sidata+0x107648>
1c006ff0:	0c142447 	fcmp.cun.s	$fcc7,$f2,$f9
1c006ff4:	24140c07 	ldptr.w	$r7,$r0,5132(0x140c)
1c006ff8:	00048444 	alsl.w	$r4,$r2,$r1,0x2
1c006ffc:	028caae9 	addi.w	$r9,$r23,810(0x32a)
1c007000:	fe8282fa 	0xfe8282fa
1c007004:	50204080 	b	33562688(0x2002040) # 1e009044 <_sidata+0x200121c>
1c007008:	504c434c 	b	-47166400(0xd304c40) # 1930bc48 <_start-0x2cf43b8>
1c00700c:	08004020 	0x08004020
1c007010:	44844818 	bnez	$r0,-2063288(0x608448) # 1be0f458 <_start-0x1f0ba8>
1c007014:	5844403f 	beq	$r1,$r31,17472(0x4440) # 1c00b454 <_sidata+0x362c>
1c007018:	58604e41 	beq	$r18,$r1,24652(0x604c) # 1c00d064 <_sidata+0x523c>
1c00701c:	e2004047 	0xe2004047
1c007020:	09068384 	0x09068384
1c007024:	0cf8e609 	0x0cf8e609
1c007028:	02020204 	slti	$r4,$r16,128(0x80)
1c00702c:	1e040202 	pcaddu18i	$r2,8208(0x2010)
1c007030:	00000000 	0x00000000
1c007034:	301f0700 	0x301f0700
1c007038:	40404020 	beqz	$r1,16448(0x4040) # 1c00b078 <_sidata+0x3250>
1c00703c:	10204040 	addu16i.d	$r0,$r2,2064(0x810)
1c007040:	a4e70000 	0xa4e70000
1c007044:	424040ba 	beqz	$r5,-1425344(0x6a4040) # 1beab084 <_start-0x154f7c>
1c007048:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ab288 <_sidata+0xa3460>
1c00704c:	424242c2 	beqz	$r22,672320(0xa4240) # 1c0ab28c <_sidata+0xa3464>
1c007050:	40404242 	beqz	$r18,540736(0x84040) # 1c08b090 <_sidata+0x83268>
1c007054:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c007058:	80400006 	0x80400006
1c00705c:	0000007f 	0x0000007f
1c007060:	30080402 	0x30080402
1c007064:	be98e600 	0xbe98e600
1c007068:	fe000000 	0xfe000000
1c00706c:	92929292 	0x92929292
1c007070:	fe929292 	0xfe929292
1c007074:	00000000 	0x00000000
1c007078:	58444240 	beq	$r18,$r0,17472(0x4440) # 1c00b4b8 <_sidata+0x3690>
1c00707c:	40407f40 	beqz	$r26,16508(0x407c) # 1c00b0f8 <_sidata+0x32d0>
1c007080:	50407f40 	b	-50315140(0xd00407c) # 1900b0fc <_start-0x2ff4f04>
1c007084:	00404648 	0x00404648
1c007088:	109eaee5 	addu16i.d	$r5,$r23,10155(0x27ab)
1c00708c:	1484040c 	lu12i.w	$r12,270368(0x42020)
1c007090:	f4060564 	0xf4060564
1c007094:	04040404 	csrrd	$r4,0x101
1c007098:	04000c14 	csrrd	$r20,0x3
1c00709c:	47448484 	bnez	$r4,1262724(0x134484) # 1c13b520 <_sidata+0x1336f8>
1c0070a0:	070c1424 	0x070c1424
1c0070a4:	4424140c 	bnez	$r0,3154964(0x302414) # 1c3094b8 <_sidata+0x301690>
1c0070a8:	e9000484 	0xe9000484
1c0070ac:	fa028caa 	0xfa028caa
1c0070b0:	80fe8282 	0x80fe8282
1c0070b4:	4c502040 	jirl	$r0,$r2,20512(0x5020)
1c0070b8:	20504c43 	ll.w	$r3,$r2,20556(0x504c)
1c0070bc:	18080040 	pcaddi	$r0,16386(0x4002)
1c0070c0:	3f448448 	0x3f448448
1c0070c4:	41584440 	beqz	$r2,88132(0x15844) # 1c01c908 <_sidata+0x14ae0>
1c0070c8:	4758604e 	bnez	$r2,3889248(0x3b5860) # 1c3bc928 <_sidata+0x3b4b00>
1c0070cc:	99e70040 	0x99e70040
1c0070d0:	e20202be 	0xe20202be
1c0070d4:	2a322222 	ld.bu	$r2,$r17,-888(0xc88)
1c0070d8:	22222226 	ll.d	$r6,$r17,8736(0x2220)
1c0070dc:	0202e222 	slti	$r2,$r17,184(0xb8)
1c0070e0:	ff000000 	0xff000000
1c0070e4:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ab324 <_sidata+0xa34fc>
1c0070e8:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ab328 <_sidata+0xa3500>
1c0070ec:	0000ff42 	0x0000ff42
1c0070f0:	91a7e700 	0x91a7e700
1c0070f4:	fea42424 	0xfea42424
1c0070f8:	220022a3 	ll.d	$r3,$r21,32(0x20)
1c0070fc:	ff0000cc 	0xff0000cc
1c007100:	00000000 	0x00000000
1c007104:	ff010608 	0xff010608
1c007108:	04040100 	csrxchg	$r0,$r8,0x100
1c00710c:	ff040404 	0xff040404
1c007110:	00020202 	0x00020202
1c007114:	84a38de8 	0x84a38de8
1c007118:	2f242464 	0x2f242464
1c00711c:	24a42424 	ldptr.w	$r4,$r1,-23516(0xa424)
1c007120:	24242f24 	ldptr.w	$r4,$r25,9260(0x242c)
1c007124:	400064a4 	beqz	$r5,1048676(0x100064) # 1c107188 <_sidata+0xff360>
1c007128:	12222242 	addu16i.d	$r2,$r18,-30584(0x8888)
1c00712c:	06ff060a 	0x06ff060a
1c007130:	2222120a 	ll.d	$r10,$r16,8720(0x2210)
1c007134:	e5004042 	0xe5004042
1c007138:	20409b88 	ll.w	$r8,$r28,16536(0x4098)
1c00713c:	44434cd0 	bnez	$r6,-4177076(0x40434c) # 1bc0b488 <_start-0x3f4b78>
1c007140:	002010c8 	div.w	$r8,$r6,$r4
1c007144:	ff0000f8 	0xff0000f8
1c007148:	00000000 	0x00000000
1c00714c:	4844403f 	bceqz	$fcc1,-244672(0x7c4440) # 1bfcb58c <_start-0x34a74>
1c007150:	00704047 	bstrins.w	$r7,$r2,0x10,0x10
1c007154:	7f80400f 	0x7f80400f
1c007158:	b0e80000 	0xb0e80000
1c00715c:	cc4240a2 	0xcc4240a2
1c007160:	56fc0000 	bl	195584(0x2fc00) # 1c036d60 <_sidata+0x2ef38>
1c007164:	1080fc55 	addu16i.d	$r21,$r2,8255(0x203f)
1c007168:	1010ff10 	addu16i.d	$r16,$r24,1087(0x43f)
1c00716c:	3f000000 	0x3f000000
1c007170:	4a132a10 	0x4a132a10
1c007174:	43007f86 	beqz	$r28,1769596(0x1b007c) # 1c1b71f0 <_sidata+0x1af3c8>
1c007178:	00007f80 	0x00007f80
1c00717c:	9381e900 	0x9381e900
1c007180:	cc424040 	0xcc424040
1c007184:	aae90800 	0xaae90800
1c007188:	aaa8a8b8 	0xaaa8a8b8
1c00718c:	000008e9 	0x000008e9
1c007190:	1f204000 	pcaddu18i	$r0,-458240(0x90200)
1c007194:	4a5f4020 	bceqz	$fcc1,155456(0x25f40) # 1c02d0d4 <_sidata+0x252ac>
1c007198:	4a4a4a4a 	0x4a4a4a4a
1c00719c:	0040405f 	0x0040405f
1c0071a0:	1090bae6 	addu16i.d	$r6,$r23,9262(0x242e)
1c0071a4:	008c0260 	bstrins.d	$r0,$r19,0xc,0x0
1c0071a8:	52f202fe 	b	-67440128(0xbfaf200) # 17fb63a8 <_start-0x4049c58>
1c0071ac:	5252565a 	b	-110472620(0x96a5254) # 156ac400 <_start-0x6953c00>
1c0071b0:	040002f2 	csrxchg	$r18,$r23,0x0
1c0071b4:	30417e04 	vldrepl.h	$vr4,$r16,190(0xbe)
1c0071b8:	4913200f 	bceqz	$fcc0,4002592(0x3d1320) # 1c3d84d8 <_sidata+0x3d06b0>
1c0071bc:	09017f81 	0x09017f81
1c0071c0:	e6002013 	0xe6002013
1c0071c4:	601096b9 	blt	$r21,$r25,4244(0x1094) # 1c008258 <_sidata+0x430>
1c0071c8:	88008c02 	0x88008c02
1c0071cc:	8888ff88 	0x8888ff88
1c0071d0:	2222fe00 	ll.d	$r0,$r16,8956(0x22fc)
1c0071d4:	040400fe 	csrxchg	$r30,$r7,0x100
1c0071d8:	1f00017e 	pcaddu18i	$r30,-524277(0x8000b)
1c0071dc:	9f080808 	0x9f080808
1c0071e0:	82421f60 	0x82421f60
1c0071e4:	8de5007f 	0x8de5007f
1c0071e8:	24e40497 	ldptr.w	$r23,$r4,-7164(0xe404)
1c0071ec:	24a46424 	ldptr.w	$r4,$r1,-23452(0xa464)
1c0071f0:	64a4243f 	bge	$r1,$r31,42020(0xa424) # 1c011614 <_sidata+0x97ec>
1c0071f4:	04e42424 	csrwr	$r4,0x3909
1c0071f8:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c0071fc:	09090908 	0x09090908
1c007200:	0909097f 	0x0909097f
1c007204:	007f8048 	bstrpick.w	$r8,$r2,0x1f,0x0
1c007208:	a5b7e500 	0xa5b7e500
1c00720c:	04040400 	csrrd	$r0,0x101
1c007210:	fc040404 	0xfc040404
1c007214:	04040404 	csrrd	$r4,0x101
1c007218:	00000404 	0x00000404
1c00721c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007220:	3f202020 	0x3f202020
1c007224:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007228:	00202020 	div.w	$r0,$r1,$r8
1c00722c:	009ab8e4 	bstrins.d	$r4,$r7,0x1a,0x2e
1c007230:	00806010 	bstrins.d	$r16,$r0,0x0,0x18
1c007234:	000000ff 	0x000000ff
1c007238:	c00000ff 	0xc00000ff
1c00723c:	40000030 	beqz	$r1,-4194304(0x400000) # 1bc0723c <_start-0x3f8dc4>
1c007240:	40434040 	beqz	$r2,17216(0x4340) # 1c00b580 <_sidata+0x3758>
1c007244:	4040407f 	beqz	$r3,-245696(0x7c4040) # 1bfcb284 <_start-0x34d7c>
1c007248:	4041427f 	beqz	$r19,-245440(0x7c4140) # 1bfcb388 <_start-0x34c78>
1c00724c:	e5004040 	0xe5004040
1c007250:	2020a7a4 	ll.w	$r4,$r29,8356(0x20a4)
1c007254:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007258:	2020ff20 	ll.w	$r0,$r25,8444(0x20fc)
1c00725c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007260:	80800020 	0x80800020
1c007264:	0c102040 	fcmp.caf.s	$fcc0,$f2,$f8
1c007268:	0c030003 	0x0c030003
1c00726c:	80402010 	0x80402010
1c007270:	ade50080 	0xade50080
1c007274:	113040a6 	addu16i.d	$r6,$r5,19472(0x4c10)
1c007278:	91909096 	0x91909096
1c00727c:	98909096 	0x98909096
1c007280:	30501314 	vldrepl.h	$vr20,$r24,-2040(0x808)
1c007284:	04040400 	csrrd	$r0,0x101
1c007288:	84440404 	0x84440404
1c00728c:	0405067e 	csrxchg	$r30,$r19,0x141
1c007290:	04040404 	csrrd	$r4,0x101
1c007294:	a8bde800 	0xa8bde800
1c007298:	e88fb8c8 	0xe88fb8c8
1c00729c:	10108888 	addu16i.d	$r8,$r4,1058(0x422)
1c0072a0:	f01010ff 	0xf01010ff
1c0072a4:	00000000 	0x00000000
1c0072a8:	ff081808 	0xff081808
1c0072ac:	30408404 	vldrepl.h	$vr4,$r0,66(0x42)
1c0072b0:	3f00000f 	0x3f00000f
1c0072b4:	00784040 	bstrins.w	$r0,$r2,0x18,0x10
1c0072b8:	409381e9 	beqz	$r15,2397056(0x249380) # 1c250638 <_sidata+0x248810>
1c0072bc:	00cc4240 	bstrpick.d	$r0,$r18,0xc,0x10
1c0072c0:	b8aae908 	0xb8aae908
1c0072c4:	e9aaa8a8 	0xe9aaa8a8
1c0072c8:	00000008 	0x00000008
1c0072cc:	201f2040 	ll.w	$r0,$r2,7968(0x1f20)
1c0072d0:	4a4a5f40 	0x4a4a5f40
1c0072d4:	5f4a4a4a 	bne	$r18,$r10,-46520(0x34a48) # 1bffbd1c <_start-0x42e4>
1c0072d8:	e4004040 	0xe4004040
1c0072dc:	0808a4ba 	0x0808a4ba
1c0072e0:	08086888 	0x08086888
1c0072e4:	08080e09 	0x08080e09
1c0072e8:	88482888 	0x88482888
1c0072ec:	81800008 	0x81800008
1c0072f0:	22214040 	ll.d	$r0,$r2,8512(0x2140)
1c0072f4:	22140814 	ll.d	$r20,$r0,5128(0x1408)
1c0072f8:	81804041 	0x81804041
1c0072fc:	80e90080 	0x80e90080
1c007300:	cc42409a 	0xcc42409a
1c007304:	22e20000 	ll.d	$r0,$r0,-7680(0xe200)
1c007308:	2af22a2a 	preld	0xa,$r17,-886(0xc8a)
1c00730c:	00e02226 	bstrpick.d	$r6,$r17,0x20,0x8
1c007310:	3f408000 	0x3f408000
1c007314:	89ff8040 	0x89ff8040
1c007318:	89bf8989 	0x89bf8989
1c00731c:	80bfc9a9 	0x80bfc9a9
1c007320:	a6ade500 	0xa6ade500
1c007324:	96113040 	0x96113040
1c007328:	96919090 	0x96919090
1c00732c:	14989090 	lu12i.w	$r16,312452(0x4c484)
1c007330:	00305013 	0x00305013
1c007334:	04040404 	csrrd	$r4,0x101
1c007338:	7e844404 	0x7e844404
1c00733c:	04040506 	csrxchg	$r6,$r8,0x101
1c007340:	00040404 	alsl.w	$r4,$r0,$r1,0x1
1c007344:	00a299e9 	bstrins.d	$r9,$r15,0x22,0x26
1c007348:	865a22fe 	0x865a22fe
1c00734c:	24240c10 	ldptr.w	$r16,$r0,9228(0x240c)
1c007350:	24242625 	ldptr.w	$r5,$r17,9252(0x2424)
1c007354:	00000c14 	0x00000c14
1c007358:	070804ff 	0x070804ff
1c00735c:	0f314180 	0x0f314180
1c007360:	413f0101 	beqz	$r8,343808(0x53f00) # 1c05b260 <_sidata+0x53438>
1c007364:	00007141 	0x00007141

1c007368 <tfont32>:
1c007368:	00be99e7 	bstrins.d	$r7,$r15,0x3e,0x26
1c00736c:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c007370:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007374:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007378:	70f0f010 	vsrlr.h	$vr16,$vr0,$vr28
1c00737c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007380:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007384:	10181010 	addu16i.d	$r16,$r0,1540(0x604)
	...
1c007390:	f8fc0000 	0xf8fc0000
1c007394:	08080808 	0x08080808
1c007398:	08080b0c 	0x08080b0c
1c00739c:	08080808 	0x08080808
1c0073a0:	f8fc0808 	0xf8fc0808
	...
1c0073b0:	ffff0000 	0xffff0000
1c0073b4:	08080808 	0x08080808
1c0073b8:	08080808 	0x08080808
1c0073bc:	08080808 	0x08080808
1c0073c0:	ffff0808 	0xffff0808
	...
1c0073d0:	3f7f0000 	0x3f7f0000
1c0073d4:	08080808 	0x08080808
1c0073d8:	08080808 	0x08080808
1c0073dc:	08080808 	0x08080808
1c0073e0:	3f7f0808 	0x3f7f0808
1c0073e4:	00000000 	0x00000000
1c0073e8:	e7000000 	0xe7000000
1c0073ec:	000091a7 	0x000091a7
1c0073f0:	20404040 	ll.w	$r0,$r2,16448(0x4040)
1c0073f4:	e0e02020 	0xe0e02020
1c0073f8:	18181030 	pcaddi	$r16,49281(0xc081)
1c0073fc:	80000000 	0x80000000
1c007400:	00000080 	0x00000080
1c007404:	f8fc0000 	0xf8fc0000
1c007408:	00000008 	0x00000008
1c00740c:	00000000 	0x00000000
1c007410:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007414:	ffff9010 	0xffff9010
1c007418:	18101010 	pcaddi	$r16,32896(0x8080)
1c00741c:	c0000010 	0xc0000010
1c007420:	00060781 	alsl.wu	$r1,$r28,$r1,0x1
1c007424:	ffff0000 	0xffff0000
	...
1c007430:	18204080 	pcaddi	$r0,66052(0x10204)
1c007434:	ffff030e 	0xffff030e
1c007438:	5e060301 	bne	$r24,$r1,-129536(0x20600) # 1bfe7a38 <_start-0x185c8>
1c00743c:	20202040 	ll.w	$r0,$r2,8224(0x2020)
1c007440:	10102321 	addu16i.d	$r1,$r25,1032(0x408)
1c007444:	ffff1010 	0xffff1010
1c007448:	0c0c0808 	0x0c0c0808
1c00744c:	01000000 	0x01000000
1c007450:	00000000 	0x00000000
1c007454:	3f7f0000 	0x3f7f0000
	...
1c007464:	3f7f0000 	0x3f7f0000
1c007468:	00000000 	0x00000000
1c00746c:	8de80000 	0x8de80000
1c007470:	000000a3 	0x000000a3
1c007474:	80808080 	0x80808080
1c007478:	80808080 	0x80808080
1c00747c:	8088f8fc 	0x8088f8fc
1c007480:	80808080 	0x80808080
1c007484:	8088f8fc 	0x8088f8fc
1c007488:	e0c08080 	0xe0c08080
1c00748c:	000080c0 	0x000080c0
1c007490:	00000000 	0x00000000
1c007494:	10f8c080 	addu16i.d	$r0,$r4,15920(0x3e30)
1c007498:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00749c:	10101717 	addu16i.d	$r23,$r24,1029(0x405)
1c0074a0:	1050f0f0 	addu16i.d	$r16,$r7,5180(0x143c)
1c0074a4:	10101317 	addu16i.d	$r23,$r24,1028(0x404)
1c0074a8:	f0d01010 	0xf0d01010
1c0074ac:	00001038 	clo.w	$r24,$r1
1c0074b0:	00000000 	0x00000000
1c0074b4:	02020200 	slti	$r0,$r16,128(0x80)
1c0074b8:	c2820202 	0xc2820202
1c0074bc:	061e3a62 	cacop	0x2,$r19,1934(0x78e)
1c0074c0:	0e02ffff 	0x0e02ffff
1c0074c4:	82c26212 	0x82c26212
1c0074c8:	03020282 	lu52i.d	$r2,$r20,128(0x80)
1c0074cc:	00000203 	0x00000203
1c0074d0:	10000000 	addu16i.d	$r0,$r0,0
1c0074d4:	06040808 	cacop	0x8,$r0,258(0x102)
1c0074d8:	00010102 	0x00010102
1c0074dc:	00000000 	0x00000000
1c0074e0:	00003f7f 	revb.d	$r31,$r27
1c0074e4:	01000000 	0x01000000
1c0074e8:	0e060303 	0x0e060303
1c0074ec:	0004040e 	alsl.w	$r14,$r0,$r1,0x1
1c0074f0:	9b88e500 	0x9b88e500
1c0074f4:	00000000 	0x00000000
1c0074f8:	c0000000 	0xc0000000
1c0074fc:	28183cf0 	ld.b	$r16,$r7,1551(0x60f)
1c007500:	80c04060 	0x80c04060
	...
1c00750c:	f8000000 	0xf8000000
1c007510:	000000f8 	0x000000f8
1c007514:	40800000 	beqz	$r0,32768(0x8000) # 1c00f514 <_sidata+0x76ec>
1c007518:	23e6f830 	sc.d	$r16,$r1,-6408(0xe6f8)
1c00751c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007520:	23f0e020 	sc.d	$r0,$r1,-3872(0xf0e0)
1c007524:	00000207 	0x00000207
1c007528:	0002ff00 	0x0002ff00
1c00752c:	ff000000 	0xff000000
1c007530:	000000ff 	0x000000ff
1c007534:	00000100 	0x00000100
1c007538:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
1c00753c:	60200000 	blt	$r0,$r0,8192(0x2000) # 1c00953c <_sidata+0x1714>
1c007540:	001f3f60 	mulw.d.w	$r0,$r27,$r15
1c007544:	00008000 	0x00008000
1c007548:	00007f00 	0x00007f00
1c00754c:	ff000000 	0xff000000
1c007550:	000000ff 	0x000000ff
1c007554:	00000000 	0x00000000
1c007558:	303f0700 	0x303f0700
1c00755c:	30303030 	0x30303030
1c007560:	30303030 	0x30303030
1c007564:	00103f38 	add.w	$r24,$r25,$r15
1c007568:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c00756c:	3f703030 	0x3f703030
1c007570:	0000001f 	0x0000001f
1c007574:	0088bcef 	bstrins.d	$r15,$r7,0x8,0x2f
	...
1c00758c:	40800000 	beqz	$r0,32768(0x8000) # 1c00f58c <_sidata+0x7764>
1c007590:	00102040 	add.w	$r0,$r2,$r8
	...
1c0075a8:	1cf00000 	pcaddu12i	$r0,491520(0x78000)
1c0075ac:	00000306 	0x00000306
	...
1c0075c8:	701f0000 	vaddwev.d.w	$vr0,$vr0,$vr0
1c0075cc:	000000c0 	0x000000c0
	...
1c0075ec:	04020100 	csrxchg	$r0,$r8,0x80
1c0075f0:	0010080c 	add.w	$r12,$r0,$r2
1c0075f4:	e5000000 	0xe5000000
1c0075f8:	0000978c 	0x0000978c
	...
1c007604:	08f8fc00 	0x08f8fc00
1c007608:	00000000 	0x00000000
1c00760c:	0008f8fc 	bytepick.w	$r28,$r7,$r30,0x1
	...
1c00761c:	08080808 	0x08080808
1c007620:	08080808 	0x08080808
1c007624:	00ffff08 	bstrpick.d	$r8,$r24,0x3f,0x3f
1c007628:	00000000 	0x00000000
1c00762c:	4040ffff 	beqz	$r31,-245508(0x7c40fc) # 1bfcb728 <_start-0x348d8>
1c007630:	18103020 	pcaddi	$r0,33153(0x8181)
1c007634:	00040e0c 	alsl.w	$r12,$r16,$r3,0x1
	...
1c007640:	80000000 	0x80000000
1c007644:	00ffff80 	bstrpick.d	$r0,$r28,0x3f,0x3f
1c007648:	00000000 	0x00000000
1c00764c:	0000ffff 	0x0000ffff
1c007650:	00000000 	0x00000000
1c007654:	00c00000 	bstrpick.d	$r0,$r0,0x0,0x0
1c007658:	00000000 	0x00000000
1c00765c:	03060606 	lu52i.d	$r6,$r16,385(0x181)
1c007660:	00010103 	0x00010103
1c007664:	003f7f00 	0x003f7f00
1c007668:	00000000 	0x00000000
1c00766c:	30303f1f 	0x30303f1f
1c007670:	30303030 	0x30303030
1c007674:	183f3830 	pcaddi	$r16,129473(0x1f9c1)
1c007678:	bae40000 	0xbae40000
1c00767c:	800000ac 	0x800000ac
1c007680:	80808080 	0x80808080
1c007684:	80808080 	0x80808080
1c007688:	8c808080 	0x8c808080
1c00768c:	80b0f898 	0x80b0f898
1c007690:	80808080 	0x80808080
1c007694:	c0808080 	0xc0808080
1c007698:	0080c0e0 	bstrins.d	$r0,$r7,0x0,0x30
	...
1c0076a4:	08f8f800 	0x08f8f800
1c0076a8:	08080808 	0x08080808
1c0076ac:	08080808 	0x08080808
1c0076b0:	f8080808 	0xf8080808
1c0076b4:	000008fc 	0x000008fc
	...
1c0076c4:	e4cf0f00 	0xe4cf0f00
1c0076c8:	04040444 	csrxchg	$r4,$r2,0x101
1c0076cc:	0404fcfc 	csrxchg	$r28,$r7,0x13f
1c0076d0:	cf442404 	0xcf442404
1c0076d4:	0000008f 	0x0000008f
1c0076d8:	00000000 	0x00000000
1c0076dc:	20000000 	ll.w	$r0,$r0,0
1c0076e0:	04081010 	csrrd	$r16,0x204
1c0076e4:	00010306 	0x00010306
1c0076e8:	70301010 	vsubwev.h.bu	$vr16,$vr0,$vr4
1c0076ec:	00003f3f 	revb.d	$r31,$r25
1c0076f0:	00000000 	0x00000000
1c0076f4:	1e0e0301 	pcaddu18i	$r1,28696(0x7018)
1c0076f8:	00000018 	0x00000018
1c0076fc:	89bcef00 	0x89bcef00
1c007700:	00000000 	0x00000000
1c007704:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c007708:	0080c060 	bstrins.d	$r0,$r3,0x0,0x30
	...
1c007728:	06010000 	cacop	0x0,$r0,64(0x40)
1c00772c:	0000f03c 	0x0000f03c
	...
1c007748:	c0800000 	0xc0800000
1c00774c:	00000f78 	0x00000f78
	...
1c007764:	0c081000 	0x0c081000
1c007768:	00010306 	0x00010306
	...
1c007780:	0091a7e7 	bstrins.d	$r7,$r31,0x11,0x29
1c007784:	40404000 	beqz	$r0,16448(0x4040) # 1c00b7c4 <_sidata+0x399c>
1c007788:	e0202020 	0xe0202020
1c00778c:	181030e0 	pcaddi	$r0,33159(0x8187)
1c007790:	00000018 	0x00000018
1c007794:	00008080 	0x00008080
1c007798:	fc000000 	0xfc000000
1c00779c:	000008f8 	0x000008f8
1c0077a0:	00000000 	0x00000000
1c0077a4:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c0077a8:	ff901010 	0xff901010
1c0077ac:	101010ff 	addu16i.d	$r31,$r7,1028(0x404)
1c0077b0:	00001018 	clo.w	$r24,$r0
1c0077b4:	060781c0 	cacop	0x0,$r14,480(0x1e0)
1c0077b8:	ff000000 	0xff000000
1c0077bc:	000000ff 	0x000000ff
1c0077c0:	00000000 	0x00000000
1c0077c4:	20408000 	ll.w	$r0,$r0,16512(0x4080)
1c0077c8:	ff030e18 	0xff030e18
1c0077cc:	060301ff 	cacop	0x1f,$r15,192(0xc0)
1c0077d0:	2020405e 	ll.w	$r30,$r2,8256(0x2040)
1c0077d4:	10232120 	addu16i.d	$r0,$r9,2248(0x8c8)
1c0077d8:	ff101010 	0xff101010
1c0077dc:	0c0808ff 	0x0c0808ff
1c0077e0:	0000000c 	0x0000000c
1c0077e4:	00000001 	0x00000001
1c0077e8:	7f000000 	0x7f000000
1c0077ec:	0000003f 	0x0000003f
	...
1c0077f8:	7f000000 	0x7f000000
1c0077fc:	0000003f 	0x0000003f
1c007800:	e6000000 	0xe6000000
1c007804:	0000808a 	0x0000808a
1c007808:	00000000 	0x00000000
1c00780c:	08f8fc00 	0x08f8fc00
	...
1c007818:	f8fc0000 	0xf8fc0000
1c00781c:	00000008 	0x00000008
	...
1c007828:	02020202 	slti	$r2,$r16,128(0x80)
1c00782c:	02ffff02 	addi.d	$r2,$r24,-1(0xfff)
1c007830:	42438382 	beqz	$r28,672640(0xa4380) # 1c0abbb0 <_sidata+0xa3d88>
1c007834:	82828282 	0x82828282
1c007838:	ffff8282 	0xffff8282
1c00783c:	82828282 	0x82828282
1c007840:	020383c2 	slti	$r2,$r30,224(0xe0)
1c007844:	00000000 	0x00000000
1c007848:	06060c0c 	cacop	0xc,$r0,387(0x183)
1c00784c:	01ffff02 	0x01ffff02
1c007850:	00000000 	0x00000000
1c007854:	1c030000 	pcaddu12i	$r0,6144(0x1800)
1c007858:	8000c070 	0x8000c070
1c00785c:	0f3c70c0 	0x0f3c70c0
1c007860:	00000003 	0x00000003
1c007864:	00000000 	0x00000000
1c007868:	30101000 	vldrepl.d	$vr0,$r0,32(0x20)
1c00786c:	003f3f70 	0x003f3f70
1c007870:	20204040 	ll.w	$r0,$r2,8256(0x2040)
1c007874:	08181020 	fmadd.s	$f0,$f1,$f4,$f16
1c007878:	0703060c 	0x0703060c
1c00787c:	38180c0f 	stx.w	$r15,$r0,$r3
1c007880:	20303030 	ll.w	$r16,$r1,12336(0x3030)
1c007884:	8fe50000 	0x8fe50000
1c007888:	00000091 	0x00000091
1c00788c:	f0800000 	0xf0800000
1c007890:	00000070 	0x00000070
1c007894:	18fcc000 	pcaddi	$r0,517632(0x7e600)
1c007898:	00000000 	0x00000000
1c00789c:	70100800 	0x70100800
1c0078a0:	0000c0e0 	0x0000c0e0
	...
1c0078ac:	05070e04 	0x05070e04
1c0078b0:	84040404 	0x84040404
1c0078b4:	8487fff4 	0x8487fff4
1c0078b8:	84848484 	0x84848484
1c0078bc:	84848484 	0x84848484
1c0078c0:	0484c584 	csrxchg	$r4,$r12,0x2131
1c0078c4:	00040606 	alsl.w	$r6,$r16,$r1,0x1
	...
1c0078d0:	0f3ce080 	0x0f3ce080
1c0078d4:	06010003 	cacop	0x3,$r0,64(0x40)
1c0078d8:	80e03018 	0x80e03018
1c0078dc:	1e3860c0 	pcaddu18i	$r0,115462(0x1c306)
1c0078e0:	00000307 	0x00000307
1c0078e4:	00000000 	0x00000000
1c0078e8:	20000000 	ll.w	$r0,$r0,0
1c0078ec:	03040810 	lu52i.d	$r16,$r0,258(0x102)
1c0078f0:	20204041 	ll.w	$r1,$r2,8256(0x2040)
1c0078f4:	08181020 	fmadd.s	$f0,$f1,$f4,$f16
1c0078f8:	0303060c 	lu52i.d	$r12,$r16,193(0xc1)
1c0078fc:	0c060703 	0x0c060703
1c007900:	3038181c 	0x3038181c
1c007904:	00103030 	add.w	$r16,$r1,$r12
1c007908:	95b1e500 	0x95b1e500
1c00790c:	00000000 	0x00000000
1c007910:	08f80400 	0x08f80400
1c007914:	08080808 	0x08080808
1c007918:	08080808 	0x08080808
1c00791c:	08080808 	0x08080808
1c007920:	08080808 	0x08080808
1c007924:	08f8fc08 	0x08f8fc08
	...
1c007930:	21ff0000 	sc.w	$r0,$r0,-256(0xff00)
1c007934:	21212121 	sc.w	$r1,$r9,8480(0x2120)
1c007938:	21fdff21 	sc.w	$r1,$r25,-516(0xfdfc)
1c00793c:	21212121 	sc.w	$r1,$r9,8480(0x2120)
1c007940:	2121fdff 	sc.w	$r31,$r15,8700(0x21fc)
1c007944:	00233321 	div.du	$r1,$r25,$r12
	...
1c007950:	043fff00 	csrxchg	$r0,$r24,0xfff
1c007954:	fc040404 	0xfc040404
1c007958:	040707fc 	csrxchg	$r28,$r31,0x1c1
1c00795c:	04c4740c 	csrrd	$r12,0x311d
1c007960:	64448707 	bge	$r24,$r7,17540(0x4484) # 1c00bde4 <_sidata+0x3fbc>
1c007964:	06062434 	cacop	0x14,$r1,393(0x189)
1c007968:	00000004 	0x00000004
1c00796c:	18204000 	pcaddi	$r0,66048(0x10200)
1c007970:	00000107 	0x00000107
1c007974:	3f000000 	0x3f000000
1c007978:	0818103f 	fmadd.s	$f31,$f1,$f4,$f16
1c00797c:	03000004 	lu52i.d	$r4,$r0,0
1c007980:	180c0607 	pcaddi	$r7,24624(0x6030)
1c007984:	30383818 	0x30383818
1c007988:	00001010 	clo.w	$r16,$r0
1c00798c:	00899ce6 	bstrins.d	$r6,$r7,0x9,0x27
1c007990:	80808000 	0x80808000
1c007994:	80808080 	0x80808080
1c007998:	80808080 	0x80808080
1c00799c:	88b8fce0 	0x88b8fce0
1c0079a0:	80808080 	0x80808080
1c0079a4:	80808080 	0x80808080
1c0079a8:	c0e0c080 	0xc0e0c080
1c0079ac:	00000080 	0x00000080
1c0079b0:	00000000 	0x00000000
1c0079b4:	c0800000 	0xc0800000
1c0079b8:	171cf8e0 	lu32i.d	$r0,-464953(0x8e7c7)
1c0079bc:	10101013 	addu16i.d	$r19,$r0,1028(0x404)
1c0079c0:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0079c4:	10f81010 	addu16i.d	$r16,$r0,15876(0x3e04)
	...
1c0079d0:	04081000 	csrrd	$r0,0x204
1c0079d4:	00010306 	0x00010306
1c0079d8:	4242ffff 	beqz	$r31,-113924(0x7e42fc) # 1bfebcd4 <_start-0x1432c>
1c0079dc:	42424242 	beqz	$r18,672320(0xa4240) # 1c0abc1c <_sidata+0xa3df4>
1c0079e0:	42424242 	beqz	$r18,672320(0xa4240) # 1c0abc20 <_sidata+0xa3df8>
1c0079e4:	00ff4242 	bstrpick.d	$r2,$r18,0x3f,0x10
	...
1c0079f8:	00003f7f 	revb.d	$r31,$r27
1c0079fc:	00000000 	0x00000000
1c007a00:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c007a04:	003f7030 	0x003f7030
1c007a08:	00000000 	0x00000000
1c007a0c:	e9000000 	0xe9000000
1c007a10:	00009099 	0x00009099
1c007a14:	10f00800 	addu16i.d	$r0,$r0,15362(0x3c02)
1c007a18:	f0101010 	0xf0101010
1c007a1c:	00001078 	clo.w	$r24,$r3
1c007a20:	1010f0f8 	addu16i.d	$r24,$r7,1084(0x43c)
1c007a24:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007a28:	f8101010 	0xf8101010
1c007a2c:	00000010 	0x00000010
1c007a30:	00000000 	0x00000000
1c007a34:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c007a38:	c33e0000 	0xc33e0000
1c007a3c:	00000000 	0x00000000
1c007a40:	8484ffff 	0x8484ffff
1c007a44:	84848484 	0x84848484
1c007a48:	ff848484 	0xff848484
	...
1c007a54:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c007a58:	c0c04000 	0xc0c04000
1c007a5c:	00007eff 	0x00007eff
1c007a60:	0000ffff 	0x0000ffff
1c007a64:	c0701e01 	0xc0701e01
1c007a68:	0d1030a0 	vbitsel.v	$vr0,$vr5,$vr12,$vr0
1c007a6c:	0000040e 	0x0000040e
1c007a70:	00000000 	0x00000000
1c007a74:	007f0000 	bstrins.w	$r0,$r0,0x1f,0x0
1c007a78:	00010000 	asrtle.d	$r0,$r0
1c007a7c:	00000000 	0x00000000
1c007a80:	08183f1f 	fmadd.s	$f31,$f24,$f15,$f16
1c007a84:	01020204 	0x01020204
1c007a88:	1c0e0703 	pcaddu12i	$r3,28728(0x7038)
1c007a8c:	00183818 	sra.w	$r24,$r0,$r14
1c007a90:	85e50000 	0x85e50000
1c007a94:	000000ac 	0x000000ac
1c007a98:	00000000 	0x00000000
1c007a9c:	80000000 	0x80000000
1c007aa0:	001078e0 	add.w	$r0,$r7,$r30
1c007aa4:	1c000000 	pcaddu12i	$r0,0
1c007aa8:	000080e0 	0x000080e0
	...
1c007ab8:	c0800000 	0xc0800000
1c007abc:	070e3860 	0x070e3860
1c007ac0:	00000001 	0x00000001
1c007ac4:	0080c0e0 	bstrins.d	$r0,$r7,0x0,0x30
1c007ac8:	1c0e0300 	pcaddu12i	$r0,28696(0x7018)
1c007acc:	c0c0e070 	0xc0c0e070
1c007ad0:	00000080 	0x00000080
1c007ad4:	04000000 	csrrd	$r0,0x0
1c007ad8:	00010302 	0x00010302
1c007adc:	c0000000 	0xc0000000
1c007ae0:	071c3860 	0x071c3860
1c007ae4:	00000103 	0x00000103
1c007ae8:	0080c020 	bstrins.d	$r0,$r1,0x0,0x30
1c007aec:	03010000 	lu52i.d	$r0,$r0,64(0x40)
1c007af0:	00010103 	0x00010103
1c007af4:	00000000 	0x00000000
1c007af8:	38080000 	ldx.w	$r0,$r0,$r0
1c007afc:	191b1e3c 	pcaddi	$r28,-468751(0x8d8f1)
1c007b00:	08081818 	0x08081818
1c007b04:	08080808 	0x08080808
1c007b08:	0f090808 	0x0f090808
1c007b0c:	00307c1e 	0x00307c1e
1c007b10:	00000000 	0x00000000
1c007b14:	b88fe500 	0xb88fe500
1c007b18:	00000000 	0x00000000
1c007b1c:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c007b20:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007b24:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007b28:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007b2c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007b30:	00f0f810 	bstrpick.d	$r16,$r0,0x30,0x3e
1c007b34:	00000000 	0x00000000
1c007b38:	04000000 	csrrd	$r0,0x0
1c007b3c:	84c40404 	0x84c40404
1c007b40:	84848484 	0x84848484
1c007b44:	84848484 	0x84848484
1c007b48:	0684c484 	0x0684c484
1c007b4c:	00000406 	0x00000406
1c007b50:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
	...
1c007b5c:	ffff0000 	0xffff0000
1c007b60:	40404040 	beqz	$r2,16448(0x4040) # 1c00bba0 <_sidata+0x3d78>
1c007b64:	40404040 	beqz	$r2,16448(0x4040) # 1c00bba4 <_sidata+0x3d7c>
1c007b68:	0000ff40 	0x0000ff40
1c007b6c:	00000000 	0x00000000
1c007b70:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
	...
1c007b7c:	01030000 	fsub.d	$f0,$f0,$f0
	...
1c007b88:	00010100 	asrtle.d	$r8,$r0
1c007b8c:	30101010 	vldrepl.d	$vr16,$r0,32(0x20)
1c007b90:	000f3f70 	bytepick.d	$r16,$r27,$r15,0x6
1c007b94:	00000000 	0x00000000
1c007b98:	00be98e6 	bstrins.d	$r6,$r7,0x3e,0x26
1c007b9c:	00000000 	0x00000000
1c007ba0:	f0080000 	0xf0080000
1c007ba4:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007ba8:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007bac:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007bb0:	f0f81010 	0xf0f81010
	...
1c007bc0:	ff000000 	0xff000000
1c007bc4:	42424242 	beqz	$r18,672320(0xa4240) # 1c0abe04 <_sidata+0xa3fdc>
1c007bc8:	42424242 	beqz	$r18,672320(0xa4240) # 1c0abe08 <_sidata+0xa3fe0>
1c007bcc:	42424242 	beqz	$r18,672320(0xa4240) # 1c0abe0c <_sidata+0xa3fe4>
1c007bd0:	ffff4242 	0xffff4242
	...
1c007bdc:	08000000 	0x08000000
1c007be0:	c0e17030 	0xc0e17030
1c007be4:	fe000000 	0xfe000000
1c007be8:	000000fe 	0x000000fe
1c007bec:	00fefe00 	bstrpick.d	$r0,$r16,0x3e,0x3f
1c007bf0:	60c08000 	blt	$r0,$r0,49280(0xc080) # 1c013c70 <_sidata+0xbe48>
1c007bf4:	00081c38 	bytepick.w	$r24,$r1,$r7,0x0
1c007bf8:	00000000 	0x00000000
1c007bfc:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c007c00:	13111010 	addu16i.d	$r16,$r0,-15292(0xc444)
1c007c04:	1f101010 	pcaddu18i	$r16,-491392(0x88080)
1c007c08:	1010101f 	addu16i.d	$r31,$r0,1028(0x404)
1c007c0c:	141f1f10 	lu12i.w	$r16,63736(0xf8f8)
1c007c10:	10101112 	addu16i.d	$r18,$r8,1028(0x404)
1c007c14:	10181810 	addu16i.d	$r16,$r0,1542(0x606)
1c007c18:	e7000000 	0xe7000000
1c007c1c:	0000baa4 	0x0000baa4
1c007c20:	00000000 	0x00000000
1c007c24:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007c28:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007c2c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007c30:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007c34:	30382020 	0x30382020
1c007c38:	00000020 	0x00000020
1c007c3c:	00000000 	0x00000000
1c007c40:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007c44:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007c48:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007c4c:	20e0e020 	ll.w	$r0,$r1,-7968(0xe0e0)
1c007c50:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007c54:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007c58:	20303020 	ll.w	$r0,$r1,12336(0x3030)
1c007c5c:	00000000 	0x00000000
1c007c60:	80000000 	0x80000000
1c007c64:	1e3c70c0 	pcaddu18i	$r0,123782(0x1e386)
1c007c68:	00000406 	0x00000406
1c007c6c:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
1c007c70:	04020000 	csrrd	$r0,0x80
1c007c74:	e0701808 	0xe0701808
1c007c78:	000080c0 	0x000080c0
1c007c7c:	00000000 	0x00000000
1c007c80:	01030408 	fsub.d	$f8,$f0,$f1
1c007c84:	08000000 	0x08000000
1c007c88:	30101008 	vldrepl.d	$vr8,$r0,32(0x20)
1c007c8c:	001f3f70 	mulw.d.w	$r16,$r27,$r15
	...
1c007c98:	00030701 	0x00030701
1c007c9c:	aee50000 	0xaee50000
1c007ca0:	0000009e 	0x0000009e
1c007ca4:	00800000 	bstrins.d	$r0,$r0,0x0,0x0
1c007ca8:	00000000 	0x00000000
1c007cac:	04000000 	csrrd	$r0,0x0
1c007cb0:	0070f818 	bstrpick.w	$r24,$r0,0x10,0x1e
	...
1c007cbc:	00000080 	0x00000080
1c007cc0:	00000000 	0x00000000
1c007cc4:	810f1c18 	0x810f1c18
1c007cc8:	09010101 	0x09010101
1c007ccc:	01713919 	0x01713919
1c007cd0:	fdff0101 	0xfdff0101
1c007cd4:	01010105 	fadd.d	$f5,$f8,$f0
1c007cd8:	07090101 	0x07090101
1c007cdc:	00020307 	0x00020307
1c007ce0:	10000000 	addu16i.d	$r0,$r0,0
1c007ce4:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007ce8:	1e171311 	pcaddu18i	$r17,47256(0xb898)
1c007cec:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007cf0:	93bffcd0 	0x93bffcd0
1c007cf4:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007cf8:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007cfc:	00101818 	add.w	$r24,$r0,$r6
1c007d00:	40000000 	beqz	$r0,0 # 1c007d00 <tfont32+0x998>
1c007d04:	20404040 	ll.w	$r0,$r2,16448(0x4040)
1c007d08:	10102020 	addu16i.d	$r0,$r1,1032(0x408)
1c007d0c:	070e0c18 	0x070e0c18
1c007d10:	01000003 	0x01000003
1c007d14:	06020301 	cacop	0x1,$r24,128(0x80)
1c007d18:	383c1c0e 	fstx.d	$f14,$r0,$r7
1c007d1c:	00000030 	0x00000030
1c007d20:	8caae900 	0x8caae900
1c007d24:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c007d28:	10109090 	addu16i.d	$r16,$r4,1060(0x424)
1c007d2c:	10f81010 	addu16i.d	$r16,$r0,15876(0x3e04)
1c007d30:	00000000 	0x00000000
1c007d34:	f0800000 	0xf0800000
1c007d38:	80e8183c 	0x80e8183c
	...
1c007d44:	80000000 	0x80000000
1c007d48:	00001fff 	ctz.w	$r31,$r31
1c007d4c:	003fff00 	0x003fff00
1c007d50:	50204080 	b	33562688(0x2002040) # 1e009d90 <_sidata+0x2001f68>
1c007d54:	4043474c 	beqz	$r26,3162948(0x304344) # 1c30c098 <_sidata+0x304270>
1c007d58:	43404040 	beqz	$r2,213056(0x34040) # 1c03bd98 <_sidata+0x33f70>
1c007d5c:	70784c66 	0x70784c66
1c007d60:	00202070 	div.w	$r16,$r3,$r8
1c007d64:	c1c14000 	0xc1c14000
1c007d68:	21214143 	sc.w	$r3,$r10,8512(0x2140)
1c007d6c:	ff810121 	0xff810121
1c007d70:	1c00000f 	pcaddu12i	$r15,0
1c007d74:	0c02c0f0 	0x0c02c0f0
1c007d78:	0000e0f8 	0x0000e0f8
1c007d7c:	061f7cc0 	cacop	0x0,$r6,2015(0x7df)
	...
1c007d88:	18080800 	pcaddi	$r0,16448(0x4040)
1c007d8c:	070f1838 	0x070f1838
1c007d90:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c007d94:	10101113 	addu16i.d	$r19,$r8,1028(0x404)
1c007d98:	1e101011 	pcaddu18i	$r17,32896(0x8080)
1c007d9c:	18101013 	pcaddi	$r19,32896(0x8080)
1c007da0:	00001018 	clo.w	$r24,$r0
1c007da4:	00cc4240 	bstrpick.d	$r0,$r18,0xc,0x10
1c007da8:	5556fc00 	bl	87804(0x156fc) # 1c01d4a4 <_sidata+0x1567c>
1c007dac:	101080fc 	addu16i.d	$r28,$r7,1056(0x420)
1c007db0:	001010ff 	add.w	$r31,$r7,$r4
	...

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	1c005ca9 	pcaddu12i	$r9,741(0x2e5)
80001008:	80000000 	0x80000000
8000100c:	80001020 	0x80001020
80001010:	80000004 	0x80000004
80001014:	80000008 	0x80000008
80001018:	80000028 	0x80000028
8000101c:	1c005ca0 	pcaddu12i	$r0,741(0x2e5)

80001020 <g_SystemFreq>:
80001020:	007a1200 	bstrins.w	$r0,$r16,0x1a,0x4

Disassembly of section .bss:

80000000 <humi>:
	...

80000002 <Read_length>:
	...

80000003 <send_temp_flag>:
	...

80000004 <temp>:
	...

80000006 <ADC_Value>:
	...

80000008 <temp_str>:
	...

80000028 <humi_str>:
	...

80000046 <FAN_FLAG>:
	...

80000048 <str>:
	...

80000066 <send_humi_flag>:
	...

80000068 <Read_Buffer>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
