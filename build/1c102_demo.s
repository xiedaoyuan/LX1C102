
1c102_demo.elf:     file format elf32-loongarch
1c102_demo.elf


Disassembly of section .text:

1c000000 <_start>:
_start():
1c000000:	0015000d 	move	$r13,$r0
1c000004:	50002000 	b	32(0x20) # 1c000024 <LoopCopyDataInit>

1c000008 <CopyDataInit>:
CopyDataInit():
1c000008:	1438010f 	lu12i.w	$r15,114696(0x1c008)
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
1c000030:	0380f1ef 	ori	$r15,$r15,0x3c
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
1c001090:	54387400 	bl	14452(0x3874) # 1c004904 <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	5438c800 	bl	14536(0x38c8) # 1c004960 <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	54395400 	bl	14676(0x3954) # 1c0049f4 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	54398800 	bl	14728(0x3988) # 1c004a30 <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	54379c00 	bl	14236(0x379c) # 1c00484c <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	543afc00 	bl	15100(0x3afc) # 1c004bb4 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	543a4000 	bl	14912(0x3a40) # 1c004b08 <intc_handler>
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
1c0013d4:	541cd800 	bl	7384(0x1cd8) # 1c0030ac <DisableInt>
1c0013d8:	541c0000 	bl	7168(0x1c00) # 1c002fd8 <SystemClockInit>
1c0013dc:	57ff53ff 	bl	-176(0xfffff50) # 1c00132c <GPIOInit>
1c0013e0:	5423d800 	bl	9176(0x23d8) # 1c0037b8 <WdgInit>
1c0013e4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0013e8:	54231800 	bl	8984(0x2318) # 1c003700 <WDG_SetWatchDog>
1c0013ec:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013f0:	03880184 	ori	$r4,$r12,0x200
1c0013f4:	5415e800 	bl	5608(0x15e8) # 1c0029dc <Uart1_init>
1c0013f8:	541ea800 	bl	7848(0x1ea8) # 1c0032a0 <ls1x_logo>
1c0013fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001400:	0380118c 	ori	$r12,$r12,0x4
1c001404:	2880018e 	ld.w	$r14,$r12,0
1c001408:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00140c:	0380118c 	ori	$r12,$r12,0x4
1c001410:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c001414:	001535cd 	or	$r13,$r14,$r13
1c001418:	2980018d 	st.w	$r13,$r12,0
1c00141c:	541cb400 	bl	7348(0x1cb4) # 1c0030d0 <EnableInt>
1c001420:	541f4800 	bl	8008(0x1f48) # 1c003368 <open_count>
1c001424:	02801804 	addi.w	$r4,$r0,6(0x6)
1c001428:	541d1000 	bl	7440(0x1d10) # 1c003138 <Wake_Set>
1c00142c:	54236000 	bl	9056(0x2360) # 1c00378c <WDG_DogFeed>
1c001430:	541db400 	bl	7604(0x1db4) # 1c0031e4 <PMU_GetRstRrc>
1c001434:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001438:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00143c:	44003180 	bnez	$r12,48(0x30) # 1c00146c <bsp_init+0xa8>
1c001440:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c001444:	029ff084 	addi.w	$r4,$r4,2044(0x7fc)
1c001448:	54074c00 	bl	1868(0x74c) # 1c001b94 <myprintf>
1c00144c:	541e0400 	bl	7684(0x1e04) # 1c003250 <PMU_GetBootSpiStatus>
1c001450:	0015008c 	move	$r12,$r4
1c001454:	40001180 	beqz	$r12,16(0x10) # 1c001464 <bsp_init+0xa0>
1c001458:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c00145c:	029fd084 	addi.w	$r4,$r4,2036(0x7f4)
1c001460:	54073400 	bl	1844(0x734) # 1c001b94 <myprintf>
1c001464:	54378800 	bl	14216(0x3788) # 1c004bec <main>
1c001468:	50004000 	b	64(0x40) # 1c0014a8 <bsp_init+0xe4>
1c00146c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001470:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001474:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c00148c <bsp_init+0xc8>
1c001478:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c00147c:	029f8084 	addi.w	$r4,$r4,2016(0x7e0)
1c001480:	54071400 	bl	1812(0x714) # 1c001b94 <myprintf>
1c001484:	54376800 	bl	14184(0x3768) # 1c004bec <main>
1c001488:	50002000 	b	32(0x20) # 1c0014a8 <bsp_init+0xe4>
1c00148c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001490:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c001494:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0014a8 <bsp_init+0xe4>
1c001498:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c00149c:	029f4084 	addi.w	$r4,$r4,2000(0x7d0)
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
1c001c30:	0281218c 	addi.w	$r12,$r12,72(0x48)
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
1c001f54:	54169c00 	bl	5788(0x169c) # 1c0035f0 <strlen>
1c001f58:	0015008c 	move	$r12,$r4
1c001f5c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f60:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c001f64:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c001f68:	54162c00 	bl	5676(0x162c) # 1c003594 <strcpy>
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
1c0021c8:	02b0018c 	addi.w	$r12,$r12,-1024(0xc00)
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
1c002a3c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c002a40:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002a44:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002a48:	57fec3ff 	bl	-320(0xffffec0) # 1c002908 <UART_ITConfig>
1c002a4c:	03400000 	andi	$r0,$r0,0x0
1c002a50:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002a54:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002a58:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002a5c:	4c000020 	jirl	$r0,$r1,0

1c002a60 <Uart1_send>:
Uart1_send():
1c002a60:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002a64:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002a68:	29806076 	st.w	$r22,$r3,24(0x18)
1c002a6c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002a70:	0015008c 	move	$r12,$r4
1c002a74:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002a78:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002a7c:	00150185 	move	$r5,$r12
1c002a80:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002a84:	57ff0fff 	bl	-244(0xfffff0c) # 1c002990 <UART_SendData>
1c002a88:	03400000 	andi	$r0,$r0,0x0
1c002a8c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002a90:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002a94:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002a98:	4c000020 	jirl	$r0,$r1,0

1c002a9c <CLOCK_WaitForHSEStartUp>:
CLOCK_WaitForHSEStartUp():
1c002a9c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002aa0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002aa4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002aa8:	1400006c 	lu12i.w	$r12,3(0x3)
1c002aac:	03ba018c 	ori	$r12,$r12,0xe80
1c002ab0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002ab4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002ab8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002abc:	2880018d 	ld.w	$r13,$r12,0
1c002ac0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ac4:	038101ad 	ori	$r13,$r13,0x40
1c002ac8:	2980018d 	st.w	$r13,$r12,0
1c002acc:	03400000 	andi	$r0,$r0,0x0
1c002ad0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ad4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002ad8:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002adc:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c002ad0 <CLOCK_WaitForHSEStartUp+0x34>
1c002ae0:	50001c00 	b	28(0x1c) # 1c002afc <CLOCK_WaitForHSEStartUp+0x60>
1c002ae4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ae8:	2880018e 	ld.w	$r14,$r12,0
1c002aec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002af0:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002af4:	0014b5cd 	and	$r13,$r14,$r13
1c002af8:	2980018d 	st.w	$r13,$r12,0
1c002afc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b00:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002b04:	63ffe180 	blt	$r12,$r0,-32(0x3ffe0) # 1c002ae4 <CLOCK_WaitForHSEStartUp+0x48>
1c002b08:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b0c:	2880018d 	ld.w	$r13,$r12,0
1c002b10:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b14:	038201ad 	ori	$r13,$r13,0x80
1c002b18:	2980018d 	st.w	$r13,$r12,0
1c002b1c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002b20:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002b24:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002b28:	00150184 	move	$r4,$r12
1c002b2c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002b30:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002b34:	4c000020 	jirl	$r0,$r1,0

1c002b38 <CLOCK_WaitForLSEStartUp>:
CLOCK_WaitForLSEStartUp():
1c002b38:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002b3c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002b40:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002b44:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002b48:	50008800 	b	136(0x88) # 1c002bd0 <CLOCK_WaitForLSEStartUp+0x98>
1c002b4c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b50:	2880018e 	ld.w	$r14,$r12,0
1c002b54:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b58:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002b5c:	0014b5cd 	and	$r13,$r14,$r13
1c002b60:	2980018d 	st.w	$r13,$r12,0
1c002b64:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002b68:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002b6c:	50001400 	b	20(0x14) # 1c002b80 <CLOCK_WaitForLSEStartUp+0x48>
1c002b70:	03400000 	andi	$r0,$r0,0x0
1c002b74:	03400000 	andi	$r0,$r0,0x0
1c002b78:	03400000 	andi	$r0,$r0,0x0
1c002b7c:	03400000 	andi	$r0,$r0,0x0
1c002b80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002b84:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002b88:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002b8c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002b70 <CLOCK_WaitForLSEStartUp+0x38>
1c002b90:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b94:	2880018d 	ld.w	$r13,$r12,0
1c002b98:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b9c:	038081ad 	ori	$r13,$r13,0x20
1c002ba0:	2980018d 	st.w	$r13,$r12,0
1c002ba4:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002ba8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002bac:	50001400 	b	20(0x14) # 1c002bc0 <CLOCK_WaitForLSEStartUp+0x88>
1c002bb0:	03400000 	andi	$r0,$r0,0x0
1c002bb4:	03400000 	andi	$r0,$r0,0x0
1c002bb8:	03400000 	andi	$r0,$r0,0x0
1c002bbc:	03400000 	andi	$r0,$r0,0x0
1c002bc0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002bc4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002bc8:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002bcc:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002bb0 <CLOCK_WaitForLSEStartUp+0x78>
1c002bd0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bd4:	0380118c 	ori	$r12,$r12,0x4
1c002bd8:	2880018d 	ld.w	$r13,$r12,0
1c002bdc:	1420000c 	lu12i.w	$r12,65536(0x10000)
1c002be0:	0014b1ac 	and	$r12,$r13,$r12
1c002be4:	43ff699f 	beqz	$r12,-152(0x7fff68) # 1c002b4c <CLOCK_WaitForLSEStartUp+0x14>
1c002be8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bec:	0380118c 	ori	$r12,$r12,0x4
1c002bf0:	2880018d 	ld.w	$r13,$r12,0
1c002bf4:	1440000c 	lu12i.w	$r12,131072(0x20000)
1c002bf8:	0014b1ac 	and	$r12,$r13,$r12
1c002bfc:	47ff519f 	bnez	$r12,-176(0x7fff50) # 1c002b4c <CLOCK_WaitForLSEStartUp+0x14>
1c002c00:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002c04:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002c08:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002c0c:	00150184 	move	$r4,$r12
1c002c10:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002c14:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002c18:	4c000020 	jirl	$r0,$r1,0

1c002c1c <CLOCK_HSEConfig>:
CLOCK_HSEConfig():
1c002c1c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002c20:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002c24:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002c28:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002c2c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002c30:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002c34:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c38:	2880018e 	ld.w	$r14,$r12,0
1c002c3c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002c40:	0014300d 	nor	$r13,$r0,$r12
1c002c44:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c48:	0014b5cd 	and	$r13,$r14,$r13
1c002c4c:	2980018d 	st.w	$r13,$r12,0
1c002c50:	1400002c 	lu12i.w	$r12,1(0x1)
1c002c54:	03b4bd8c 	ori	$r12,$r12,0xd2f
1c002c58:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002c5c:	50001400 	b	20(0x14) # 1c002c70 <CLOCK_HSEConfig+0x54>
1c002c60:	03400000 	andi	$r0,$r0,0x0
1c002c64:	03400000 	andi	$r0,$r0,0x0
1c002c68:	03400000 	andi	$r0,$r0,0x0
1c002c6c:	03400000 	andi	$r0,$r0,0x0
1c002c70:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002c74:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002c78:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002c7c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002c60 <CLOCK_HSEConfig+0x44>
1c002c80:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002c84:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002c88:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002c98 <CLOCK_HSEConfig+0x7c>
1c002c8c:	57fe13ff 	bl	-496(0xffffe10) # 1c002a9c <CLOCK_WaitForHSEStartUp>
1c002c90:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002c94:	50002400 	b	36(0x24) # 1c002cb8 <CLOCK_HSEConfig+0x9c>
1c002c98:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c9c:	2880018e 	ld.w	$r14,$r12,0
1c002ca0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ca4:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002ca8:	0014b5cd 	and	$r13,$r14,$r13
1c002cac:	2980018d 	st.w	$r13,$r12,0
1c002cb0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002cb4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002cb8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002cbc:	00150184 	move	$r4,$r12
1c002cc0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002cc4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002cc8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002ccc:	4c000020 	jirl	$r0,$r1,0

1c002cd0 <CLOCK_LSEConfig>:
CLOCK_LSEConfig():
1c002cd0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002cd4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002cd8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002cdc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002ce0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002ce4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002ce8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002cec:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c002cf0:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002d00 <CLOCK_LSEConfig+0x30>
1c002cf4:	57fe47ff 	bl	-444(0xffffe44) # 1c002b38 <CLOCK_WaitForLSEStartUp>
1c002cf8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002cfc:	50002400 	b	36(0x24) # 1c002d20 <CLOCK_LSEConfig+0x50>
1c002d00:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d04:	2880018e 	ld.w	$r14,$r12,0
1c002d08:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d0c:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002d10:	0014b5cd 	and	$r13,$r14,$r13
1c002d14:	2980018d 	st.w	$r13,$r12,0
1c002d18:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002d1c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002d20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d24:	00150184 	move	$r4,$r12
1c002d28:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002d2c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002d30:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002d34:	4c000020 	jirl	$r0,$r1,0

1c002d38 <CLOCK_StructInit>:
CLOCK_StructInit():
1c002d38:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002d3c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002d40:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002d44:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002d48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d4c:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c002d50:	2980018d 	st.w	$r13,$r12,0
1c002d54:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d58:	0282000d 	addi.w	$r13,$r0,128(0x80)
1c002d5c:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002d60:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d64:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c002d68:	2980218d 	st.w	$r13,$r12,8(0x8)
1c002d6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d70:	29803180 	st.w	$r0,$r12,12(0xc)
1c002d74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d78:	29804180 	st.w	$r0,$r12,16(0x10)
1c002d7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d80:	29805180 	st.w	$r0,$r12,20(0x14)
1c002d84:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d88:	29806180 	st.w	$r0,$r12,24(0x18)
1c002d8c:	03400000 	andi	$r0,$r0,0x0
1c002d90:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002d94:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002d98:	4c000020 	jirl	$r0,$r1,0

1c002d9c <CLOCK_Init>:
CLOCK_Init():
1c002d9c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002da0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002da4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002da8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002dac:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002db0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002db4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002db8:	2880018e 	ld.w	$r14,$r12,0
1c002dbc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002dc0:	02b3fc0d 	addi.w	$r13,$r0,-769(0xcff)
1c002dc4:	0014b5cd 	and	$r13,$r14,$r13
1c002dc8:	2980018d 	st.w	$r13,$r12,0
1c002dcc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002dd0:	2880018e 	ld.w	$r14,$r12,0
1c002dd4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002dd8:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c002ddc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002de0:	001535cd 	or	$r13,$r14,$r13
1c002de4:	2980018d 	st.w	$r13,$r12,0
1c002de8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002dec:	2880018e 	ld.w	$r14,$r12,0
1c002df0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002df4:	02bfbc0d 	addi.w	$r13,$r0,-17(0xfef)
1c002df8:	0014b5cd 	and	$r13,$r14,$r13
1c002dfc:	2980018d 	st.w	$r13,$r12,0
1c002e00:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e04:	2880018e 	ld.w	$r14,$r12,0
1c002e08:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e0c:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c002e10:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e14:	001535cd 	or	$r13,$r14,$r13
1c002e18:	2980018d 	st.w	$r13,$r12,0
1c002e1c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e20:	2880018e 	ld.w	$r14,$r12,0
1c002e24:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e28:	15ffffed 	lu12i.w	$r13,-1(0xfffff)
1c002e2c:	039ffdad 	ori	$r13,$r13,0x7ff
1c002e30:	0014b5cd 	and	$r13,$r14,$r13
1c002e34:	2980018d 	st.w	$r13,$r12,0
1c002e38:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e3c:	2880018e 	ld.w	$r14,$r12,0
1c002e40:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e44:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c002e48:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e4c:	001535cd 	or	$r13,$r14,$r13
1c002e50:	2980018d 	st.w	$r13,$r12,0
1c002e54:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e58:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002e5c:	00150184 	move	$r4,$r12
1c002e60:	57fdbfff 	bl	-580(0xffffdbc) # 1c002c1c <CLOCK_HSEConfig>
1c002e64:	0015008d 	move	$r13,$r4
1c002e68:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002e6c:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002e78 <CLOCK_Init+0xdc>
1c002e70:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e74:	50015000 	b	336(0x150) # 1c002fc4 <CLOCK_Init+0x228>
1c002e78:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e7c:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c002e80:	00150184 	move	$r4,$r12
1c002e84:	57fe4fff 	bl	-436(0xffffe4c) # 1c002cd0 <CLOCK_LSEConfig>
1c002e88:	0015008d 	move	$r13,$r4
1c002e8c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002e90:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002e9c <CLOCK_Init+0x100>
1c002e94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e98:	50012c00 	b	300(0x12c) # 1c002fc4 <CLOCK_Init+0x228>
1c002e9c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ea0:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002ea4:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002ea8:	5800fdac 	beq	$r13,$r12,252(0xfc) # 1c002fa4 <CLOCK_Init+0x208>
1c002eac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002eb0:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c002eb4:	4000a180 	beqz	$r12,160(0xa0) # 1c002f54 <CLOCK_Init+0x1b8>
1c002eb8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ebc:	2880018e 	ld.w	$r14,$r12,0
1c002ec0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ec4:	15efffed 	lu12i.w	$r13,-32769(0xf7fff)
1c002ec8:	03bffdad 	ori	$r13,$r13,0xfff
1c002ecc:	0014b5cd 	and	$r13,$r14,$r13
1c002ed0:	2980018d 	st.w	$r13,$r12,0
1c002ed4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ed8:	2880018e 	ld.w	$r14,$r12,0
1c002edc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ee0:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c002ee4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ee8:	001535cd 	or	$r13,$r14,$r13
1c002eec:	2980018d 	st.w	$r13,$r12,0
1c002ef0:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002ef4:	0386c18c 	ori	$r12,$r12,0x1b0
1c002ef8:	2880018c 	ld.w	$r12,$r12,0
1c002efc:	40004180 	beqz	$r12,64(0x40) # 1c002f3c <CLOCK_Init+0x1a0>
1c002f00:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002f04:	0386c18c 	ori	$r12,$r12,0x1b0
1c002f08:	2880018c 	ld.w	$r12,$r12,0
1c002f0c:	0040898e 	slli.w	$r14,$r12,0x2
1c002f10:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002f14:	002031cd 	div.w	$r13,$r14,$r12
1c002f18:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002f20 <CLOCK_Init+0x184>
1c002f1c:	002a0007 	break	0x7
1c002f20:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c002f24:	001c31ac 	mul.w	$r12,$r13,$r12
1c002f28:	0015018d 	move	$r13,$r12
1c002f2c:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002f30:	0283f18c 	addi.w	$r12,$r12,252(0xfc)
1c002f34:	2980018d 	st.w	$r13,$r12,0
1c002f38:	50008000 	b	128(0x80) # 1c002fb8 <CLOCK_Init+0x21c>
1c002f3c:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002f40:	0283b18c 	addi.w	$r12,$r12,236(0xec)
1c002f44:	1401458d 	lu12i.w	$r13,2604(0xa2c)
1c002f48:	038fe1ad 	ori	$r13,$r13,0x3f8
1c002f4c:	2980018d 	st.w	$r13,$r12,0
1c002f50:	50006800 	b	104(0x68) # 1c002fb8 <CLOCK_Init+0x21c>
1c002f54:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002f58:	0386c18c 	ori	$r12,$r12,0x1b0
1c002f5c:	2880018c 	ld.w	$r12,$r12,0
1c002f60:	40002d80 	beqz	$r12,44(0x2c) # 1c002f8c <CLOCK_Init+0x1f0>
1c002f64:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002f68:	0386c18c 	ori	$r12,$r12,0x1b0
1c002f6c:	2880018d 	ld.w	$r13,$r12,0
1c002f70:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c002f74:	001c31ac 	mul.w	$r12,$r13,$r12
1c002f78:	0015018d 	move	$r13,$r12
1c002f7c:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002f80:	0282b18c 	addi.w	$r12,$r12,172(0xac)
1c002f84:	2980018d 	st.w	$r13,$r12,0
1c002f88:	50003000 	b	48(0x30) # 1c002fb8 <CLOCK_Init+0x21c>
1c002f8c:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002f90:	0282718c 	addi.w	$r12,$r12,156(0x9c)
1c002f94:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c002f98:	038801ad 	ori	$r13,$r13,0x200
1c002f9c:	2980018d 	st.w	$r13,$r12,0
1c002fa0:	50001800 	b	24(0x18) # 1c002fb8 <CLOCK_Init+0x21c>
1c002fa4:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002fa8:	0282118c 	addi.w	$r12,$r12,132(0x84)
1c002fac:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c002fb0:	038801ad 	ori	$r13,$r13,0x200
1c002fb4:	2980018d 	st.w	$r13,$r12,0
1c002fb8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002fbc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002fc0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002fc4:	00150184 	move	$r4,$r12
1c002fc8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002fcc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002fd0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002fd4:	4c000020 	jirl	$r0,$r1,0

1c002fd8 <SystemClockInit>:
SystemClockInit():
1c002fd8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002fdc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002fe0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002fe4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002fe8:	29bf52c0 	st.w	$r0,$r22,-44(0xfd4)
1c002fec:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c002ff0:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c002ff4:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c002ff8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002ffc:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003000:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003004:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003008:	00150184 	move	$r4,$r12
1c00300c:	57fd2fff 	bl	-724(0xffffd2c) # 1c002d38 <CLOCK_StructInit>
1c003010:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c003014:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c003018:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c00301c:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c003020:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c003024:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c003028:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c00302c:	0284000c 	addi.w	$r12,$r0,256(0x100)
1c003030:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c003034:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003038:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00303c:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003040:	00150184 	move	$r4,$r12
1c003044:	57fd5bff 	bl	-680(0xffffd58) # 1c002d9c <CLOCK_Init>
1c003048:	0015008d 	move	$r13,$r4
1c00304c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003050:	58000dac 	beq	$r13,$r12,12(0xc) # 1c00305c <SystemClockInit+0x84>
1c003054:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c003058:	50000800 	b	8(0x8) # 1c003060 <SystemClockInit+0x88>
1c00305c:	0015000c 	move	$r12,$r0
1c003060:	00150184 	move	$r4,$r12
1c003064:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003068:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00306c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003070:	4c000020 	jirl	$r0,$r1,0

1c003074 <IsGlobalIntOpen>:
IsGlobalIntOpen():
1c003074:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003078:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00307c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003080:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003084:	0400000c 	csrrd	$r12,0x0
1c003088:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00308c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003090:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003094:	0340118c 	andi	$r12,$r12,0x4
1c003098:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00309c:	00150184 	move	$r4,$r12
1c0030a0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0030a4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0030a8:	4c000020 	jirl	$r0,$r1,0

1c0030ac <DisableInt>:
DisableInt():
1c0030ac:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0030b0:	29803076 	st.w	$r22,$r3,12(0xc)
1c0030b4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0030b8:	0380100c 	ori	$r12,$r0,0x4
1c0030bc:	04000180 	csrxchg	$r0,$r12,0x0
1c0030c0:	03400000 	andi	$r0,$r0,0x0
1c0030c4:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0030c8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0030cc:	4c000020 	jirl	$r0,$r1,0

1c0030d0 <EnableInt>:
EnableInt():
1c0030d0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0030d4:	29803076 	st.w	$r22,$r3,12(0xc)
1c0030d8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0030dc:	0380100c 	ori	$r12,$r0,0x4
1c0030e0:	0400018c 	csrxchg	$r12,$r12,0x0
1c0030e4:	03400000 	andi	$r0,$r0,0x0
1c0030e8:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0030ec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0030f0:	4c000020 	jirl	$r0,$r1,0

1c0030f4 <Set_Timer_stop>:
Set_Timer_stop():
1c0030f4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0030f8:	29803076 	st.w	$r22,$r3,12(0xc)
1c0030fc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003100:	04010420 	csrwr	$r0,0x41
1c003104:	03400000 	andi	$r0,$r0,0x0
1c003108:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00310c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003110:	4c000020 	jirl	$r0,$r1,0

1c003114 <Set_Timer_clear>:
Set_Timer_clear():
1c003114:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003118:	29803076 	st.w	$r22,$r3,12(0xc)
1c00311c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003120:	0380040c 	ori	$r12,$r0,0x1
1c003124:	0401102c 	csrwr	$r12,0x44
1c003128:	03400000 	andi	$r0,$r0,0x0
1c00312c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003130:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003134:	4c000020 	jirl	$r0,$r1,0

1c003138 <Wake_Set>:
Wake_Set():
1c003138:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00313c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003140:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003144:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003148:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00314c:	40006980 	beqz	$r12,104(0x68) # 1c0031b4 <Wake_Set+0x7c>
1c003150:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003154:	0040a18c 	slli.w	$r12,$r12,0x8
1c003158:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00315c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003160:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003164:	0380218c 	ori	$r12,$r12,0x8
1c003168:	2880018d 	ld.w	$r13,$r12,0
1c00316c:	14001fec 	lu12i.w	$r12,255(0xff)
1c003170:	03bffd8c 	ori	$r12,$r12,0xfff
1c003174:	0014b1ac 	and	$r12,$r13,$r12
1c003178:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00317c:	001031ac 	add.w	$r12,$r13,$r12
1c003180:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003184:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003188:	0380318c 	ori	$r12,$r12,0xc
1c00318c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c003190:	2980018d 	st.w	$r13,$r12,0
1c003194:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003198:	0380118c 	ori	$r12,$r12,0x4
1c00319c:	2880018d 	ld.w	$r13,$r12,0
1c0031a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0031a4:	0380118c 	ori	$r12,$r12,0x4
1c0031a8:	038601ad 	ori	$r13,$r13,0x180
1c0031ac:	2980018d 	st.w	$r13,$r12,0
1c0031b0:	50002400 	b	36(0x24) # 1c0031d4 <Wake_Set+0x9c>
1c0031b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0031b8:	0380118c 	ori	$r12,$r12,0x4
1c0031bc:	2880018e 	ld.w	$r14,$r12,0
1c0031c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0031c4:	0380118c 	ori	$r12,$r12,0x4
1c0031c8:	02b9fc0d 	addi.w	$r13,$r0,-385(0xe7f)
1c0031cc:	0014b5cd 	and	$r13,$r14,$r13
1c0031d0:	2980018d 	st.w	$r13,$r12,0
1c0031d4:	03400000 	andi	$r0,$r0,0x0
1c0031d8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0031dc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0031e0:	4c000020 	jirl	$r0,$r1,0

1c0031e4 <PMU_GetRstRrc>:
PMU_GetRstRrc():
1c0031e4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0031e8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0031ec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0031f0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0031f4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0031f8:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0031fc:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003200:	0014b1ac 	and	$r12,$r13,$r12
1c003204:	44000d80 	bnez	$r12,12(0xc) # 1c003210 <PMU_GetRstRrc+0x2c>
1c003208:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00320c:	50003000 	b	48(0x30) # 1c00323c <PMU_GetRstRrc+0x58>
1c003210:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003214:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003218:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c00321c:	0014b1ad 	and	$r13,$r13,$r12
1c003220:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003224:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c003234 <PMU_GetRstRrc+0x50>
1c003228:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c00322c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003230:	50000c00 	b	12(0xc) # 1c00323c <PMU_GetRstRrc+0x58>
1c003234:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003238:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00323c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003240:	00150184 	move	$r4,$r12
1c003244:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003248:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00324c:	4c000020 	jirl	$r0,$r1,0

1c003250 <PMU_GetBootSpiStatus>:
PMU_GetBootSpiStatus():
1c003250:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003254:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003258:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00325c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003260:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003264:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003268:	0380198c 	ori	$r12,$r12,0x6
1c00326c:	2a00018c 	ld.bu	$r12,$r12,0
1c003270:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003274:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003278:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00327c:	0340058c 	andi	$r12,$r12,0x1
1c003280:	40000d80 	beqz	$r12,12(0xc) # 1c00328c <PMU_GetBootSpiStatus+0x3c>
1c003284:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003288:	50000800 	b	8(0x8) # 1c003290 <PMU_GetBootSpiStatus+0x40>
1c00328c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003290:	00150184 	move	$r4,$r12
1c003294:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003298:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00329c:	4c000020 	jirl	$r0,$r1,0

1c0032a0 <ls1x_logo>:
ls1x_logo():
1c0032a0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0032a4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0032a8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0032ac:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0032b0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0032b4:	02b19084 	addi.w	$r4,$r4,-924(0xc64)
1c0032b8:	57e8dfff 	bl	-5924(0xfffe8dc) # 1c001b94 <myprintf>
1c0032bc:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0032c0:	02b17084 	addi.w	$r4,$r4,-932(0xc5c)
1c0032c4:	57e8d3ff 	bl	-5936(0xfffe8d0) # 1c001b94 <myprintf>
1c0032c8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0032cc:	02b2d084 	addi.w	$r4,$r4,-844(0xcb4)
1c0032d0:	57e8c7ff 	bl	-5948(0xfffe8c4) # 1c001b94 <myprintf>
1c0032d4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0032d8:	02b43084 	addi.w	$r4,$r4,-756(0xd0c)
1c0032dc:	57e8bbff 	bl	-5960(0xfffe8b8) # 1c001b94 <myprintf>
1c0032e0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0032e4:	02b59084 	addi.w	$r4,$r4,-668(0xd64)
1c0032e8:	57e8afff 	bl	-5972(0xfffe8ac) # 1c001b94 <myprintf>
1c0032ec:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0032f0:	02b6f084 	addi.w	$r4,$r4,-580(0xdbc)
1c0032f4:	57e8a3ff 	bl	-5984(0xfffe8a0) # 1c001b94 <myprintf>
1c0032f8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0032fc:	02b85084 	addi.w	$r4,$r4,-492(0xe14)
1c003300:	57e897ff 	bl	-5996(0xfffe894) # 1c001b94 <myprintf>
1c003304:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003308:	02b9b084 	addi.w	$r4,$r4,-404(0xe6c)
1c00330c:	57e88bff 	bl	-6008(0xfffe888) # 1c001b94 <myprintf>
1c003310:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003314:	02bb1084 	addi.w	$r4,$r4,-316(0xec4)
1c003318:	57e87fff 	bl	-6020(0xfffe87c) # 1c001b94 <myprintf>
1c00331c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003320:	02bc7084 	addi.w	$r4,$r4,-228(0xf1c)
1c003324:	57e873ff 	bl	-6032(0xfffe870) # 1c001b94 <myprintf>
1c003328:	03400000 	andi	$r0,$r0,0x0
1c00332c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003330:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003334:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003338:	4c000020 	jirl	$r0,$r1,0

1c00333c <get_count>:
get_count():
1c00333c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003340:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003344:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003348:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00334c:	0000600c 	rdtimel.w	$r12,$r0
1c003350:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003354:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003358:	00150184 	move	$r4,$r12
1c00335c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003360:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003364:	4c000020 	jirl	$r0,$r1,0

1c003368 <open_count>:
open_count():
1c003368:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00336c:	29803076 	st.w	$r22,$r3,12(0xc)
1c003370:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003374:	0380400c 	ori	$r12,$r0,0x10
1c003378:	0402bd80 	csrxchg	$r0,$r12,0xaf
1c00337c:	03400000 	andi	$r0,$r0,0x0
1c003380:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003384:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003388:	4c000020 	jirl	$r0,$r1,0

1c00338c <start_count>:
start_count():
1c00338c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003390:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003394:	29806076 	st.w	$r22,$r3,24(0x18)
1c003398:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00339c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0033a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0033a4:	29800180 	st.w	$r0,$r12,0
1c0033a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0033ac:	29801180 	st.w	$r0,$r12,4(0x4)
1c0033b0:	57ff8fff 	bl	-116(0xfffff8c) # 1c00333c <get_count>
1c0033b4:	0015008d 	move	$r13,$r4
1c0033b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0033bc:	2980018d 	st.w	$r13,$r12,0
1c0033c0:	03400000 	andi	$r0,$r0,0x0
1c0033c4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0033c8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0033cc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0033d0:	4c000020 	jirl	$r0,$r1,0

1c0033d4 <stop_count>:
stop_count():
1c0033d4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0033d8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0033dc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0033e0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0033e4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0033e8:	57ff57ff 	bl	-172(0xfffff54) # 1c00333c <get_count>
1c0033ec:	0015008d 	move	$r13,$r4
1c0033f0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0033f4:	2980118d 	st.w	$r13,$r12,4(0x4)
1c0033f8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0033fc:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003400:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003404:	2880018c 	ld.w	$r12,$r12,0
1c003408:	68001dac 	bltu	$r13,$r12,28(0x1c) # 1c003424 <stop_count+0x50>
1c00340c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003410:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003414:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003418:	2880018c 	ld.w	$r12,$r12,0
1c00341c:	001131ac 	sub.w	$r12,$r13,$r12
1c003420:	50002800 	b	40(0x28) # 1c003448 <stop_count+0x74>
1c003424:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c003428:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00342c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003430:	2880018c 	ld.w	$r12,$r12,0
1c003434:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003438:	001131ad 	sub.w	$r13,$r13,$r12
1c00343c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003440:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c003444:	001031ac 	add.w	$r12,$r13,$r12
1c003448:	00150184 	move	$r4,$r12
1c00344c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003450:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003454:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003458:	4c000020 	jirl	$r0,$r1,0

1c00345c <delay_cycle>:
delay_cycle():
1c00345c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003460:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003464:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003468:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00346c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003470:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003474:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c003478:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00347c:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c003480:	00150184 	move	$r4,$r12
1c003484:	57ff0bff 	bl	-248(0xfffff08) # 1c00338c <start_count>
1c003488:	50001400 	b	20(0x14) # 1c00349c <delay_cycle+0x40>
1c00348c:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c003490:	00150184 	move	$r4,$r12
1c003494:	57ff43ff 	bl	-192(0xfffff40) # 1c0033d4 <stop_count>
1c003498:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00349c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0034a0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034a4:	6bffe9ac 	bltu	$r13,$r12,-24(0x3ffe8) # 1c00348c <delay_cycle+0x30>
1c0034a8:	03400000 	andi	$r0,$r0,0x0
1c0034ac:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0034b0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0034b4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0034b8:	4c000020 	jirl	$r0,$r1,0

1c0034bc <delay_us>:
delay_us():
1c0034bc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0034c0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0034c4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0034c8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0034cc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0034d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034d4:	00408d8c 	slli.w	$r12,$r12,0x3
1c0034d8:	00150184 	move	$r4,$r12
1c0034dc:	57ff83ff 	bl	-128(0xfffff80) # 1c00345c <delay_cycle>
1c0034e0:	03400000 	andi	$r0,$r0,0x0
1c0034e4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0034e8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0034ec:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0034f0:	4c000020 	jirl	$r0,$r1,0

1c0034f4 <delay_ms>:
delay_ms():
1c0034f4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0034f8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0034fc:	29806076 	st.w	$r22,$r3,24(0x18)
1c003500:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003504:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003508:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00350c:	1400002c 	lu12i.w	$r12,1(0x1)
1c003510:	03bd018c 	ori	$r12,$r12,0xf40
1c003514:	001c31ac 	mul.w	$r12,$r13,$r12
1c003518:	00150184 	move	$r4,$r12
1c00351c:	57ff43ff 	bl	-192(0xfffff40) # 1c00345c <delay_cycle>
1c003520:	03400000 	andi	$r0,$r0,0x0
1c003524:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003528:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00352c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003530:	4c000020 	jirl	$r0,$r1,0

1c003534 <memset>:
memset():
1c003534:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003538:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00353c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003540:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003544:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c003548:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c00354c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003550:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003554:	50001c00 	b	28(0x1c) # 1c003570 <memset+0x3c>
1c003558:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00355c:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c003560:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003564:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c003568:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c00356c:	2900018d 	st.b	$r13,$r12,0
1c003570:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c003574:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003578:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c00357c:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c003558 <memset+0x24>
1c003580:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003584:	00150184 	move	$r4,$r12
1c003588:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00358c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003590:	4c000020 	jirl	$r0,$r1,0

1c003594 <strcpy>:
strcpy():
1c003594:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003598:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00359c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0035a0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0035a4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0035a8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0035ac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0035b0:	03400000 	andi	$r0,$r0,0x0
1c0035b4:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0035b8:	028005ac 	addi.w	$r12,$r13,1(0x1)
1c0035bc:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0035c0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0035c4:	0280058e 	addi.w	$r14,$r12,1(0x1)
1c0035c8:	29bf72ce 	st.w	$r14,$r22,-36(0xfdc)
1c0035cc:	280001ad 	ld.b	$r13,$r13,0
1c0035d0:	2900018d 	st.b	$r13,$r12,0
1c0035d4:	2800018c 	ld.b	$r12,$r12,0
1c0035d8:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c0035b4 <strcpy+0x20>
1c0035dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0035e0:	00150184 	move	$r4,$r12
1c0035e4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0035e8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0035ec:	4c000020 	jirl	$r0,$r1,0

1c0035f0 <strlen>:
strlen():
1c0035f0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0035f4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0035f8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0035fc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003600:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003604:	50001000 	b	16(0x10) # 1c003614 <strlen+0x24>
1c003608:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00360c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003610:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003614:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003618:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c00361c:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c003620:	2800018c 	ld.b	$r12,$r12,0
1c003624:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003608 <strlen+0x18>
1c003628:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00362c:	00150184 	move	$r4,$r12
1c003630:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003634:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003638:	4c000020 	jirl	$r0,$r1,0

1c00363c <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c00363c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003640:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003644:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003648:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00364c:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c003650:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003654:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c003658:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00365c:	001531ad 	or	$r13,$r13,$r12
1c003660:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003664:	2980318d 	st.w	$r13,$r12,12(0xc)
1c003668:	03400000 	andi	$r0,$r0,0x0
1c00366c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003670:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003674:	4c000020 	jirl	$r0,$r1,0

1c003678 <WDG_getOddValue>:
WDG_getOddValue():
1c003678:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00367c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003680:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003684:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003688:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00368c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003690:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003694:	50003800 	b	56(0x38) # 1c0036cc <WDG_getOddValue+0x54>
1c003698:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00369c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036a0:	001731ac 	sll.w	$r12,$r13,$r12
1c0036a4:	0015018d 	move	$r13,$r12
1c0036a8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0036ac:	0014b1ac 	and	$r12,$r13,$r12
1c0036b0:	40001180 	beqz	$r12,16(0x10) # 1c0036c0 <WDG_getOddValue+0x48>
1c0036b4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0036b8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0036bc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0036c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036c4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0036c8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0036cc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0036d0:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c0036d4:	67ffc58d 	bge	$r12,$r13,-60(0x3ffc4) # 1c003698 <WDG_getOddValue+0x20>
1c0036d8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0036dc:	0340058c 	andi	$r12,$r12,0x1
1c0036e0:	44000d80 	bnez	$r12,12(0xc) # 1c0036ec <WDG_getOddValue+0x74>
1c0036e4:	1400010c 	lu12i.w	$r12,8(0x8)
1c0036e8:	50000800 	b	8(0x8) # 1c0036f0 <WDG_getOddValue+0x78>
1c0036ec:	0015000c 	move	$r12,$r0
1c0036f0:	00150184 	move	$r4,$r12
1c0036f4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0036f8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0036fc:	4c000020 	jirl	$r0,$r1,0

1c003700 <WDG_SetWatchDog>:
WDG_SetWatchDog():
1c003700:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003704:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003708:	29806076 	st.w	$r22,$r3,24(0x18)
1c00370c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003710:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003714:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003718:	140000ec 	lu12i.w	$r12,7(0x7)
1c00371c:	03bffd8c 	ori	$r12,$r12,0xfff
1c003720:	0014b1ac 	and	$r12,$r13,$r12
1c003724:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003728:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c00372c:	57ff4fff 	bl	-180(0xfffff4c) # 1c003678 <WDG_getOddValue>
1c003730:	0015008c 	move	$r12,$r4
1c003734:	0015018d 	move	$r13,$r12
1c003738:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00373c:	0015358c 	or	$r12,$r12,$r13
1c003740:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003744:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003748:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c00374c:	0396a9ad 	ori	$r13,$r13,0x5aa
1c003750:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c003754:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003758:	0014300c 	nor	$r12,$r0,$r12
1c00375c:	0040c18c 	slli.w	$r12,$r12,0x10
1c003760:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003764:	001531ac 	or	$r12,$r13,$r12
1c003768:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00376c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003770:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003774:	2980c18d 	st.w	$r13,$r12,48(0x30)
1c003778:	03400000 	andi	$r0,$r0,0x0
1c00377c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003780:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003784:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003788:	4c000020 	jirl	$r0,$r1,0

1c00378c <WDG_DogFeed>:
WDG_DogFeed():
1c00378c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003790:	29803076 	st.w	$r22,$r3,12(0xc)
1c003794:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003798:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00379c:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c0037a0:	0396a9ad 	ori	$r13,$r13,0x5aa
1c0037a4:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c0037a8:	03400000 	andi	$r0,$r0,0x0
1c0037ac:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0037b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0037b4:	4c000020 	jirl	$r0,$r1,0

1c0037b8 <WdgInit>:
WdgInit():
1c0037b8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0037bc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0037c0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0037c4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0037c8:	150000ec 	lu12i.w	$r12,-524281(0x80007)
1c0037cc:	03bffd84 	ori	$r4,$r12,0xfff
1c0037d0:	57ff33ff 	bl	-208(0xfffff30) # 1c003700 <WDG_SetWatchDog>
1c0037d4:	03400000 	andi	$r0,$r0,0x0
1c0037d8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0037dc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0037e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0037e4:	4c000020 	jirl	$r0,$r1,0

1c0037e8 <Adc_powerOn>:
Adc_powerOn():
1c0037e8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0037ec:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0037f0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0037f4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0037f8:	57f87fff 	bl	-1924(0xffff87c) # 1c003074 <IsGlobalIntOpen>
1c0037fc:	0015008c 	move	$r12,$r4
1c003800:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003804:	57f8abff 	bl	-1880(0xffff8a8) # 1c0030ac <DisableInt>
1c003808:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c00380c:	288001ac 	ld.w	$r12,$r13,0
1c003810:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c003814:	007041cc 	bstrins.w	$r12,$r14,0x10,0x10
1c003818:	298001ac 	st.w	$r12,$r13,0
1c00381c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003820:	40000980 	beqz	$r12,8(0x8) # 1c003828 <Adc_powerOn+0x40>
1c003824:	57f8afff 	bl	-1876(0xffff8ac) # 1c0030d0 <EnableInt>
1c003828:	03400000 	andi	$r0,$r0,0x0
1c00382c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003830:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003834:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003838:	4c000020 	jirl	$r0,$r1,0

1c00383c <Adc_open>:
Adc_open():
1c00383c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003840:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003844:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003848:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00384c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003850:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003854:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003858:	001731ac 	sll.w	$r12,$r13,$r12
1c00385c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003860:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003864:	0340058c 	andi	$r12,$r12,0x1
1c003868:	40003580 	beqz	$r12,52(0x34) # 1c00389c <Adc_open+0x60>
1c00386c:	57f80bff 	bl	-2040(0xffff808) # 1c003074 <IsGlobalIntOpen>
1c003870:	0015008c 	move	$r12,$r4
1c003874:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c003878:	57f837ff 	bl	-1996(0xffff834) # 1c0030ac <DisableInt>
1c00387c:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c003880:	288001ac 	ld.w	$r12,$r13,0
1c003884:	0071440c 	bstrins.w	$r12,$r0,0x11,0x11
1c003888:	298001ac 	st.w	$r12,$r13,0
1c00388c:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c003890:	40004980 	beqz	$r12,72(0x48) # 1c0038d8 <Adc_open+0x9c>
1c003894:	57f83fff 	bl	-1988(0xffff83c) # 1c0030d0 <EnableInt>
1c003898:	50004000 	b	64(0x40) # 1c0038d8 <Adc_open+0x9c>
1c00389c:	57f7dbff 	bl	-2088(0xffff7d8) # 1c003074 <IsGlobalIntOpen>
1c0038a0:	0015008c 	move	$r12,$r4
1c0038a4:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c0038a8:	57f807ff 	bl	-2044(0xffff804) # 1c0030ac <DisableInt>
1c0038ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038b0:	0044918c 	srli.w	$r12,$r12,0x4
1c0038b4:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c0038b8:	03403d8c 	andi	$r12,$r12,0xf
1c0038bc:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c0038c0:	288001ac 	ld.w	$r12,$r13,0
1c0038c4:	007751cc 	bstrins.w	$r12,$r14,0x17,0x14
1c0038c8:	298001ac 	st.w	$r12,$r13,0
1c0038cc:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c0038d0:	40000980 	beqz	$r12,8(0x8) # 1c0038d8 <Adc_open+0x9c>
1c0038d4:	57f7ffff 	bl	-2052(0xffff7fc) # 1c0030d0 <EnableInt>
1c0038d8:	03400000 	andi	$r0,$r0,0x0
1c0038dc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0038e0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0038e4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0038e8:	4c000020 	jirl	$r0,$r1,0

1c0038ec <Adc_Measure>:
Adc_Measure():
1c0038ec:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0038f0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0038f4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0038f8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0038fc:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c003900:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c003904:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c003908:	50008400 	b	132(0x84) # 1c00398c <Adc_Measure+0xa0>
1c00390c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003910:	0381b18c 	ori	$r12,$r12,0x6c
1c003914:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c003918:	038401ad 	ori	$r13,$r13,0x100
1c00391c:	2980018d 	st.w	$r13,$r12,0
1c003920:	03400000 	andi	$r0,$r0,0x0
1c003924:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003928:	0381b18c 	ori	$r12,$r12,0x6c
1c00392c:	2880018c 	ld.w	$r12,$r12,0
1c003930:	0344018c 	andi	$r12,$r12,0x100
1c003934:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c003924 <Adc_Measure+0x38>
1c003938:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00393c:	0381c18c 	ori	$r12,$r12,0x70
1c003940:	2880018c 	ld.w	$r12,$r12,0
1c003944:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003948:	037ffd8c 	andi	$r12,$r12,0xfff
1c00394c:	297fa2cc 	st.h	$r12,$r22,-24(0xfe8)
1c003950:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c003954:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c003958:	6c00298d 	bgeu	$r12,$r13,40(0x28) # 1c003980 <Adc_Measure+0x94>
1c00395c:	2a7faacd 	ld.hu	$r13,$r22,-22(0xfea)
1c003960:	2a7fa2cc 	ld.hu	$r12,$r22,-24(0xfe8)
1c003964:	001031ac 	add.w	$r12,$r13,$r12
1c003968:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c00396c:	2a7fa2cd 	ld.hu	$r13,$r22,-24(0xfe8)
1c003970:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c003974:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c003980 <Adc_Measure+0x94>
1c003978:	2a7fa2cc 	ld.hu	$r12,$r22,-24(0xfe8)
1c00397c:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c003980:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003984:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003988:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c00398c:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c003990:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c003994:	6fff798d 	bgeu	$r12,$r13,-136(0x3ff78) # 1c00390c <Adc_Measure+0x20>
1c003998:	2a7faacd 	ld.hu	$r13,$r22,-22(0xfea)
1c00399c:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0039a0:	001131ad 	sub.w	$r13,$r13,$r12
1c0039a4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0039a8:	002031ae 	div.w	$r14,$r13,$r12
1c0039ac:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0039b4 <Adc_Measure+0xc8>
1c0039b0:	002a0007 	break	0x7
1c0039b4:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c0039b8:	00150184 	move	$r4,$r12
1c0039bc:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0039c0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0039c4:	4c000020 	jirl	$r0,$r1,0

1c0039c8 <Adc_getVoltage>:
Adc_getVoltage():
1c0039c8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0039cc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0039d0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0039d4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0039d8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0039dc:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0039e0:	57ff0fff 	bl	-244(0xfffff0c) # 1c0038ec <Adc_Measure>
1c0039e4:	0015008c 	move	$r12,$r4
1c0039e8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0039ec:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0039f0:	57feffff 	bl	-260(0xffffefc) # 1c0038ec <Adc_Measure>
1c0039f4:	0015008c 	move	$r12,$r4
1c0039f8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0039fc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003a00:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c003a04:	001c31ad 	mul.w	$r13,$r13,$r12
1c003a08:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003a0c:	002131ae 	div.wu	$r14,$r13,$r12
1c003a10:	5c000980 	bne	$r12,$r0,8(0x8) # 1c003a18 <Adc_getVoltage+0x50>
1c003a14:	002a0007 	break	0x7
1c003a18:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c003a1c:	00150184 	move	$r4,$r12
1c003a20:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003a24:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003a28:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003a2c:	4c000020 	jirl	$r0,$r1,0

1c003a30 <TOUCH_GetBaseVal>:
TOUCH_GetBaseVal():
1c003a30:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003a34:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003a38:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003a3c:	0015008c 	move	$r12,$r4
1c003a40:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003a44:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003a48:	0040898c 	slli.w	$r12,$r12,0x2
1c003a4c:	0015018d 	move	$r13,$r12
1c003a50:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003a54:	0381018c 	ori	$r12,$r12,0x40
1c003a58:	001031ac 	add.w	$r12,$r13,$r12
1c003a5c:	2880018c 	ld.w	$r12,$r12,0
1c003a60:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003a64:	037ffd8c 	andi	$r12,$r12,0xfff
1c003a68:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003a6c:	00150184 	move	$r4,$r12
1c003a70:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003a74:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003a78:	4c000020 	jirl	$r0,$r1,0

1c003a7c <TOUCH_GetCountValue>:
TOUCH_GetCountValue():
1c003a7c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003a80:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003a84:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003a88:	0015008c 	move	$r12,$r4
1c003a8c:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003a90:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003a94:	0040898c 	slli.w	$r12,$r12,0x2
1c003a98:	0015018d 	move	$r13,$r12
1c003a9c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003aa0:	0382018c 	ori	$r12,$r12,0x80
1c003aa4:	001031ac 	add.w	$r12,$r13,$r12
1c003aa8:	2880018c 	ld.w	$r12,$r12,0
1c003aac:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003ab0:	037ffd8c 	andi	$r12,$r12,0xfff
1c003ab4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003ab8:	00150184 	move	$r4,$r12
1c003abc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003ac0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003ac4:	4c000020 	jirl	$r0,$r1,0

1c003ac8 <Printf_KeyChannel>:
Printf_KeyChannel():
1c003ac8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003acc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003ad0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003ad4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003ad8:	0015008c 	move	$r12,$r4
1c003adc:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c003ae0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003ae4:	50003400 	b	52(0x34) # 1c003b18 <Printf_KeyChannel+0x50>
1c003ae8:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c003aec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003af0:	001831ac 	sra.w	$r12,$r13,$r12
1c003af4:	0340058c 	andi	$r12,$r12,0x1
1c003af8:	40001580 	beqz	$r12,20(0x14) # 1c003b0c <Printf_KeyChannel+0x44>
1c003afc:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c003b00:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003b04:	029e7084 	addi.w	$r4,$r4,1948(0x79c)
1c003b08:	57e08fff 	bl	-8052(0xfffe08c) # 1c001b94 <myprintf>
1c003b0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b10:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003b14:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003b18:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003b1c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003b20:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c003ae8 <Printf_KeyChannel+0x20>
1c003b24:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003b28:	029df084 	addi.w	$r4,$r4,1916(0x77c)
1c003b2c:	57e06bff 	bl	-8088(0xfffe068) # 1c001b94 <myprintf>
1c003b30:	03400000 	andi	$r0,$r0,0x0
1c003b34:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003b38:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003b3c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003b40:	4c000020 	jirl	$r0,$r1,0

1c003b44 <Printf_KeyType>:
Printf_KeyType():
1c003b44:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003b48:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003b4c:	29806076 	st.w	$r22,$r3,24(0x18)
1c003b50:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003b54:	0015008c 	move	$r12,$r4
1c003b58:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003b5c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003b60:	0340058c 	andi	$r12,$r12,0x1
1c003b64:	40001180 	beqz	$r12,16(0x10) # 1c003b74 <Printf_KeyType+0x30>
1c003b68:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003b6c:	029cf084 	addi.w	$r4,$r4,1852(0x73c)
1c003b70:	57e027ff 	bl	-8156(0xfffe024) # 1c001b94 <myprintf>
1c003b74:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003b78:	0340098c 	andi	$r12,$r12,0x2
1c003b7c:	40001180 	beqz	$r12,16(0x10) # 1c003b8c <Printf_KeyType+0x48>
1c003b80:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003b84:	029cb084 	addi.w	$r4,$r4,1836(0x72c)
1c003b88:	57e00fff 	bl	-8180(0xfffe00c) # 1c001b94 <myprintf>
1c003b8c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003b90:	0340118c 	andi	$r12,$r12,0x4
1c003b94:	40001180 	beqz	$r12,16(0x10) # 1c003ba4 <Printf_KeyType+0x60>
1c003b98:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003b9c:	029c7084 	addi.w	$r4,$r4,1820(0x71c)
1c003ba0:	57dff7ff 	bl	-8204(0xfffdff4) # 1c001b94 <myprintf>
1c003ba4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003ba8:	0340218c 	andi	$r12,$r12,0x8
1c003bac:	40001180 	beqz	$r12,16(0x10) # 1c003bbc <Printf_KeyType+0x78>
1c003bb0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003bb4:	029c4084 	addi.w	$r4,$r4,1808(0x710)
1c003bb8:	57dfdfff 	bl	-8228(0xfffdfdc) # 1c001b94 <myprintf>
1c003bbc:	03400000 	andi	$r0,$r0,0x0
1c003bc0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003bc4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003bc8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003bcc:	4c000020 	jirl	$r0,$r1,0

1c003bd0 <Printf_KeyVal>:
Printf_KeyVal():
1c003bd0:	02bd4063 	addi.w	$r3,$r3,-176(0xf50)
1c003bd4:	2982b061 	st.w	$r1,$r3,172(0xac)
1c003bd8:	2982a076 	st.w	$r22,$r3,168(0xa8)
1c003bdc:	0282c076 	addi.w	$r22,$r3,176(0xb0)
1c003be0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003be4:	5000d800 	b	216(0xd8) # 1c003cbc <Printf_KeyVal+0xec>
1c003be8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003bec:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003bf0:	00150184 	move	$r4,$r12
1c003bf4:	57fe8bff 	bl	-376(0xffffe88) # 1c003a7c <TOUCH_GetCountValue>
1c003bf8:	0015008c 	move	$r12,$r4
1c003bfc:	0015018d 	move	$r13,$r12
1c003c00:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c04:	0040898c 	slli.w	$r12,$r12,0x2
1c003c08:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003c0c:	001031cc 	add.w	$r12,$r14,$r12
1c003c10:	29bdb18d 	st.w	$r13,$r12,-148(0xf6c)
1c003c14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c18:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003c1c:	00150184 	move	$r4,$r12
1c003c20:	57fe13ff 	bl	-496(0xffffe10) # 1c003a30 <TOUCH_GetBaseVal>
1c003c24:	0015008c 	move	$r12,$r4
1c003c28:	0015018d 	move	$r13,$r12
1c003c2c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c30:	0040898c 	slli.w	$r12,$r12,0x2
1c003c34:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003c38:	001031cc 	add.w	$r12,$r14,$r12
1c003c3c:	29be718d 	st.w	$r13,$r12,-100(0xf9c)
1c003c40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c44:	0040898c 	slli.w	$r12,$r12,0x2
1c003c48:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003c4c:	001031ac 	add.w	$r12,$r13,$r12
1c003c50:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003c54:	40004980 	beqz	$r12,72(0x48) # 1c003c9c <Printf_KeyVal+0xcc>
1c003c58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c5c:	0040898c 	slli.w	$r12,$r12,0x2
1c003c60:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003c64:	001031ac 	add.w	$r12,$r13,$r12
1c003c68:	28be718d 	ld.w	$r13,$r12,-100(0xf9c)
1c003c6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c70:	0040898c 	slli.w	$r12,$r12,0x2
1c003c74:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003c78:	001031cc 	add.w	$r12,$r14,$r12
1c003c7c:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003c80:	001131ad 	sub.w	$r13,$r13,$r12
1c003c84:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c88:	0040898c 	slli.w	$r12,$r12,0x2
1c003c8c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003c90:	001031cc 	add.w	$r12,$r14,$r12
1c003c94:	29bf318d 	st.w	$r13,$r12,-52(0xfcc)
1c003c98:	50001800 	b	24(0x18) # 1c003cb0 <Printf_KeyVal+0xe0>
1c003c9c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ca0:	0040898c 	slli.w	$r12,$r12,0x2
1c003ca4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003ca8:	001031ac 	add.w	$r12,$r13,$r12
1c003cac:	29bf3180 	st.w	$r0,$r12,-52(0xfcc)
1c003cb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003cb4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003cb8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003cbc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003cc0:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003cc4:	67ff258d 	bge	$r12,$r13,-220(0x3ff24) # 1c003be8 <Printf_KeyVal+0x18>
1c003cc8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003ccc:	02981084 	addi.w	$r4,$r4,1540(0x604)
1c003cd0:	57dec7ff 	bl	-8508(0xfffdec4) # 1c001b94 <myprintf>
1c003cd4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003cd8:	02988084 	addi.w	$r4,$r4,1568(0x620)
1c003cdc:	57debbff 	bl	-8520(0xfffdeb8) # 1c001b94 <myprintf>
1c003ce0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003ce4:	50003400 	b	52(0x34) # 1c003d18 <Printf_KeyVal+0x148>
1c003ce8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003cec:	0040898c 	slli.w	$r12,$r12,0x2
1c003cf0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003cf4:	001031ac 	add.w	$r12,$r13,$r12
1c003cf8:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003cfc:	00150185 	move	$r5,$r12
1c003d00:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003d04:	0297f084 	addi.w	$r4,$r4,1532(0x5fc)
1c003d08:	57de8fff 	bl	-8564(0xfffde8c) # 1c001b94 <myprintf>
1c003d0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d10:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003d14:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003d18:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003d1c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003d20:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003ce8 <Printf_KeyVal+0x118>
1c003d24:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003d28:	02978084 	addi.w	$r4,$r4,1504(0x5e0)
1c003d2c:	57de6bff 	bl	-8600(0xfffde68) # 1c001b94 <myprintf>
1c003d30:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003d34:	50003400 	b	52(0x34) # 1c003d68 <Printf_KeyVal+0x198>
1c003d38:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d3c:	0040898c 	slli.w	$r12,$r12,0x2
1c003d40:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003d44:	001031ac 	add.w	$r12,$r13,$r12
1c003d48:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003d4c:	00150185 	move	$r5,$r12
1c003d50:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003d54:	0296b084 	addi.w	$r4,$r4,1452(0x5ac)
1c003d58:	57de3fff 	bl	-8644(0xfffde3c) # 1c001b94 <myprintf>
1c003d5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d60:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003d64:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003d68:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003d6c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003d70:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003d38 <Printf_KeyVal+0x168>
1c003d74:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003d78:	02967084 	addi.w	$r4,$r4,1436(0x59c)
1c003d7c:	57de1bff 	bl	-8680(0xfffde18) # 1c001b94 <myprintf>
1c003d80:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003d84:	50007400 	b	116(0x74) # 1c003df8 <Printf_KeyVal+0x228>
1c003d88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d8c:	0040898c 	slli.w	$r12,$r12,0x2
1c003d90:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003d94:	001031ac 	add.w	$r12,$r13,$r12
1c003d98:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003d9c:	64002d80 	bge	$r12,$r0,44(0x2c) # 1c003dc8 <Printf_KeyVal+0x1f8>
1c003da0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003da4:	0040898c 	slli.w	$r12,$r12,0x2
1c003da8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003dac:	001031ac 	add.w	$r12,$r13,$r12
1c003db0:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003db4:	00150185 	move	$r5,$r12
1c003db8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003dbc:	02959084 	addi.w	$r4,$r4,1380(0x564)
1c003dc0:	57ddd7ff 	bl	-8748(0xfffddd4) # 1c001b94 <myprintf>
1c003dc4:	50002800 	b	40(0x28) # 1c003dec <Printf_KeyVal+0x21c>
1c003dc8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003dcc:	0040898c 	slli.w	$r12,$r12,0x2
1c003dd0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003dd4:	001031ac 	add.w	$r12,$r13,$r12
1c003dd8:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003ddc:	00150185 	move	$r5,$r12
1c003de0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003de4:	02951084 	addi.w	$r4,$r4,1348(0x544)
1c003de8:	57ddafff 	bl	-8788(0xfffddac) # 1c001b94 <myprintf>
1c003dec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003df0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003df4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003df8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003dfc:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003e00:	67ff898d 	bge	$r12,$r13,-120(0x3ff88) # 1c003d88 <Printf_KeyVal+0x1b8>
1c003e04:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003e08:	02927084 	addi.w	$r4,$r4,1180(0x49c)
1c003e0c:	57dd8bff 	bl	-8824(0xfffdd88) # 1c001b94 <myprintf>
1c003e10:	03400000 	andi	$r0,$r0,0x0
1c003e14:	2882b061 	ld.w	$r1,$r3,172(0xac)
1c003e18:	2882a076 	ld.w	$r22,$r3,168(0xa8)
1c003e1c:	0282c063 	addi.w	$r3,$r3,176(0xb0)
1c003e20:	4c000020 	jirl	$r0,$r1,0

1c003e24 <TIM_GetITStatus>:
TIM_GetITStatus():
1c003e24:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003e28:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003e2c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003e30:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003e34:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003e38:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003e3c:	2880018d 	ld.w	$r13,$r12,0
1c003e40:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003e44:	0014b1ac 	and	$r12,$r13,$r12
1c003e48:	40001180 	beqz	$r12,16(0x10) # 1c003e58 <TIM_GetITStatus+0x34>
1c003e4c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003e50:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003e54:	50000800 	b	8(0x8) # 1c003e5c <TIM_GetITStatus+0x38>
1c003e58:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003e5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e60:	00150184 	move	$r4,$r12
1c003e64:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003e68:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003e6c:	4c000020 	jirl	$r0,$r1,0

1c003e70 <TIM_ClearIT>:
TIM_ClearIT():
1c003e70:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003e74:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003e78:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003e7c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003e80:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003e84:	2880018e 	ld.w	$r14,$r12,0
1c003e88:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003e8c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003e90:	001535cd 	or	$r13,$r14,$r13
1c003e94:	2980018d 	st.w	$r13,$r12,0
1c003e98:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003e9c:	03800d8c 	ori	$r12,$r12,0x3
1c003ea0:	2a00018c 	ld.bu	$r12,$r12,0
1c003ea4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003ea8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003eac:	03800d8c 	ori	$r12,$r12,0x3
1c003eb0:	038005ad 	ori	$r13,$r13,0x1
1c003eb4:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003eb8:	2900018d 	st.b	$r13,$r12,0
1c003ebc:	03400000 	andi	$r0,$r0,0x0
1c003ec0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003ec4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003ec8:	4c000020 	jirl	$r0,$r1,0

1c003ecc <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c003ecc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003ed0:	29803061 	st.w	$r1,$r3,12(0xc)
1c003ed4:	29802076 	st.w	$r22,$r3,8(0x8)
1c003ed8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003edc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003ee0:	029820c6 	addi.w	$r6,$r6,1544(0x608)
1c003ee4:	02804805 	addi.w	$r5,$r0,18(0x12)
1c003ee8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003eec:	02911084 	addi.w	$r4,$r4,1092(0x444)
1c003ef0:	57dca7ff 	bl	-9052(0xfffdca4) # 1c001b94 <myprintf>
1c003ef4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003ef8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003efc:	03808184 	ori	$r4,$r12,0x20
1c003f00:	57f73fff 	bl	-2244(0xffff73c) # 1c00363c <EXTI_ClearITPendingBit>
1c003f04:	03400000 	andi	$r0,$r0,0x0
1c003f08:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003f0c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003f10:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003f14:	4c000020 	jirl	$r0,$r1,0

1c003f18 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c003f18:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003f1c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003f20:	29802076 	st.w	$r22,$r3,8(0x8)
1c003f24:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003f28:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003f2c:	029750c6 	addi.w	$r6,$r6,1492(0x5d4)
1c003f30:	02805c05 	addi.w	$r5,$r0,23(0x17)
1c003f34:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003f38:	028fe084 	addi.w	$r4,$r4,1016(0x3f8)
1c003f3c:	57dc5bff 	bl	-9128(0xfffdc58) # 1c001b94 <myprintf>
1c003f40:	02800805 	addi.w	$r5,$r0,2(0x2)
1c003f44:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003f48:	03808184 	ori	$r4,$r12,0x20
1c003f4c:	57f6f3ff 	bl	-2320(0xffff6f0) # 1c00363c <EXTI_ClearITPendingBit>
1c003f50:	03400000 	andi	$r0,$r0,0x0
1c003f54:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003f58:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003f5c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003f60:	4c000020 	jirl	$r0,$r1,0

1c003f64 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c003f64:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003f68:	29803061 	st.w	$r1,$r3,12(0xc)
1c003f6c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003f70:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003f74:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003f78:	029680c6 	addi.w	$r6,$r6,1440(0x5a0)
1c003f7c:	02807005 	addi.w	$r5,$r0,28(0x1c)
1c003f80:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003f84:	028eb084 	addi.w	$r4,$r4,940(0x3ac)
1c003f88:	57dc0fff 	bl	-9204(0xfffdc0c) # 1c001b94 <myprintf>
1c003f8c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c003f90:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003f94:	03808184 	ori	$r4,$r12,0x20
1c003f98:	57f6a7ff 	bl	-2396(0xffff6a4) # 1c00363c <EXTI_ClearITPendingBit>
1c003f9c:	03400000 	andi	$r0,$r0,0x0
1c003fa0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003fa4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003fa8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003fac:	4c000020 	jirl	$r0,$r1,0

1c003fb0 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c003fb0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003fb4:	29803061 	st.w	$r1,$r3,12(0xc)
1c003fb8:	29802076 	st.w	$r22,$r3,8(0x8)
1c003fbc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003fc0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003fc4:	0295b0c6 	addi.w	$r6,$r6,1388(0x56c)
1c003fc8:	02808405 	addi.w	$r5,$r0,33(0x21)
1c003fcc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003fd0:	028d8084 	addi.w	$r4,$r4,864(0x360)
1c003fd4:	57dbc3ff 	bl	-9280(0xfffdbc0) # 1c001b94 <myprintf>
1c003fd8:	02802005 	addi.w	$r5,$r0,8(0x8)
1c003fdc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003fe0:	03808184 	ori	$r4,$r12,0x20
1c003fe4:	57f65bff 	bl	-2472(0xffff658) # 1c00363c <EXTI_ClearITPendingBit>
1c003fe8:	03400000 	andi	$r0,$r0,0x0
1c003fec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003ff0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003ff4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003ff8:	4c000020 	jirl	$r0,$r1,0

1c003ffc <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c003ffc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004000:	29803061 	st.w	$r1,$r3,12(0xc)
1c004004:	29802076 	st.w	$r22,$r3,8(0x8)
1c004008:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00400c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004010:	0294e0c6 	addi.w	$r6,$r6,1336(0x538)
1c004014:	02809805 	addi.w	$r5,$r0,38(0x26)
1c004018:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00401c:	028c5084 	addi.w	$r4,$r4,788(0x314)
1c004020:	57db77ff 	bl	-9356(0xfffdb74) # 1c001b94 <myprintf>
1c004024:	02804005 	addi.w	$r5,$r0,16(0x10)
1c004028:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00402c:	03808184 	ori	$r4,$r12,0x20
1c004030:	57f60fff 	bl	-2548(0xffff60c) # 1c00363c <EXTI_ClearITPendingBit>
1c004034:	03400000 	andi	$r0,$r0,0x0
1c004038:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00403c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004040:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004044:	4c000020 	jirl	$r0,$r1,0

1c004048 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c004048:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00404c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004050:	29802076 	st.w	$r22,$r3,8(0x8)
1c004054:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004058:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00405c:	029410c6 	addi.w	$r6,$r6,1284(0x504)
1c004060:	0280ac05 	addi.w	$r5,$r0,43(0x2b)
1c004064:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004068:	028b2084 	addi.w	$r4,$r4,712(0x2c8)
1c00406c:	57db2bff 	bl	-9432(0xfffdb28) # 1c001b94 <myprintf>
1c004070:	02808005 	addi.w	$r5,$r0,32(0x20)
1c004074:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004078:	03808184 	ori	$r4,$r12,0x20
1c00407c:	57f5c3ff 	bl	-2624(0xffff5c0) # 1c00363c <EXTI_ClearITPendingBit>
1c004080:	03400000 	andi	$r0,$r0,0x0
1c004084:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004088:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00408c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004090:	4c000020 	jirl	$r0,$r1,0

1c004094 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c004094:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004098:	29803061 	st.w	$r1,$r3,12(0xc)
1c00409c:	29802076 	st.w	$r22,$r3,8(0x8)
1c0040a0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0040a4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0040a8:	029340c6 	addi.w	$r6,$r6,1232(0x4d0)
1c0040ac:	0280c005 	addi.w	$r5,$r0,48(0x30)
1c0040b0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0040b4:	0289f084 	addi.w	$r4,$r4,636(0x27c)
1c0040b8:	57dadfff 	bl	-9508(0xfffdadc) # 1c001b94 <myprintf>
1c0040bc:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0040c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0040c4:	03808184 	ori	$r4,$r12,0x20
1c0040c8:	57f577ff 	bl	-2700(0xffff574) # 1c00363c <EXTI_ClearITPendingBit>
1c0040cc:	03400000 	andi	$r0,$r0,0x0
1c0040d0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0040d4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0040d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0040dc:	4c000020 	jirl	$r0,$r1,0

1c0040e0 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c0040e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0040e4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0040e8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0040ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0040f0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0040f4:	029270c6 	addi.w	$r6,$r6,1180(0x49c)
1c0040f8:	0280d405 	addi.w	$r5,$r0,53(0x35)
1c0040fc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004100:	0288c084 	addi.w	$r4,$r4,560(0x230)
1c004104:	57da93ff 	bl	-9584(0xfffda90) # 1c001b94 <myprintf>
1c004108:	02820005 	addi.w	$r5,$r0,128(0x80)
1c00410c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004110:	03808184 	ori	$r4,$r12,0x20
1c004114:	57f52bff 	bl	-2776(0xffff528) # 1c00363c <EXTI_ClearITPendingBit>
1c004118:	03400000 	andi	$r0,$r0,0x0
1c00411c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004120:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004124:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004128:	4c000020 	jirl	$r0,$r1,0

1c00412c <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c00412c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004130:	29803061 	st.w	$r1,$r3,12(0xc)
1c004134:	29802076 	st.w	$r22,$r3,8(0x8)
1c004138:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00413c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004140:	0291a0c6 	addi.w	$r6,$r6,1128(0x468)
1c004144:	0280e805 	addi.w	$r5,$r0,58(0x3a)
1c004148:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00414c:	02879084 	addi.w	$r4,$r4,484(0x1e4)
1c004150:	57da47ff 	bl	-9660(0xfffda44) # 1c001b94 <myprintf>
1c004154:	02840005 	addi.w	$r5,$r0,256(0x100)
1c004158:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00415c:	03808184 	ori	$r4,$r12,0x20
1c004160:	57f4dfff 	bl	-2852(0xffff4dc) # 1c00363c <EXTI_ClearITPendingBit>
1c004164:	03400000 	andi	$r0,$r0,0x0
1c004168:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00416c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004170:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004174:	4c000020 	jirl	$r0,$r1,0

1c004178 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c004178:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00417c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004180:	29802076 	st.w	$r22,$r3,8(0x8)
1c004184:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004188:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00418c:	0290d0c6 	addi.w	$r6,$r6,1076(0x434)
1c004190:	0280fc05 	addi.w	$r5,$r0,63(0x3f)
1c004194:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004198:	02866084 	addi.w	$r4,$r4,408(0x198)
1c00419c:	57d9fbff 	bl	-9736(0xfffd9f8) # 1c001b94 <myprintf>
1c0041a0:	02880005 	addi.w	$r5,$r0,512(0x200)
1c0041a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0041a8:	03808184 	ori	$r4,$r12,0x20
1c0041ac:	57f493ff 	bl	-2928(0xffff490) # 1c00363c <EXTI_ClearITPendingBit>
1c0041b0:	03400000 	andi	$r0,$r0,0x0
1c0041b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0041b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0041bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0041c0:	4c000020 	jirl	$r0,$r1,0

1c0041c4 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c0041c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0041c8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0041cc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0041d0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0041d4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0041d8:	029000c6 	addi.w	$r6,$r6,1024(0x400)
1c0041dc:	02811005 	addi.w	$r5,$r0,68(0x44)
1c0041e0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0041e4:	02853084 	addi.w	$r4,$r4,332(0x14c)
1c0041e8:	57d9afff 	bl	-9812(0xfffd9ac) # 1c001b94 <myprintf>
1c0041ec:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c0041f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0041f4:	03808184 	ori	$r4,$r12,0x20
1c0041f8:	57f447ff 	bl	-3004(0xffff444) # 1c00363c <EXTI_ClearITPendingBit>
1c0041fc:	03400000 	andi	$r0,$r0,0x0
1c004200:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004204:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004208:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00420c:	4c000020 	jirl	$r0,$r1,0

1c004210 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c004210:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004214:	29803061 	st.w	$r1,$r3,12(0xc)
1c004218:	29802076 	st.w	$r22,$r3,8(0x8)
1c00421c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004220:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004224:	028f30c6 	addi.w	$r6,$r6,972(0x3cc)
1c004228:	02812405 	addi.w	$r5,$r0,73(0x49)
1c00422c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004230:	02840084 	addi.w	$r4,$r4,256(0x100)
1c004234:	57d963ff 	bl	-9888(0xfffd960) # 1c001b94 <myprintf>
1c004238:	03a00005 	ori	$r5,$r0,0x800
1c00423c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004240:	03808184 	ori	$r4,$r12,0x20
1c004244:	57f3fbff 	bl	-3080(0xffff3f8) # 1c00363c <EXTI_ClearITPendingBit>
1c004248:	03400000 	andi	$r0,$r0,0x0
1c00424c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004250:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004254:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004258:	4c000020 	jirl	$r0,$r1,0

1c00425c <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c00425c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004260:	29803061 	st.w	$r1,$r3,12(0xc)
1c004264:	29802076 	st.w	$r22,$r3,8(0x8)
1c004268:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00426c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004270:	028e60c6 	addi.w	$r6,$r6,920(0x398)
1c004274:	02813805 	addi.w	$r5,$r0,78(0x4e)
1c004278:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00427c:	0282d084 	addi.w	$r4,$r4,180(0xb4)
1c004280:	57d917ff 	bl	-9964(0xfffd914) # 1c001b94 <myprintf>
1c004284:	14000025 	lu12i.w	$r5,1(0x1)
1c004288:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00428c:	03808184 	ori	$r4,$r12,0x20
1c004290:	57f3afff 	bl	-3156(0xffff3ac) # 1c00363c <EXTI_ClearITPendingBit>
1c004294:	03400000 	andi	$r0,$r0,0x0
1c004298:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00429c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0042a0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0042a4:	4c000020 	jirl	$r0,$r1,0

1c0042a8 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c0042a8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0042ac:	29803061 	st.w	$r1,$r3,12(0xc)
1c0042b0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0042b4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0042b8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0042bc:	028d90c6 	addi.w	$r6,$r6,868(0x364)
1c0042c0:	02814c05 	addi.w	$r5,$r0,83(0x53)
1c0042c4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0042c8:	0281a084 	addi.w	$r4,$r4,104(0x68)
1c0042cc:	57d8cbff 	bl	-10040(0xfffd8c8) # 1c001b94 <myprintf>
1c0042d0:	14000045 	lu12i.w	$r5,2(0x2)
1c0042d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0042d8:	03808184 	ori	$r4,$r12,0x20
1c0042dc:	57f363ff 	bl	-3232(0xffff360) # 1c00363c <EXTI_ClearITPendingBit>
1c0042e0:	03400000 	andi	$r0,$r0,0x0
1c0042e4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0042e8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0042ec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0042f0:	4c000020 	jirl	$r0,$r1,0

1c0042f4 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c0042f4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0042f8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0042fc:	29802076 	st.w	$r22,$r3,8(0x8)
1c004300:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004304:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004308:	028cc0c6 	addi.w	$r6,$r6,816(0x330)
1c00430c:	02816005 	addi.w	$r5,$r0,88(0x58)
1c004310:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004314:	02807084 	addi.w	$r4,$r4,28(0x1c)
1c004318:	57d87fff 	bl	-10116(0xfffd87c) # 1c001b94 <myprintf>
1c00431c:	14000085 	lu12i.w	$r5,4(0x4)
1c004320:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004324:	03808184 	ori	$r4,$r12,0x20
1c004328:	57f317ff 	bl	-3308(0xffff314) # 1c00363c <EXTI_ClearITPendingBit>
1c00432c:	03400000 	andi	$r0,$r0,0x0
1c004330:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004334:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004338:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00433c:	4c000020 	jirl	$r0,$r1,0

1c004340 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c004340:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004344:	29803061 	st.w	$r1,$r3,12(0xc)
1c004348:	29802076 	st.w	$r22,$r3,8(0x8)
1c00434c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004350:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004354:	028bf0c6 	addi.w	$r6,$r6,764(0x2fc)
1c004358:	02817405 	addi.w	$r5,$r0,93(0x5d)
1c00435c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004360:	02bf4084 	addi.w	$r4,$r4,-48(0xfd0)
1c004364:	57d833ff 	bl	-10192(0xfffd830) # 1c001b94 <myprintf>
1c004368:	14000105 	lu12i.w	$r5,8(0x8)
1c00436c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004370:	03808184 	ori	$r4,$r12,0x20
1c004374:	57f2cbff 	bl	-3384(0xffff2c8) # 1c00363c <EXTI_ClearITPendingBit>
1c004378:	03400000 	andi	$r0,$r0,0x0
1c00437c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004380:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004384:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004388:	4c000020 	jirl	$r0,$r1,0

1c00438c <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c00438c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004390:	29803061 	st.w	$r1,$r3,12(0xc)
1c004394:	29802076 	st.w	$r22,$r3,8(0x8)
1c004398:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00439c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0043a0:	028b20c6 	addi.w	$r6,$r6,712(0x2c8)
1c0043a4:	02818c05 	addi.w	$r5,$r0,99(0x63)
1c0043a8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0043ac:	02be1084 	addi.w	$r4,$r4,-124(0xf84)
1c0043b0:	57d7e7ff 	bl	-10268(0xfffd7e4) # 1c001b94 <myprintf>
1c0043b4:	14000205 	lu12i.w	$r5,16(0x10)
1c0043b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0043bc:	03808184 	ori	$r4,$r12,0x20
1c0043c0:	57f27fff 	bl	-3460(0xffff27c) # 1c00363c <EXTI_ClearITPendingBit>
1c0043c4:	03400000 	andi	$r0,$r0,0x0
1c0043c8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0043cc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0043d0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0043d4:	4c000020 	jirl	$r0,$r1,0

1c0043d8 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c0043d8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0043dc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0043e0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0043e4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0043e8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0043ec:	028a50c6 	addi.w	$r6,$r6,660(0x294)
1c0043f0:	0281a005 	addi.w	$r5,$r0,104(0x68)
1c0043f4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0043f8:	02bce084 	addi.w	$r4,$r4,-200(0xf38)
1c0043fc:	57d79bff 	bl	-10344(0xfffd798) # 1c001b94 <myprintf>
1c004400:	14000405 	lu12i.w	$r5,32(0x20)
1c004404:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004408:	03808184 	ori	$r4,$r12,0x20
1c00440c:	57f233ff 	bl	-3536(0xffff230) # 1c00363c <EXTI_ClearITPendingBit>
1c004410:	03400000 	andi	$r0,$r0,0x0
1c004414:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004418:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00441c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004420:	4c000020 	jirl	$r0,$r1,0

1c004424 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c004424:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004428:	29803061 	st.w	$r1,$r3,12(0xc)
1c00442c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004430:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004434:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004438:	028980c6 	addi.w	$r6,$r6,608(0x260)
1c00443c:	0281b405 	addi.w	$r5,$r0,109(0x6d)
1c004440:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004444:	02bbb084 	addi.w	$r4,$r4,-276(0xeec)
1c004448:	57d74fff 	bl	-10420(0xfffd74c) # 1c001b94 <myprintf>
1c00444c:	14000805 	lu12i.w	$r5,64(0x40)
1c004450:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004454:	03808184 	ori	$r4,$r12,0x20
1c004458:	57f1e7ff 	bl	-3612(0xffff1e4) # 1c00363c <EXTI_ClearITPendingBit>
1c00445c:	03400000 	andi	$r0,$r0,0x0
1c004460:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004464:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004468:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00446c:	4c000020 	jirl	$r0,$r1,0

1c004470 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c004470:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004474:	29803061 	st.w	$r1,$r3,12(0xc)
1c004478:	29802076 	st.w	$r22,$r3,8(0x8)
1c00447c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004480:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004484:	0288b0c6 	addi.w	$r6,$r6,556(0x22c)
1c004488:	0281c805 	addi.w	$r5,$r0,114(0x72)
1c00448c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004490:	02ba8084 	addi.w	$r4,$r4,-352(0xea0)
1c004494:	57d703ff 	bl	-10496(0xfffd700) # 1c001b94 <myprintf>
1c004498:	14001005 	lu12i.w	$r5,128(0x80)
1c00449c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0044a0:	03808184 	ori	$r4,$r12,0x20
1c0044a4:	57f19bff 	bl	-3688(0xffff198) # 1c00363c <EXTI_ClearITPendingBit>
1c0044a8:	03400000 	andi	$r0,$r0,0x0
1c0044ac:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0044b0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0044b4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0044b8:	4c000020 	jirl	$r0,$r1,0

1c0044bc <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c0044bc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0044c0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0044c4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0044c8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0044cc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0044d0:	0287e0c6 	addi.w	$r6,$r6,504(0x1f8)
1c0044d4:	0281dc05 	addi.w	$r5,$r0,119(0x77)
1c0044d8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0044dc:	02b95084 	addi.w	$r4,$r4,-428(0xe54)
1c0044e0:	57d6b7ff 	bl	-10572(0xfffd6b4) # 1c001b94 <myprintf>
1c0044e4:	14002005 	lu12i.w	$r5,256(0x100)
1c0044e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0044ec:	03808184 	ori	$r4,$r12,0x20
1c0044f0:	57f14fff 	bl	-3764(0xffff14c) # 1c00363c <EXTI_ClearITPendingBit>
1c0044f4:	03400000 	andi	$r0,$r0,0x0
1c0044f8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0044fc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004500:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004504:	4c000020 	jirl	$r0,$r1,0

1c004508 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c004508:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00450c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004510:	29802076 	st.w	$r22,$r3,8(0x8)
1c004514:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004518:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00451c:	028710c6 	addi.w	$r6,$r6,452(0x1c4)
1c004520:	0281f005 	addi.w	$r5,$r0,124(0x7c)
1c004524:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004528:	02b82084 	addi.w	$r4,$r4,-504(0xe08)
1c00452c:	57d66bff 	bl	-10648(0xfffd668) # 1c001b94 <myprintf>
1c004530:	14004005 	lu12i.w	$r5,512(0x200)
1c004534:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004538:	03808184 	ori	$r4,$r12,0x20
1c00453c:	57f103ff 	bl	-3840(0xffff100) # 1c00363c <EXTI_ClearITPendingBit>
1c004540:	03400000 	andi	$r0,$r0,0x0
1c004544:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004548:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00454c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004550:	4c000020 	jirl	$r0,$r1,0

1c004554 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c004554:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004558:	29803061 	st.w	$r1,$r3,12(0xc)
1c00455c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004560:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004564:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004568:	028640c6 	addi.w	$r6,$r6,400(0x190)
1c00456c:	02820405 	addi.w	$r5,$r0,129(0x81)
1c004570:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004574:	02b6f084 	addi.w	$r4,$r4,-580(0xdbc)
1c004578:	57d61fff 	bl	-10724(0xfffd61c) # 1c001b94 <myprintf>
1c00457c:	14008005 	lu12i.w	$r5,1024(0x400)
1c004580:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004584:	03808184 	ori	$r4,$r12,0x20
1c004588:	57f0b7ff 	bl	-3916(0xffff0b4) # 1c00363c <EXTI_ClearITPendingBit>
1c00458c:	03400000 	andi	$r0,$r0,0x0
1c004590:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004594:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004598:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00459c:	4c000020 	jirl	$r0,$r1,0

1c0045a0 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c0045a0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045a4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045a8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045ac:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045b0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0045b4:	028570c6 	addi.w	$r6,$r6,348(0x15c)
1c0045b8:	02821805 	addi.w	$r5,$r0,134(0x86)
1c0045bc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0045c0:	02b5c084 	addi.w	$r4,$r4,-656(0xd70)
1c0045c4:	57d5d3ff 	bl	-10800(0xfffd5d0) # 1c001b94 <myprintf>
1c0045c8:	14010005 	lu12i.w	$r5,2048(0x800)
1c0045cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0045d0:	03808184 	ori	$r4,$r12,0x20
1c0045d4:	57f06bff 	bl	-3992(0xffff068) # 1c00363c <EXTI_ClearITPendingBit>
1c0045d8:	03400000 	andi	$r0,$r0,0x0
1c0045dc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0045e0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0045e4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0045e8:	4c000020 	jirl	$r0,$r1,0

1c0045ec <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c0045ec:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045f0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045f4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045f8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045fc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004600:	0284a0c6 	addi.w	$r6,$r6,296(0x128)
1c004604:	02822c05 	addi.w	$r5,$r0,139(0x8b)
1c004608:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00460c:	02b49084 	addi.w	$r4,$r4,-732(0xd24)
1c004610:	57d587ff 	bl	-10876(0xfffd584) # 1c001b94 <myprintf>
1c004614:	14020005 	lu12i.w	$r5,4096(0x1000)
1c004618:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00461c:	03808184 	ori	$r4,$r12,0x20
1c004620:	57f01fff 	bl	-4068(0xffff01c) # 1c00363c <EXTI_ClearITPendingBit>
1c004624:	03400000 	andi	$r0,$r0,0x0
1c004628:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00462c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004630:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004634:	4c000020 	jirl	$r0,$r1,0

1c004638 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c004638:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00463c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004640:	29802076 	st.w	$r22,$r3,8(0x8)
1c004644:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004648:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00464c:	0283d0c6 	addi.w	$r6,$r6,244(0xf4)
1c004650:	02824005 	addi.w	$r5,$r0,144(0x90)
1c004654:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004658:	02b36084 	addi.w	$r4,$r4,-808(0xcd8)
1c00465c:	57d53bff 	bl	-10952(0xfffd538) # 1c001b94 <myprintf>
1c004660:	14040005 	lu12i.w	$r5,8192(0x2000)
1c004664:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004668:	03808184 	ori	$r4,$r12,0x20
1c00466c:	57efd3ff 	bl	-4144(0xfffefd0) # 1c00363c <EXTI_ClearITPendingBit>
1c004670:	03400000 	andi	$r0,$r0,0x0
1c004674:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004678:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00467c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004680:	4c000020 	jirl	$r0,$r1,0

1c004684 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c004684:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004688:	29803061 	st.w	$r1,$r3,12(0xc)
1c00468c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004690:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004694:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004698:	028300c6 	addi.w	$r6,$r6,192(0xc0)
1c00469c:	02825405 	addi.w	$r5,$r0,149(0x95)
1c0046a0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0046a4:	02b23084 	addi.w	$r4,$r4,-884(0xc8c)
1c0046a8:	57d4efff 	bl	-11028(0xfffd4ec) # 1c001b94 <myprintf>
1c0046ac:	14080005 	lu12i.w	$r5,16384(0x4000)
1c0046b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0046b4:	03808184 	ori	$r4,$r12,0x20
1c0046b8:	57ef87ff 	bl	-4220(0xfffef84) # 1c00363c <EXTI_ClearITPendingBit>
1c0046bc:	03400000 	andi	$r0,$r0,0x0
1c0046c0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0046c4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0046c8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0046cc:	4c000020 	jirl	$r0,$r1,0

1c0046d0 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c0046d0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0046d4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0046d8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0046dc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0046e0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0046e4:	028230c6 	addi.w	$r6,$r6,140(0x8c)
1c0046e8:	02826805 	addi.w	$r5,$r0,154(0x9a)
1c0046ec:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0046f0:	02b10084 	addi.w	$r4,$r4,-960(0xc40)
1c0046f4:	57d4a3ff 	bl	-11104(0xfffd4a0) # 1c001b94 <myprintf>
1c0046f8:	14100005 	lu12i.w	$r5,32768(0x8000)
1c0046fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004700:	03808184 	ori	$r4,$r12,0x20
1c004704:	57ef3bff 	bl	-4296(0xfffef38) # 1c00363c <EXTI_ClearITPendingBit>
1c004708:	03400000 	andi	$r0,$r0,0x0
1c00470c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004710:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004714:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004718:	4c000020 	jirl	$r0,$r1,0

1c00471c <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c00471c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004720:	29803061 	st.w	$r1,$r3,12(0xc)
1c004724:	29802076 	st.w	$r22,$r3,8(0x8)
1c004728:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00472c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004730:	028160c6 	addi.w	$r6,$r6,88(0x58)
1c004734:	02827c05 	addi.w	$r5,$r0,159(0x9f)
1c004738:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00473c:	02afd084 	addi.w	$r4,$r4,-1036(0xbf4)
1c004740:	57d457ff 	bl	-11180(0xfffd454) # 1c001b94 <myprintf>
1c004744:	14200005 	lu12i.w	$r5,65536(0x10000)
1c004748:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00474c:	03808184 	ori	$r4,$r12,0x20
1c004750:	57eeefff 	bl	-4372(0xfffeeec) # 1c00363c <EXTI_ClearITPendingBit>
1c004754:	03400000 	andi	$r0,$r0,0x0
1c004758:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00475c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004760:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004764:	4c000020 	jirl	$r0,$r1,0

1c004768 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c004768:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00476c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004770:	29802076 	st.w	$r22,$r3,8(0x8)
1c004774:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004778:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00477c:	028090c6 	addi.w	$r6,$r6,36(0x24)
1c004780:	02829405 	addi.w	$r5,$r0,165(0xa5)
1c004784:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004788:	02aea084 	addi.w	$r4,$r4,-1112(0xba8)
1c00478c:	57d40bff 	bl	-11256(0xfffd408) # 1c001b94 <myprintf>
1c004790:	14400005 	lu12i.w	$r5,131072(0x20000)
1c004794:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004798:	03808184 	ori	$r4,$r12,0x20
1c00479c:	57eea3ff 	bl	-4448(0xfffeea0) # 1c00363c <EXTI_ClearITPendingBit>
1c0047a0:	03400000 	andi	$r0,$r0,0x0
1c0047a4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0047a8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0047ac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0047b0:	4c000020 	jirl	$r0,$r1,0

1c0047b4 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c0047b4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0047b8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0047bc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0047c0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0047c4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0047c8:	02bfc0c6 	addi.w	$r6,$r6,-16(0xff0)
1c0047cc:	0282a805 	addi.w	$r5,$r0,170(0xaa)
1c0047d0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0047d4:	02ad7084 	addi.w	$r4,$r4,-1188(0xb5c)
1c0047d8:	57d3bfff 	bl	-11332(0xfffd3bc) # 1c001b94 <myprintf>
1c0047dc:	14800005 	lu12i.w	$r5,262144(0x40000)
1c0047e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0047e4:	03808184 	ori	$r4,$r12,0x20
1c0047e8:	57ee57ff 	bl	-4524(0xfffee54) # 1c00363c <EXTI_ClearITPendingBit>
1c0047ec:	03400000 	andi	$r0,$r0,0x0
1c0047f0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0047f4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0047f8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0047fc:	4c000020 	jirl	$r0,$r1,0

1c004800 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c004800:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004804:	29803061 	st.w	$r1,$r3,12(0xc)
1c004808:	29802076 	st.w	$r22,$r3,8(0x8)
1c00480c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004810:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004814:	02bef0c6 	addi.w	$r6,$r6,-68(0xfbc)
1c004818:	0282bc05 	addi.w	$r5,$r0,175(0xaf)
1c00481c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004820:	02ac4084 	addi.w	$r4,$r4,-1264(0xb10)
1c004824:	57d373ff 	bl	-11408(0xfffd370) # 1c001b94 <myprintf>
1c004828:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c00482c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004830:	03808184 	ori	$r4,$r12,0x20
1c004834:	57ee0bff 	bl	-4600(0xfffee08) # 1c00363c <EXTI_ClearITPendingBit>
1c004838:	03400000 	andi	$r0,$r0,0x0
1c00483c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004840:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004844:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004848:	4c000020 	jirl	$r0,$r1,0

1c00484c <ext_handler>:
ext_handler():
1c00484c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004850:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004854:	29806076 	st.w	$r22,$r3,24(0x18)
1c004858:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00485c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004860:	0380f18c 	ori	$r12,$r12,0x3c
1c004864:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c004868:	2980018d 	st.w	$r13,$r12,0
1c00486c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004870:	0380818c 	ori	$r12,$r12,0x20
1c004874:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c004878:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00487c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004880:	0380818c 	ori	$r12,$r12,0x20
1c004884:	2880018c 	ld.w	$r12,$r12,0
1c004888:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00488c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004890:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004894:	0014b1ac 	and	$r12,$r13,$r12
1c004898:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00489c:	03400000 	andi	$r0,$r0,0x0
1c0048a0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0048a4:	50004000 	b	64(0x40) # 1c0048e4 <ext_handler+0x98>
1c0048a8:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0048ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0048b0:	0017b1ac 	srl.w	$r12,$r13,$r12
1c0048b4:	0340058c 	andi	$r12,$r12,0x1
1c0048b8:	40002180 	beqz	$r12,32(0x20) # 1c0048d8 <ext_handler+0x8c>
1c0048bc:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c0048c0:	02ad91ad 	addi.w	$r13,$r13,-1180(0xb64)
1c0048c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0048c8:	0040898c 	slli.w	$r12,$r12,0x2
1c0048cc:	001031ac 	add.w	$r12,$r13,$r12
1c0048d0:	2880018c 	ld.w	$r12,$r12,0
1c0048d4:	4c000181 	jirl	$r1,$r12,0
1c0048d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0048dc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0048e0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0048e4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0048e8:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c0048ec:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c0048a8 <ext_handler+0x5c>
1c0048f0:	03400000 	andi	$r0,$r0,0x0
1c0048f4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0048f8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0048fc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004900:	4c000020 	jirl	$r0,$r1,0

1c004904 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c004904:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004908:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00490c:	29806076 	st.w	$r22,$r3,24(0x18)
1c004910:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004914:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004918:	02a97084 	addi.w	$r4,$r4,-1444(0xa5c)
1c00491c:	57d27bff 	bl	-11656(0xfffd278) # 1c001b94 <myprintf>
1c004920:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004924:	0380f18c 	ori	$r12,$r12,0x3c
1c004928:	1400020d 	lu12i.w	$r13,16(0x10)
1c00492c:	2980018d 	st.w	$r13,$r12,0
1c004930:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004934:	0380118c 	ori	$r12,$r12,0x4
1c004938:	2880018c 	ld.w	$r12,$r12,0
1c00493c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004940:	57ee4fff 	bl	-4532(0xfffee4c) # 1c00378c <WDG_DogFeed>
1c004944:	02801804 	addi.w	$r4,$r0,6(0x6)
1c004948:	57e7f3ff 	bl	-6160(0xfffe7f0) # 1c003138 <Wake_Set>
1c00494c:	03400000 	andi	$r0,$r0,0x0
1c004950:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004954:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004958:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00495c:	4c000020 	jirl	$r0,$r1,0

1c004960 <TOUCH>:
TOUCH():
1c004960:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004964:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004968:	29806076 	st.w	$r22,$r3,24(0x18)
1c00496c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004970:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004974:	0380118c 	ori	$r12,$r12,0x4
1c004978:	2880018c 	ld.w	$r12,$r12,0
1c00497c:	0044c18c 	srli.w	$r12,$r12,0x10
1c004980:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004984:	037ffd8c 	andi	$r12,$r12,0xfff
1c004988:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c00498c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004990:	0380118c 	ori	$r12,$r12,0x4
1c004994:	2880018c 	ld.w	$r12,$r12,0
1c004998:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00499c:	03403d8c 	andi	$r12,$r12,0xf
1c0049a0:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c0049a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0049a8:	0380f18c 	ori	$r12,$r12,0x3c
1c0049ac:	1400040d 	lu12i.w	$r13,32(0x20)
1c0049b0:	2980018d 	st.w	$r13,$r12,0
1c0049b4:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0049b8:	0380118c 	ori	$r12,$r12,0x4
1c0049bc:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c0049c0:	2980018d 	st.w	$r13,$r12,0
1c0049c4:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c0049c8:	00150184 	move	$r4,$r12
1c0049cc:	57f17bff 	bl	-3720(0xffff178) # 1c003b44 <Printf_KeyType>
1c0049d0:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0049d4:	00150184 	move	$r4,$r12
1c0049d8:	57f0f3ff 	bl	-3856(0xffff0f0) # 1c003ac8 <Printf_KeyChannel>
1c0049dc:	57f1f7ff 	bl	-3596(0xffff1f4) # 1c003bd0 <Printf_KeyVal>
1c0049e0:	03400000 	andi	$r0,$r0,0x0
1c0049e4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0049e8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0049ec:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0049f0:	4c000020 	jirl	$r0,$r1,0

1c0049f4 <UART2_INT>:
UART2_INT():
1c0049f4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0049f8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0049fc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004a00:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a04:	0380f18c 	ori	$r12,$r12,0x3c
1c004a08:	1400080d 	lu12i.w	$r13,64(0x40)
1c004a0c:	2980018d 	st.w	$r13,$r12,0
1c004a10:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c004a14:	0380098c 	ori	$r12,$r12,0x2
1c004a18:	2a00018c 	ld.bu	$r12,$r12,0
1c004a1c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004a20:	03400000 	andi	$r0,$r0,0x0
1c004a24:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004a28:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004a2c:	4c000020 	jirl	$r0,$r1,0

1c004a30 <BAT_FAIL>:
BAT_FAIL():
1c004a30:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004a34:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004a38:	29806076 	st.w	$r22,$r3,24(0x18)
1c004a3c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004a40:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a44:	0380118c 	ori	$r12,$r12,0x4
1c004a48:	2880018c 	ld.w	$r12,$r12,0
1c004a4c:	0044cd8c 	srli.w	$r12,$r12,0x13
1c004a50:	03407d8c 	andi	$r12,$r12,0x1f
1c004a54:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004a58:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a5c:	0380118c 	ori	$r12,$r12,0x4
1c004a60:	2880018e 	ld.w	$r14,$r12,0
1c004a64:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a68:	0380f18c 	ori	$r12,$r12,0x3c
1c004a6c:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c004a70:	0014b5cd 	and	$r13,$r14,$r13
1c004a74:	2980018d 	st.w	$r13,$r12,0
1c004a78:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004a7c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004a80:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c004af0 <BAT_FAIL+0xc0>
1c004a84:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a88:	0040898d 	slli.w	$r13,$r12,0x2
1c004a8c:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c004a90:	02a8518c 	addi.w	$r12,$r12,-1516(0xa14)
1c004a94:	001031ac 	add.w	$r12,$r13,$r12
1c004a98:	2880018c 	ld.w	$r12,$r12,0
1c004a9c:	4c000180 	jirl	$r0,$r12,0
1c004aa0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004aa4:	02a3b084 	addi.w	$r4,$r4,-1812(0x8ec)
1c004aa8:	57d0efff 	bl	-12052(0xfffd0ec) # 1c001b94 <myprintf>
1c004aac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ab0:	0380118c 	ori	$r12,$r12,0x4
1c004ab4:	29800180 	st.w	$r0,$r12,0
1c004ab8:	50003c00 	b	60(0x3c) # 1c004af4 <BAT_FAIL+0xc4>
1c004abc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004ac0:	02a3e084 	addi.w	$r4,$r4,-1800(0x8f8)
1c004ac4:	57d0d3ff 	bl	-12080(0xfffd0d0) # 1c001b94 <myprintf>
1c004ac8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004acc:	0380118c 	ori	$r12,$r12,0x4
1c004ad0:	2880018e 	ld.w	$r14,$r12,0
1c004ad4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ad8:	0380118c 	ori	$r12,$r12,0x4
1c004adc:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c004ae0:	03bffdad 	ori	$r13,$r13,0xfff
1c004ae4:	0014b5cd 	and	$r13,$r14,$r13
1c004ae8:	2980018d 	st.w	$r13,$r12,0
1c004aec:	50000800 	b	8(0x8) # 1c004af4 <BAT_FAIL+0xc4>
1c004af0:	03400000 	andi	$r0,$r0,0x0
1c004af4:	03400000 	andi	$r0,$r0,0x0
1c004af8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004afc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004b00:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004b04:	4c000020 	jirl	$r0,$r1,0

1c004b08 <intc_handler>:
intc_handler():
1c004b08:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004b0c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004b10:	29806076 	st.w	$r22,$r3,24(0x18)
1c004b14:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004b18:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004b1c:	0380158c 	ori	$r12,$r12,0x5
1c004b20:	2a00018c 	ld.bu	$r12,$r12,0
1c004b24:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004b28:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004b2c:	0340058c 	andi	$r12,$r12,0x1
1c004b30:	40002980 	beqz	$r12,40(0x28) # 1c004b58 <intc_handler+0x50>
1c004b34:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004b38:	57f2efff 	bl	-3348(0xffff2ec) # 1c003e24 <TIM_GetITStatus>
1c004b3c:	0015008c 	move	$r12,$r4
1c004b40:	40001980 	beqz	$r12,24(0x18) # 1c004b58 <intc_handler+0x50>
1c004b44:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004b48:	57f32bff 	bl	-3288(0xffff328) # 1c003e70 <TIM_ClearIT>
1c004b4c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004b50:	02a23084 	addi.w	$r4,$r4,-1908(0x88c)
1c004b54:	57d043ff 	bl	-12224(0xfffd040) # 1c001b94 <myprintf>
1c004b58:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004b5c:	0340118c 	andi	$r12,$r12,0x4
1c004b60:	40001580 	beqz	$r12,20(0x14) # 1c004b74 <intc_handler+0x6c>
1c004b64:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004b68:	03800d8c 	ori	$r12,$r12,0x3
1c004b6c:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c004b70:	2900018d 	st.b	$r13,$r12,0
1c004b74:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004b78:	0340218c 	andi	$r12,$r12,0x8
1c004b7c:	40001580 	beqz	$r12,20(0x14) # 1c004b90 <intc_handler+0x88>
1c004b80:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004b84:	03800d8c 	ori	$r12,$r12,0x3
1c004b88:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c004b8c:	2900018d 	st.b	$r13,$r12,0
1c004b90:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004b94:	03800d8c 	ori	$r12,$r12,0x3
1c004b98:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c004b9c:	2900018d 	st.b	$r13,$r12,0
1c004ba0:	03400000 	andi	$r0,$r0,0x0
1c004ba4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004ba8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004bac:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004bb0:	4c000020 	jirl	$r0,$r1,0

1c004bb4 <TIMER_HANDLER>:
TIMER_HANDLER():
1c004bb4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004bb8:	29803061 	st.w	$r1,$r3,12(0xc)
1c004bbc:	29802076 	st.w	$r22,$r3,8(0x8)
1c004bc0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004bc4:	57e553ff 	bl	-6832(0xfffe550) # 1c003114 <Set_Timer_clear>
1c004bc8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004bcc:	02a0e084 	addi.w	$r4,$r4,-1992(0x838)
1c004bd0:	57cfc7ff 	bl	-12348(0xfffcfc4) # 1c001b94 <myprintf>
1c004bd4:	57e523ff 	bl	-6880(0xfffe520) # 1c0030f4 <Set_Timer_stop>
1c004bd8:	03400000 	andi	$r0,$r0,0x0
1c004bdc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004be0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004be4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004be8:	4c000020 	jirl	$r0,$r1,0

1c004bec <main>:
main():
1c004bec:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004bf0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004bf4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004bf8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004bfc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004c00:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004c04:	57e3d7ff 	bl	-7212(0xfffe3d4) # 1c002fd8 <SystemClockInit>
1c004c08:	57c727ff 	bl	-14556(0xfffc724) # 1c00132c <GPIOInit>
1c004c0c:	541ad800 	bl	6872(0x1ad8) # 1c0066e4 <RGB_LED_Init>
1c004c10:	540fb000 	bl	4016(0xfb0) # 1c005bc0 <LED_Init>
1c004c14:	540fdc00 	bl	4060(0xfdc) # 1c005bf0 <KEY_Init>
1c004c18:	5407fc00 	bl	2044(0x7fc) # 1c005414 <BEEP_Init>
1c004c1c:	54122800 	bl	4648(0x1228) # 1c005e44 <OLED_Init>
1c004c20:	540f6400 	bl	3940(0xf64) # 1c005b84 <FAN_Init>
1c004c24:	57e4afff 	bl	-6996(0xfffe4ac) # 1c0030d0 <EnableInt>
1c004c28:	541b7400 	bl	7028(0x1b74) # 1c00679c <Smoke_Init>
1c004c2c:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004c30:	288fa084 	ld.w	$r4,$r4,1000(0x3e8)
1c004c34:	541b1c00 	bl	6940(0x1b1c) # 1c006750 <Queue_Init>
1c004c38:	1400004c 	lu12i.w	$r12,2(0x2)
1c004c3c:	03960184 	ori	$r4,$r12,0x580
1c004c40:	57dd9fff 	bl	-8804(0xfffdd9c) # 1c0029dc <Uart1_init>
1c004c44:	57eba7ff 	bl	-5212(0xfffeba4) # 1c0037e8 <Adc_powerOn>
1c004c48:	02801804 	addi.w	$r4,$r0,6(0x6)
1c004c4c:	57ebf3ff 	bl	-5136(0xfffebf0) # 1c00383c <Adc_open>
1c004c50:	541e2c00 	bl	7724(0x1e2c) # 1c006a7c <YUYIN_Init>
1c004c54:	03400000 	andi	$r0,$r0,0x0
1c004c58:	540eec00 	bl	3820(0xeec) # 1c005b44 <DHT11_Init>
1c004c5c:	0015008c 	move	$r12,$r4
1c004c60:	47fff99f 	bnez	$r12,-8(0x7ffff8) # 1c004c58 <main+0x6c>
1c004c64:	1cc7ff85 	pcaddu12i	$r5,409596(0x63ffc)
1c004c68:	288e90a5 	ld.w	$r5,$r5,932(0x3a4)
1c004c6c:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004c70:	288e9084 	ld.w	$r4,$r4,932(0x3a4)
1c004c74:	540dc400 	bl	3524(0xdc4) # 1c005a38 <DHT11_Read_Data>
1c004c78:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004c7c:	288eb084 	ld.w	$r4,$r4,940(0x3ac)
1c004c80:	541d3000 	bl	7472(0x1d30) # 1c0069b0 <Smoke_Read_Data>
1c004c84:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004c88:	288e318c 	ld.w	$r12,$r12,908(0x38c)
1c004c8c:	2a40018d 	ld.hu	$r13,$r12,0
1c004c90:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004c94:	002131ae 	div.wu	$r14,$r13,$r12
1c004c98:	5c000980 	bne	$r12,$r0,8(0x8) # 1c004ca0 <main+0xb4>
1c004c9c:	002a0007 	break	0x7
1c004ca0:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c004ca4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004ca8:	288db18c 	ld.w	$r12,$r12,876(0x36c)
1c004cac:	2940018d 	st.h	$r13,$r12,0
1c004cb0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004cb4:	288d618c 	ld.w	$r12,$r12,856(0x358)
1c004cb8:	2a40018d 	ld.hu	$r13,$r12,0
1c004cbc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004cc0:	002131ae 	div.wu	$r14,$r13,$r12
1c004cc4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c004ccc <main+0xe0>
1c004cc8:	002a0007 	break	0x7
1c004ccc:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c004cd0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004cd4:	288ce18c 	ld.w	$r12,$r12,824(0x338)
1c004cd8:	2940018d 	st.h	$r13,$r12,0
1c004cdc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004ce0:	028c918c 	addi.w	$r12,$r12,804(0x324)
1c004ce4:	2a00018c 	ld.bu	$r12,$r12,0
1c004ce8:	4400d980 	bnez	$r12,216(0xd8) # 1c004dc0 <main+0x1d4>
1c004cec:	5410bc00 	bl	4284(0x10bc) # 1c005da8 <OLED_Clear>
1c004cf0:	02802007 	addi.w	$r7,$r0,8(0x8)
1c004cf4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004cf8:	02abc0c6 	addi.w	$r6,$r6,-1296(0xaf0)
1c004cfc:	00150005 	move	$r5,$r0
1c004d00:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c004d04:	54177000 	bl	6000(0x1770) # 1c006474 <OLED_Show_Str>
1c004d08:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004d0c:	288c218c 	ld.w	$r12,$r12,776(0x308)
1c004d10:	2a40018c 	ld.hu	$r12,$r12,0
1c004d14:	00150186 	move	$r6,$r12
1c004d18:	1c000065 	pcaddu12i	$r5,3(0x3)
1c004d1c:	02ab50a5 	addi.w	$r5,$r5,-1324(0xad4)
1c004d20:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004d24:	288bf084 	ld.w	$r4,$r4,764(0x2fc)
1c004d28:	57d7ffff 	bl	-10244(0xfffd7fc) # 1c002524 <sprintf>
1c004d2c:	02802007 	addi.w	$r7,$r0,8(0x8)
1c004d30:	1cc7ff86 	pcaddu12i	$r6,409596(0x63ffc)
1c004d34:	288bb0c6 	ld.w	$r6,$r6,748(0x2ec)
1c004d38:	02800805 	addi.w	$r5,$r0,2(0x2)
1c004d3c:	02801004 	addi.w	$r4,$r0,4(0x4)
1c004d40:	54173400 	bl	5940(0x1734) # 1c006474 <OLED_Show_Str>
1c004d44:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004d48:	288b118c 	ld.w	$r12,$r12,708(0x2c4)
1c004d4c:	2a40018c 	ld.hu	$r12,$r12,0
1c004d50:	00150186 	move	$r6,$r12
1c004d54:	1c000065 	pcaddu12i	$r5,3(0x3)
1c004d58:	02aa90a5 	addi.w	$r5,$r5,-1372(0xaa4)
1c004d5c:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004d60:	288b0084 	ld.w	$r4,$r4,704(0x2c0)
1c004d64:	57d7c3ff 	bl	-10304(0xfffd7c0) # 1c002524 <sprintf>
1c004d68:	02802007 	addi.w	$r7,$r0,8(0x8)
1c004d6c:	1cc7ff86 	pcaddu12i	$r6,409596(0x63ffc)
1c004d70:	288ac0c6 	ld.w	$r6,$r6,688(0x2b0)
1c004d74:	02801005 	addi.w	$r5,$r0,4(0x4)
1c004d78:	02801004 	addi.w	$r4,$r0,4(0x4)
1c004d7c:	5416f800 	bl	5880(0x16f8) # 1c006474 <OLED_Show_Str>
1c004d80:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004d84:	288a918c 	ld.w	$r12,$r12,676(0x2a4)
1c004d88:	2a40018c 	ld.hu	$r12,$r12,0
1c004d8c:	00150186 	move	$r6,$r12
1c004d90:	1c000065 	pcaddu12i	$r5,3(0x3)
1c004d94:	02a9e0a5 	addi.w	$r5,$r5,-1416(0xa78)
1c004d98:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004d9c:	288a1084 	ld.w	$r4,$r4,644(0x284)
1c004da0:	57d787ff 	bl	-10364(0xfffd784) # 1c002524 <sprintf>
1c004da4:	02802007 	addi.w	$r7,$r0,8(0x8)
1c004da8:	1cc7ff86 	pcaddu12i	$r6,409596(0x63ffc)
1c004dac:	2889d0c6 	ld.w	$r6,$r6,628(0x274)
1c004db0:	02801805 	addi.w	$r5,$r0,6(0x6)
1c004db4:	02801004 	addi.w	$r4,$r0,4(0x4)
1c004db8:	5416bc00 	bl	5820(0x16bc) # 1c006474 <OLED_Show_Str>
1c004dbc:	5000d400 	b	212(0xd4) # 1c004e90 <main+0x2a4>
1c004dc0:	540fe800 	bl	4072(0xfe8) # 1c005da8 <OLED_Clear>
1c004dc4:	02802007 	addi.w	$r7,$r0,8(0x8)
1c004dc8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004dcc:	02a940c6 	addi.w	$r6,$r6,-1456(0xa50)
1c004dd0:	00150005 	move	$r5,$r0
1c004dd4:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c004dd8:	54169c00 	bl	5788(0x169c) # 1c006474 <OLED_Show_Str>
1c004ddc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004de0:	0289418c 	addi.w	$r12,$r12,592(0x250)
1c004de4:	2a00018c 	ld.bu	$r12,$r12,0
1c004de8:	00150186 	move	$r6,$r12
1c004dec:	1c000065 	pcaddu12i	$r5,3(0x3)
1c004df0:	02a8d0a5 	addi.w	$r5,$r5,-1484(0xa34)
1c004df4:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004df8:	2888a084 	ld.w	$r4,$r4,552(0x228)
1c004dfc:	57d72bff 	bl	-10456(0xfffd728) # 1c002524 <sprintf>
1c004e00:	02802007 	addi.w	$r7,$r0,8(0x8)
1c004e04:	1cc7ff86 	pcaddu12i	$r6,409596(0x63ffc)
1c004e08:	288860c6 	ld.w	$r6,$r6,536(0x218)
1c004e0c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c004e10:	02800804 	addi.w	$r4,$r0,2(0x2)
1c004e14:	54166000 	bl	5728(0x1660) # 1c006474 <OLED_Show_Str>
1c004e18:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004e1c:	0288558c 	addi.w	$r12,$r12,533(0x215)
1c004e20:	2a00018c 	ld.bu	$r12,$r12,0
1c004e24:	00150186 	move	$r6,$r12
1c004e28:	1c000065 	pcaddu12i	$r5,3(0x3)
1c004e2c:	02a820a5 	addi.w	$r5,$r5,-1528(0xa08)
1c004e30:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004e34:	2887b084 	ld.w	$r4,$r4,492(0x1ec)
1c004e38:	57d6efff 	bl	-10516(0xfffd6ec) # 1c002524 <sprintf>
1c004e3c:	02802007 	addi.w	$r7,$r0,8(0x8)
1c004e40:	1cc7ff86 	pcaddu12i	$r6,409596(0x63ffc)
1c004e44:	288770c6 	ld.w	$r6,$r6,476(0x1dc)
1c004e48:	02801005 	addi.w	$r5,$r0,4(0x4)
1c004e4c:	02800804 	addi.w	$r4,$r0,2(0x2)
1c004e50:	54162400 	bl	5668(0x1624) # 1c006474 <OLED_Show_Str>
1c004e54:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004e58:	0287698c 	addi.w	$r12,$r12,474(0x1da)
1c004e5c:	2a00018c 	ld.bu	$r12,$r12,0
1c004e60:	00150186 	move	$r6,$r12
1c004e64:	1c000065 	pcaddu12i	$r5,3(0x3)
1c004e68:	02a770a5 	addi.w	$r5,$r5,-1572(0x9dc)
1c004e6c:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004e70:	2886c084 	ld.w	$r4,$r4,432(0x1b0)
1c004e74:	57d6b3ff 	bl	-10576(0xfffd6b0) # 1c002524 <sprintf>
1c004e78:	02802007 	addi.w	$r7,$r0,8(0x8)
1c004e7c:	1cc7ff86 	pcaddu12i	$r6,409596(0x63ffc)
1c004e80:	288680c6 	ld.w	$r6,$r6,416(0x1a0)
1c004e84:	02801805 	addi.w	$r5,$r0,6(0x6)
1c004e88:	02800804 	addi.w	$r4,$r0,2(0x2)
1c004e8c:	5415e800 	bl	5608(0x15e8) # 1c006474 <OLED_Show_Str>
1c004e90:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004e94:	0286718c 	addi.w	$r12,$r12,412(0x19c)
1c004e98:	2a00018c 	ld.bu	$r12,$r12,0
1c004e9c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c004ea0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004ea4:	2885c18c 	ld.w	$r12,$r12,368(0x170)
1c004ea8:	2a40018c 	ld.hu	$r12,$r12,0
1c004eac:	6c0025ac 	bgeu	$r13,$r12,36(0x24) # 1c004ed0 <main+0x2e4>
1c004eb0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004eb4:	0285458c 	addi.w	$r12,$r12,337(0x151)
1c004eb8:	2a00018c 	ld.bu	$r12,$r12,0
1c004ebc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004ec0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004ec4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004ec8:	0284f58c 	addi.w	$r12,$r12,317(0x13d)
1c004ecc:	2900018d 	st.b	$r13,$r12,0
1c004ed0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004ed4:	0285758c 	addi.w	$r12,$r12,349(0x15d)
1c004ed8:	2a00018c 	ld.bu	$r12,$r12,0
1c004edc:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c004ee0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004ee4:	2884a18c 	ld.w	$r12,$r12,296(0x128)
1c004ee8:	2a40018c 	ld.hu	$r12,$r12,0
1c004eec:	6c00258d 	bgeu	$r12,$r13,36(0x24) # 1c004f10 <main+0x324>
1c004ef0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004ef4:	0284458c 	addi.w	$r12,$r12,273(0x111)
1c004ef8:	2a00018c 	ld.bu	$r12,$r12,0
1c004efc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004f00:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004f04:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004f08:	0283f58c 	addi.w	$r12,$r12,253(0xfd)
1c004f0c:	2900018d 	st.b	$r13,$r12,0
1c004f10:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004f14:	0284798c 	addi.w	$r12,$r12,286(0x11e)
1c004f18:	2a00018c 	ld.bu	$r12,$r12,0
1c004f1c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c004f20:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004f24:	2884118c 	ld.w	$r12,$r12,260(0x104)
1c004f28:	2a40018c 	ld.hu	$r12,$r12,0
1c004f2c:	6c0025ac 	bgeu	$r13,$r12,36(0x24) # 1c004f50 <main+0x364>
1c004f30:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004f34:	0283458c 	addi.w	$r12,$r12,209(0xd1)
1c004f38:	2a00018c 	ld.bu	$r12,$r12,0
1c004f3c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004f40:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004f44:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004f48:	0282f58c 	addi.w	$r12,$r12,189(0xbd)
1c004f4c:	2900018d 	st.b	$r13,$r12,0
1c004f50:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004f54:	0282c58c 	addi.w	$r12,$r12,177(0xb1)
1c004f58:	2a00018c 	ld.bu	$r12,$r12,0
1c004f5c:	44002d80 	bnez	$r12,44(0x2c) # 1c004f88 <main+0x39c>
1c004f60:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004f64:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c004f68:	57c677ff 	bl	-14732(0xfffc674) # 1c0015dc <gpio_write_pin>
1c004f6c:	00150005 	move	$r5,$r0
1c004f70:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c004f74:	57c66bff 	bl	-14744(0xfffc668) # 1c0015dc <gpio_write_pin>
1c004f78:	00150005 	move	$r5,$r0
1c004f7c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c004f80:	57c65fff 	bl	-14756(0xfffc65c) # 1c0015dc <gpio_write_pin>
1c004f84:	5000cc00 	b	204(0xcc) # 1c005050 <main+0x464>
1c004f88:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004f8c:	0281e58c 	addi.w	$r12,$r12,121(0x79)
1c004f90:	2a00018d 	ld.bu	$r13,$r12,0
1c004f94:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004f98:	5c002dac 	bne	$r13,$r12,44(0x2c) # 1c004fc4 <main+0x3d8>
1c004f9c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004fa0:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c004fa4:	57c63bff 	bl	-14792(0xfffc638) # 1c0015dc <gpio_write_pin>
1c004fa8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004fac:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c004fb0:	57c62fff 	bl	-14804(0xfffc62c) # 1c0015dc <gpio_write_pin>
1c004fb4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004fb8:	02805004 	addi.w	$r4,$r0,20(0x14)
1c004fbc:	57c623ff 	bl	-14816(0xfffc620) # 1c0015dc <gpio_write_pin>
1c004fc0:	50009000 	b	144(0x90) # 1c005050 <main+0x464>
1c004fc4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004fc8:	0280f58c 	addi.w	$r12,$r12,61(0x3d)
1c004fcc:	2a00018d 	ld.bu	$r13,$r12,0
1c004fd0:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c004fd4:	580019ac 	beq	$r13,$r12,24(0x18) # 1c004fec <main+0x400>
1c004fd8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004fdc:	0280a58c 	addi.w	$r12,$r12,41(0x29)
1c004fe0:	2a00018d 	ld.bu	$r13,$r12,0
1c004fe4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c004fe8:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c00501c <main+0x430>
1c004fec:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004ff0:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c004ff4:	57c5ebff 	bl	-14872(0xfffc5e8) # 1c0015dc <gpio_write_pin>
1c004ff8:	00150005 	move	$r5,$r0
1c004ffc:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c005000:	57c5dfff 	bl	-14884(0xfffc5dc) # 1c0015dc <gpio_write_pin>
1c005004:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005008:	02805004 	addi.w	$r4,$r0,20(0x14)
1c00500c:	57c5d3ff 	bl	-14896(0xfffc5d0) # 1c0015dc <gpio_write_pin>
1c005010:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005014:	541aec00 	bl	6892(0x1aec) # 1c006b00 <YUYIN_Ctrl>
1c005018:	50003800 	b	56(0x38) # 1c005050 <main+0x464>
1c00501c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005020:	02bf958c 	addi.w	$r12,$r12,-27(0xfe5)
1c005024:	2a00018d 	ld.bu	$r13,$r12,0
1c005028:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00502c:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c005050 <main+0x464>
1c005030:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005034:	54041c00 	bl	1052(0x41c) # 1c005450 <BEEP_on>
1c005038:	0287d004 	addi.w	$r4,$r0,500(0x1f4)
1c00503c:	57e4bbff 	bl	-6984(0xfffe4b8) # 1c0034f4 <delay_ms>
1c005040:	00150004 	move	$r4,$r0
1c005044:	54040c00 	bl	1036(0x40c) # 1c005450 <BEEP_on>
1c005048:	02801004 	addi.w	$r4,$r0,4(0x4)
1c00504c:	541ab400 	bl	6836(0x1ab4) # 1c006b00 <YUYIN_Ctrl>
1c005050:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005054:	02bf718c 	addi.w	$r12,$r12,-36(0xfdc)
1c005058:	2a00018c 	ld.bu	$r12,$r12,0
1c00505c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005060:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005064:	28bec18c 	ld.w	$r12,$r12,-80(0xfb0)
1c005068:	2a40018c 	ld.hu	$r12,$r12,0
1c00506c:	6c0011ac 	bgeu	$r13,$r12,16(0x10) # 1c00507c <main+0x490>
1c005070:	00150005 	move	$r5,$r0
1c005074:	02808804 	addi.w	$r4,$r0,34(0x22)
1c005078:	57c567ff 	bl	-15004(0xfffc564) # 1c0015dc <gpio_write_pin>
1c00507c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005080:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c005084:	2a00018c 	ld.bu	$r12,$r12,0
1c005088:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00508c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005090:	28be118c 	ld.w	$r12,$r12,-124(0xf84)
1c005094:	2a40018c 	ld.hu	$r12,$r12,0
1c005098:	6800598d 	bltu	$r12,$r13,88(0x58) # 1c0050f0 <main+0x504>
1c00509c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0050a0:	02be458c 	addi.w	$r12,$r12,-111(0xf91)
1c0050a4:	2a00018c 	ld.bu	$r12,$r12,0
1c0050a8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0050ac:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0050b0:	28bd718c 	ld.w	$r12,$r12,-164(0xf5c)
1c0050b4:	2a40018c 	ld.hu	$r12,$r12,0
1c0050b8:	6800398d 	bltu	$r12,$r13,56(0x38) # 1c0050f0 <main+0x504>
1c0050bc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0050c0:	02bdc98c 	addi.w	$r12,$r12,-142(0xf72)
1c0050c4:	2a00018c 	ld.bu	$r12,$r12,0
1c0050c8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0050cc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0050d0:	28bd618c 	ld.w	$r12,$r12,-168(0xf58)
1c0050d4:	2a40018c 	ld.hu	$r12,$r12,0
1c0050d8:	680019ac 	bltu	$r13,$r12,24(0x18) # 1c0050f0 <main+0x504>
1c0050dc:	00150005 	move	$r5,$r0
1c0050e0:	02808804 	addi.w	$r4,$r0,34(0x22)
1c0050e4:	57c4fbff 	bl	-15112(0xfffc4f8) # 1c0015dc <gpio_write_pin>
1c0050e8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0050ec:	541a1400 	bl	6676(0x1a14) # 1c006b00 <YUYIN_Ctrl>
1c0050f0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0050f4:	02bcf18c 	addi.w	$r12,$r12,-196(0xf3c)
1c0050f8:	2a00018c 	ld.bu	$r12,$r12,0
1c0050fc:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005100:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005104:	28bc418c 	ld.w	$r12,$r12,-240(0xf10)
1c005108:	2a40018c 	ld.hu	$r12,$r12,0
1c00510c:	6c00198d 	bgeu	$r12,$r13,24(0x18) # 1c005124 <main+0x538>
1c005110:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005114:	02808804 	addi.w	$r4,$r0,34(0x22)
1c005118:	57c4c7ff 	bl	-15164(0xfffc4c4) # 1c0015dc <gpio_write_pin>
1c00511c:	00150004 	move	$r4,$r0
1c005120:	54033000 	bl	816(0x330) # 1c005450 <BEEP_on>
1c005124:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005128:	02bc258c 	addi.w	$r12,$r12,-247(0xf09)
1c00512c:	2a00018c 	ld.bu	$r12,$r12,0
1c005130:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005134:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005138:	28bb518c 	ld.w	$r12,$r12,-300(0xed4)
1c00513c:	2a40018c 	ld.hu	$r12,$r12,0
1c005140:	680059ac 	bltu	$r13,$r12,88(0x58) # 1c005198 <main+0x5ac>
1c005144:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005148:	02bba18c 	addi.w	$r12,$r12,-280(0xee8)
1c00514c:	2a00018c 	ld.bu	$r12,$r12,0
1c005150:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005154:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005158:	28baf18c 	ld.w	$r12,$r12,-324(0xebc)
1c00515c:	2a40018c 	ld.hu	$r12,$r12,0
1c005160:	680039ac 	bltu	$r13,$r12,56(0x38) # 1c005198 <main+0x5ac>
1c005164:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005168:	02bb298c 	addi.w	$r12,$r12,-310(0xeca)
1c00516c:	2a00018c 	ld.bu	$r12,$r12,0
1c005170:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005174:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005178:	28bac18c 	ld.w	$r12,$r12,-336(0xeb0)
1c00517c:	2a40018c 	ld.hu	$r12,$r12,0
1c005180:	680019ac 	bltu	$r13,$r12,24(0x18) # 1c005198 <main+0x5ac>
1c005184:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005188:	02805004 	addi.w	$r4,$r0,20(0x14)
1c00518c:	57c453ff 	bl	-15280(0xfffc450) # 1c0015dc <gpio_write_pin>
1c005190:	02800804 	addi.w	$r4,$r0,2(0x2)
1c005194:	54196c00 	bl	6508(0x196c) # 1c006b00 <YUYIN_Ctrl>
1c005198:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00519c:	02ba558c 	addi.w	$r12,$r12,-363(0xe95)
1c0051a0:	2a00018c 	ld.bu	$r12,$r12,0
1c0051a4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0051a8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0051ac:	28b9818c 	ld.w	$r12,$r12,-416(0xe60)
1c0051b0:	2a40018c 	ld.hu	$r12,$r12,0
1c0051b4:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c0051c0 <main+0x5d4>
1c0051b8:	00150004 	move	$r4,$r0
1c0051bc:	54029400 	bl	660(0x294) # 1c005450 <BEEP_on>
1c0051c0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0051c4:	02b9b98c 	addi.w	$r12,$r12,-402(0xe6e)
1c0051c8:	2a00018c 	ld.bu	$r12,$r12,0
1c0051cc:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0051d0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0051d4:	28b9518c 	ld.w	$r12,$r12,-428(0xe54)
1c0051d8:	2a40018c 	ld.hu	$r12,$r12,0
1c0051dc:	6c0011ac 	bgeu	$r13,$r12,16(0x10) # 1c0051ec <main+0x600>
1c0051e0:	00150005 	move	$r5,$r0
1c0051e4:	02808804 	addi.w	$r4,$r0,34(0x22)
1c0051e8:	57c3f7ff 	bl	-15372(0xfffc3f4) # 1c0015dc <gpio_write_pin>
1c0051ec:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0051f0:	02b9098c 	addi.w	$r12,$r12,-446(0xe42)
1c0051f4:	2a00018c 	ld.bu	$r12,$r12,0
1c0051f8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0051fc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005200:	28b8a18c 	ld.w	$r12,$r12,-472(0xe28)
1c005204:	2a40018c 	ld.hu	$r12,$r12,0
1c005208:	6800598d 	bltu	$r12,$r13,88(0x58) # 1c005260 <main+0x674>
1c00520c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005210:	02b8818c 	addi.w	$r12,$r12,-480(0xe20)
1c005214:	2a00018c 	ld.bu	$r12,$r12,0
1c005218:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00521c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005220:	28b7d18c 	ld.w	$r12,$r12,-524(0xdf4)
1c005224:	2a40018c 	ld.hu	$r12,$r12,0
1c005228:	680039ac 	bltu	$r13,$r12,56(0x38) # 1c005260 <main+0x674>
1c00522c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005230:	02b8058c 	addi.w	$r12,$r12,-511(0xe01)
1c005234:	2a00018c 	ld.bu	$r12,$r12,0
1c005238:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00523c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005240:	28b7318c 	ld.w	$r12,$r12,-564(0xdcc)
1c005244:	2a40018c 	ld.hu	$r12,$r12,0
1c005248:	6800198d 	bltu	$r12,$r13,24(0x18) # 1c005260 <main+0x674>
1c00524c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005250:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005254:	57c38bff 	bl	-15480(0xfffc388) # 1c0015dc <gpio_write_pin>
1c005258:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c00525c:	5418a400 	bl	6308(0x18a4) # 1c006b00 <YUYIN_Ctrl>
1c005260:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005264:	02b7398c 	addi.w	$r12,$r12,-562(0xdce)
1c005268:	2a00018c 	ld.bu	$r12,$r12,0
1c00526c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005270:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005274:	28b6d18c 	ld.w	$r12,$r12,-588(0xdb4)
1c005278:	2a40018c 	ld.hu	$r12,$r12,0
1c00527c:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c005288 <main+0x69c>
1c005280:	00150004 	move	$r4,$r0
1c005284:	5401cc00 	bl	460(0x1cc) # 1c005450 <BEEP_on>
1c005288:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00528c:	02b6918c 	addi.w	$r12,$r12,-604(0xda4)
1c005290:	2a00018c 	ld.bu	$r12,$r12,0
1c005294:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005298:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00529c:	28b5e18c 	ld.w	$r12,$r12,-648(0xd78)
1c0052a0:	2a40018c 	ld.hu	$r12,$r12,0
1c0052a4:	680071ac 	bltu	$r13,$r12,112(0x70) # 1c005314 <main+0x728>
1c0052a8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0052ac:	02b6158c 	addi.w	$r12,$r12,-635(0xd85)
1c0052b0:	2a00018c 	ld.bu	$r12,$r12,0
1c0052b4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0052b8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0052bc:	28b5418c 	ld.w	$r12,$r12,-688(0xd50)
1c0052c0:	2a40018c 	ld.hu	$r12,$r12,0
1c0052c4:	6800518d 	bltu	$r12,$r13,80(0x50) # 1c005314 <main+0x728>
1c0052c8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0052cc:	02b5998c 	addi.w	$r12,$r12,-666(0xd66)
1c0052d0:	2a00018c 	ld.bu	$r12,$r12,0
1c0052d4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0052d8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0052dc:	28b5318c 	ld.w	$r12,$r12,-692(0xd4c)
1c0052e0:	2a40018c 	ld.hu	$r12,$r12,0
1c0052e4:	680031ac 	bltu	$r13,$r12,48(0x30) # 1c005314 <main+0x728>
1c0052e8:	00150004 	move	$r4,$r0
1c0052ec:	54016400 	bl	356(0x164) # 1c005450 <BEEP_on>
1c0052f0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0052f4:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c0052f8:	57c2e7ff 	bl	-15644(0xfffc2e4) # 1c0015dc <gpio_write_pin>
1c0052fc:	00150005 	move	$r5,$r0
1c005300:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c005304:	57c2dbff 	bl	-15656(0xfffc2d8) # 1c0015dc <gpio_write_pin>
1c005308:	00150005 	move	$r5,$r0
1c00530c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005310:	57c2cfff 	bl	-15668(0xfffc2cc) # 1c0015dc <gpio_write_pin>
1c005314:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005318:	28b3f18c 	ld.w	$r12,$r12,-772(0xcfc)
1c00531c:	2a40018c 	ld.hu	$r12,$r12,0
1c005320:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005324:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005328:	02b4318c 	addi.w	$r12,$r12,-756(0xd0c)
1c00532c:	2900098d 	st.b	$r13,$r12,2(0x2)
1c005330:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005334:	28b3618c 	ld.w	$r12,$r12,-808(0xcd8)
1c005338:	2a40018c 	ld.hu	$r12,$r12,0
1c00533c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005340:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005344:	02b3c18c 	addi.w	$r12,$r12,-784(0xcf0)
1c005348:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00534c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005350:	28b3618c 	ld.w	$r12,$r12,-808(0xcd8)
1c005354:	2a40018c 	ld.hu	$r12,$r12,0
1c005358:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00535c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005360:	02b3518c 	addi.w	$r12,$r12,-812(0xcd4)
1c005364:	2900118d 	st.b	$r13,$r12,4(0x4)
1c005368:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00536c:	02b3218c 	addi.w	$r12,$r12,-824(0xcc8)
1c005370:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005374:	00150184 	move	$r4,$r12
1c005378:	57d6ebff 	bl	-10520(0xfffd6e8) # 1c002a60 <Uart1_send>
1c00537c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c005380:	02935084 	addi.w	$r4,$r4,1236(0x4d4)
1c005384:	57c813ff 	bl	-14320(0xfffc810) # 1c001b94 <myprintf>
1c005388:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00538c:	50003400 	b	52(0x34) # 1c0053c0 <main+0x7d4>
1c005390:	1cc7ff8d 	pcaddu12i	$r13,409596(0x63ffc)
1c005394:	02b281ad 	addi.w	$r13,$r13,-864(0xca0)
1c005398:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00539c:	001031ac 	add.w	$r12,$r13,$r12
1c0053a0:	2a00018c 	ld.bu	$r12,$r12,0
1c0053a4:	00150185 	move	$r5,$r12
1c0053a8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0053ac:	0292e084 	addi.w	$r4,$r4,1208(0x4b8)
1c0053b0:	57c7e7ff 	bl	-14364(0xfffc7e4) # 1c001b94 <myprintf>
1c0053b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0053b8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0053bc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0053c0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0053c4:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0053c8:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c005390 <main+0x7a4>
1c0053cc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0053d0:	02926084 	addi.w	$r4,$r4,1176(0x498)
1c0053d4:	57c7c3ff 	bl	-14400(0xfffc7c0) # 1c001b94 <myprintf>
1c0053d8:	54084800 	bl	2120(0x848) # 1c005c20 <KEY_Scan>
1c0053dc:	0015008c 	move	$r12,$r4
1c0053e0:	0015018d 	move	$r13,$r12
1c0053e4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0053e8:	5ff87dac 	bne	$r13,$r12,-1924(0x3f87c) # 1c004c64 <main+0x78>
1c0053ec:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0053f0:	02b0518c 	addi.w	$r12,$r12,-1004(0xc14)
1c0053f4:	2a00018c 	ld.bu	$r12,$r12,0
1c0053f8:	0240058c 	sltui	$r12,$r12,1(0x1)
1c0053fc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005400:	0015018d 	move	$r13,$r12
1c005404:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005408:	02aff18c 	addi.w	$r12,$r12,-1028(0xbfc)
1c00540c:	2900018d 	st.b	$r13,$r12,0
1c005410:	53f857ff 	b	-1964(0xffff854) # 1c004c64 <main+0x78>

1c005414 <BEEP_Init>:
BEEP_Init():
1c005414:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005418:	29803061 	st.w	$r1,$r3,12(0xc)
1c00541c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005420:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005424:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005428:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c00542c:	57c437ff 	bl	-15308(0xfffc434) # 1c001860 <gpio_set_direction>
1c005430:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005434:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c005438:	57c1a7ff 	bl	-15964(0xfffc1a4) # 1c0015dc <gpio_write_pin>
1c00543c:	03400000 	andi	$r0,$r0,0x0
1c005440:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005444:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005448:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00544c:	4c000020 	jirl	$r0,$r1,0

1c005450 <BEEP_on>:
BEEP_on():
1c005450:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005454:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005458:	29806076 	st.w	$r22,$r3,24(0x18)
1c00545c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005460:	0015008c 	move	$r12,$r4
1c005464:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005468:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00546c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005470:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c005480 <BEEP_on+0x30>
1c005474:	00150005 	move	$r5,$r0
1c005478:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c00547c:	57c163ff 	bl	-16032(0xfffc160) # 1c0015dc <gpio_write_pin>
1c005480:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005484:	44001180 	bnez	$r12,16(0x10) # 1c005494 <BEEP_on+0x44>
1c005488:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00548c:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c005490:	57c14fff 	bl	-16052(0xfffc14c) # 1c0015dc <gpio_write_pin>
1c005494:	03400000 	andi	$r0,$r0,0x0
1c005498:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00549c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0054a0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0054a4:	4c000020 	jirl	$r0,$r1,0

1c0054a8 <IIC_Delay>:
IIC_Delay():
1c0054a8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0054ac:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0054b0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0054b4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0054b8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0054bc:	50001000 	b	16(0x10) # 1c0054cc <IIC_Delay+0x24>
1c0054c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0054c4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0054c8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0054cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0054d0:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c0054c0 <IIC_Delay+0x18>
1c0054d4:	03400000 	andi	$r0,$r0,0x0
1c0054d8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0054dc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0054e0:	4c000020 	jirl	$r0,$r1,0

1c0054e4 <IIC_Init>:
IIC_Init():
1c0054e4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0054e8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0054ec:	29802076 	st.w	$r22,$r3,8(0x8)
1c0054f0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0054f4:	00150005 	move	$r5,$r0
1c0054f8:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0054fc:	57c15bff 	bl	-16040(0xfffc158) # 1c001654 <gpio_pin_remap>
1c005500:	00150005 	move	$r5,$r0
1c005504:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005508:	57c14fff 	bl	-16052(0xfffc14c) # 1c001654 <gpio_pin_remap>
1c00550c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005510:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005514:	57c34fff 	bl	-15540(0xfffc34c) # 1c001860 <gpio_set_direction>
1c005518:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00551c:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005520:	57c343ff 	bl	-15552(0xfffc340) # 1c001860 <gpio_set_direction>
1c005524:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005528:	02801004 	addi.w	$r4,$r0,4(0x4)
1c00552c:	57c0b3ff 	bl	-16208(0xfffc0b0) # 1c0015dc <gpio_write_pin>
1c005530:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005534:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005538:	57c0a7ff 	bl	-16220(0xfffc0a4) # 1c0015dc <gpio_write_pin>
1c00553c:	03400000 	andi	$r0,$r0,0x0
1c005540:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005544:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005548:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00554c:	4c000020 	jirl	$r0,$r1,0

1c005550 <SDA_IN>:
SDA_IN():
1c005550:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005554:	29803061 	st.w	$r1,$r3,12(0xc)
1c005558:	29802076 	st.w	$r22,$r3,8(0x8)
1c00555c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005560:	00150005 	move	$r5,$r0
1c005564:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005568:	57c2fbff 	bl	-15624(0xfffc2f8) # 1c001860 <gpio_set_direction>
1c00556c:	03400000 	andi	$r0,$r0,0x0
1c005570:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005574:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005578:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00557c:	4c000020 	jirl	$r0,$r1,0

1c005580 <SDA_OUT>:
SDA_OUT():
1c005580:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005584:	29803061 	st.w	$r1,$r3,12(0xc)
1c005588:	29802076 	st.w	$r22,$r3,8(0x8)
1c00558c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005590:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005594:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005598:	57c2cbff 	bl	-15672(0xfffc2c8) # 1c001860 <gpio_set_direction>
1c00559c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0055a0:	02801404 	addi.w	$r4,$r0,5(0x5)
1c0055a4:	57c03bff 	bl	-16328(0xfffc038) # 1c0015dc <gpio_write_pin>
1c0055a8:	03400000 	andi	$r0,$r0,0x0
1c0055ac:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0055b0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0055b4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0055b8:	4c000020 	jirl	$r0,$r1,0

1c0055bc <IIC_Start>:
IIC_Start():
1c0055bc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0055c0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0055c4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0055c8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0055cc:	57ffb7ff 	bl	-76(0xfffffb4) # 1c005580 <SDA_OUT>
1c0055d0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0055d4:	02801404 	addi.w	$r4,$r0,5(0x5)
1c0055d8:	57c007ff 	bl	-16380(0xfffc004) # 1c0015dc <gpio_write_pin>
1c0055dc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0055e0:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0055e4:	57bffbff 	bl	-16392(0xfffbff8) # 1c0015dc <gpio_write_pin>
1c0055e8:	57fec3ff 	bl	-320(0xffffec0) # 1c0054a8 <IIC_Delay>
1c0055ec:	00150005 	move	$r5,$r0
1c0055f0:	02801404 	addi.w	$r4,$r0,5(0x5)
1c0055f4:	57bfebff 	bl	-16408(0xfffbfe8) # 1c0015dc <gpio_write_pin>
1c0055f8:	57feb3ff 	bl	-336(0xffffeb0) # 1c0054a8 <IIC_Delay>
1c0055fc:	00150005 	move	$r5,$r0
1c005600:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005604:	57bfdbff 	bl	-16424(0xfffbfd8) # 1c0015dc <gpio_write_pin>
1c005608:	03400000 	andi	$r0,$r0,0x0
1c00560c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005610:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005614:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005618:	4c000020 	jirl	$r0,$r1,0

1c00561c <IIC_Stop>:
IIC_Stop():
1c00561c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005620:	29803061 	st.w	$r1,$r3,12(0xc)
1c005624:	29802076 	st.w	$r22,$r3,8(0x8)
1c005628:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00562c:	57ff57ff 	bl	-172(0xfffff54) # 1c005580 <SDA_OUT>
1c005630:	00150005 	move	$r5,$r0
1c005634:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005638:	57bfa7ff 	bl	-16476(0xfffbfa4) # 1c0015dc <gpio_write_pin>
1c00563c:	00150005 	move	$r5,$r0
1c005640:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005644:	57bf9bff 	bl	-16488(0xfffbf98) # 1c0015dc <gpio_write_pin>
1c005648:	57fe63ff 	bl	-416(0xffffe60) # 1c0054a8 <IIC_Delay>
1c00564c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005650:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005654:	57bf8bff 	bl	-16504(0xfffbf88) # 1c0015dc <gpio_write_pin>
1c005658:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00565c:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005660:	57bf7fff 	bl	-16516(0xfffbf7c) # 1c0015dc <gpio_write_pin>
1c005664:	57fe47ff 	bl	-444(0xffffe44) # 1c0054a8 <IIC_Delay>
1c005668:	03400000 	andi	$r0,$r0,0x0
1c00566c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005670:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005674:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005678:	4c000020 	jirl	$r0,$r1,0

1c00567c <IIC_Wait_Ack>:
IIC_Wait_Ack():
1c00567c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005680:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005684:	29806076 	st.w	$r22,$r3,24(0x18)
1c005688:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00568c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005690:	57fec3ff 	bl	-320(0xffffec0) # 1c005550 <SDA_IN>
1c005694:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005698:	02801404 	addi.w	$r4,$r0,5(0x5)
1c00569c:	57bf43ff 	bl	-16576(0xfffbf40) # 1c0015dc <gpio_write_pin>
1c0056a0:	57fe0bff 	bl	-504(0xffffe08) # 1c0054a8 <IIC_Delay>
1c0056a4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0056a8:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0056ac:	57bf33ff 	bl	-16592(0xfffbf30) # 1c0015dc <gpio_write_pin>
1c0056b0:	57fdfbff 	bl	-520(0xffffdf8) # 1c0054a8 <IIC_Delay>
1c0056b4:	50002800 	b	40(0x28) # 1c0056dc <IIC_Wait_Ack+0x60>
1c0056b8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0056bc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0056c0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0056c4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0056c8:	0283e80c 	addi.w	$r12,$r0,250(0xfa)
1c0056cc:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c0056dc <IIC_Wait_Ack+0x60>
1c0056d0:	57ff4fff 	bl	-180(0xfffff4c) # 1c00561c <IIC_Stop>
1c0056d4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0056d8:	50002400 	b	36(0x24) # 1c0056fc <IIC_Wait_Ack+0x80>
1c0056dc:	02801404 	addi.w	$r4,$r0,5(0x5)
1c0056e0:	57beafff 	bl	-16724(0xfffbeac) # 1c00158c <gpio_get_pin>
1c0056e4:	0015008c 	move	$r12,$r4
1c0056e8:	47ffd19f 	bnez	$r12,-48(0x7fffd0) # 1c0056b8 <IIC_Wait_Ack+0x3c>
1c0056ec:	00150005 	move	$r5,$r0
1c0056f0:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0056f4:	57beebff 	bl	-16664(0xfffbee8) # 1c0015dc <gpio_write_pin>
1c0056f8:	0015000c 	move	$r12,$r0
1c0056fc:	00150184 	move	$r4,$r12
1c005700:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005704:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005708:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00570c:	4c000020 	jirl	$r0,$r1,0

1c005710 <IIC_Send_Byte>:
IIC_Send_Byte():
1c005710:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005714:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005718:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00571c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005720:	0015008c 	move	$r12,$r4
1c005724:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005728:	57fe5bff 	bl	-424(0xffffe58) # 1c005580 <SDA_OUT>
1c00572c:	00150005 	move	$r5,$r0
1c005730:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005734:	57beabff 	bl	-16728(0xfffbea8) # 1c0015dc <gpio_write_pin>
1c005738:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00573c:	50006000 	b	96(0x60) # 1c00579c <IIC_Send_Byte+0x8c>
1c005740:	283f7ecc 	ld.b	$r12,$r22,-33(0xfdf)
1c005744:	64001580 	bge	$r12,$r0,20(0x14) # 1c005758 <IIC_Send_Byte+0x48>
1c005748:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00574c:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005750:	57be8fff 	bl	-16756(0xfffbe8c) # 1c0015dc <gpio_write_pin>
1c005754:	50001000 	b	16(0x10) # 1c005764 <IIC_Send_Byte+0x54>
1c005758:	00150005 	move	$r5,$r0
1c00575c:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005760:	57be7fff 	bl	-16772(0xfffbe7c) # 1c0015dc <gpio_write_pin>
1c005764:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c005768:	0040858c 	slli.w	$r12,$r12,0x1
1c00576c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005770:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005774:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005778:	57be67ff 	bl	-16796(0xfffbe64) # 1c0015dc <gpio_write_pin>
1c00577c:	57fd2fff 	bl	-724(0xffffd2c) # 1c0054a8 <IIC_Delay>
1c005780:	00150005 	move	$r5,$r0
1c005784:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005788:	57be57ff 	bl	-16812(0xfffbe54) # 1c0015dc <gpio_write_pin>
1c00578c:	57fd1fff 	bl	-740(0xffffd1c) # 1c0054a8 <IIC_Delay>
1c005790:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005794:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005798:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00579c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0057a0:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0057a4:	6fff9d8d 	bgeu	$r12,$r13,-100(0x3ff9c) # 1c005740 <IIC_Send_Byte+0x30>
1c0057a8:	03400000 	andi	$r0,$r0,0x0
1c0057ac:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0057b0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0057b4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0057b8:	4c000020 	jirl	$r0,$r1,0

1c0057bc <DHT11_Rst>:
DHT11_Rst():
1c0057bc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0057c0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0057c4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0057c8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0057cc:	54007000 	bl	112(0x70) # 1c00583c <DHT11_IO_Out>
1c0057d0:	00150005 	move	$r5,$r0
1c0057d4:	02804404 	addi.w	$r4,$r0,17(0x11)
1c0057d8:	57be07ff 	bl	-16892(0xfffbe04) # 1c0015dc <gpio_write_pin>
1c0057dc:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0057e0:	57dd17ff 	bl	-8940(0xfffdd14) # 1c0034f4 <delay_ms>
1c0057e4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0057e8:	02804404 	addi.w	$r4,$r0,17(0x11)
1c0057ec:	57bdf3ff 	bl	-16912(0xfffbdf0) # 1c0015dc <gpio_write_pin>
1c0057f0:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c0057f4:	57dccbff 	bl	-9016(0xfffdcc8) # 1c0034bc <delay_us>
1c0057f8:	03400000 	andi	$r0,$r0,0x0
1c0057fc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005800:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005804:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005808:	4c000020 	jirl	$r0,$r1,0

1c00580c <DHT11_IO_In>:
DHT11_IO_In():
1c00580c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005810:	29803061 	st.w	$r1,$r3,12(0xc)
1c005814:	29802076 	st.w	$r22,$r3,8(0x8)
1c005818:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00581c:	00150005 	move	$r5,$r0
1c005820:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005824:	57c03fff 	bl	-16324(0xfffc03c) # 1c001860 <gpio_set_direction>
1c005828:	03400000 	andi	$r0,$r0,0x0
1c00582c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005830:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005834:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005838:	4c000020 	jirl	$r0,$r1,0

1c00583c <DHT11_IO_Out>:
DHT11_IO_Out():
1c00583c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005840:	29803061 	st.w	$r1,$r3,12(0xc)
1c005844:	29802076 	st.w	$r22,$r3,8(0x8)
1c005848:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00584c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005850:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005854:	57c00fff 	bl	-16372(0xfffc00c) # 1c001860 <gpio_set_direction>
1c005858:	03400000 	andi	$r0,$r0,0x0
1c00585c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005860:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005864:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005868:	4c000020 	jirl	$r0,$r1,0

1c00586c <DHT11_Check>:
DHT11_Check():
1c00586c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005870:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005874:	29806076 	st.w	$r22,$r3,24(0x18)
1c005878:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00587c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005880:	57ff8fff 	bl	-116(0xfffff8c) # 1c00580c <DHT11_IO_In>
1c005884:	50001000 	b	16(0x10) # 1c005894 <DHT11_Check+0x28>
1c005888:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00588c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005890:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005894:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005898:	57bcf7ff 	bl	-17164(0xfffbcf4) # 1c00158c <gpio_get_pin>
1c00589c:	0015008c 	move	$r12,$r4
1c0058a0:	40001180 	beqz	$r12,16(0x10) # 1c0058b0 <DHT11_Check+0x44>
1c0058a4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0058a8:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c0058ac:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c005888 <DHT11_Check+0x1c>
1c0058b0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0058b4:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c0058b8:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c0058c4 <DHT11_Check+0x58>
1c0058bc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0058c0:	50004c00 	b	76(0x4c) # 1c00590c <DHT11_Check+0xa0>
1c0058c4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0058c8:	50001000 	b	16(0x10) # 1c0058d8 <DHT11_Check+0x6c>
1c0058cc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0058d0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0058d4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0058d8:	02804404 	addi.w	$r4,$r0,17(0x11)
1c0058dc:	57bcb3ff 	bl	-17232(0xfffbcb0) # 1c00158c <gpio_get_pin>
1c0058e0:	0015008c 	move	$r12,$r4
1c0058e4:	44001180 	bnez	$r12,16(0x10) # 1c0058f4 <DHT11_Check+0x88>
1c0058e8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0058ec:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c0058f0:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c0058cc <DHT11_Check+0x60>
1c0058f4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0058f8:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c0058fc:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c005908 <DHT11_Check+0x9c>
1c005900:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005904:	50000800 	b	8(0x8) # 1c00590c <DHT11_Check+0xa0>
1c005908:	0015000c 	move	$r12,$r0
1c00590c:	00150184 	move	$r4,$r12
1c005910:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005914:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005918:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00591c:	4c000020 	jirl	$r0,$r1,0

1c005920 <DHT11_Read_Bit>:
DHT11_Read_Bit():
1c005920:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005924:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005928:	29806076 	st.w	$r22,$r3,24(0x18)
1c00592c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005930:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005934:	50001000 	b	16(0x10) # 1c005944 <DHT11_Read_Bit+0x24>
1c005938:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00593c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005940:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005944:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005948:	57bc47ff 	bl	-17340(0xfffbc44) # 1c00158c <gpio_get_pin>
1c00594c:	0015008c 	move	$r12,$r4
1c005950:	40001180 	beqz	$r12,16(0x10) # 1c005960 <DHT11_Read_Bit+0x40>
1c005954:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005958:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c00595c:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c005938 <DHT11_Read_Bit+0x18>
1c005960:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005964:	50001000 	b	16(0x10) # 1c005974 <DHT11_Read_Bit+0x54>
1c005968:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00596c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005970:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005974:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005978:	57bc17ff 	bl	-17388(0xfffbc14) # 1c00158c <gpio_get_pin>
1c00597c:	0015008c 	move	$r12,$r4
1c005980:	44001180 	bnez	$r12,16(0x10) # 1c005990 <DHT11_Read_Bit+0x70>
1c005984:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005988:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c00598c:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c005968 <DHT11_Read_Bit+0x48>
1c005990:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c005994:	57db2bff 	bl	-9432(0xfffdb28) # 1c0034bc <delay_us>
1c005998:	02804404 	addi.w	$r4,$r0,17(0x11)
1c00599c:	57bbf3ff 	bl	-17424(0xfffbbf0) # 1c00158c <gpio_get_pin>
1c0059a0:	0015008c 	move	$r12,$r4
1c0059a4:	40000d80 	beqz	$r12,12(0xc) # 1c0059b0 <DHT11_Read_Bit+0x90>
1c0059a8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0059ac:	50000800 	b	8(0x8) # 1c0059b4 <DHT11_Read_Bit+0x94>
1c0059b0:	0015000c 	move	$r12,$r0
1c0059b4:	00150184 	move	$r4,$r12
1c0059b8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0059bc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0059c0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0059c4:	4c000020 	jirl	$r0,$r1,0

1c0059c8 <DHT11_Read_Byte>:
DHT11_Read_Byte():
1c0059c8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0059cc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0059d0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0059d4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0059d8:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0059dc:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0059e0:	50003400 	b	52(0x34) # 1c005a14 <DHT11_Read_Byte+0x4c>
1c0059e4:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0059e8:	0040858c 	slli.w	$r12,$r12,0x1
1c0059ec:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0059f0:	57ff33ff 	bl	-208(0xfffff30) # 1c005920 <DHT11_Read_Bit>
1c0059f4:	0015008c 	move	$r12,$r4
1c0059f8:	0015018d 	move	$r13,$r12
1c0059fc:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005a00:	001531ac 	or	$r12,$r13,$r12
1c005a04:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005a08:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005a0c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005a10:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005a14:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005a18:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005a1c:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c0059e4 <DHT11_Read_Byte+0x1c>
1c005a20:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005a24:	00150184 	move	$r4,$r12
1c005a28:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005a2c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005a30:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005a34:	4c000020 	jirl	$r0,$r1,0

1c005a38 <DHT11_Read_Data>:
DHT11_Read_Data():
1c005a38:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005a3c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005a40:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005a44:	29809077 	st.w	$r23,$r3,36(0x24)
1c005a48:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005a4c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005a50:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005a54:	57fd6bff 	bl	-664(0xffffd68) # 1c0057bc <DHT11_Rst>
1c005a58:	57fe17ff 	bl	-492(0xffffe14) # 1c00586c <DHT11_Check>
1c005a5c:	0015008c 	move	$r12,$r4
1c005a60:	4400c180 	bnez	$r12,192(0xc0) # 1c005b20 <DHT11_Read_Data+0xe8>
1c005a64:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005a68:	50002800 	b	40(0x28) # 1c005a90 <DHT11_Read_Data+0x58>
1c005a6c:	2a3fbed7 	ld.bu	$r23,$r22,-17(0xfef)
1c005a70:	57ff5bff 	bl	-168(0xfffff58) # 1c0059c8 <DHT11_Read_Byte>
1c005a74:	0015008c 	move	$r12,$r4
1c005a78:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c005a7c:	00105dad 	add.w	$r13,$r13,$r23
1c005a80:	293fe1ac 	st.b	$r12,$r13,-8(0xff8)
1c005a84:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005a88:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005a8c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005a90:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005a94:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c005a98:	6fffd58d 	bgeu	$r12,$r13,-44(0x3ffd4) # 1c005a6c <DHT11_Read_Data+0x34>
1c005a9c:	2a3fa2cc 	ld.bu	$r12,$r22,-24(0xfe8)
1c005aa0:	0015018d 	move	$r13,$r12
1c005aa4:	2a3fa6cc 	ld.bu	$r12,$r22,-23(0xfe9)
1c005aa8:	001031ac 	add.w	$r12,$r13,$r12
1c005aac:	2a3faacd 	ld.bu	$r13,$r22,-22(0xfea)
1c005ab0:	0010358c 	add.w	$r12,$r12,$r13
1c005ab4:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c005ab8:	0010358c 	add.w	$r12,$r12,$r13
1c005abc:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c005ac0:	5c00698d 	bne	$r12,$r13,104(0x68) # 1c005b28 <DHT11_Read_Data+0xf0>
1c005ac4:	2a3fa2cc 	ld.bu	$r12,$r22,-24(0xfe8)
1c005ac8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005acc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005ad0:	001c31ac 	mul.w	$r12,$r13,$r12
1c005ad4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005ad8:	2a3fa6cc 	ld.bu	$r12,$r22,-23(0xfe9)
1c005adc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005ae0:	001031ac 	add.w	$r12,$r13,$r12
1c005ae4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005ae8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005aec:	2940018d 	st.h	$r13,$r12,0
1c005af0:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c005af4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005af8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005afc:	001c31ac 	mul.w	$r12,$r13,$r12
1c005b00:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005b04:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c005b08:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005b0c:	001031ac 	add.w	$r12,$r13,$r12
1c005b10:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005b14:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005b18:	2940018d 	st.h	$r13,$r12,0
1c005b1c:	50000c00 	b	12(0xc) # 1c005b28 <DHT11_Read_Data+0xf0>
1c005b20:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005b24:	50000800 	b	8(0x8) # 1c005b2c <DHT11_Read_Data+0xf4>
1c005b28:	0015000c 	move	$r12,$r0
1c005b2c:	00150184 	move	$r4,$r12
1c005b30:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005b34:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005b38:	28809077 	ld.w	$r23,$r3,36(0x24)
1c005b3c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005b40:	4c000020 	jirl	$r0,$r1,0

1c005b44 <DHT11_Init>:
DHT11_Init():
1c005b44:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005b48:	29803061 	st.w	$r1,$r3,12(0xc)
1c005b4c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005b50:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005b54:	00150005 	move	$r5,$r0
1c005b58:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005b5c:	57bafbff 	bl	-17672(0xfffbaf8) # 1c001654 <gpio_pin_remap>
1c005b60:	57fcdfff 	bl	-804(0xffffcdc) # 1c00583c <DHT11_IO_Out>
1c005b64:	57fc5bff 	bl	-936(0xffffc58) # 1c0057bc <DHT11_Rst>
1c005b68:	57fd07ff 	bl	-764(0xffffd04) # 1c00586c <DHT11_Check>
1c005b6c:	0015008c 	move	$r12,$r4
1c005b70:	00150184 	move	$r4,$r12
1c005b74:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005b78:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005b7c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005b80:	4c000020 	jirl	$r0,$r1,0

1c005b84 <FAN_Init>:
FAN_Init():
1c005b84:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005b88:	29803061 	st.w	$r1,$r3,12(0xc)
1c005b8c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005b90:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005b94:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005b98:	02808804 	addi.w	$r4,$r0,34(0x22)
1c005b9c:	57bcc7ff 	bl	-17212(0xfffbcc4) # 1c001860 <gpio_set_direction>
1c005ba0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005ba4:	02808804 	addi.w	$r4,$r0,34(0x22)
1c005ba8:	57ba37ff 	bl	-17868(0xfffba34) # 1c0015dc <gpio_write_pin>
1c005bac:	03400000 	andi	$r0,$r0,0x0
1c005bb0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005bb4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005bb8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005bbc:	4c000020 	jirl	$r0,$r1,0

1c005bc0 <LED_Init>:
LED_Init():
1c005bc0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005bc4:	29803061 	st.w	$r1,$r3,12(0xc)
1c005bc8:	29802076 	st.w	$r22,$r3,8(0x8)
1c005bcc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005bd0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005bd4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005bd8:	57bc8bff 	bl	-17272(0xfffbc88) # 1c001860 <gpio_set_direction>
1c005bdc:	03400000 	andi	$r0,$r0,0x0
1c005be0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005be4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005be8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005bec:	4c000020 	jirl	$r0,$r1,0

1c005bf0 <KEY_Init>:
KEY_Init():
1c005bf0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005bf4:	29803061 	st.w	$r1,$r3,12(0xc)
1c005bf8:	29802076 	st.w	$r22,$r3,8(0x8)
1c005bfc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005c00:	00150005 	move	$r5,$r0
1c005c04:	02805804 	addi.w	$r4,$r0,22(0x16)
1c005c08:	57bc5bff 	bl	-17320(0xfffbc58) # 1c001860 <gpio_set_direction>
1c005c0c:	03400000 	andi	$r0,$r0,0x0
1c005c10:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005c14:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005c18:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005c1c:	4c000020 	jirl	$r0,$r1,0

1c005c20 <KEY_Scan>:
KEY_Scan():
1c005c20:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005c24:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005c28:	29806076 	st.w	$r22,$r3,24(0x18)
1c005c2c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005c30:	02805804 	addi.w	$r4,$r0,22(0x16)
1c005c34:	57b95bff 	bl	-18088(0xfffb958) # 1c00158c <gpio_get_pin>
1c005c38:	0015008c 	move	$r12,$r4
1c005c3c:	40003980 	beqz	$r12,56(0x38) # 1c005c74 <KEY_Scan+0x54>
1c005c40:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005c44:	57d8b3ff 	bl	-10064(0xfffd8b0) # 1c0034f4 <delay_ms>
1c005c48:	02805804 	addi.w	$r4,$r0,22(0x16)
1c005c4c:	57b943ff 	bl	-18112(0xfffb940) # 1c00158c <gpio_get_pin>
1c005c50:	0015008c 	move	$r12,$r4
1c005c54:	40000d80 	beqz	$r12,12(0xc) # 1c005c60 <KEY_Scan+0x40>
1c005c58:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005c5c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005c60:	03400000 	andi	$r0,$r0,0x0
1c005c64:	02805804 	addi.w	$r4,$r0,22(0x16)
1c005c68:	57b927ff 	bl	-18140(0xfffb924) # 1c00158c <gpio_get_pin>
1c005c6c:	0015008c 	move	$r12,$r4
1c005c70:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c005c64 <KEY_Scan+0x44>
1c005c74:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005c78:	00150184 	move	$r4,$r12
1c005c7c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005c80:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005c84:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005c88:	4c000020 	jirl	$r0,$r1,0

1c005c8c <OLED_Hardware_Init>:
OLED_Hardware_Init():
1c005c8c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005c90:	29803061 	st.w	$r1,$r3,12(0xc)
1c005c94:	29802076 	st.w	$r22,$r3,8(0x8)
1c005c98:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005c9c:	57f84bff 	bl	-1976(0xffff848) # 1c0054e4 <IIC_Init>
1c005ca0:	03400000 	andi	$r0,$r0,0x0
1c005ca4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005ca8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005cac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005cb0:	4c000020 	jirl	$r0,$r1,0

1c005cb4 <OLED_WR_Byte>:
OLED_WR_Byte():
1c005cb4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005cb8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005cbc:	29806076 	st.w	$r22,$r3,24(0x18)
1c005cc0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005cc4:	0015008c 	move	$r12,$r4
1c005cc8:	001500ad 	move	$r13,$r5
1c005ccc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005cd0:	001501ac 	move	$r12,$r13
1c005cd4:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005cd8:	57f8e7ff 	bl	-1820(0xffff8e4) # 1c0055bc <IIC_Start>
1c005cdc:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c005ce0:	57fa33ff 	bl	-1488(0xffffa30) # 1c005710 <IIC_Send_Byte>
1c005ce4:	57f99bff 	bl	-1640(0xffff998) # 1c00567c <IIC_Wait_Ack>
1c005ce8:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005cec:	00150184 	move	$r4,$r12
1c005cf0:	57fa23ff 	bl	-1504(0xffffa20) # 1c005710 <IIC_Send_Byte>
1c005cf4:	57f98bff 	bl	-1656(0xffff988) # 1c00567c <IIC_Wait_Ack>
1c005cf8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005cfc:	00150184 	move	$r4,$r12
1c005d00:	57fa13ff 	bl	-1520(0xffffa10) # 1c005710 <IIC_Send_Byte>
1c005d04:	57f97bff 	bl	-1672(0xffff978) # 1c00567c <IIC_Wait_Ack>
1c005d08:	57f917ff 	bl	-1772(0xffff914) # 1c00561c <IIC_Stop>
1c005d0c:	03400000 	andi	$r0,$r0,0x0
1c005d10:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005d14:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005d18:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005d1c:	4c000020 	jirl	$r0,$r1,0

1c005d20 <OLED_Set_Pos>:
OLED_Set_Pos():
1c005d20:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005d24:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005d28:	29806076 	st.w	$r22,$r3,24(0x18)
1c005d2c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005d30:	0015008c 	move	$r12,$r4
1c005d34:	001500ad 	move	$r13,$r5
1c005d38:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005d3c:	001501ac 	move	$r12,$r13
1c005d40:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005d44:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005d48:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c005d4c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005d50:	00150005 	move	$r5,$r0
1c005d54:	00150184 	move	$r4,$r12
1c005d58:	57ff5fff 	bl	-164(0xfffff5c) # 1c005cb4 <OLED_WR_Byte>
1c005d5c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005d60:	0044918c 	srli.w	$r12,$r12,0x4
1c005d64:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005d68:	0380418c 	ori	$r12,$r12,0x10
1c005d6c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005d70:	00150005 	move	$r5,$r0
1c005d74:	00150184 	move	$r4,$r12
1c005d78:	57ff3fff 	bl	-196(0xfffff3c) # 1c005cb4 <OLED_WR_Byte>
1c005d7c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005d80:	03403d8c 	andi	$r12,$r12,0xf
1c005d84:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005d88:	00150005 	move	$r5,$r0
1c005d8c:	00150184 	move	$r4,$r12
1c005d90:	57ff27ff 	bl	-220(0xfffff24) # 1c005cb4 <OLED_WR_Byte>
1c005d94:	03400000 	andi	$r0,$r0,0x0
1c005d98:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005d9c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005da0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005da4:	4c000020 	jirl	$r0,$r1,0

1c005da8 <OLED_Clear>:
OLED_Clear():
1c005da8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005dac:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005db0:	29806076 	st.w	$r22,$r3,24(0x18)
1c005db4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005db8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005dbc:	50006800 	b	104(0x68) # 1c005e24 <OLED_Clear+0x7c>
1c005dc0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005dc4:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c005dc8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005dcc:	00150005 	move	$r5,$r0
1c005dd0:	00150184 	move	$r4,$r12
1c005dd4:	57fee3ff 	bl	-288(0xffffee0) # 1c005cb4 <OLED_WR_Byte>
1c005dd8:	00150005 	move	$r5,$r0
1c005ddc:	02800804 	addi.w	$r4,$r0,2(0x2)
1c005de0:	57fed7ff 	bl	-300(0xffffed4) # 1c005cb4 <OLED_WR_Byte>
1c005de4:	00150005 	move	$r5,$r0
1c005de8:	02804004 	addi.w	$r4,$r0,16(0x10)
1c005dec:	57fecbff 	bl	-312(0xffffec8) # 1c005cb4 <OLED_WR_Byte>
1c005df0:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005df4:	50001c00 	b	28(0x1c) # 1c005e10 <OLED_Clear+0x68>
1c005df8:	02810005 	addi.w	$r5,$r0,64(0x40)
1c005dfc:	00150004 	move	$r4,$r0
1c005e00:	57feb7ff 	bl	-332(0xffffeb4) # 1c005cb4 <OLED_WR_Byte>
1c005e04:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005e08:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005e0c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005e10:	283fbacc 	ld.b	$r12,$r22,-18(0xfee)
1c005e14:	67ffe580 	bge	$r12,$r0,-28(0x3ffe4) # 1c005df8 <OLED_Clear+0x50>
1c005e18:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005e1c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005e20:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005e24:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005e28:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005e2c:	6fff958d 	bgeu	$r12,$r13,-108(0x3ff94) # 1c005dc0 <OLED_Clear+0x18>
1c005e30:	03400000 	andi	$r0,$r0,0x0
1c005e34:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005e38:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005e3c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005e40:	4c000020 	jirl	$r0,$r1,0

1c005e44 <OLED_Init>:
OLED_Init():
1c005e44:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005e48:	29803061 	st.w	$r1,$r3,12(0xc)
1c005e4c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005e50:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005e54:	57fe3bff 	bl	-456(0xffffe38) # 1c005c8c <OLED_Hardware_Init>
1c005e58:	02819004 	addi.w	$r4,$r0,100(0x64)
1c005e5c:	57d69bff 	bl	-10600(0xfffd698) # 1c0034f4 <delay_ms>
1c005e60:	57ff4bff 	bl	-184(0xfffff48) # 1c005da8 <OLED_Clear>
1c005e64:	00150005 	move	$r5,$r0
1c005e68:	00150004 	move	$r4,$r0
1c005e6c:	57feb7ff 	bl	-332(0xffffeb4) # 1c005d20 <OLED_Set_Pos>
1c005e70:	00150005 	move	$r5,$r0
1c005e74:	0282b804 	addi.w	$r4,$r0,174(0xae)
1c005e78:	57fe3fff 	bl	-452(0xffffe3c) # 1c005cb4 <OLED_WR_Byte>
1c005e7c:	00150005 	move	$r5,$r0
1c005e80:	00150004 	move	$r4,$r0
1c005e84:	57fe33ff 	bl	-464(0xffffe30) # 1c005cb4 <OLED_WR_Byte>
1c005e88:	00150005 	move	$r5,$r0
1c005e8c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c005e90:	57fe27ff 	bl	-476(0xffffe24) # 1c005cb4 <OLED_WR_Byte>
1c005e94:	00150005 	move	$r5,$r0
1c005e98:	02810004 	addi.w	$r4,$r0,64(0x40)
1c005e9c:	57fe1bff 	bl	-488(0xffffe18) # 1c005cb4 <OLED_WR_Byte>
1c005ea0:	00150005 	move	$r5,$r0
1c005ea4:	02820404 	addi.w	$r4,$r0,129(0x81)
1c005ea8:	57fe0fff 	bl	-500(0xffffe0c) # 1c005cb4 <OLED_WR_Byte>
1c005eac:	00150005 	move	$r5,$r0
1c005eb0:	02833c04 	addi.w	$r4,$r0,207(0xcf)
1c005eb4:	57fe03ff 	bl	-512(0xffffe00) # 1c005cb4 <OLED_WR_Byte>
1c005eb8:	00150005 	move	$r5,$r0
1c005ebc:	02828404 	addi.w	$r4,$r0,161(0xa1)
1c005ec0:	57fdf7ff 	bl	-524(0xffffdf4) # 1c005cb4 <OLED_WR_Byte>
1c005ec4:	00150005 	move	$r5,$r0
1c005ec8:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c005ecc:	57fdebff 	bl	-536(0xffffde8) # 1c005cb4 <OLED_WR_Byte>
1c005ed0:	00150005 	move	$r5,$r0
1c005ed4:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c005ed8:	57fddfff 	bl	-548(0xffffddc) # 1c005cb4 <OLED_WR_Byte>
1c005edc:	00150005 	move	$r5,$r0
1c005ee0:	0282a004 	addi.w	$r4,$r0,168(0xa8)
1c005ee4:	57fdd3ff 	bl	-560(0xffffdd0) # 1c005cb4 <OLED_WR_Byte>
1c005ee8:	00150005 	move	$r5,$r0
1c005eec:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c005ef0:	57fdc7ff 	bl	-572(0xffffdc4) # 1c005cb4 <OLED_WR_Byte>
1c005ef4:	00150005 	move	$r5,$r0
1c005ef8:	02820404 	addi.w	$r4,$r0,129(0x81)
1c005efc:	57fdbbff 	bl	-584(0xffffdb8) # 1c005cb4 <OLED_WR_Byte>
1c005f00:	00150005 	move	$r5,$r0
1c005f04:	0283fc04 	addi.w	$r4,$r0,255(0xff)
1c005f08:	57fdafff 	bl	-596(0xffffdac) # 1c005cb4 <OLED_WR_Byte>
1c005f0c:	00150005 	move	$r5,$r0
1c005f10:	02834c04 	addi.w	$r4,$r0,211(0xd3)
1c005f14:	57fda3ff 	bl	-608(0xffffda0) # 1c005cb4 <OLED_WR_Byte>
1c005f18:	00150005 	move	$r5,$r0
1c005f1c:	00150004 	move	$r4,$r0
1c005f20:	57fd97ff 	bl	-620(0xffffd94) # 1c005cb4 <OLED_WR_Byte>
1c005f24:	00150005 	move	$r5,$r0
1c005f28:	02835404 	addi.w	$r4,$r0,213(0xd5)
1c005f2c:	57fd8bff 	bl	-632(0xffffd88) # 1c005cb4 <OLED_WR_Byte>
1c005f30:	00150005 	move	$r5,$r0
1c005f34:	02820004 	addi.w	$r4,$r0,128(0x80)
1c005f38:	57fd7fff 	bl	-644(0xffffd7c) # 1c005cb4 <OLED_WR_Byte>
1c005f3c:	00150005 	move	$r5,$r0
1c005f40:	02836404 	addi.w	$r4,$r0,217(0xd9)
1c005f44:	57fd73ff 	bl	-656(0xffffd70) # 1c005cb4 <OLED_WR_Byte>
1c005f48:	00150005 	move	$r5,$r0
1c005f4c:	0283c404 	addi.w	$r4,$r0,241(0xf1)
1c005f50:	57fd67ff 	bl	-668(0xffffd64) # 1c005cb4 <OLED_WR_Byte>
1c005f54:	00150005 	move	$r5,$r0
1c005f58:	02836804 	addi.w	$r4,$r0,218(0xda)
1c005f5c:	57fd5bff 	bl	-680(0xffffd58) # 1c005cb4 <OLED_WR_Byte>
1c005f60:	00150005 	move	$r5,$r0
1c005f64:	02804804 	addi.w	$r4,$r0,18(0x12)
1c005f68:	57fd4fff 	bl	-692(0xffffd4c) # 1c005cb4 <OLED_WR_Byte>
1c005f6c:	00150005 	move	$r5,$r0
1c005f70:	02836c04 	addi.w	$r4,$r0,219(0xdb)
1c005f74:	57fd43ff 	bl	-704(0xffffd40) # 1c005cb4 <OLED_WR_Byte>
1c005f78:	00150005 	move	$r5,$r0
1c005f7c:	02810004 	addi.w	$r4,$r0,64(0x40)
1c005f80:	57fd37ff 	bl	-716(0xffffd34) # 1c005cb4 <OLED_WR_Byte>
1c005f84:	00150005 	move	$r5,$r0
1c005f88:	02808004 	addi.w	$r4,$r0,32(0x20)
1c005f8c:	57fd2bff 	bl	-728(0xffffd28) # 1c005cb4 <OLED_WR_Byte>
1c005f90:	00150005 	move	$r5,$r0
1c005f94:	02800804 	addi.w	$r4,$r0,2(0x2)
1c005f98:	57fd1fff 	bl	-740(0xffffd1c) # 1c005cb4 <OLED_WR_Byte>
1c005f9c:	00150005 	move	$r5,$r0
1c005fa0:	02823404 	addi.w	$r4,$r0,141(0x8d)
1c005fa4:	57fd13ff 	bl	-752(0xffffd10) # 1c005cb4 <OLED_WR_Byte>
1c005fa8:	00150005 	move	$r5,$r0
1c005fac:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005fb0:	57fd07ff 	bl	-764(0xffffd04) # 1c005cb4 <OLED_WR_Byte>
1c005fb4:	00150005 	move	$r5,$r0
1c005fb8:	02829004 	addi.w	$r4,$r0,164(0xa4)
1c005fbc:	57fcfbff 	bl	-776(0xffffcf8) # 1c005cb4 <OLED_WR_Byte>
1c005fc0:	00150005 	move	$r5,$r0
1c005fc4:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c005fc8:	57fcefff 	bl	-788(0xffffcec) # 1c005cb4 <OLED_WR_Byte>
1c005fcc:	00150005 	move	$r5,$r0
1c005fd0:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c005fd4:	57fce3ff 	bl	-800(0xffffce0) # 1c005cb4 <OLED_WR_Byte>
1c005fd8:	00150005 	move	$r5,$r0
1c005fdc:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c005fe0:	57fcd7ff 	bl	-812(0xffffcd4) # 1c005cb4 <OLED_WR_Byte>
1c005fe4:	57fdc7ff 	bl	-572(0xffffdc4) # 1c005da8 <OLED_Clear>
1c005fe8:	00150005 	move	$r5,$r0
1c005fec:	00150004 	move	$r4,$r0
1c005ff0:	57fd33ff 	bl	-720(0xffffd30) # 1c005d20 <OLED_Set_Pos>
1c005ff4:	03400000 	andi	$r0,$r0,0x0
1c005ff8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005ffc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006000:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006004:	4c000020 	jirl	$r0,$r1,0

1c006008 <OLED_ShowChar>:
OLED_ShowChar():
1c006008:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00600c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006010:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006014:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006018:	0015008c 	move	$r12,$r4
1c00601c:	001500af 	move	$r15,$r5
1c006020:	001500ce 	move	$r14,$r6
1c006024:	001500ed 	move	$r13,$r7
1c006028:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c00602c:	001501ec 	move	$r12,$r15
1c006030:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c006034:	001501cc 	move	$r12,$r14
1c006038:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c00603c:	001501ac 	move	$r12,$r13
1c006040:	293f6acc 	st.b	$r12,$r22,-38(0xfda)
1c006044:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006048:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c00604c:	2a3f6acd 	ld.bu	$r13,$r22,-38(0xfda)
1c006050:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006054:	58000dac 	beq	$r13,$r12,12(0xc) # 1c006060 <OLED_ShowChar+0x58>
1c006058:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00605c:	293f6acc 	st.b	$r12,$r22,-38(0xfda)
1c006060:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c006064:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c006068:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c00606c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006070:	50009800 	b	152(0x98) # 1c006108 <OLED_ShowChar+0x100>
1c006074:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c006078:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c00607c:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c006080:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c006084:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006088:	001031ac 	add.w	$r12,$r13,$r12
1c00608c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006090:	00150185 	move	$r5,$r12
1c006094:	001501c4 	move	$r4,$r14
1c006098:	57fc8bff 	bl	-888(0xffffc88) # 1c005d20 <OLED_Set_Pos>
1c00609c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0060a0:	50004800 	b	72(0x48) # 1c0060e8 <OLED_ShowChar+0xe0>
1c0060a4:	2a3f6ecd 	ld.bu	$r13,$r22,-37(0xfdb)
1c0060a8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0060ac:	00408d8e 	slli.w	$r14,$r12,0x3
1c0060b0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0060b4:	001031cc 	add.w	$r12,$r14,$r12
1c0060b8:	1c00002e 	pcaddu12i	$r14,1(0x1)
1c0060bc:	029ec1ce 	addi.w	$r14,$r14,1968(0x7b0)
1c0060c0:	004091ad 	slli.w	$r13,$r13,0x4
1c0060c4:	001035cd 	add.w	$r13,$r14,$r13
1c0060c8:	001031ac 	add.w	$r12,$r13,$r12
1c0060cc:	2a00018c 	ld.bu	$r12,$r12,0
1c0060d0:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0060d4:	00150184 	move	$r4,$r12
1c0060d8:	57fbdfff 	bl	-1060(0xffffbdc) # 1c005cb4 <OLED_WR_Byte>
1c0060dc:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0060e0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0060e4:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0060e8:	2a3f6acc 	ld.bu	$r12,$r22,-38(0xfda)
1c0060ec:	0044858c 	srli.w	$r12,$r12,0x1
1c0060f0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0060f4:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c0060f8:	6bffadac 	bltu	$r13,$r12,-84(0x3ffac) # 1c0060a4 <OLED_ShowChar+0x9c>
1c0060fc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006100:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006104:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006108:	2a3f6acc 	ld.bu	$r12,$r22,-38(0xfda)
1c00610c:	00448d8c 	srli.w	$r12,$r12,0x3
1c006110:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006114:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006118:	6bff5dac 	bltu	$r13,$r12,-164(0x3ff5c) # 1c006074 <OLED_ShowChar+0x6c>
1c00611c:	03400000 	andi	$r0,$r0,0x0
1c006120:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006124:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006128:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00612c:	4c000020 	jirl	$r0,$r1,0

1c006130 <OLED_DrawFont16>:
OLED_DrawFont16():
1c006130:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006134:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006138:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00613c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006140:	0015008c 	move	$r12,$r4
1c006144:	001500ad 	move	$r13,$r5
1c006148:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c00614c:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c006150:	001501ac 	move	$r12,$r13
1c006154:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c006158:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00615c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c006160:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c006164:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c006168:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c00616c:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c006170:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c006174:	50013800 	b	312(0x138) # 1c0062ac <OLED_DrawFont16+0x17c>
1c006178:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c00617c:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c006180:	02b371ad 	addi.w	$r13,$r13,-804(0xcdc)
1c006184:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c006188:	001c31cc 	mul.w	$r12,$r14,$r12
1c00618c:	001031ac 	add.w	$r12,$r13,$r12
1c006190:	2a00018d 	ld.bu	$r13,$r12,0
1c006194:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006198:	2a00018c 	ld.bu	$r12,$r12,0
1c00619c:	5c0105ac 	bne	$r13,$r12,260(0x104) # 1c0062a0 <OLED_DrawFont16+0x170>
1c0061a0:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c0061a4:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c0061a8:	02b2d1ad 	addi.w	$r13,$r13,-844(0xcb4)
1c0061ac:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c0061b0:	001c31cc 	mul.w	$r12,$r14,$r12
1c0061b4:	001031ac 	add.w	$r12,$r13,$r12
1c0061b8:	2a00058d 	ld.bu	$r13,$r12,1(0x1)
1c0061bc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0061c0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0061c4:	2a00018c 	ld.bu	$r12,$r12,0
1c0061c8:	5c00d9ac 	bne	$r13,$r12,216(0xd8) # 1c0062a0 <OLED_DrawFont16+0x170>
1c0061cc:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c0061d0:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c0061d4:	02b221ad 	addi.w	$r13,$r13,-888(0xc88)
1c0061d8:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c0061dc:	001c31cc 	mul.w	$r12,$r14,$r12
1c0061e0:	001031ac 	add.w	$r12,$r13,$r12
1c0061e4:	2a00098d 	ld.bu	$r13,$r12,2(0x2)
1c0061e8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0061ec:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0061f0:	2a00018c 	ld.bu	$r12,$r12,0
1c0061f4:	5c00adac 	bne	$r13,$r12,172(0xac) # 1c0062a0 <OLED_DrawFont16+0x170>
1c0061f8:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0061fc:	50009400 	b	148(0x94) # 1c006290 <OLED_DrawFont16+0x160>
1c006200:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c006204:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c006208:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c00620c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c006210:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006214:	001031ac 	add.w	$r12,$r13,$r12
1c006218:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00621c:	00150185 	move	$r5,$r12
1c006220:	001501c4 	move	$r4,$r14
1c006224:	57faffff 	bl	-1284(0xffffafc) # 1c005d20 <OLED_Set_Pos>
1c006228:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00622c:	50004c00 	b	76(0x4c) # 1c006278 <OLED_DrawFont16+0x148>
1c006230:	2a7fb2cf 	ld.hu	$r15,$r22,-20(0xfec)
1c006234:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006238:	0040918d 	slli.w	$r13,$r12,0x4
1c00623c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006240:	001031ad 	add.w	$r13,$r13,$r12
1c006244:	1c00004e 	pcaddu12i	$r14,2(0x2)
1c006248:	02b051ce 	addi.w	$r14,$r14,-1004(0xc14)
1c00624c:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c006250:	001c31ec 	mul.w	$r12,$r15,$r12
1c006254:	001031cc 	add.w	$r12,$r14,$r12
1c006258:	0010358c 	add.w	$r12,$r12,$r13
1c00625c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c006260:	02810005 	addi.w	$r5,$r0,64(0x40)
1c006264:	00150184 	move	$r4,$r12
1c006268:	57fa4fff 	bl	-1460(0xffffa4c) # 1c005cb4 <OLED_WR_Byte>
1c00626c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006270:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006274:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006278:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00627c:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c006280:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c006230 <OLED_DrawFont16+0x100>
1c006284:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006288:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00628c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c006290:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c006294:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006298:	6fff698d 	bgeu	$r12,$r13,-152(0x3ff68) # 1c006200 <OLED_DrawFont16+0xd0>
1c00629c:	50001c00 	b	28(0x1c) # 1c0062b8 <OLED_DrawFont16+0x188>
1c0062a0:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0062a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0062a8:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0062ac:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c0062b0:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c0062b4:	6bfec5ac 	bltu	$r13,$r12,-316(0x3fec4) # 1c006178 <OLED_DrawFont16+0x48>
1c0062b8:	03400000 	andi	$r0,$r0,0x0
1c0062bc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0062c0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0062c4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0062c8:	4c000020 	jirl	$r0,$r1,0

1c0062cc <OLED_DrawFont32>:
OLED_DrawFont32():
1c0062cc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0062d0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0062d4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0062d8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0062dc:	0015008c 	move	$r12,$r4
1c0062e0:	001500ad 	move	$r13,$r5
1c0062e4:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c0062e8:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0062ec:	001501ac 	move	$r12,$r13
1c0062f0:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c0062f4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0062f8:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0062fc:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c006300:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c006304:	0280540c 	addi.w	$r12,$r0,21(0x15)
1c006308:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c00630c:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c006310:	50014400 	b	324(0x144) # 1c006454 <OLED_DrawFont32+0x188>
1c006314:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c006318:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c00631c:	02ad01ad 	addi.w	$r13,$r13,-1216(0xb40)
1c006320:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c006324:	001c31cc 	mul.w	$r12,$r14,$r12
1c006328:	001031ac 	add.w	$r12,$r13,$r12
1c00632c:	2a00018c 	ld.bu	$r12,$r12,0
1c006330:	0015018d 	move	$r13,$r12
1c006334:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006338:	2800018c 	ld.b	$r12,$r12,0
1c00633c:	5c010dac 	bne	$r13,$r12,268(0x10c) # 1c006448 <OLED_DrawFont32+0x17c>
1c006340:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c006344:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c006348:	02ac51ad 	addi.w	$r13,$r13,-1260(0xb14)
1c00634c:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c006350:	001c31cc 	mul.w	$r12,$r14,$r12
1c006354:	001031ac 	add.w	$r12,$r13,$r12
1c006358:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c00635c:	0015018d 	move	$r13,$r12
1c006360:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006364:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006368:	2800018c 	ld.b	$r12,$r12,0
1c00636c:	5c00ddac 	bne	$r13,$r12,220(0xdc) # 1c006448 <OLED_DrawFont32+0x17c>
1c006370:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c006374:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c006378:	02ab91ad 	addi.w	$r13,$r13,-1308(0xae4)
1c00637c:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c006380:	001c31cc 	mul.w	$r12,$r14,$r12
1c006384:	001031ac 	add.w	$r12,$r13,$r12
1c006388:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c00638c:	0015018d 	move	$r13,$r12
1c006390:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006394:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006398:	2800018c 	ld.b	$r12,$r12,0
1c00639c:	5c00adac 	bne	$r13,$r12,172(0xac) # 1c006448 <OLED_DrawFont32+0x17c>
1c0063a0:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0063a4:	50009400 	b	148(0x94) # 1c006438 <OLED_DrawFont32+0x16c>
1c0063a8:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0063ac:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c0063b0:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0063b4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0063b8:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0063bc:	001031ac 	add.w	$r12,$r13,$r12
1c0063c0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0063c4:	00150185 	move	$r5,$r12
1c0063c8:	001501c4 	move	$r4,$r14
1c0063cc:	57f957ff 	bl	-1708(0xffff954) # 1c005d20 <OLED_Set_Pos>
1c0063d0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0063d4:	50004c00 	b	76(0x4c) # 1c006420 <OLED_DrawFont32+0x154>
1c0063d8:	2a7fb2cf 	ld.hu	$r15,$r22,-20(0xfec)
1c0063dc:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0063e0:	0040958d 	slli.w	$r13,$r12,0x5
1c0063e4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0063e8:	001031ad 	add.w	$r13,$r13,$r12
1c0063ec:	1c00004e 	pcaddu12i	$r14,2(0x2)
1c0063f0:	02bdf1ce 	addi.w	$r14,$r14,-132(0xf7c)
1c0063f4:	02820c0c 	addi.w	$r12,$r0,131(0x83)
1c0063f8:	001c31ec 	mul.w	$r12,$r15,$r12
1c0063fc:	001031cc 	add.w	$r12,$r14,$r12
1c006400:	0010358c 	add.w	$r12,$r12,$r13
1c006404:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c006408:	02810005 	addi.w	$r5,$r0,64(0x40)
1c00640c:	00150184 	move	$r4,$r12
1c006410:	57f8a7ff 	bl	-1884(0xffff8a4) # 1c005cb4 <OLED_WR_Byte>
1c006414:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006418:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00641c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006420:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006424:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c006428:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c0063d8 <OLED_DrawFont32+0x10c>
1c00642c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006430:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006434:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c006438:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c00643c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c006440:	6fff698d 	bgeu	$r12,$r13,-152(0x3ff68) # 1c0063a8 <OLED_DrawFont32+0xdc>
1c006444:	50001c00 	b	28(0x1c) # 1c006460 <OLED_DrawFont32+0x194>
1c006448:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c00644c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006450:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c006454:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c006458:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c00645c:	6bfeb9ac 	bltu	$r13,$r12,-328(0x3feb8) # 1c006314 <OLED_DrawFont32+0x48>
1c006460:	03400000 	andi	$r0,$r0,0x0
1c006464:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006468:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00646c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006470:	4c000020 	jirl	$r0,$r1,0

1c006474 <OLED_Show_Str>:
OLED_Show_Str():
1c006474:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006478:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00647c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006480:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006484:	0015008c 	move	$r12,$r4
1c006488:	001500ae 	move	$r14,$r5
1c00648c:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c006490:	001500ed 	move	$r13,$r7
1c006494:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c006498:	001501cc 	move	$r12,$r14
1c00649c:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c0064a0:	001501ac 	move	$r12,$r13
1c0064a4:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c0064a8:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0064ac:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0064b0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0064b4:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c0064b8:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c0064bc:	580209ac 	beq	$r13,$r12,520(0x208) # 1c0066c4 <OLED_Show_Str+0x250>
1c0064c0:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0064c4:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c0064c8:	5001fc00 	b	508(0x1fc) # 1c0066c4 <OLED_Show_Str+0x250>
1c0064cc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0064d0:	44012580 	bnez	$r12,292(0x124) # 1c0065f4 <OLED_Show_Str+0x180>
1c0064d4:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c0064d8:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0064dc:	0044858c 	srli.w	$r12,$r12,0x1
1c0064e0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0064e4:	0015018e 	move	$r14,$r12
1c0064e8:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c0064ec:	0011398c 	sub.w	$r12,$r12,$r14
1c0064f0:	64002d8d 	bge	$r12,$r13,44(0x2c) # 1c00651c <OLED_Show_Str+0xa8>
1c0064f4:	297f7ac0 	st.h	$r0,$r22,-34(0xfde)
1c0064f8:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0064fc:	00448d8c 	srli.w	$r12,$r12,0x3
1c006500:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006504:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006508:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c00650c:	001031ac 	add.w	$r12,$r13,$r12
1c006510:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006514:	03401d8c 	andi	$r12,$r12,0x7
1c006518:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c00651c:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c006520:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c006524:	00448d8c 	srli.w	$r12,$r12,0x3
1c006528:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00652c:	0015018e 	move	$r14,$r12
1c006530:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c006534:	0011398c 	sub.w	$r12,$r12,$r14
1c006538:	6400098d 	bge	$r12,$r13,8(0x8) # 1c006540 <OLED_Show_Str+0xcc>
1c00653c:	297f72c0 	st.h	$r0,$r22,-36(0xfdc)
1c006540:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006544:	2800018c 	ld.b	$r12,$r12,0
1c006548:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00654c:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c006550:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c006560 <OLED_Show_Str+0xec>
1c006554:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006558:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00655c:	50016800 	b	360(0x168) # 1c0066c4 <OLED_Show_Str+0x250>
1c006560:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006564:	2800018d 	ld.b	$r13,$r12,0
1c006568:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c00656c:	5c0031ac 	bne	$r13,$r12,48(0x30) # 1c00659c <OLED_Show_Str+0x128>
1c006570:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c006574:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006578:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c00657c:	001031ac 	add.w	$r12,$r13,$r12
1c006580:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c006584:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c006588:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c00658c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006590:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006594:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c006598:	50004c00 	b	76(0x4c) # 1c0065e4 <OLED_Show_Str+0x170>
1c00659c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0065a0:	2800018c 	ld.b	$r12,$r12,0
1c0065a4:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c0065a8:	2a3f5ecf 	ld.bu	$r15,$r22,-41(0xfd7)
1c0065ac:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c0065b0:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0065b4:	001501e7 	move	$r7,$r15
1c0065b8:	001501c6 	move	$r6,$r14
1c0065bc:	001501a5 	move	$r5,$r13
1c0065c0:	00150184 	move	$r4,$r12
1c0065c4:	57fa47ff 	bl	-1468(0xffffa44) # 1c006008 <OLED_ShowChar>
1c0065c8:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0065cc:	0044858c 	srli.w	$r12,$r12,0x1
1c0065d0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0065d4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0065d8:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0065dc:	001031ac 	add.w	$r12,$r13,$r12
1c0065e0:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0065e4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0065e8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0065ec:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0065f0:	5000d400 	b	212(0xd4) # 1c0066c4 <OLED_Show_Str+0x250>
1c0065f4:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c0065f8:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0065fc:	0282000e 	addi.w	$r14,$r0,128(0x80)
1c006600:	001131cc 	sub.w	$r12,$r14,$r12
1c006604:	64002d8d 	bge	$r12,$r13,44(0x2c) # 1c006630 <OLED_Show_Str+0x1bc>
1c006608:	297f7ac0 	st.h	$r0,$r22,-34(0xfde)
1c00660c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c006610:	00448d8c 	srli.w	$r12,$r12,0x3
1c006614:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006618:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00661c:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c006620:	001031ac 	add.w	$r12,$r13,$r12
1c006624:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006628:	03401d8c 	andi	$r12,$r12,0x7
1c00662c:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c006630:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c006634:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c006638:	00448d8c 	srli.w	$r12,$r12,0x3
1c00663c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006640:	0015018e 	move	$r14,$r12
1c006644:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c006648:	0011398c 	sub.w	$r12,$r12,$r14
1c00664c:	6400098d 	bge	$r12,$r13,8(0x8) # 1c006654 <OLED_Show_Str+0x1e0>
1c006650:	297f72c0 	st.h	$r0,$r22,-36(0xfdc)
1c006654:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006658:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c00665c:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c006660:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c006680 <OLED_Show_Str+0x20c>
1c006664:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c006668:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c00666c:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c006670:	001501a5 	move	$r5,$r13
1c006674:	00150184 	move	$r4,$r12
1c006678:	57fc57ff 	bl	-940(0xffffc54) # 1c0062cc <OLED_DrawFont32>
1c00667c:	50002800 	b	40(0x28) # 1c0066a4 <OLED_Show_Str+0x230>
1c006680:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c006684:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006688:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c0066a4 <OLED_Show_Str+0x230>
1c00668c:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c006690:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c006694:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c006698:	001501a5 	move	$r5,$r13
1c00669c:	00150184 	move	$r4,$r12
1c0066a0:	57fa93ff 	bl	-1392(0xffffa90) # 1c006130 <OLED_DrawFont16>
1c0066a4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0066a8:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c0066ac:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0066b0:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0066b4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0066b8:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0066bc:	001031ac 	add.w	$r12,$r13,$r12
1c0066c0:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0066c4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0066c8:	2800018c 	ld.b	$r12,$r12,0
1c0066cc:	47fe019f 	bnez	$r12,-512(0x7ffe00) # 1c0064cc <OLED_Show_Str+0x58>
1c0066d0:	03400000 	andi	$r0,$r0,0x0
1c0066d4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0066d8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0066dc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0066e0:	4c000020 	jirl	$r0,$r1,0

1c0066e4 <RGB_LED_Init>:
RGB_LED_Init():
1c0066e4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0066e8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0066ec:	29802076 	st.w	$r22,$r3,8(0x8)
1c0066f0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0066f4:	00150005 	move	$r5,$r0
1c0066f8:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c0066fc:	57af5bff 	bl	-20648(0xfffaf58) # 1c001654 <gpio_pin_remap>
1c006700:	00150005 	move	$r5,$r0
1c006704:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c006708:	57af4fff 	bl	-20660(0xfffaf4c) # 1c001654 <gpio_pin_remap>
1c00670c:	00150005 	move	$r5,$r0
1c006710:	02807c04 	addi.w	$r4,$r0,31(0x1f)
1c006714:	57af43ff 	bl	-20672(0xfffaf40) # 1c001654 <gpio_pin_remap>
1c006718:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00671c:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c006720:	57b143ff 	bl	-20160(0xfffb140) # 1c001860 <gpio_set_direction>
1c006724:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006728:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c00672c:	57b137ff 	bl	-20172(0xfffb134) # 1c001860 <gpio_set_direction>
1c006730:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006734:	02807c04 	addi.w	$r4,$r0,31(0x1f)
1c006738:	57b12bff 	bl	-20184(0xfffb128) # 1c001860 <gpio_set_direction>
1c00673c:	03400000 	andi	$r0,$r0,0x0
1c006740:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006744:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006748:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00674c:	4c000020 	jirl	$r0,$r1,0

1c006750 <Queue_Init>:
Queue_Init():
1c006750:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006754:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006758:	29806076 	st.w	$r22,$r3,24(0x18)
1c00675c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006760:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006764:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006768:	44000d80 	bnez	$r12,12(0xc) # 1c006774 <Queue_Init+0x24>
1c00676c:	0015000c 	move	$r12,$r0
1c006770:	50001800 	b	24(0x18) # 1c006788 <Queue_Init+0x38>
1c006774:	0284c006 	addi.w	$r6,$r0,304(0x130)
1c006778:	00150005 	move	$r5,$r0
1c00677c:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c006780:	57cdb7ff 	bl	-12876(0xfffcdb4) # 1c003534 <memset>
1c006784:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006788:	00150184 	move	$r4,$r12
1c00678c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006790:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006794:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006798:	4c000020 	jirl	$r0,$r1,0

1c00679c <Smoke_Init>:
Smoke_Init():
1c00679c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0067a0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0067a4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0067a8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0067ac:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0067b0:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0067b4:	297fa2c0 	st.h	$r0,$r22,-24(0xfe8)
1c0067b8:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c0067bc:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0067c0:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0067c4:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0067c8:	57d077ff 	bl	-12172(0xfffd074) # 1c00383c <Adc_open>
1c0067cc:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0067d0:	57d1fbff 	bl	-11784(0xfffd1f8) # 1c0039c8 <Adc_getVoltage>
1c0067d4:	0015008c 	move	$r12,$r4
1c0067d8:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0067dc:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0067e0:	50008800 	b	136(0x88) # 1c006868 <Smoke_Init+0xcc>
1c0067e4:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c0067e8:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0067ec:	0040858c 	slli.w	$r12,$r12,0x1
1c0067f0:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c0067f4:	001031cc 	add.w	$r12,$r14,$r12
1c0067f8:	2a7fc18c 	ld.hu	$r12,$r12,-16(0xff0)
1c0067fc:	001131ad 	sub.w	$r13,$r13,$r12
1c006800:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006804:	28a0618c 	ld.w	$r12,$r12,-2024(0x818)
1c006808:	2980018d 	st.w	$r13,$r12,0
1c00680c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006810:	02a0b18c 	addi.w	$r12,$r12,-2004(0x82c)
1c006814:	2880018c 	ld.w	$r12,$r12,0
1c006818:	0011300d 	sub.w	$r13,$r0,$r12
1c00681c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006820:	289ff18c 	ld.w	$r12,$r12,2044(0x7fc)
1c006824:	2880018c 	ld.w	$r12,$r12,0
1c006828:	6000358d 	blt	$r12,$r13,52(0x34) # 1c00685c <Smoke_Init+0xc0>
1c00682c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006830:	289fb18c 	ld.w	$r12,$r12,2028(0x7ec)
1c006834:	2880018d 	ld.w	$r13,$r12,0
1c006838:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00683c:	02a0018c 	addi.w	$r12,$r12,-2048(0x800)
1c006840:	2880018c 	ld.w	$r12,$r12,0
1c006844:	6000198d 	blt	$r12,$r13,24(0x18) # 1c00685c <Smoke_Init+0xc0>
1c006848:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00684c:	029f018c 	addi.w	$r12,$r12,1984(0x7c0)
1c006850:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c006854:	2980018d 	st.w	$r13,$r12,0
1c006858:	50001c00 	b	28(0x1c) # 1c006874 <Smoke_Init+0xd8>
1c00685c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006860:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006864:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c006868:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c00686c:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006870:	6fff758d 	bgeu	$r12,$r13,-140(0x3ff74) # 1c0067e4 <Smoke_Init+0x48>
1c006874:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006878:	029e518c 	addi.w	$r12,$r12,1940(0x794)
1c00687c:	2880018c 	ld.w	$r12,$r12,0
1c006880:	44004d80 	bnez	$r12,76(0x4c) # 1c0068cc <Smoke_Init+0x130>
1c006884:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006888:	0040858c 	slli.w	$r12,$r12,0x1
1c00688c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c006890:	001031ac 	add.w	$r12,$r13,$r12
1c006894:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c006898:	297fc18d 	st.h	$r13,$r12,-16(0xff0)
1c00689c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0068a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0068a4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0068a8:	2a3fbece 	ld.bu	$r14,$r22,-17(0xfef)
1c0068ac:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c0068b0:	0021b5cc 	mod.wu	$r12,$r14,$r13
1c0068b4:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0068bc <Smoke_Init+0x120>
1c0068b8:	002a0007 	break	0x7
1c0068bc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0068c0:	0287d004 	addi.w	$r4,$r0,500(0x1f4)
1c0068c4:	57cc33ff 	bl	-13264(0xfffcc30) # 1c0034f4 <delay_ms>
1c0068c8:	53ff07ff 	b	-252(0xfffff04) # 1c0067cc <Smoke_Init+0x30>
1c0068cc:	03400000 	andi	$r0,$r0,0x0
1c0068d0:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0068d4:	0287f80d 	addi.w	$r13,$r0,510(0x1fe)
1c0068d8:	001131ad 	sub.w	$r13,$r13,$r12
1c0068dc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0068e0:	029ca18c 	addi.w	$r12,$r12,1832(0x728)
1c0068e4:	2980018d 	st.w	$r13,$r12,0
1c0068e8:	03400000 	andi	$r0,$r0,0x0
1c0068ec:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0068f0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0068f4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0068f8:	4c000020 	jirl	$r0,$r1,0

1c0068fc <Median_Read_Data>:
Median_Read_Data():
1c0068fc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006900:	29807076 	st.w	$r22,$r3,28(0x1c)
1c006904:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006908:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00690c:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c006910:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006914:	0340058c 	andi	$r12,$r12,0x1
1c006918:	44006980 	bnez	$r12,104(0x68) # 1c006980 <Median_Read_Data+0x84>
1c00691c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006920:	0044fd8d 	srli.w	$r13,$r12,0x1f
1c006924:	001031ac 	add.w	$r12,$r13,$r12
1c006928:	0048858c 	srai.w	$r12,$r12,0x1
1c00692c:	0015018d 	move	$r13,$r12
1c006930:	147fffec 	lu12i.w	$r12,262143(0x3ffff)
1c006934:	03bffd8c 	ori	$r12,$r12,0xfff
1c006938:	001031ac 	add.w	$r12,$r13,$r12
1c00693c:	0040898c 	slli.w	$r12,$r12,0x2
1c006940:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006944:	001031ac 	add.w	$r12,$r13,$r12
1c006948:	2880018d 	ld.w	$r13,$r12,0
1c00694c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006950:	0044fd8e 	srli.w	$r14,$r12,0x1f
1c006954:	001031cc 	add.w	$r12,$r14,$r12
1c006958:	0048858c 	srai.w	$r12,$r12,0x1
1c00695c:	0040898c 	slli.w	$r12,$r12,0x2
1c006960:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c006964:	001031cc 	add.w	$r12,$r14,$r12
1c006968:	2880018c 	ld.w	$r12,$r12,0
1c00696c:	001031ac 	add.w	$r12,$r13,$r12
1c006970:	0044fd8d 	srli.w	$r13,$r12,0x1f
1c006974:	001031ac 	add.w	$r12,$r13,$r12
1c006978:	0048858c 	srai.w	$r12,$r12,0x1
1c00697c:	50002400 	b	36(0x24) # 1c0069a0 <Median_Read_Data+0xa4>
1c006980:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006984:	0044fd8d 	srli.w	$r13,$r12,0x1f
1c006988:	001031ac 	add.w	$r12,$r13,$r12
1c00698c:	0048858c 	srai.w	$r12,$r12,0x1
1c006990:	0040898c 	slli.w	$r12,$r12,0x2
1c006994:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006998:	001031ac 	add.w	$r12,$r13,$r12
1c00699c:	2880018c 	ld.w	$r12,$r12,0
1c0069a0:	00150184 	move	$r4,$r12
1c0069a4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0069a8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0069ac:	4c000020 	jirl	$r0,$r1,0

1c0069b0 <Smoke_Read_Data>:
Smoke_Read_Data():
1c0069b0:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c0069b4:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c0069b8:	2980e076 	st.w	$r22,$r3,56(0x38)
1c0069bc:	02810076 	addi.w	$r22,$r3,64(0x40)
1c0069c0:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c0069c4:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c0069c8:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c0069cc:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0069d0:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0069d4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0069d8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0069dc:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0069e0:	50004000 	b	64(0x40) # 1c006a20 <Smoke_Read_Data+0x70>
1c0069e4:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0069e8:	57cfe3ff 	bl	-12320(0xfffcfe0) # 1c0039c8 <Adc_getVoltage>
1c0069ec:	0015008c 	move	$r12,$r4
1c0069f0:	0015018d 	move	$r13,$r12
1c0069f4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0069f8:	004085ad 	slli.w	$r13,$r13,0x1
1c0069fc:	0040898c 	slli.w	$r12,$r12,0x2
1c006a00:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c006a04:	001031cc 	add.w	$r12,$r14,$r12
1c006a08:	29bfa18d 	st.w	$r13,$r12,-24(0xfe8)
1c006a0c:	02819004 	addi.w	$r4,$r0,100(0x64)
1c006a10:	57cae7ff 	bl	-13596(0xfffcae4) # 1c0034f4 <delay_ms>
1c006a14:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006a18:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006a1c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006a20:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006a24:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006a28:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c0069e4 <Smoke_Read_Data+0x34>
1c006a2c:	02bf62cc 	addi.w	$r12,$r22,-40(0xfd8)
1c006a30:	02801405 	addi.w	$r5,$r0,5(0x5)
1c006a34:	00150184 	move	$r4,$r12
1c006a38:	57fec7ff 	bl	-316(0xffffec4) # 1c0068fc <Median_Read_Data>
1c006a3c:	0015008d 	move	$r13,$r4
1c006a40:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c006a44:	2980018d 	st.w	$r13,$r12,0
1c006a48:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c006a4c:	2880018e 	ld.w	$r14,$r12,0
1c006a50:	0280640c 	addi.w	$r12,$r0,25(0x19)
1c006a54:	002031cd 	div.w	$r13,$r14,$r12
1c006a58:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006a60 <Smoke_Read_Data+0xb0>
1c006a5c:	002a0007 	break	0x7
1c006a60:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c006a64:	2980018d 	st.w	$r13,$r12,0
1c006a68:	03400000 	andi	$r0,$r0,0x0
1c006a6c:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c006a70:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c006a74:	02810063 	addi.w	$r3,$r3,64(0x40)
1c006a78:	4c000020 	jirl	$r0,$r1,0

1c006a7c <YUYIN_Init>:
YUYIN_Init():
1c006a7c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006a80:	29803061 	st.w	$r1,$r3,12(0xc)
1c006a84:	29802076 	st.w	$r22,$r3,8(0x8)
1c006a88:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006a8c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006a90:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006a94:	57adcfff 	bl	-21044(0xfffadcc) # 1c001860 <gpio_set_direction>
1c006a98:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006a9c:	02809004 	addi.w	$r4,$r0,36(0x24)
1c006aa0:	57adc3ff 	bl	-21056(0xfffadc0) # 1c001860 <gpio_set_direction>
1c006aa4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006aa8:	02808404 	addi.w	$r4,$r0,33(0x21)
1c006aac:	57adb7ff 	bl	-21068(0xfffadb4) # 1c001860 <gpio_set_direction>
1c006ab0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006ab4:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c006ab8:	57adabff 	bl	-21080(0xfffada8) # 1c001860 <gpio_set_direction>
1c006abc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006ac0:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006ac4:	57ab1bff 	bl	-21736(0xfffab18) # 1c0015dc <gpio_write_pin>
1c006ac8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006acc:	02809004 	addi.w	$r4,$r0,36(0x24)
1c006ad0:	57ab0fff 	bl	-21748(0xfffab0c) # 1c0015dc <gpio_write_pin>
1c006ad4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006ad8:	02808404 	addi.w	$r4,$r0,33(0x21)
1c006adc:	57ab03ff 	bl	-21760(0xfffab00) # 1c0015dc <gpio_write_pin>
1c006ae0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006ae4:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c006ae8:	57aaf7ff 	bl	-21772(0xfffaaf4) # 1c0015dc <gpio_write_pin>
1c006aec:	03400000 	andi	$r0,$r0,0x0
1c006af0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006af4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006af8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006afc:	4c000020 	jirl	$r0,$r1,0

1c006b00 <YUYIN_Ctrl>:
YUYIN_Ctrl():
1c006b00:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006b04:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006b08:	29806076 	st.w	$r22,$r3,24(0x18)
1c006b0c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006b10:	0015008c 	move	$r12,$r4
1c006b14:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006b18:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006b1c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006b20:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c006b54 <YUYIN_Ctrl+0x54>
1c006b24:	00150005 	move	$r5,$r0
1c006b28:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006b2c:	57aab3ff 	bl	-21840(0xfffaab0) # 1c0015dc <gpio_write_pin>
1c006b30:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006b34:	02809004 	addi.w	$r4,$r0,36(0x24)
1c006b38:	57aaa7ff 	bl	-21852(0xfffaaa4) # 1c0015dc <gpio_write_pin>
1c006b3c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006b40:	02808404 	addi.w	$r4,$r0,33(0x21)
1c006b44:	57aa9bff 	bl	-21864(0xfffaa98) # 1c0015dc <gpio_write_pin>
1c006b48:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006b4c:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c006b50:	57aa8fff 	bl	-21876(0xfffaa8c) # 1c0015dc <gpio_write_pin>
1c006b54:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006b58:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006b5c:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c006b90 <YUYIN_Ctrl+0x90>
1c006b60:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006b64:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006b68:	57aa77ff 	bl	-21900(0xfffaa74) # 1c0015dc <gpio_write_pin>
1c006b6c:	00150005 	move	$r5,$r0
1c006b70:	02809004 	addi.w	$r4,$r0,36(0x24)
1c006b74:	57aa6bff 	bl	-21912(0xfffaa68) # 1c0015dc <gpio_write_pin>
1c006b78:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006b7c:	02808404 	addi.w	$r4,$r0,33(0x21)
1c006b80:	57aa5fff 	bl	-21924(0xfffaa5c) # 1c0015dc <gpio_write_pin>
1c006b84:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006b88:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c006b8c:	57aa53ff 	bl	-21936(0xfffaa50) # 1c0015dc <gpio_write_pin>
1c006b90:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006b94:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c006b98:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c006bcc <YUYIN_Ctrl+0xcc>
1c006b9c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006ba0:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006ba4:	57aa3bff 	bl	-21960(0xfffaa38) # 1c0015dc <gpio_write_pin>
1c006ba8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006bac:	02809004 	addi.w	$r4,$r0,36(0x24)
1c006bb0:	57aa2fff 	bl	-21972(0xfffaa2c) # 1c0015dc <gpio_write_pin>
1c006bb4:	00150005 	move	$r5,$r0
1c006bb8:	02808404 	addi.w	$r4,$r0,33(0x21)
1c006bbc:	57aa23ff 	bl	-21984(0xfffaa20) # 1c0015dc <gpio_write_pin>
1c006bc0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006bc4:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c006bc8:	57aa17ff 	bl	-21996(0xfffaa14) # 1c0015dc <gpio_write_pin>
1c006bcc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006bd0:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006bd4:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c006c08 <YUYIN_Ctrl+0x108>
1c006bd8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006bdc:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006be0:	57a9ffff 	bl	-22020(0xfffa9fc) # 1c0015dc <gpio_write_pin>
1c006be4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006be8:	02809004 	addi.w	$r4,$r0,36(0x24)
1c006bec:	57a9f3ff 	bl	-22032(0xfffa9f0) # 1c0015dc <gpio_write_pin>
1c006bf0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006bf4:	02808404 	addi.w	$r4,$r0,33(0x21)
1c006bf8:	57a9e7ff 	bl	-22044(0xfffa9e4) # 1c0015dc <gpio_write_pin>
1c006bfc:	00150005 	move	$r5,$r0
1c006c00:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c006c04:	57a9dbff 	bl	-22056(0xfffa9d8) # 1c0015dc <gpio_write_pin>
1c006c08:	03400000 	andi	$r0,$r0,0x0
1c006c0c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006c10:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006c14:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006c18:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c006c20 <msg_wakeup>:
msg_wakeup():
1c006c20:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01d780 <_sidata+0x14958>
1c006c24:	0a217075 	xvfmadd.d	$xr21,$xr3,$xr28,$xr2
	...

1c006c29 <hexdecarr>:
hexdecarr():
1c006c29:	33323130 	xvstelm.w	$xr16,$r9,-464(0x230),0x4
1c006c2d:	37363534 	0x37363534
1c006c31:	62613938 	blt	$r9,$r24,-106184(0x26138) # 1bfecd69 <_start-0x13297>
1c006c35:	66656463 	bge	$r3,$r3,-105116(0x26564) # 1bfed199 <_start-0x12e67>
1c006c39:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006c3d:	79654b0a 	0x79654b0a
1c006c41:	73657220 	vssrani.wu.d	$vr0,$vr17,0x1c
1c006c45:	0d217465 	xvbitsel.v	$xr5,$xr3,$xr29,$xr2
1c006c49:	0d00000a 	fsel	$f10,$f0,$f0,$fcc0
1c006c4d:	6970730a 	bltu	$r24,$r10,94320(0x17070) # 1c01dcbd <_sidata+0x14e95>
1c006c51:	6f6f6220 	bgeu	$r17,$r0,-37024(0x36f60) # 1bffdbb1 <_start-0x244f>
1c006c55:	0d000074 	fsel	$f20,$f3,$f0,$fcc0
1c006c59:	676f640a 	bge	$r0,$r10,-37020(0x36f64) # 1bffdbbd <_start-0x2443>
1c006c5d:	72616220 	0x72616220
1c006c61:	0a0d216b 	0x0a0d216b
1c006c65:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006c69:	6b61770a 	bltu	$r24,$r10,-40588(0x36174) # 1bffcddd <_start-0x3223>
1c006c6d:	21705565 	sc.w	$r5,$r11,28756(0x7054)
1c006c71:	b4000a0d 	0xb4000a0d
1c006c75:	d01c001d 	0xd01c001d
1c006c79:	d01c001e 	0xd01c001e
1c006c7d:	d01c001e 	0xd01c001e
1c006c81:	d01c001e 	0xd01c001e
1c006c85:	d01c001e 	0xd01c001e
1c006c89:	d01c001e 	0xd01c001e
1c006c8d:	d01c001e 	0xd01c001e
1c006c91:	d01c001e 	0xd01c001e
1c006c95:	d01c001e 	0xd01c001e
1c006c99:	d01c001e 	0xd01c001e
1c006c9d:	cc1c001e 	0xcc1c001e
1c006ca1:	541c001d 	bl	7609344(0x741c00) # 1c7488a1 <_sidata+0x73fa79>
1c006ca5:	541c001e 	bl	7871488(0x781c00) # 1c7888a5 <_sidata+0x77fa7d>
1c006ca9:	541c001e 	bl	7871488(0x781c00) # 1c7888a9 <_sidata+0x77fa81>
1c006cad:	541c001e 	bl	7871488(0x781c00) # 1c7888ad <_sidata+0x77fa85>
1c006cb1:	541c001e 	bl	7871488(0x781c00) # 1c7888b1 <_sidata+0x77fa89>
1c006cb5:	541c001e 	bl	7871488(0x781c00) # 1c7888b5 <_sidata+0x77fa8d>
1c006cb9:	541c001e 	bl	7871488(0x781c00) # 1c7888b9 <_sidata+0x77fa91>
1c006cbd:	541c001e 	bl	7871488(0x781c00) # 1c7888bd <_sidata+0x77fa95>
1c006cc1:	541c001e 	bl	7871488(0x781c00) # 1c7888c1 <_sidata+0x77fa99>
1c006cc5:	d01c001e 	0xd01c001e
1c006cc9:	d01c001e 	0xd01c001e
1c006ccd:	d01c001e 	0xd01c001e
1c006cd1:	d01c001e 	0xd01c001e
1c006cd5:	d01c001e 	0xd01c001e
1c006cd9:	d01c001e 	0xd01c001e
1c006cdd:	d01c001e 	0xd01c001e
1c006ce1:	d01c001e 	0xd01c001e
1c006ce5:	d01c001e 	0xd01c001e
1c006ce9:	d01c001e 	0xd01c001e
1c006ced:	d01c001e 	0xd01c001e
1c006cf1:	d01c001e 	0xd01c001e
1c006cf5:	d01c001e 	0xd01c001e
1c006cf9:	d01c001e 	0xd01c001e
1c006cfd:	d01c001e 	0xd01c001e
1c006d01:	d01c001e 	0xd01c001e
1c006d05:	d01c001e 	0xd01c001e
1c006d09:	d01c001e 	0xd01c001e
1c006d0d:	d01c001e 	0xd01c001e
1c006d11:	d01c001e 	0xd01c001e
1c006d15:	d01c001e 	0xd01c001e
1c006d19:	d01c001e 	0xd01c001e
1c006d1d:	d01c001e 	0xd01c001e
1c006d21:	d01c001e 	0xd01c001e
1c006d25:	d01c001e 	0xd01c001e
1c006d29:	d01c001e 	0xd01c001e
1c006d2d:	d01c001e 	0xd01c001e
1c006d31:	d01c001e 	0xd01c001e
1c006d35:	d01c001e 	0xd01c001e
1c006d39:	d01c001e 	0xd01c001e
1c006d3d:	d01c001e 	0xd01c001e
1c006d41:	d01c001e 	0xd01c001e
1c006d45:	d01c001e 	0xd01c001e
1c006d49:	d01c001e 	0xd01c001e
1c006d4d:	d01c001e 	0xd01c001e
1c006d51:	d01c001e 	0xd01c001e
1c006d55:	d01c001e 	0xd01c001e
1c006d59:	d01c001e 	0xd01c001e
1c006d5d:	d01c001e 	0xd01c001e
1c006d61:	d01c001e 	0xd01c001e
1c006d65:	441c001e 	bnez	$r0,-517120(0x781c00) # 1bf88965 <_start-0x7769b>
1c006d69:	6c1c001d 	bgeu	$r0,$r29,7168(0x1c00) # 1c008969 <tfont32+0x601>
1c006d6d:	d41c001c 	0xd41c001c
1c006d71:	d01c001c 	0xd01c001c
1c006d75:	d01c001e 	0xd01c001e
1c006d79:	d01c001e 	0xd01c001e
1c006d7d:	d01c001e 	0xd01c001e
1c006d81:	d01c001e 	0xd01c001e
1c006d85:	d01c001e 	0xd01c001e
1c006d89:	d01c001e 	0xd01c001e
1c006d8d:	d01c001e 	0xd01c001e
1c006d91:	d01c001e 	0xd01c001e
1c006d95:	d01c001e 	0xd01c001e
1c006d99:	0c1c001e 	0x0c1c001e
1c006d9d:	7c1c001d 	0x7c1c001d
1c006da1:	d01c001d 	0xd01c001d
1c006da5:	d01c001e 	0xd01c001e
1c006da9:	401c001e 	beqz	$r0,-517120(0x781c00) # 1bf889a9 <_start-0x77657>
1c006dad:	d01c001c 	0xd01c001c
1c006db1:	9c1c001e 	0x9c1c001e
1c006db5:	d01c001c 	0xd01c001c
1c006db9:	d01c001e 	0xd01c001e
1c006dbd:	7c1c001e 	0x7c1c001e
1c006dc1:	681c001d 	bltu	$r0,$r29,7168(0x1c00) # 1c0089c1 <tfont32+0x659>
1c006dc5:	8c1c0023 	0x8c1c0023
1c006dc9:	8c1c0024 	0x8c1c0024
1c006dcd:	8c1c0024 	0x8c1c0024
1c006dd1:	8c1c0024 	0x8c1c0024
1c006dd5:	8c1c0024 	0x8c1c0024
1c006dd9:	8c1c0024 	0x8c1c0024
1c006ddd:	8c1c0024 	0x8c1c0024
1c006de1:	8c1c0024 	0x8c1c0024
1c006de5:	8c1c0024 	0x8c1c0024
1c006de9:	8c1c0024 	0x8c1c0024
1c006ded:	881c0024 	0x881c0024
1c006df1:	101c0023 	addu16i.d	$r3,$r1,1792(0x700)
1c006df5:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c006df9:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c006dfd:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c006e01:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c006e05:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c006e09:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c006e0d:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c006e11:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c006e15:	8c1c0024 	0x8c1c0024
1c006e19:	8c1c0024 	0x8c1c0024
1c006e1d:	8c1c0024 	0x8c1c0024
1c006e21:	8c1c0024 	0x8c1c0024
1c006e25:	8c1c0024 	0x8c1c0024
1c006e29:	8c1c0024 	0x8c1c0024
1c006e2d:	8c1c0024 	0x8c1c0024
1c006e31:	8c1c0024 	0x8c1c0024
1c006e35:	8c1c0024 	0x8c1c0024
1c006e39:	8c1c0024 	0x8c1c0024
1c006e3d:	8c1c0024 	0x8c1c0024
1c006e41:	8c1c0024 	0x8c1c0024
1c006e45:	8c1c0024 	0x8c1c0024
1c006e49:	8c1c0024 	0x8c1c0024
1c006e4d:	8c1c0024 	0x8c1c0024
1c006e51:	8c1c0024 	0x8c1c0024
1c006e55:	8c1c0024 	0x8c1c0024
1c006e59:	8c1c0024 	0x8c1c0024
1c006e5d:	8c1c0024 	0x8c1c0024
1c006e61:	8c1c0024 	0x8c1c0024
1c006e65:	8c1c0024 	0x8c1c0024
1c006e69:	8c1c0024 	0x8c1c0024
1c006e6d:	8c1c0024 	0x8c1c0024
1c006e71:	8c1c0024 	0x8c1c0024
1c006e75:	8c1c0024 	0x8c1c0024
1c006e79:	8c1c0024 	0x8c1c0024
1c006e7d:	8c1c0024 	0x8c1c0024
1c006e81:	8c1c0024 	0x8c1c0024
1c006e85:	8c1c0024 	0x8c1c0024
1c006e89:	8c1c0024 	0x8c1c0024
1c006e8d:	8c1c0024 	0x8c1c0024
1c006e91:	8c1c0024 	0x8c1c0024
1c006e95:	8c1c0024 	0x8c1c0024
1c006e99:	8c1c0024 	0x8c1c0024
1c006e9d:	8c1c0024 	0x8c1c0024
1c006ea1:	8c1c0024 	0x8c1c0024
1c006ea5:	8c1c0024 	0x8c1c0024
1c006ea9:	8c1c0024 	0x8c1c0024
1c006ead:	8c1c0024 	0x8c1c0024
1c006eb1:	8c1c0024 	0x8c1c0024
1c006eb5:	f01c0024 	0xf01c0024
1c006eb9:	081c0022 	fmadd.s	$f2,$f1,$f0,$f24
1c006ebd:	781c0022 	0x781c0022
1c006ec1:	8c1c0022 	0x8c1c0022
1c006ec5:	8c1c0024 	0x8c1c0024
1c006ec9:	8c1c0024 	0x8c1c0024
1c006ecd:	8c1c0024 	0x8c1c0024
1c006ed1:	8c1c0024 	0x8c1c0024
1c006ed5:	8c1c0024 	0x8c1c0024
1c006ed9:	8c1c0024 	0x8c1c0024
1c006edd:	8c1c0024 	0x8c1c0024
1c006ee1:	8c1c0024 	0x8c1c0024
1c006ee5:	8c1c0024 	0x8c1c0024
1c006ee9:	b41c0024 	0xb41c0024
1c006eed:	2c1c0022 	vld	$vr2,$r1,1792(0x700)
1c006ef1:	8c1c0023 	0x8c1c0023
1c006ef5:	8c1c0024 	0x8c1c0024
1c006ef9:	d81c0024 	0xd81c0024
1c006efd:	8c1c0021 	0x8c1c0021
1c006f01:	3c1c0024 	0x3c1c0024
1c006f05:	8c1c0022 	0x8c1c0022
1c006f09:	8c1c0024 	0x8c1c0024
1c006f0d:	2c1c0024 	vld	$vr4,$r1,1792(0x700)
1c006f11:	0a1c0023 	xvfmadd.s	$xr3,$xr1,$xr0,$xr24
1c006f15:	7c000000 	0x7c000000
1c006f19:	7c7c7c7c 	0x7c7c7c7c
1c006f1d:	7c7c7c7c 	0x7c7c7c7c
1c006f21:	7c7c7c7c 	0x7c7c7c7c
1c006f25:	7c7c7c7c 	0x7c7c7c7c
1c006f29:	7c7c7c7c 	0x7c7c7c7c
1c006f2d:	7c7c7c7c 	0x7c7c7c7c
1c006f31:	7c7c7c7c 	0x7c7c7c7c
1c006f35:	7c7c7c7c 	0x7c7c7c7c
1c006f39:	7c7c7c7c 	0x7c7c7c7c
1c006f3d:	7c7c7c7c 	0x7c7c7c7c
1c006f41:	7c7c7c7c 	0x7c7c7c7c
1c006f45:	7c7c7c7c 	0x7c7c7c7c
1c006f49:	7c7c7c7c 	0x7c7c7c7c
1c006f4d:	7c7c7c7c 	0x7c7c7c7c
1c006f51:	7c7c7c7c 	0x7c7c7c7c
1c006f55:	7c7c7c7c 	0x7c7c7c7c
1c006f59:	7c7c7c7c 	0x7c7c7c7c
1c006f5d:	7c7c7c7c 	0x7c7c7c7c
1c006f61:	7c7c7c7c 	0x7c7c7c7c
1c006f65:	7c7c7c7c 	0x7c7c7c7c
1c006f69:	7c7c7c7c 	0x7c7c7c7c
1c006f6d:	7c7c7c7c 	0x7c7c7c7c
1c006f71:	7c7c7c7c 	0x7c7c7c7c
1c006f75:	7c7c7c7c 	0x7c7c7c7c
1c006f79:	7c00000a 	0x7c00000a
1c006f7d:	7c20207c 	0x7c20207c
1c006f81:	7c7c7c7c 	0x7c7c7c7c
1c006f85:	7c7c7c7c 	0x7c7c7c7c
1c006f89:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006f8d:	7c202020 	0x7c202020
1c006f91:	7c7c7c7c 	0x7c7c7c7c
1c006f95:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006f99:	7c202020 	0x7c202020
1c006f9d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006fa1:	7c7c2020 	0x7c7c2020
1c006fa5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006fa9:	7c7c7c20 	0x7c7c7c20
1c006fad:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006fb1:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006fb5:	7c7c7c7c 	0x7c7c7c7c
1c006fb9:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006fbd:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006fc1:	7c7c7c7c 	0x7c7c7c7c
1c006fc5:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006fc9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006fcd:	7c7c7c7c 	0x7c7c7c7c
1c006fd1:	7c202020 	0x7c202020
1c006fd5:	7c7c7c7c 	0x7c7c7c7c
1c006fd9:	7c7c2020 	0x7c7c2020
1c006fdd:	7c00000a 	0x7c00000a
1c006fe1:	7c20207c 	0x7c20207c
1c006fe5:	7c7c7c7c 	0x7c7c7c7c
1c006fe9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006fed:	7c7c2020 	0x7c7c2020
1c006ff1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006ff5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006ff9:	7c7c2020 	0x7c7c2020
1c006ffd:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007001:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007005:	7c202020 	0x7c202020
1c007009:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00700d:	7c7c7c20 	0x7c7c7c20
1c007011:	7c20207c 	0x7c20207c
1c007015:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007019:	7c7c7c20 	0x7c7c7c20
1c00701d:	7c202020 	0x7c202020
1c007021:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007025:	7c7c7c20 	0x7c7c7c20
1c007029:	7c202020 	0x7c202020
1c00702d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007031:	7c7c7c20 	0x7c7c7c20
1c007035:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007039:	7c7c7c7c 	0x7c7c7c7c
1c00703d:	7c7c2020 	0x7c7c2020
1c007041:	7c00000a 	0x7c00000a
1c007045:	7c20207c 	0x7c20207c
1c007049:	7c7c7c7c 	0x7c7c7c7c
1c00704d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007051:	7c7c7c20 	0x7c7c7c20
1c007055:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007059:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00705d:	7c7c7c20 	0x7c7c7c20
1c007061:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007065:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007069:	20207c20 	ll.w	$r0,$r1,8316(0x207c)
1c00706d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007071:	7c7c7c20 	0x7c7c7c20
1c007075:	7c7c2020 	0x7c7c2020
1c007079:	7c7c7c7c 	0x7c7c7c7c
1c00707d:	7c7c7c7c 	0x7c7c7c7c
1c007081:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007085:	7c7c7c20 	0x7c7c7c20
1c007089:	7c7c7c7c 	0x7c7c7c7c
1c00708d:	7c7c2020 	0x7c7c2020
1c007091:	7c7c7c7c 	0x7c7c7c7c
1c007095:	7c7c7c20 	0x7c7c7c20
1c007099:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c00709d:	7c7c7c20 	0x7c7c7c20
1c0070a1:	7c7c2020 	0x7c7c2020
1c0070a5:	7c00000a 	0x7c00000a
1c0070a9:	7c20207c 	0x7c20207c
1c0070ad:	7c7c7c7c 	0x7c7c7c7c
1c0070b1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0070b5:	7c7c7c20 	0x7c7c7c20
1c0070b9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0070bd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0070c1:	7c7c7c20 	0x7c7c7c20
1c0070c5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0070c9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0070cd:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c0070d1:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c0070d5:	7c7c7c20 	0x7c7c7c20
1c0070d9:	7c7c2020 	0x7c7c2020
1c0070dd:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0070e1:	7c7c7c20 	0x7c7c7c20
1c0070e5:	7c7c7c7c 	0x7c7c7c7c
1c0070e9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0070ed:	7c7c7c7c 	0x7c7c7c7c
1c0070f1:	7c7c2020 	0x7c7c2020
1c0070f5:	7c7c7c7c 	0x7c7c7c7c
1c0070f9:	7c7c7c20 	0x7c7c7c20
1c0070fd:	7c7c2020 	0x7c7c2020
1c007101:	7c7c2020 	0x7c7c2020
1c007105:	7c7c2020 	0x7c7c2020
1c007109:	7c00000a 	0x7c00000a
1c00710d:	7c20207c 	0x7c20207c
1c007111:	7c7c7c7c 	0x7c7c7c7c
1c007115:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007119:	7c7c7c20 	0x7c7c7c20
1c00711d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007121:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007125:	7c7c7c20 	0x7c7c7c20
1c007129:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00712d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007131:	7c7c7c20 	0x7c7c7c20
1c007135:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c007139:	7c7c7c20 	0x7c7c7c20
1c00713d:	7c7c2020 	0x7c7c2020
1c007141:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007145:	7c7c7c20 	0x7c7c7c20
1c007149:	7c7c7c7c 	0x7c7c7c7c
1c00714d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007151:	7c7c7c20 	0x7c7c7c20
1c007155:	7c7c2020 	0x7c7c2020
1c007159:	7c7c7c7c 	0x7c7c7c7c
1c00715d:	7c7c7c20 	0x7c7c7c20
1c007161:	7c7c2020 	0x7c7c2020
1c007165:	7c20207c 	0x7c20207c
1c007169:	7c7c2020 	0x7c7c2020
1c00716d:	7c00000a 	0x7c00000a
1c007171:	7c20207c 	0x7c20207c
1c007175:	7c7c7c7c 	0x7c7c7c7c
1c007179:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00717d:	7c7c2020 	0x7c7c2020
1c007181:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007185:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007189:	7c7c2020 	0x7c7c2020
1c00718d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007191:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007195:	7c7c7c20 	0x7c7c7c20
1c007199:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00719d:	7c7c7c20 	0x7c7c7c20
1c0071a1:	7c202020 	0x7c202020
1c0071a5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0071a9:	7c7c7c20 	0x7c7c7c20
1c0071ad:	7c202020 	0x7c202020
1c0071b1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0071b5:	7c7c7c7c 	0x7c7c7c7c
1c0071b9:	7c202020 	0x7c202020
1c0071bd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0071c1:	7c7c7c20 	0x7c7c7c20
1c0071c5:	7c7c2020 	0x7c7c2020
1c0071c9:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0071cd:	7c7c2020 	0x7c7c2020
1c0071d1:	7c00000a 	0x7c00000a
1c0071d5:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0071d9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0071dd:	7c7c7c7c 	0x7c7c7c7c
1c0071e1:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0071e5:	7c202020 	0x7c202020
1c0071e9:	7c7c7c7c 	0x7c7c7c7c
1c0071ed:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0071f1:	7c202020 	0x7c202020
1c0071f5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0071f9:	7c7c7c20 	0x7c7c7c20
1c0071fd:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007201:	7c7c7c20 	0x7c7c7c20
1c007205:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007209:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00720d:	7c7c7c7c 	0x7c7c7c7c
1c007211:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007215:	7c202020 	0x7c202020
1c007219:	7c7c7c7c 	0x7c7c7c7c
1c00721d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007221:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007225:	7c7c7c7c 	0x7c7c7c7c
1c007229:	7c7c2020 	0x7c7c2020
1c00722d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007231:	7c7c2020 	0x7c7c2020
1c007235:	7c00000a 	0x7c00000a
1c007239:	7c7c7c7c 	0x7c7c7c7c
1c00723d:	7c7c7c7c 	0x7c7c7c7c
1c007241:	7c7c7c7c 	0x7c7c7c7c
1c007245:	7c7c7c7c 	0x7c7c7c7c
1c007249:	7c7c7c7c 	0x7c7c7c7c
1c00724d:	7c7c7c7c 	0x7c7c7c7c
1c007251:	7c7c7c7c 	0x7c7c7c7c
1c007255:	7c7c7c7c 	0x7c7c7c7c
1c007259:	7c7c7c7c 	0x7c7c7c7c
1c00725d:	325b7c7c 	xvldrepl.h	$xr28,$r3,-578(0xdbe)
1c007261:	20303230 	ll.w	$r16,$r17,12336(0x3030)
1c007265:	4e4f4f4c 	jirl	$r12,$r26,-110772(0x24f4c)
1c007269:	4e4f5347 	jirl	$r7,$r26,-110768(0x24f50)
1c00726d:	7c7c7c5d 	0x7c7c7c5d
1c007271:	7c7c7c7c 	0x7c7c7c7c
1c007275:	7c7c7c7c 	0x7c7c7c7c
1c007279:	7c7c7c7c 	0x7c7c7c7c
1c00727d:	7c7c7c7c 	0x7c7c7c7c
1c007281:	7c7c7c7c 	0x7c7c7c7c
1c007285:	7c7c7c7c 	0x7c7c7c7c
1c007289:	7c7c7c7c 	0x7c7c7c7c
1c00728d:	7c7c7c7c 	0x7c7c7c7c
1c007291:	7c7c7c7c 	0x7c7c7c7c
1c007295:	7c7c7c7c 	0x7c7c7c7c
1c007299:	0900000a 	0x0900000a
1c00729d:	0a006425 	0x0a006425
1c0072a1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0072a5:	776f440a 	xvssrarni.du.q	$xr10,$xr0,0x51
1c0072a9:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c0072ad:	0050550a 	0x0050550a
1c0072b1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0072b5:	6c754d0a 	bgeu	$r8,$r10,30028(0x754c) # 1c00e801 <_sidata+0x59d9>
1c0072b9:	776f4469 	xvssrarni.du.q	$xr9,$xr3,0x51
1c0072bd:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c0072c1:	756f430a 	0x756f430a
1c0072c5:	4f20746e 	jirl	$r14,$r3,-57228(0x32074)
1c0072c9:	0d000056 	fsel	$f22,$f2,$f0,$fcc0
1c0072cd:	3030090a 	0x3030090a
1c0072d1:	09313009 	0x09313009
1c0072d5:	30093230 	0x30093230
1c0072d9:	34300933 	0x34300933
1c0072dd:	09353009 	0x09353009
1c0072e1:	30093630 	0x30093630
1c0072e5:	38300937 	fldx.s	$f23,$r9,$r2
1c0072e9:	09393009 	0x09393009
1c0072ed:	31093031 	0x31093031
1c0072f1:	0d000031 	fsel	$f17,$f1,$f0,$fcc0
1c0072f5:	746e630a 	0x746e630a
1c0072f9:	09000000 	0x09000000
1c0072fd:	00643425 	bstrins.w	$r5,$r1,0x4,0xd
1c007301:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007305:	7361420a 	vssrani.w.d	$vr10,$vr16,0x10
1c007309:	6c615665 	bgeu	$r19,$r5,24916(0x6154) # 1c00d45d <_sidata+0x4635>
1c00730d:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007311:	6275530a 	blt	$r24,$r10,-101040(0x27550) # 1bfee861 <_start-0x1179f>
1c007315:	006c6156 	bstrins.w	$r22,$r10,0xc,0x18
1c007319:	09000000 	0x09000000
1c00731d:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c007321:	09000000 	0x09000000
1c007325:	00643325 	bstrins.w	$r5,$r25,0x4,0xc
1c007329:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c00732d:	203c200a 	ll.w	$r10,$r0,15392(0x3c20)
1c007331:	3a515249 	0x3a515249
1c007335:	20642520 	ll.w	$r0,$r9,25636(0x6424)
1c007339:	636e7566 	blt	$r11,$r6,-37260(0x36e74) # 1bffe1ad <_start-0x1e53>
1c00733d:	2073253a 	ll.w	$r26,$r9,29476(0x7324)
1c007341:	0d3e2020 	0x0d3e2020
1c007345:	0a00000a 	0x0a00000a
1c007349:	2e2e2e2e 	0x2e2e2e2e
1c00734d:	2e2e2e2e 	0x2e2e2e2e
1c007351:	2e2e2e2e 	0x2e2e2e2e
1c007355:	464f532e 	bnez	$r25,3821392(0x3a4f50) # 1c3ac2a5 <_sidata+0x3a347d>
1c007359:	4e495f54 	jirl	$r20,$r26,-112292(0x2495c)
1c00735d:	2e2e2e54 	0x2e2e2e54
1c007361:	2e2e2e2e 	0x2e2e2e2e
1c007365:	2e2e2e2e 	0x2e2e2e2e
1c007369:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c00736d:	5400000d 	bl	3407872(0x340000) # 1c34736d <_sidata+0x33e545>
1c007371:	52454d49 	b	86394188(0x526454c) # 2126b8bd <_sidata+0x5262a95>
1c007375:	4b41575f 	0x4b41575f
1c007379:	4e495f45 	jirl	$r5,$r26,-112292(0x2495c)
1c00737d:	65662054 	bge	$r2,$r20,91680(0x16620) # 1c01d99d <_sidata+0x14b75>
1c007381:	57206465 	bl	26681444(0x1972064) # 1d9793e5 <_sidata+0x19705bd>
1c007385:	0a214744 	xvfmadd.d	$xr4,$xr26,$xr17,$xr2
1c007389:	0d00000d 	fsel	$f13,$f0,$f0,$fcc0
1c00738d:	2e2e2e0a 	0x2e2e2e0a
1c007391:	2e2e2e2e 	0x2e2e2e2e
1c007395:	2e2e2e2e 	0x2e2e2e2e
1c007399:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39b5c5 <_sidata+0x39279d>
1c00739d:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1b9f9 <_start-0x2e4607>
1c0073a1:	2e2e4c49 	0x2e2e4c49
1c0073a5:	2e2e2e2e 	0x2e2e2e2e
1c0073a9:	2e2e2e2e 	0x2e2e2e2e
1c0073ad:	2e2e2e2e 	0x2e2e2e2e
1c0073b1:	0d000a0d 	fsel	$f13,$f16,$f2,$fcc0
1c0073b5:	2e2e2e0a 	0x2e2e2e0a
1c0073b9:	2e2e2e2e 	0x2e2e2e2e
1c0073bd:	2e2e2e2e 	0x2e2e2e2e
1c0073c1:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38b4ed <_sidata+0x3826c5>
1c0073c5:	2e2e2e43 	0x2e2e2e43
1c0073c9:	2e2e2e2e 	0x2e2e2e2e
1c0073cd:	2e2e2e2e 	0x2e2e2e2e
1c0073d1:	0d2e2e2e 	xvbitsel.v	$xr14,$xr17,$xr11,$xr28
1c0073d5:	5000000a 	b	2621440(0x280000) # 1c2873d5 <_sidata+0x27e5ad>
1c0073d9:	70697265 	vavgr.w	$vr5,$vr19,$vr28
1c0073dd:	61726568 	blt	$r11,$r8,94820(0x17264) # 1c01e641 <_sidata+0x15819>
1c0073e1:	5420736c 	bl	-38789008(0xdb02070) # 19b09451 <_start-0x24f6baf>
1c0073e5:	72656d69 	0x72656d69
1c0073e9:	656c6320 	bge	$r25,$r0,93280(0x16c60) # 1c01e049 <_sidata+0x15221>
1c0073ed:	69207261 	bltu	$r19,$r1,73840(0x12070) # 1c01945d <_sidata+0x10635>
1c0073f1:	7265746e 	0x7265746e
1c0073f5:	74707572 	xvmax.b	$xr18,$xr11,$xr29
1c0073f9:	0a0d2e2e 	0x0a0d2e2e
1c0073fd:	43000000 	beqz	$r0,196608(0x30000) # 1c0373fd <_sidata+0x2e5d5>
1c007401:	2065726f 	ll.w	$r15,$r19,25968(0x6570)
1c007405:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01e16d <_sidata+0x15345>
1c007409:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00d729 <_sidata+0x4901>
1c00740d:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c007411:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c01e87d <_sidata+0x15a55>
1c007415:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c007419:	0d2e2e74 	xvbitsel.v	$xr20,$xr19,$xr11,$xr28
1c00741d:	 	0xcc00000a

1c007420 <Ext_IrqHandle>:
1c007420:	1c003ecc 	pcaddu12i	$r12,502(0x1f6)
1c007424:	1c003f18 	pcaddu12i	$r24,504(0x1f8)
1c007428:	1c003f64 	pcaddu12i	$r4,507(0x1fb)
1c00742c:	1c003fb0 	pcaddu12i	$r16,509(0x1fd)
1c007430:	1c003ffc 	pcaddu12i	$r28,511(0x1ff)
1c007434:	1c004048 	pcaddu12i	$r8,514(0x202)
1c007438:	1c004094 	pcaddu12i	$r20,516(0x204)
1c00743c:	1c0040e0 	pcaddu12i	$r0,519(0x207)
1c007440:	1c00412c 	pcaddu12i	$r12,521(0x209)
1c007444:	1c004178 	pcaddu12i	$r24,523(0x20b)
1c007448:	1c0041c4 	pcaddu12i	$r4,526(0x20e)
1c00744c:	1c004210 	pcaddu12i	$r16,528(0x210)
1c007450:	1c00425c 	pcaddu12i	$r28,530(0x212)
1c007454:	1c0042a8 	pcaddu12i	$r8,533(0x215)
1c007458:	1c0042f4 	pcaddu12i	$r20,535(0x217)
1c00745c:	1c004340 	pcaddu12i	$r0,538(0x21a)
1c007460:	1c00438c 	pcaddu12i	$r12,540(0x21c)
1c007464:	1c0043d8 	pcaddu12i	$r24,542(0x21e)
1c007468:	1c004424 	pcaddu12i	$r4,545(0x221)
1c00746c:	1c004470 	pcaddu12i	$r16,547(0x223)
1c007470:	1c0044bc 	pcaddu12i	$r28,549(0x225)
1c007474:	1c004508 	pcaddu12i	$r8,552(0x228)
1c007478:	1c004554 	pcaddu12i	$r20,554(0x22a)
1c00747c:	1c0045a0 	pcaddu12i	$r0,557(0x22d)
1c007480:	1c0045ec 	pcaddu12i	$r12,559(0x22f)
1c007484:	1c004638 	pcaddu12i	$r24,561(0x231)
1c007488:	1c004684 	pcaddu12i	$r4,564(0x234)
1c00748c:	1c0046d0 	pcaddu12i	$r16,566(0x236)
1c007490:	1c00471c 	pcaddu12i	$r28,568(0x238)
1c007494:	1c004768 	pcaddu12i	$r8,571(0x23b)
1c007498:	1c0047b4 	pcaddu12i	$r20,573(0x23d)
1c00749c:	1c004800 	pcaddu12i	$r0,576(0x240)
1c0074a0:	1c004af0 	pcaddu12i	$r16,599(0x257)
1c0074a4:	1c004aa0 	pcaddu12i	$r0,597(0x255)
1c0074a8:	1c004af0 	pcaddu12i	$r16,599(0x257)
1c0074ac:	1c004af0 	pcaddu12i	$r16,599(0x257)
1c0074b0:	1c004af0 	pcaddu12i	$r16,599(0x257)
1c0074b4:	1c004af0 	pcaddu12i	$r16,599(0x257)
1c0074b8:	1c004af0 	pcaddu12i	$r16,599(0x257)
1c0074bc:	1c004af0 	pcaddu12i	$r16,599(0x257)
1c0074c0:	1c004af0 	pcaddu12i	$r16,599(0x257)
1c0074c4:	1c004af0 	pcaddu12i	$r16,599(0x257)
1c0074c8:	1c004af0 	pcaddu12i	$r16,599(0x257)
1c0074cc:	1c004af0 	pcaddu12i	$r16,599(0x257)
1c0074d0:	1c004af0 	pcaddu12i	$r16,599(0x257)
1c0074d4:	1c004af0 	pcaddu12i	$r16,599(0x257)
1c0074d8:	1c004af0 	pcaddu12i	$r16,599(0x257)
1c0074dc:	1c004af0 	pcaddu12i	$r16,599(0x257)
1c0074e0:	1c004abc 	pcaddu12i	$r28,597(0x255)

1c0074e4 <__FUNCTION__.1551>:
1c0074e4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e95c <_sidata+0x15b34>
1c0074e8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e54c <_sidata+0x15724>
1c0074ec:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bffa54c <_start-0x5ab4>
1c0074f0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe660 <_start-0x19a0>
1c0074f4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e354 <_sidata+0x552c>
1c0074f8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0074fc <__FUNCTION__.1555>:
1c0074fc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e974 <_sidata+0x15b4c>
1c007500:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e564 <_sidata+0x1573c>
1c007504:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bffa664 <_start-0x599c>
1c007508:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe678 <_start-0x1988>
1c00750c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e36c <_sidata+0x5544>
1c007510:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007514 <__FUNCTION__.1559>:
1c007514:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e98c <_sidata+0x15b64>
1c007518:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e57c <_sidata+0x15754>
1c00751c:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bffa77c <_start-0x5884>
1c007520:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe690 <_start-0x1970>
1c007524:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e384 <_sidata+0x555c>
1c007528:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00752c <__FUNCTION__.1563>:
1c00752c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e9a4 <_sidata+0x15b7c>
1c007530:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e594 <_sidata+0x1576c>
1c007534:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bffa894 <_start-0x576c>
1c007538:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe6a8 <_start-0x1958>
1c00753c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e39c <_sidata+0x5574>
1c007540:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007544 <__FUNCTION__.1567>:
1c007544:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e9bc <_sidata+0x15b94>
1c007548:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e5ac <_sidata+0x15784>
1c00754c:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bffa9ac <_start-0x5654>
1c007550:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe6c0 <_start-0x1940>
1c007554:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e3b4 <_sidata+0x558c>
1c007558:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00755c <__FUNCTION__.1571>:
1c00755c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e9d4 <_sidata+0x15bac>
1c007560:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e5c4 <_sidata+0x1579c>
1c007564:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bffaac4 <_start-0x553c>
1c007568:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe6d8 <_start-0x1928>
1c00756c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e3cc <_sidata+0x55a4>
1c007570:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007574 <__FUNCTION__.1575>:
1c007574:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e9ec <_sidata+0x15bc4>
1c007578:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e5dc <_sidata+0x157b4>
1c00757c:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bffabdc <_start-0x5424>
1c007580:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe6f0 <_start-0x1910>
1c007584:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e3e4 <_sidata+0x55bc>
1c007588:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00758c <__FUNCTION__.1579>:
1c00758c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ea04 <_sidata+0x15bdc>
1c007590:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e5f4 <_sidata+0x157cc>
1c007594:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bffacf4 <_start-0x530c>
1c007598:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe708 <_start-0x18f8>
1c00759c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e3fc <_sidata+0x55d4>
1c0075a0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0075a4 <__FUNCTION__.1583>:
1c0075a4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ea1c <_sidata+0x15bf4>
1c0075a8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e60c <_sidata+0x157e4>
1c0075ac:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bffa60c <_start-0x59f4>
1c0075b0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe720 <_start-0x18e0>
1c0075b4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e414 <_sidata+0x55ec>
1c0075b8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0075bc <__FUNCTION__.1587>:
1c0075bc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ea34 <_sidata+0x15c0c>
1c0075c0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e624 <_sidata+0x157fc>
1c0075c4:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bffa724 <_start-0x58dc>
1c0075c8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe738 <_start-0x18c8>
1c0075cc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e42c <_sidata+0x5604>
1c0075d0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0075d4 <__FUNCTION__.1591>:
1c0075d4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ea4c <_sidata+0x15c24>
1c0075d8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e63c <_sidata+0x15814>
1c0075dc:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bffa83c <_start-0x57c4>
1c0075e0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe750 <_start-0x18b0>
1c0075e4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e444 <_sidata+0x561c>
1c0075e8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0075ec <__FUNCTION__.1595>:
1c0075ec:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ea64 <_sidata+0x15c3c>
1c0075f0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e654 <_sidata+0x1582c>
1c0075f4:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bffa954 <_start-0x56ac>
1c0075f8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe768 <_start-0x1898>
1c0075fc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e45c <_sidata+0x5634>
1c007600:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007604 <__FUNCTION__.1599>:
1c007604:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ea7c <_sidata+0x15c54>
1c007608:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e66c <_sidata+0x15844>
1c00760c:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bffaa6c <_start-0x5594>
1c007610:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe780 <_start-0x1880>
1c007614:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e474 <_sidata+0x564c>
1c007618:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00761c <__FUNCTION__.1603>:
1c00761c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ea94 <_sidata+0x15c6c>
1c007620:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e684 <_sidata+0x1585c>
1c007624:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bffab84 <_start-0x547c>
1c007628:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe798 <_start-0x1868>
1c00762c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e48c <_sidata+0x5664>
1c007630:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007634 <__FUNCTION__.1607>:
1c007634:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eaac <_sidata+0x15c84>
1c007638:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e69c <_sidata+0x15874>
1c00763c:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bffac9c <_start-0x5364>
1c007640:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe7b0 <_start-0x1850>
1c007644:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e4a4 <_sidata+0x567c>
1c007648:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00764c <__FUNCTION__.1611>:
1c00764c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eac4 <_sidata+0x15c9c>
1c007650:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e6b4 <_sidata+0x1588c>
1c007654:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bffadb4 <_start-0x524c>
1c007658:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe7c8 <_start-0x1838>
1c00765c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e4bc <_sidata+0x5694>
1c007660:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007664 <__FUNCTION__.1615>:
1c007664:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eadc <_sidata+0x15cb4>
1c007668:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e6cc <_sidata+0x158a4>
1c00766c:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bffa6cc <_start-0x5934>
1c007670:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe7e0 <_start-0x1820>
1c007674:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e4d4 <_sidata+0x56ac>
1c007678:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00767c <__FUNCTION__.1619>:
1c00767c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eaf4 <_sidata+0x15ccc>
1c007680:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e6e4 <_sidata+0x158bc>
1c007684:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bffa7e4 <_start-0x581c>
1c007688:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe7f8 <_start-0x1808>
1c00768c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e4ec <_sidata+0x56c4>
1c007690:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007694 <__FUNCTION__.1623>:
1c007694:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eb0c <_sidata+0x15ce4>
1c007698:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e6fc <_sidata+0x158d4>
1c00769c:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bffa8fc <_start-0x5704>
1c0076a0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe810 <_start-0x17f0>
1c0076a4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e504 <_sidata+0x56dc>
1c0076a8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0076ac <__FUNCTION__.1627>:
1c0076ac:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eb24 <_sidata+0x15cfc>
1c0076b0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e714 <_sidata+0x158ec>
1c0076b4:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bffaa14 <_start-0x55ec>
1c0076b8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe828 <_start-0x17d8>
1c0076bc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e51c <_sidata+0x56f4>
1c0076c0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0076c4 <__FUNCTION__.1631>:
1c0076c4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eb3c <_sidata+0x15d14>
1c0076c8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e72c <_sidata+0x15904>
1c0076cc:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bffab2c <_start-0x54d4>
1c0076d0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe840 <_start-0x17c0>
1c0076d4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e534 <_sidata+0x570c>
1c0076d8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0076dc <__FUNCTION__.1635>:
1c0076dc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eb54 <_sidata+0x15d2c>
1c0076e0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e744 <_sidata+0x1591c>
1c0076e4:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bffac44 <_start-0x53bc>
1c0076e8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe858 <_start-0x17a8>
1c0076ec:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e54c <_sidata+0x5724>
1c0076f0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0076f4 <__FUNCTION__.1639>:
1c0076f4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eb6c <_sidata+0x15d44>
1c0076f8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e75c <_sidata+0x15934>
1c0076fc:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bffad5c <_start-0x52a4>
1c007700:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe870 <_start-0x1790>
1c007704:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e564 <_sidata+0x573c>
1c007708:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00770c <__FUNCTION__.1643>:
1c00770c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eb84 <_sidata+0x15d5c>
1c007710:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e774 <_sidata+0x1594c>
1c007714:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bffae74 <_start-0x518c>
1c007718:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe888 <_start-0x1778>
1c00771c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e57c <_sidata+0x5754>
1c007720:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007724 <__FUNCTION__.1647>:
1c007724:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eb9c <_sidata+0x15d74>
1c007728:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e78c <_sidata+0x15964>
1c00772c:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bffa790 <_start-0x5870>
1c007730:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe8a0 <_start-0x1760>
1c007734:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e594 <_sidata+0x576c>
1c007738:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00773c <__FUNCTION__.1651>:
1c00773c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ebb4 <_sidata+0x15d8c>
1c007740:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e7a4 <_sidata+0x1597c>
1c007744:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bffa8a8 <_start-0x5758>
1c007748:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe8b8 <_start-0x1748>
1c00774c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e5ac <_sidata+0x5784>
1c007750:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007754 <__FUNCTION__.1655>:
1c007754:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ebcc <_sidata+0x15da4>
1c007758:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e7bc <_sidata+0x15994>
1c00775c:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bffa9c0 <_start-0x5640>
1c007760:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe8d0 <_start-0x1730>
1c007764:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e5c4 <_sidata+0x579c>
1c007768:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00776c <__FUNCTION__.1659>:
1c00776c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ebe4 <_sidata+0x15dbc>
1c007770:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e7d4 <_sidata+0x159ac>
1c007774:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bffaad8 <_start-0x5528>
1c007778:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe8e8 <_start-0x1718>
1c00777c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e5dc <_sidata+0x57b4>
1c007780:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007784 <__FUNCTION__.1663>:
1c007784:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ebfc <_sidata+0x15dd4>
1c007788:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e7ec <_sidata+0x159c4>
1c00778c:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bffabf0 <_start-0x5410>
1c007790:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe900 <_start-0x1700>
1c007794:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e5f4 <_sidata+0x57cc>
1c007798:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00779c <__FUNCTION__.1667>:
1c00779c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ec14 <_sidata+0x15dec>
1c0077a0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e804 <_sidata+0x159dc>
1c0077a4:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bffad08 <_start-0x52f8>
1c0077a8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe918 <_start-0x16e8>
1c0077ac:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e60c <_sidata+0x57e4>
1c0077b0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0077b4 <__FUNCTION__.1671>:
1c0077b4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ec2c <_sidata+0x15e04>
1c0077b8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e81c <_sidata+0x159f4>
1c0077bc:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bffae20 <_start-0x51e0>
1c0077c0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe930 <_start-0x16d0>
1c0077c4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e624 <_sidata+0x57fc>
1c0077c8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0077cc <__FUNCTION__.1675>:
1c0077cc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ec44 <_sidata+0x15e1c>
1c0077d0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e834 <_sidata+0x15a0c>
1c0077d4:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bffaf38 <_start-0x50c8>
1c0077d8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe948 <_start-0x16b8>
1c0077dc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e63c <_sidata+0x5814>
1c0077e0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
1c0077e4:	52525543 	b	84824660(0x50e5254) # 210eca38 <_sidata+0x50e3c10>
1c0077e8:	00544e45 	0x00544e45
1c0077ec:	504d4554 	b	89148740(0x5504d44) # 2150c530 <_sidata+0x5503708>
1c0077f0:	6432253a 	bge	$r9,$r26,12836(0x3224) # 1c00aa14 <_sidata+0x1bec>
1c0077f4:	008384e2 	bstrins.d	$r2,$r7,0x3,0x21
1c0077f8:	494d5548 	bcnez	$fcc2,2182484(0x214d54) # 1c21c54c <_sidata+0x213724>
1c0077fc:	6432253a 	bge	$r9,$r26,12836(0x3224) # 1c00aa20 <_sidata+0x1bf8>
1c007800:	48522525 	bcnez	$fcc1,1331748(0x145224) # 1c14ca24 <_sidata+0x143bfc>
1c007804:	00000000 	0x00000000
1c007808:	4b4f4d53 	bcnez	$fcc2,-3190964(0x4f4f4c) # 1bcfc754 <_start-0x3038ac>
1c00780c:	32253a45 	xvldrepl.w	$xr5,$r18,1336(0x538)
1c007810:	6d707064 	bgeu	$r3,$r4,94320(0x17070) # 1c01e880 <_sidata+0x15a58>
1c007814:	00000000 	0x00000000
1c007818:	4e524157 	jirl	$r23,$r10,-110016(0x25240)
1c00781c:	00000000 	0x00000000
1c007820:	706d6554 	0x706d6554
1c007824:	3a746553 	0x3a746553
1c007828:	e2643225 	0xe2643225
1c00782c:	00008384 	0x00008384
1c007830:	696d7548 	bltu	$r10,$r8,93556(0x16d74) # 1c01e5a4 <_sidata+0x1577c>
1c007834:	3a746553 	0x3a746553
1c007838:	25643225 	stptr.w	$r5,$r17,25648(0x6430)
1c00783c:	00485225 	0x00485225
1c007840:	6b6f6d53 	bltu	$r10,$r19,-37012(0x36f6c) # 1bffe7ac <_start-0x1854>
1c007844:	74655365 	xvavg.w	$xr5,$xr27,$xr20
1c007848:	6432253a 	bge	$r9,$r26,12836(0x3224) # 1c00aa6c <_sidata+0x1c44>
1c00784c:	006d7070 	bstrins.w	$r16,$r3,0xd,0x1c
1c007850:	5454514d 	bl	87315536(0x5345450) # 2134cca0 <_sidata+0x5343e78>
1c007854:	5f50555f 	bne	$r10,$r31,-44972(0x35054) # 1bffc8a8 <_start-0x3758>
1c007858:	41544144 	beqz	$r10,1135680(0x115440) # 1c11cc98 <_sidata+0x113e70>
1c00785c:	0000203a 	clo.d	$r26,$r1
1c007860:	00206425 	div.w	$r5,$r1,$r25
1c007864:	0000000a 	0x0000000a

1c007868 <asc2_1608>:
	...
1c007878:	f8000000 	0xf8000000
1c00787c:	00000000 	0x00000000
1c007880:	33000000 	0x33000000
1c007884:	00000000 	0x00000000
1c007888:	020c1000 	slti	$r0,$r0,772(0x304)
1c00788c:	00020c10 	0x00020c10
	...
1c007898:	78c04000 	0x78c04000
1c00789c:	0078c040 	bstrpick.w	$r0,$r2,0x18,0x10
1c0078a0:	043f0400 	csrrd	$r0,0xfc1
1c0078a4:	00043f04 	alsl.w	$r4,$r24,$r15,0x1
1c0078a8:	88887000 	0x88887000
1c0078ac:	003008fc 	0x003008fc
1c0078b0:	20201800 	ll.w	$r0,$r0,8216(0x2018)
1c0078b4:	001e21ff 	mulh.d	$r31,$r15,$r8
1c0078b8:	80f008f0 	0x80f008f0
1c0078bc:	00001860 	cto.w	$r0,$r3
1c0078c0:	030c3100 	lu52i.d	$r0,$r8,780(0x30c)
1c0078c4:	001e211e 	mulh.d	$r30,$r8,$r8
1c0078c8:	8808f000 	0x8808f000
1c0078cc:	00000070 	0x00000070
1c0078d0:	2c23211e 	vld	$vr30,$r8,-1848(0x8c8)
1c0078d4:	10212719 	addu16i.d	$r25,$r24,2121(0x849)
1c0078d8:	000e1200 	bytepick.d	$r0,$r16,$r4,0x4
	...
1c0078e8:	e0000000 	0xe0000000
1c0078ec:	00020418 	0x00020418
1c0078f0:	07000000 	0x07000000
1c0078f4:	00402018 	0x00402018
1c0078f8:	18040200 	pcaddi	$r0,8208(0x2010)
1c0078fc:	000000e0 	0x000000e0
1c007900:	18204000 	pcaddi	$r0,66048(0x10200)
1c007904:	00000007 	0x00000007
1c007908:	f0804040 	0xf0804040
1c00790c:	00404080 	0x00404080
1c007910:	0f010202 	0x0f010202
1c007914:	00020201 	0x00020201
1c007918:	00000000 	0x00000000
1c00791c:	000000e0 	0x000000e0
1c007920:	01010100 	fadd.d	$f0,$f8,$f0
1c007924:	0101010f 	fadd.d	$f15,$f8,$f0
	...
1c007930:	00709000 	bstrpick.w	$r0,$r0,0x10,0x4
	...
1c007940:	01010100 	fadd.d	$f0,$f8,$f0
1c007944:	00010101 	0x00010101
	...
1c007950:	00303000 	0x00303000
	...
1c00795c:	000438c0 	alsl.w	$r0,$r6,$r14,0x1
1c007960:	07186000 	0x07186000
1c007964:	00000000 	0x00000000
1c007968:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c00796c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007970:	20100f00 	ll.w	$r0,$r24,4108(0x100c)
1c007974:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c007978:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c00797c:	000000f8 	0x000000f8
1c007980:	20200000 	ll.w	$r0,$r0,8192(0x2000)
1c007984:	0020203f 	div.w	$r31,$r1,$r8
1c007988:	08087000 	0x08087000
1c00798c:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c007990:	24283000 	ldptr.w	$r0,$r0,10288(0x2830)
1c007994:	00302122 	0x00302122
1c007998:	08083000 	0x08083000
1c00799c:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c0079a0:	21201800 	sc.w	$r0,$r0,8216(0x2018)
1c0079a4:	001c2221 	mul.w	$r1,$r17,$r8
1c0079a8:	40800000 	beqz	$r0,32768(0x8000) # 1c00f9a8 <_sidata+0x6b80>
1c0079ac:	0000f830 	0x0000f830
1c0079b0:	24050600 	ldptr.w	$r0,$r16,1284(0x504)
1c0079b4:	24243f24 	ldptr.w	$r4,$r25,9276(0x243c)
1c0079b8:	8888f800 	0x8888f800
1c0079bc:	00080888 	bytepick.w	$r8,$r4,$r2,0x0
1c0079c0:	20201900 	ll.w	$r0,$r8,8216(0x2018)
1c0079c4:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c0079c8:	8810e000 	0x8810e000
1c0079cc:	00009088 	0x00009088
1c0079d0:	20110f00 	ll.w	$r0,$r24,4364(0x110c)
1c0079d4:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c0079d8:	08081800 	0x08081800
1c0079dc:	00186888 	sra.w	$r8,$r4,$r26
1c0079e0:	3e000000 	0x3e000000
1c0079e4:	00000001 	0x00000001
1c0079e8:	08887000 	0x08887000
1c0079ec:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c0079f0:	21221c00 	sc.w	$r0,$r0,8732(0x221c)
1c0079f4:	001c2221 	mul.w	$r1,$r17,$r8
1c0079f8:	0808f000 	0x0808f000
1c0079fc:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007a00:	22120100 	ll.d	$r0,$r8,4608(0x1200)
1c007a04:	000f1122 	bytepick.d	$r2,$r9,$r4,0x6
1c007a08:	c0000000 	0xc0000000
1c007a0c:	000000c0 	0x000000c0
1c007a10:	30000000 	0x30000000
1c007a14:	00000030 	0x00000030
1c007a18:	80000000 	0x80000000
1c007a1c:	00000000 	0x00000000
1c007a20:	e0000000 	0xe0000000
1c007a24:	00000000 	0x00000000
1c007a28:	40800000 	beqz	$r0,32768(0x8000) # 1c00fa28 <_sidata+0x6c00>
1c007a2c:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c007a30:	04020100 	csrxchg	$r0,$r8,0x80
1c007a34:	00201008 	div.w	$r8,$r0,$r4
1c007a38:	40404000 	beqz	$r0,16448(0x4040) # 1c00ba78 <_sidata+0x2c50>
1c007a3c:	00404040 	0x00404040
1c007a40:	02020200 	slti	$r0,$r16,128(0x80)
1c007a44:	00020202 	0x00020202
1c007a48:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c007a4c:	00008040 	0x00008040
1c007a50:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c007a54:	00010204 	0x00010204
1c007a58:	08487000 	0x08487000
1c007a5c:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c007a60:	30000000 	0x30000000
1c007a64:	00000037 	0x00000037
1c007a68:	28c830c0 	ld.d	$r0,$r6,524(0x20c)
1c007a6c:	00e010e8 	bstrpick.d	$r8,$r7,0x20,0x4
1c007a70:	28271807 	ld.b	$r7,$r0,-1594(0x9c6)
1c007a74:	0017282f 	sll.w	$r15,$r1,$r10
1c007a78:	38c00000 	0x38c00000
1c007a7c:	000000e0 	0x000000e0
1c007a80:	02233c20 	slti	$r0,$r1,-1841(0x8cf)
1c007a84:	20382702 	ll.w	$r2,$r24,14372(0x3824)
1c007a88:	8888f808 	0x8888f808
1c007a8c:	00007088 	0x00007088
1c007a90:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c007a94:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c007a98:	080830c0 	0x080830c0
1c007a9c:	00380808 	0x00380808
1c007aa0:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c007aa4:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c007aa8:	0808f808 	0x0808f808
1c007aac:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007ab0:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c007ab4:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c007ab8:	8888f808 	0x8888f808
1c007abc:	001008e8 	add.w	$r8,$r7,$r2
1c007ac0:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c007ac4:	00182023 	sra.w	$r3,$r1,$r8
1c007ac8:	8888f808 	0x8888f808
1c007acc:	001008e8 	add.w	$r8,$r7,$r2
1c007ad0:	00203f20 	div.w	$r0,$r25,$r15
1c007ad4:	00000003 	0x00000003
1c007ad8:	080830c0 	0x080830c0
1c007adc:	00003808 	revb.2w	$r8,$r0
1c007ae0:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c007ae4:	00021e22 	0x00021e22
1c007ae8:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c007aec:	08f80800 	0x08f80800
1c007af0:	01213f20 	0x01213f20
1c007af4:	203f2101 	ll.w	$r1,$r8,16160(0x3f20)
1c007af8:	f8080800 	0xf8080800
1c007afc:	00000808 	0x00000808
1c007b00:	3f202000 	0x3f202000
1c007b04:	00002020 	clo.d	$r0,$r1
1c007b08:	08080000 	0x08080000
1c007b0c:	000808f8 	bytepick.w	$r24,$r7,$r2,0x0
1c007b10:	808080c0 	0x808080c0
1c007b14:	0000007f 	0x0000007f
1c007b18:	c088f808 	0xc088f808
1c007b1c:	00081828 	bytepick.w	$r8,$r1,$r6,0x0
1c007b20:	01203f20 	0x01203f20
1c007b24:	00203826 	div.w	$r6,$r1,$r14
1c007b28:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c007b2c:	00000000 	0x00000000
1c007b30:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c007b34:	00302020 	0x00302020
1c007b38:	00f8f808 	bstrpick.d	$r8,$r0,0x38,0x3e
1c007b3c:	0008f8f8 	bytepick.w	$r24,$r7,$r30,0x1
1c007b40:	3e013f20 	0x3e013f20
1c007b44:	00203f01 	div.w	$r1,$r24,$r15
1c007b48:	c030f808 	0xc030f808
1c007b4c:	08f80800 	0x08f80800
1c007b50:	00203f20 	div.w	$r0,$r25,$r15
1c007b54:	003f1807 	0x003f1807
1c007b58:	080810e0 	0x080810e0
1c007b5c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007b60:	2020100f 	ll.w	$r15,$r0,8208(0x2010)
1c007b64:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c007b68:	0808f808 	0x0808f808
1c007b6c:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c007b70:	01213f20 	0x01213f20
1c007b74:	00000101 	0x00000101
1c007b78:	080810e0 	0x080810e0
1c007b7c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007b80:	2828100f 	ld.b	$r15,$r0,-1532(0xa04)
1c007b84:	004f5030 	0x004f5030
1c007b88:	8888f808 	0x8888f808
1c007b8c:	00708888 	bstrpick.w	$r8,$r4,0x10,0x2
1c007b90:	00203f20 	div.w	$r0,$r25,$r15
1c007b94:	20300c03 	ll.w	$r3,$r0,12300(0x300c)
1c007b98:	08887000 	0x08887000
1c007b9c:	00380808 	0x00380808
1c007ba0:	21203800 	sc.w	$r0,$r0,8248(0x2038)
1c007ba4:	001c2221 	mul.w	$r1,$r17,$r8
1c007ba8:	f8080818 	0xf8080818
1c007bac:	00180808 	sra.w	$r8,$r0,$r2
1c007bb0:	3f200000 	0x3f200000
1c007bb4:	00000020 	0x00000020
1c007bb8:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c007bbc:	08f80800 	0x08f80800
1c007bc0:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c007bc4:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c007bc8:	00887808 	bstrins.d	$r8,$r0,0x8,0x1e
1c007bcc:	0838c800 	0x0838c800
1c007bd0:	38070000 	0x38070000
1c007bd4:	0000010e 	0x0000010e
1c007bd8:	f800f808 	0xf800f808
1c007bdc:	0008f800 	bytepick.w	$r0,$r0,$r30,0x1
1c007be0:	013e0300 	0x013e0300
1c007be4:	0000033e 	0x0000033e
1c007be8:	80681808 	0x80681808
1c007bec:	08186880 	fmadd.s	$f0,$f4,$f26,$f16
1c007bf0:	032c3020 	lu52i.d	$r0,$r1,-1268(0xb0c)
1c007bf4:	20302c03 	ll.w	$r3,$r0,12332(0x302c)
1c007bf8:	00c83808 	bstrpick.d	$r8,$r0,0x8,0xe
1c007bfc:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c007c00:	3f200000 	0x3f200000
1c007c04:	00000020 	0x00000020
1c007c08:	08080810 	0x08080810
1c007c0c:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c007c10:	21263820 	sc.w	$r0,$r1,9784(0x2638)
1c007c14:	00182020 	sra.w	$r0,$r1,$r8
1c007c18:	fe000000 	0xfe000000
1c007c1c:	00020202 	0x00020202
1c007c20:	7f000000 	0x7f000000
1c007c24:	00404040 	0x00404040
1c007c28:	c0380400 	0xc0380400
1c007c2c:	00000000 	0x00000000
1c007c30:	01000000 	0x01000000
1c007c34:	00c03806 	bstrpick.d	$r6,$r0,0x0,0xe
1c007c38:	02020200 	slti	$r0,$r16,128(0x80)
1c007c3c:	000000fe 	0x000000fe
1c007c40:	40404000 	beqz	$r0,16448(0x4040) # 1c00bc80 <_sidata+0x2e58>
1c007c44:	0000007f 	0x0000007f
1c007c48:	02040000 	slti	$r0,$r0,256(0x100)
1c007c4c:	00000402 	0x00000402
	...
1c007c60:	80808080 	0x80808080
1c007c64:	80808080 	0x80808080
1c007c68:	04020200 	csrxchg	$r0,$r16,0x80
	...
1c007c78:	80800000 	0x80800000
1c007c7c:	00000080 	0x00000080
1c007c80:	24241900 	ldptr.w	$r0,$r8,9240(0x2418)
1c007c84:	00203f12 	div.w	$r18,$r24,$r15
1c007c88:	8000f010 	0x8000f010
1c007c8c:	00000080 	0x00000080
1c007c90:	20113f00 	ll.w	$r0,$r24,4412(0x113c)
1c007c94:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c007c98:	80000000 	0x80000000
1c007c9c:	00008080 	0x00008080
1c007ca0:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c007ca4:	00112020 	sub.w	$r0,$r1,$r8
1c007ca8:	80800000 	0x80800000
1c007cac:	00f09080 	bstrpick.d	$r0,$r4,0x30,0x24
1c007cb0:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c007cb4:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c007cb8:	80800000 	0x80800000
1c007cbc:	00008080 	0x00008080
1c007cc0:	24241f00 	ldptr.w	$r0,$r24,9244(0x241c)
1c007cc4:	00172424 	sll.w	$r4,$r1,$r9
1c007cc8:	e0808000 	0xe0808000
1c007ccc:	00209090 	mod.w	$r16,$r4,$r4
1c007cd0:	3f202000 	0x3f202000
1c007cd4:	00002020 	clo.d	$r0,$r1
1c007cd8:	80800000 	0x80800000
1c007cdc:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007ce0:	94946b00 	0x94946b00
1c007ce4:	00609394 	bstrpick.w	$r20,$r28,0x0,0x4
1c007ce8:	8000f010 	0x8000f010
1c007cec:	00008080 	0x00008080
1c007cf0:	00213f20 	div.wu	$r0,$r25,$r15
1c007cf4:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c007cf8:	98988000 	0x98988000
1c007cfc:	00000000 	0x00000000
1c007d00:	3f202000 	0x3f202000
1c007d04:	00002020 	clo.d	$r0,$r1
1c007d08:	80000000 	0x80000000
1c007d0c:	00009898 	0x00009898
1c007d10:	8080c000 	0x8080c000
1c007d14:	00007f80 	0x00007f80
1c007d18:	0000f010 	0x0000f010
1c007d1c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007d20:	06243f20 	cacop	0x0,$r25,-1777(0x90f)
1c007d24:	00203029 	div.w	$r9,$r1,$r12
1c007d28:	f8101000 	0xf8101000
1c007d2c:	00000000 	0x00000000
1c007d30:	3f202000 	0x3f202000
1c007d34:	00002020 	clo.d	$r0,$r1
1c007d38:	80808080 	0x80808080
1c007d3c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007d40:	00203f20 	div.w	$r0,$r25,$r15
1c007d44:	3f00203f 	0x3f00203f
1c007d48:	80008080 	0x80008080
1c007d4c:	00008080 	0x00008080
1c007d50:	00213f20 	div.wu	$r0,$r25,$r15
1c007d54:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c007d58:	80800000 	0x80800000
1c007d5c:	00008080 	0x00008080
1c007d60:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c007d64:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c007d68:	80008080 	0x80008080
1c007d6c:	00000080 	0x00000080
1c007d70:	2091ff80 	ll.w	$r0,$r28,-28164(0x91fc)
1c007d74:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c007d78:	80000000 	0x80000000
1c007d7c:	00800080 	bstrins.d	$r0,$r4,0x0,0x0
1c007d80:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c007d84:	80ff9120 	0x80ff9120
1c007d88:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007d8c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007d90:	213f2020 	sc.w	$r0,$r1,16160(0x3f20)
1c007d94:	00010020 	asrtle.d	$r1,$r0
1c007d98:	80800000 	0x80800000
1c007d9c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007da0:	24243300 	ldptr.w	$r0,$r24,9264(0x2430)
1c007da4:	00192424 	srl.d	$r4,$r1,$r9
1c007da8:	e0808000 	0xe0808000
1c007dac:	00008080 	0x00008080
1c007db0:	1f000000 	pcaddu18i	$r0,-524288(0x80000)
1c007db4:	00102020 	add.w	$r0,$r1,$r8
1c007db8:	00008080 	0x00008080
1c007dbc:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c007dc0:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c007dc4:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c007dc8:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007dcc:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007dd0:	300c0300 	0x300c0300
1c007dd4:	0000030c 	0x0000030c
1c007dd8:	80008080 	0x80008080
1c007ddc:	80800080 	0x80800080
1c007de0:	0c300e01 	0x0c300e01
1c007de4:	01063807 	0x01063807
1c007de8:	80808000 	0x80808000
1c007dec:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c007df0:	0e312000 	0x0e312000
1c007df4:	0020312e 	div.w	$r14,$r9,$r12
1c007df8:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007dfc:	80808000 	0x80808000
1c007e00:	78868100 	0x78868100
1c007e04:	00010618 	0x00010618
1c007e08:	80808000 	0x80808000
1c007e0c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007e10:	2c302100 	vld	$vr0,$r8,-1016(0xc08)
1c007e14:	00302122 	0x00302122
1c007e18:	00000000 	0x00000000
1c007e1c:	0202fc00 	slti	$r0,$r0,191(0xbf)
1c007e20:	00000000 	0x00000000
1c007e24:	40403e01 	beqz	$r16,278588(0x4403c) # 1c04be60 <_sidata+0x43038>
1c007e28:	00000000 	0x00000000
1c007e2c:	000000ff 	0x000000ff
1c007e30:	00000000 	0x00000000
1c007e34:	000000ff 	0x000000ff
1c007e38:	00fc0202 	bstrpick.d	$r2,$r16,0x3c,0x0
1c007e3c:	00000000 	0x00000000
1c007e40:	013e4040 	0x013e4040
1c007e44:	00000000 	0x00000000
1c007e48:	02010200 	slti	$r0,$r16,64(0x40)
1c007e4c:	00020402 	0x00020402
	...

1c007e58 <tfont16>:
1c007e58:	00be9be5 	bstrins.d	$r5,$r31,0x3e,0x26
1c007e5c:	224202fe 	ll.d	$r30,$r23,16896(0x4200)
1c007e60:	52925e32 	b	-120941988(0x8ca925c) # 14cb10bc <_start-0x734ef44>
1c007e64:	02021232 	slti	$r18,$r17,132(0x84)
1c007e68:	000000fe 	0x000000fe
1c007e6c:	424242ff 	beqz	$r23,-114112(0x7e4240) # 1bfec0ac <_start-0x13f54>
1c007e70:	69645551 	bltu	$r10,$r17,91220(0x16454) # 1c01e2c4 <_sidata+0x1549c>
1c007e74:	42424241 	beqz	$r18,410176(0x64240) # 1c06c0b4 <_sidata+0x6328c>
1c007e78:	e60000ff 	0xe60000ff
1c007e7c:	08088796 	0x08088796
1c007e80:	08c83808 	0x08c83808
1c007e84:	08080e09 	0x08080e09
1c007e88:	080838c8 	0x080838c8
1c007e8c:	80800008 	0x80800008
1c007e90:	11204040 	addu16i.d	$r0,$r2,18448(0x4810)
1c007e94:	110a040a 	addu16i.d	$r10,$r0,17025(0x4281)
1c007e98:	80404020 	0x80404020
1c007e9c:	98e60080 	0x98e60080
1c007ea0:	000000be 	0x000000be
1c007ea4:	929292fe 	0x929292fe
1c007ea8:	92929292 	0x92929292
1c007eac:	000000fe 	0x000000fe
1c007eb0:	44424000 	bnez	$r0,16960(0x4240) # 1c00c0f0 <_sidata+0x32c8>
1c007eb4:	407f4058 	beqz	$r2,-2064576(0x607f40) # 1be0fdf4 <_start-0x1f020c>
1c007eb8:	407f4040 	beqz	$r2,32576(0x7f40) # 1c00fdf8 <_sidata+0x6fd0>
1c007ebc:	40464850 	beqz	$r2,-4176312(0x404648) # 1bc0c504 <_start-0x3f3afc>
1c007ec0:	baa4e700 	0xbaa4e700
1c007ec4:	42424040 	beqz	$r2,148032(0x24240) # 1c02c104 <_sidata+0x232dc>
1c007ec8:	c2424242 	0xc2424242
1c007ecc:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac10c <_sidata+0xa32e4>
1c007ed0:	00404042 	0x00404042
1c007ed4:	06081020 	cacop	0x0,$r1,516(0x204)
1c007ed8:	7f804000 	0x7f804000
1c007edc:	02000000 	slti	$r0,$r0,0
1c007ee0:	00300804 	0x00300804
1c007ee4:	109eaee5 	addu16i.d	$r5,$r23,10155(0x27ab)
1c007ee8:	1484040c 	lu12i.w	$r12,270368(0x42020)
1c007eec:	f4060564 	0xf4060564
1c007ef0:	04040404 	csrrd	$r4,0x101
1c007ef4:	04000c14 	csrrd	$r20,0x3
1c007ef8:	47448484 	bnez	$r4,1262724(0x134484) # 1c13c37c <_sidata+0x133554>
1c007efc:	070c1424 	0x070c1424
1c007f00:	4424140c 	bnez	$r0,3154964(0x302414) # 1c30a314 <_sidata+0x3014ec>
1c007f04:	e9000484 	0xe9000484
1c007f08:	fa028caa 	0xfa028caa
1c007f0c:	80fe8282 	0x80fe8282
1c007f10:	4c502040 	jirl	$r0,$r2,20512(0x5020)
1c007f14:	20504c43 	ll.w	$r3,$r2,20556(0x504c)
1c007f18:	18080040 	pcaddi	$r0,16386(0x4002)
1c007f1c:	3f448448 	0x3f448448
1c007f20:	41584440 	beqz	$r2,88132(0x15844) # 1c01d764 <_sidata+0x1493c>
1c007f24:	4758604e 	bnez	$r2,3889248(0x3b5860) # 1c3bd784 <_sidata+0x3b495c>
1c007f28:	b8e60040 	0xb8e60040
1c007f2c:	026010a9 	sltui	$r9,$r5,-2044(0x804)
1c007f30:	fe00008c 	0xfe00008c
1c007f34:	92929292 	0x92929292
1c007f38:	0000fe92 	0x0000fe92
1c007f3c:	7e040400 	0x7e040400
1c007f40:	427e4001 	beqz	$r0,425536(0x67e40) # 1c06fd80 <_sidata+0x66f58>
1c007f44:	7e427e42 	0x7e427e42
1c007f48:	407e4242 	beqz	$r18,556608(0x87e40) # 1c08fd88 <_sidata+0x86f60>
1c007f4c:	bfb9e600 	0xbfb9e600
1c007f50:	8c026010 	0x8c026010
1c007f54:	9292fe00 	0x9292fe00
1c007f58:	92929292 	0x92929292
1c007f5c:	000000fe 	0x000000fe
1c007f60:	017e0404 	0x017e0404
1c007f64:	7f504844 	0x7f504844
1c007f68:	507f4040 	b	16809792(0x1007f40) # 1d00fea8 <_sidata+0x1007080>
1c007f6c:	00404448 	0x00404448
1c007f70:	00a6bae5 	bstrins.d	$r5,$r23,0x26,0x2e
1c007f74:	2424fc00 	ldptr.w	$r0,$r0,9468(0x24fc)
1c007f78:	2625fc24 	ldptr.d	$r4,$r1,9724(0x25fc)
1c007f7c:	2424fc24 	ldptr.w	$r4,$r1,9468(0x24fc)
1c007f80:	40000424 	beqz	$r1,1048580(0x100004) # 1c107f84 <_sidata+0xff15c>
1c007f84:	84808f30 	0x84808f30
1c007f88:	2525554c 	stptr.w	$r12,$r10,9556(0x2554)
1c007f8c:	804c5525 	0x804c5525
1c007f90:	e6008080 	0xe6008080
1c007f94:	101080a3 	addu16i.d	$r3,$r5,1056(0x420)
1c007f98:	5090ffd0 	b	-12545796(0xf4090fc) # 1b411094 <_start-0xbeef6c>
1c007f9c:	434c5020 	beqz	$r1,216144(0x34c50) # 1c03cbec <_sidata+0x33dc4>
1c007fa0:	4020504c 	beqz	$r2,3154000(0x302050) # 1c309ff0 <_sidata+0x3011c8>
1c007fa4:	03040040 	lu52i.d	$r0,$r2,256(0x100)
1c007fa8:	4100ff00 	beqz	$r24,65788(0x100fc) # 1c0180a4 <_sidata+0xf27c>
1c007fac:	4e415844 	jirl	$r4,$r2,-114344(0x24158)
1c007fb0:	40475860 	beqz	$r3,18264(0x4758) # 1c00c708 <_sidata+0x38e0>
1c007fb4:	b5e60040 	0xb5e60040
1c007fb8:	0260108b 	sltui	$r11,$r4,-2044(0x804)
1c007fbc:	02fe008c 	addi.d	$r12,$r4,-128(0xf80)
1c007fc0:	00fe02f2 	bstrpick.d	$r18,$r23,0x3e,0x0
1c007fc4:	00ff00f8 	bstrpick.d	$r24,$r7,0x3f,0x0
1c007fc8:	7e040400 	0x7e040400
1c007fcc:	30478001 	vldrepl.h	$vr1,$r0,960(0x3c0)
1c007fd0:	0027100f 	crcc.w.w.w	$r15,$r0,$r4
1c007fd4:	007f8047 	bstrpick.w	$r7,$r2,0x1f,0x0
1c007fd8:	9eaee500 	0x9eaee500
1c007fdc:	84040c10 	0x84040c10
1c007fe0:	06056414 	cacop	0x14,$r0,345(0x159)
1c007fe4:	040404f4 	csrxchg	$r20,$r7,0x101
1c007fe8:	000c1404 	bytepick.d	$r4,$r0,$r5,0x0
1c007fec:	44848404 	bnez	$r0,1082500(0x108484) # 1c110470 <_sidata+0x107648>
1c007ff0:	0c142447 	fcmp.cun.s	$fcc7,$f2,$f9
1c007ff4:	24140c07 	ldptr.w	$r7,$r0,5132(0x140c)
1c007ff8:	00048444 	alsl.w	$r4,$r2,$r1,0x2
1c007ffc:	028caae9 	addi.w	$r9,$r23,810(0x32a)
1c008000:	fe8282fa 	0xfe8282fa
1c008004:	50204080 	b	33562688(0x2002040) # 1e00a044 <_sidata+0x200121c>
1c008008:	504c434c 	b	-47166400(0xd304c40) # 1930cc48 <_start-0x2cf33b8>
1c00800c:	08004020 	0x08004020
1c008010:	44844818 	bnez	$r0,-2063288(0x608448) # 1be10458 <_start-0x1efba8>
1c008014:	5844403f 	beq	$r1,$r31,17472(0x4440) # 1c00c454 <_sidata+0x362c>
1c008018:	58604e41 	beq	$r18,$r1,24652(0x604c) # 1c00e064 <_sidata+0x523c>
1c00801c:	e2004047 	0xe2004047
1c008020:	09068384 	0x09068384
1c008024:	0cf8e609 	0x0cf8e609
1c008028:	02020204 	slti	$r4,$r16,128(0x80)
1c00802c:	1e040202 	pcaddu18i	$r2,8208(0x2010)
1c008030:	00000000 	0x00000000
1c008034:	301f0700 	0x301f0700
1c008038:	40404020 	beqz	$r1,16448(0x4040) # 1c00c078 <_sidata+0x3250>
1c00803c:	10204040 	addu16i.d	$r0,$r2,2064(0x810)
1c008040:	a4e70000 	0xa4e70000
1c008044:	424040ba 	beqz	$r5,-1425344(0x6a4040) # 1beac084 <_start-0x153f7c>
1c008048:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac288 <_sidata+0xa3460>
1c00804c:	424242c2 	beqz	$r22,672320(0xa4240) # 1c0ac28c <_sidata+0xa3464>
1c008050:	40404242 	beqz	$r18,540736(0x84040) # 1c08c090 <_sidata+0x83268>
1c008054:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c008058:	80400006 	0x80400006
1c00805c:	0000007f 	0x0000007f
1c008060:	30080402 	0x30080402
1c008064:	be98e600 	0xbe98e600
1c008068:	fe000000 	0xfe000000
1c00806c:	92929292 	0x92929292
1c008070:	fe929292 	0xfe929292
1c008074:	00000000 	0x00000000
1c008078:	58444240 	beq	$r18,$r0,17472(0x4440) # 1c00c4b8 <_sidata+0x3690>
1c00807c:	40407f40 	beqz	$r26,16508(0x407c) # 1c00c0f8 <_sidata+0x32d0>
1c008080:	50407f40 	b	-50315140(0xd00407c) # 1900c0fc <_start-0x2ff3f04>
1c008084:	00404648 	0x00404648
1c008088:	109eaee5 	addu16i.d	$r5,$r23,10155(0x27ab)
1c00808c:	1484040c 	lu12i.w	$r12,270368(0x42020)
1c008090:	f4060564 	0xf4060564
1c008094:	04040404 	csrrd	$r4,0x101
1c008098:	04000c14 	csrrd	$r20,0x3
1c00809c:	47448484 	bnez	$r4,1262724(0x134484) # 1c13c520 <_sidata+0x1336f8>
1c0080a0:	070c1424 	0x070c1424
1c0080a4:	4424140c 	bnez	$r0,3154964(0x302414) # 1c30a4b8 <_sidata+0x301690>
1c0080a8:	e9000484 	0xe9000484
1c0080ac:	fa028caa 	0xfa028caa
1c0080b0:	80fe8282 	0x80fe8282
1c0080b4:	4c502040 	jirl	$r0,$r2,20512(0x5020)
1c0080b8:	20504c43 	ll.w	$r3,$r2,20556(0x504c)
1c0080bc:	18080040 	pcaddi	$r0,16386(0x4002)
1c0080c0:	3f448448 	0x3f448448
1c0080c4:	41584440 	beqz	$r2,88132(0x15844) # 1c01d908 <_sidata+0x14ae0>
1c0080c8:	4758604e 	bnez	$r2,3889248(0x3b5860) # 1c3bd928 <_sidata+0x3b4b00>
1c0080cc:	99e70040 	0x99e70040
1c0080d0:	e20202be 	0xe20202be
1c0080d4:	2a322222 	ld.bu	$r2,$r17,-888(0xc88)
1c0080d8:	22222226 	ll.d	$r6,$r17,8736(0x2220)
1c0080dc:	0202e222 	slti	$r2,$r17,184(0xb8)
1c0080e0:	ff000000 	0xff000000
1c0080e4:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac324 <_sidata+0xa34fc>
1c0080e8:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac328 <_sidata+0xa3500>
1c0080ec:	0000ff42 	0x0000ff42
1c0080f0:	91a7e700 	0x91a7e700
1c0080f4:	fea42424 	0xfea42424
1c0080f8:	220022a3 	ll.d	$r3,$r21,32(0x20)
1c0080fc:	ff0000cc 	0xff0000cc
1c008100:	00000000 	0x00000000
1c008104:	ff010608 	0xff010608
1c008108:	04040100 	csrxchg	$r0,$r8,0x100
1c00810c:	ff040404 	0xff040404
1c008110:	00020202 	0x00020202
1c008114:	84a38de8 	0x84a38de8
1c008118:	2f242464 	0x2f242464
1c00811c:	24a42424 	ldptr.w	$r4,$r1,-23516(0xa424)
1c008120:	24242f24 	ldptr.w	$r4,$r25,9260(0x242c)
1c008124:	400064a4 	beqz	$r5,1048676(0x100064) # 1c108188 <_sidata+0xff360>
1c008128:	12222242 	addu16i.d	$r2,$r18,-30584(0x8888)
1c00812c:	06ff060a 	0x06ff060a
1c008130:	2222120a 	ll.d	$r10,$r16,8720(0x2210)
1c008134:	e5004042 	0xe5004042
1c008138:	20409b88 	ll.w	$r8,$r28,16536(0x4098)
1c00813c:	44434cd0 	bnez	$r6,-4177076(0x40434c) # 1bc0c488 <_start-0x3f3b78>
1c008140:	002010c8 	div.w	$r8,$r6,$r4
1c008144:	ff0000f8 	0xff0000f8
1c008148:	00000000 	0x00000000
1c00814c:	4844403f 	bceqz	$fcc1,-244672(0x7c4440) # 1bfcc58c <_start-0x33a74>
1c008150:	00704047 	bstrins.w	$r7,$r2,0x10,0x10
1c008154:	7f80400f 	0x7f80400f
1c008158:	b0e80000 	0xb0e80000
1c00815c:	cc4240a2 	0xcc4240a2
1c008160:	56fc0000 	bl	195584(0x2fc00) # 1c037d60 <_sidata+0x2ef38>
1c008164:	1080fc55 	addu16i.d	$r21,$r2,8255(0x203f)
1c008168:	1010ff10 	addu16i.d	$r16,$r24,1087(0x43f)
1c00816c:	3f000000 	0x3f000000
1c008170:	4a132a10 	0x4a132a10
1c008174:	43007f86 	beqz	$r28,1769596(0x1b007c) # 1c1b81f0 <_sidata+0x1af3c8>
1c008178:	00007f80 	0x00007f80
1c00817c:	9381e900 	0x9381e900
1c008180:	cc424040 	0xcc424040
1c008184:	aae90800 	0xaae90800
1c008188:	aaa8a8b8 	0xaaa8a8b8
1c00818c:	000008e9 	0x000008e9
1c008190:	1f204000 	pcaddu18i	$r0,-458240(0x90200)
1c008194:	4a5f4020 	bceqz	$fcc1,155456(0x25f40) # 1c02e0d4 <_sidata+0x252ac>
1c008198:	4a4a4a4a 	0x4a4a4a4a
1c00819c:	0040405f 	0x0040405f
1c0081a0:	1090bae6 	addu16i.d	$r6,$r23,9262(0x242e)
1c0081a4:	008c0260 	bstrins.d	$r0,$r19,0xc,0x0
1c0081a8:	52f202fe 	b	-67440128(0xbfaf200) # 17fb73a8 <_start-0x4048c58>
1c0081ac:	5252565a 	b	-110472620(0x96a5254) # 156ad400 <_start-0x6952c00>
1c0081b0:	040002f2 	csrxchg	$r18,$r23,0x0
1c0081b4:	30417e04 	vldrepl.h	$vr4,$r16,190(0xbe)
1c0081b8:	4913200f 	bceqz	$fcc0,4002592(0x3d1320) # 1c3d94d8 <_sidata+0x3d06b0>
1c0081bc:	09017f81 	0x09017f81
1c0081c0:	e6002013 	0xe6002013
1c0081c4:	601096b9 	blt	$r21,$r25,4244(0x1094) # 1c009258 <_sidata+0x430>
1c0081c8:	88008c02 	0x88008c02
1c0081cc:	8888ff88 	0x8888ff88
1c0081d0:	2222fe00 	ll.d	$r0,$r16,8956(0x22fc)
1c0081d4:	040400fe 	csrxchg	$r30,$r7,0x100
1c0081d8:	1f00017e 	pcaddu18i	$r30,-524277(0x8000b)
1c0081dc:	9f080808 	0x9f080808
1c0081e0:	82421f60 	0x82421f60
1c0081e4:	8de5007f 	0x8de5007f
1c0081e8:	24e40497 	ldptr.w	$r23,$r4,-7164(0xe404)
1c0081ec:	24a46424 	ldptr.w	$r4,$r1,-23452(0xa464)
1c0081f0:	64a4243f 	bge	$r1,$r31,42020(0xa424) # 1c012614 <_sidata+0x97ec>
1c0081f4:	04e42424 	csrwr	$r4,0x3909
1c0081f8:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c0081fc:	09090908 	0x09090908
1c008200:	0909097f 	0x0909097f
1c008204:	007f8048 	bstrpick.w	$r8,$r2,0x1f,0x0
1c008208:	a5b7e500 	0xa5b7e500
1c00820c:	04040400 	csrrd	$r0,0x101
1c008210:	fc040404 	0xfc040404
1c008214:	04040404 	csrrd	$r4,0x101
1c008218:	00000404 	0x00000404
1c00821c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008220:	3f202020 	0x3f202020
1c008224:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008228:	00202020 	div.w	$r0,$r1,$r8
1c00822c:	009ab8e4 	bstrins.d	$r4,$r7,0x1a,0x2e
1c008230:	00806010 	bstrins.d	$r16,$r0,0x0,0x18
1c008234:	000000ff 	0x000000ff
1c008238:	c00000ff 	0xc00000ff
1c00823c:	40000030 	beqz	$r1,-4194304(0x400000) # 1bc0823c <_start-0x3f7dc4>
1c008240:	40434040 	beqz	$r2,17216(0x4340) # 1c00c580 <_sidata+0x3758>
1c008244:	4040407f 	beqz	$r3,-245696(0x7c4040) # 1bfcc284 <_start-0x33d7c>
1c008248:	4041427f 	beqz	$r19,-245440(0x7c4140) # 1bfcc388 <_start-0x33c78>
1c00824c:	e5004040 	0xe5004040
1c008250:	2020a7a4 	ll.w	$r4,$r29,8356(0x20a4)
1c008254:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008258:	2020ff20 	ll.w	$r0,$r25,8444(0x20fc)
1c00825c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008260:	80800020 	0x80800020
1c008264:	0c102040 	fcmp.caf.s	$fcc0,$f2,$f8
1c008268:	0c030003 	0x0c030003
1c00826c:	80402010 	0x80402010
1c008270:	ade50080 	0xade50080
1c008274:	113040a6 	addu16i.d	$r6,$r5,19472(0x4c10)
1c008278:	91909096 	0x91909096
1c00827c:	98909096 	0x98909096
1c008280:	30501314 	vldrepl.h	$vr20,$r24,-2040(0x808)
1c008284:	04040400 	csrrd	$r0,0x101
1c008288:	84440404 	0x84440404
1c00828c:	0405067e 	csrxchg	$r30,$r19,0x141
1c008290:	04040404 	csrrd	$r4,0x101
1c008294:	a8bde800 	0xa8bde800
1c008298:	e88fb8c8 	0xe88fb8c8
1c00829c:	10108888 	addu16i.d	$r8,$r4,1058(0x422)
1c0082a0:	f01010ff 	0xf01010ff
1c0082a4:	00000000 	0x00000000
1c0082a8:	ff081808 	0xff081808
1c0082ac:	30408404 	vldrepl.h	$vr4,$r0,66(0x42)
1c0082b0:	3f00000f 	0x3f00000f
1c0082b4:	00784040 	bstrins.w	$r0,$r2,0x18,0x10
1c0082b8:	409381e9 	beqz	$r15,2397056(0x249380) # 1c251638 <_sidata+0x248810>
1c0082bc:	00cc4240 	bstrpick.d	$r0,$r18,0xc,0x10
1c0082c0:	b8aae908 	0xb8aae908
1c0082c4:	e9aaa8a8 	0xe9aaa8a8
1c0082c8:	00000008 	0x00000008
1c0082cc:	201f2040 	ll.w	$r0,$r2,7968(0x1f20)
1c0082d0:	4a4a5f40 	0x4a4a5f40
1c0082d4:	5f4a4a4a 	bne	$r18,$r10,-46520(0x34a48) # 1bffcd1c <_start-0x32e4>
1c0082d8:	e4004040 	0xe4004040
1c0082dc:	0808a4ba 	0x0808a4ba
1c0082e0:	08086888 	0x08086888
1c0082e4:	08080e09 	0x08080e09
1c0082e8:	88482888 	0x88482888
1c0082ec:	81800008 	0x81800008
1c0082f0:	22214040 	ll.d	$r0,$r2,8512(0x2140)
1c0082f4:	22140814 	ll.d	$r20,$r0,5128(0x1408)
1c0082f8:	81804041 	0x81804041
1c0082fc:	80e90080 	0x80e90080
1c008300:	cc42409a 	0xcc42409a
1c008304:	22e20000 	ll.d	$r0,$r0,-7680(0xe200)
1c008308:	2af22a2a 	preld	0xa,$r17,-886(0xc8a)
1c00830c:	00e02226 	bstrpick.d	$r6,$r17,0x20,0x8
1c008310:	3f408000 	0x3f408000
1c008314:	89ff8040 	0x89ff8040
1c008318:	89bf8989 	0x89bf8989
1c00831c:	80bfc9a9 	0x80bfc9a9
1c008320:	a6ade500 	0xa6ade500
1c008324:	96113040 	0x96113040
1c008328:	96919090 	0x96919090
1c00832c:	14989090 	lu12i.w	$r16,312452(0x4c484)
1c008330:	00305013 	0x00305013
1c008334:	04040404 	csrrd	$r4,0x101
1c008338:	7e844404 	0x7e844404
1c00833c:	04040506 	csrxchg	$r6,$r8,0x101
1c008340:	00040404 	alsl.w	$r4,$r0,$r1,0x1
1c008344:	00a299e9 	bstrins.d	$r9,$r15,0x22,0x26
1c008348:	865a22fe 	0x865a22fe
1c00834c:	24240c10 	ldptr.w	$r16,$r0,9228(0x240c)
1c008350:	24242625 	ldptr.w	$r5,$r17,9252(0x2424)
1c008354:	00000c14 	0x00000c14
1c008358:	070804ff 	0x070804ff
1c00835c:	0f314180 	0x0f314180
1c008360:	413f0101 	beqz	$r8,343808(0x53f00) # 1c05c260 <_sidata+0x53438>
1c008364:	00007141 	0x00007141

1c008368 <tfont32>:
1c008368:	00be99e7 	bstrins.d	$r7,$r15,0x3e,0x26
1c00836c:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c008370:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008374:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008378:	70f0f010 	vsrlr.h	$vr16,$vr0,$vr28
1c00837c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008380:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008384:	10181010 	addu16i.d	$r16,$r0,1540(0x604)
	...
1c008390:	f8fc0000 	0xf8fc0000
1c008394:	08080808 	0x08080808
1c008398:	08080b0c 	0x08080b0c
1c00839c:	08080808 	0x08080808
1c0083a0:	f8fc0808 	0xf8fc0808
	...
1c0083b0:	ffff0000 	0xffff0000
1c0083b4:	08080808 	0x08080808
1c0083b8:	08080808 	0x08080808
1c0083bc:	08080808 	0x08080808
1c0083c0:	ffff0808 	0xffff0808
	...
1c0083d0:	3f7f0000 	0x3f7f0000
1c0083d4:	08080808 	0x08080808
1c0083d8:	08080808 	0x08080808
1c0083dc:	08080808 	0x08080808
1c0083e0:	3f7f0808 	0x3f7f0808
1c0083e4:	00000000 	0x00000000
1c0083e8:	e7000000 	0xe7000000
1c0083ec:	000091a7 	0x000091a7
1c0083f0:	20404040 	ll.w	$r0,$r2,16448(0x4040)
1c0083f4:	e0e02020 	0xe0e02020
1c0083f8:	18181030 	pcaddi	$r16,49281(0xc081)
1c0083fc:	80000000 	0x80000000
1c008400:	00000080 	0x00000080
1c008404:	f8fc0000 	0xf8fc0000
1c008408:	00000008 	0x00000008
1c00840c:	00000000 	0x00000000
1c008410:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008414:	ffff9010 	0xffff9010
1c008418:	18101010 	pcaddi	$r16,32896(0x8080)
1c00841c:	c0000010 	0xc0000010
1c008420:	00060781 	alsl.wu	$r1,$r28,$r1,0x1
1c008424:	ffff0000 	0xffff0000
	...
1c008430:	18204080 	pcaddi	$r0,66052(0x10204)
1c008434:	ffff030e 	0xffff030e
1c008438:	5e060301 	bne	$r24,$r1,-129536(0x20600) # 1bfe8a38 <_start-0x175c8>
1c00843c:	20202040 	ll.w	$r0,$r2,8224(0x2020)
1c008440:	10102321 	addu16i.d	$r1,$r25,1032(0x408)
1c008444:	ffff1010 	0xffff1010
1c008448:	0c0c0808 	0x0c0c0808
1c00844c:	01000000 	0x01000000
1c008450:	00000000 	0x00000000
1c008454:	3f7f0000 	0x3f7f0000
	...
1c008464:	3f7f0000 	0x3f7f0000
1c008468:	00000000 	0x00000000
1c00846c:	8de80000 	0x8de80000
1c008470:	000000a3 	0x000000a3
1c008474:	80808080 	0x80808080
1c008478:	80808080 	0x80808080
1c00847c:	8088f8fc 	0x8088f8fc
1c008480:	80808080 	0x80808080
1c008484:	8088f8fc 	0x8088f8fc
1c008488:	e0c08080 	0xe0c08080
1c00848c:	000080c0 	0x000080c0
1c008490:	00000000 	0x00000000
1c008494:	10f8c080 	addu16i.d	$r0,$r4,15920(0x3e30)
1c008498:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00849c:	10101717 	addu16i.d	$r23,$r24,1029(0x405)
1c0084a0:	1050f0f0 	addu16i.d	$r16,$r7,5180(0x143c)
1c0084a4:	10101317 	addu16i.d	$r23,$r24,1028(0x404)
1c0084a8:	f0d01010 	0xf0d01010
1c0084ac:	00001038 	clo.w	$r24,$r1
1c0084b0:	00000000 	0x00000000
1c0084b4:	02020200 	slti	$r0,$r16,128(0x80)
1c0084b8:	c2820202 	0xc2820202
1c0084bc:	061e3a62 	cacop	0x2,$r19,1934(0x78e)
1c0084c0:	0e02ffff 	0x0e02ffff
1c0084c4:	82c26212 	0x82c26212
1c0084c8:	03020282 	lu52i.d	$r2,$r20,128(0x80)
1c0084cc:	00000203 	0x00000203
1c0084d0:	10000000 	addu16i.d	$r0,$r0,0
1c0084d4:	06040808 	cacop	0x8,$r0,258(0x102)
1c0084d8:	00010102 	0x00010102
1c0084dc:	00000000 	0x00000000
1c0084e0:	00003f7f 	revb.d	$r31,$r27
1c0084e4:	01000000 	0x01000000
1c0084e8:	0e060303 	0x0e060303
1c0084ec:	0004040e 	alsl.w	$r14,$r0,$r1,0x1
1c0084f0:	9b88e500 	0x9b88e500
1c0084f4:	00000000 	0x00000000
1c0084f8:	c0000000 	0xc0000000
1c0084fc:	28183cf0 	ld.b	$r16,$r7,1551(0x60f)
1c008500:	80c04060 	0x80c04060
	...
1c00850c:	f8000000 	0xf8000000
1c008510:	000000f8 	0x000000f8
1c008514:	40800000 	beqz	$r0,32768(0x8000) # 1c010514 <_sidata+0x76ec>
1c008518:	23e6f830 	sc.d	$r16,$r1,-6408(0xe6f8)
1c00851c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008520:	23f0e020 	sc.d	$r0,$r1,-3872(0xf0e0)
1c008524:	00000207 	0x00000207
1c008528:	0002ff00 	0x0002ff00
1c00852c:	ff000000 	0xff000000
1c008530:	000000ff 	0x000000ff
1c008534:	00000100 	0x00000100
1c008538:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
1c00853c:	60200000 	blt	$r0,$r0,8192(0x2000) # 1c00a53c <_sidata+0x1714>
1c008540:	001f3f60 	mulw.d.w	$r0,$r27,$r15
1c008544:	00008000 	0x00008000
1c008548:	00007f00 	0x00007f00
1c00854c:	ff000000 	0xff000000
1c008550:	000000ff 	0x000000ff
1c008554:	00000000 	0x00000000
1c008558:	303f0700 	0x303f0700
1c00855c:	30303030 	0x30303030
1c008560:	30303030 	0x30303030
1c008564:	00103f38 	add.w	$r24,$r25,$r15
1c008568:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c00856c:	3f703030 	0x3f703030
1c008570:	0000001f 	0x0000001f
1c008574:	0088bcef 	bstrins.d	$r15,$r7,0x8,0x2f
	...
1c00858c:	40800000 	beqz	$r0,32768(0x8000) # 1c01058c <_sidata+0x7764>
1c008590:	00102040 	add.w	$r0,$r2,$r8
	...
1c0085a8:	1cf00000 	pcaddu12i	$r0,491520(0x78000)
1c0085ac:	00000306 	0x00000306
	...
1c0085c8:	701f0000 	vaddwev.d.w	$vr0,$vr0,$vr0
1c0085cc:	000000c0 	0x000000c0
	...
1c0085ec:	04020100 	csrxchg	$r0,$r8,0x80
1c0085f0:	0010080c 	add.w	$r12,$r0,$r2
1c0085f4:	e5000000 	0xe5000000
1c0085f8:	0000978c 	0x0000978c
	...
1c008604:	08f8fc00 	0x08f8fc00
1c008608:	00000000 	0x00000000
1c00860c:	0008f8fc 	bytepick.w	$r28,$r7,$r30,0x1
	...
1c00861c:	08080808 	0x08080808
1c008620:	08080808 	0x08080808
1c008624:	00ffff08 	bstrpick.d	$r8,$r24,0x3f,0x3f
1c008628:	00000000 	0x00000000
1c00862c:	4040ffff 	beqz	$r31,-245508(0x7c40fc) # 1bfcc728 <_start-0x338d8>
1c008630:	18103020 	pcaddi	$r0,33153(0x8181)
1c008634:	00040e0c 	alsl.w	$r12,$r16,$r3,0x1
	...
1c008640:	80000000 	0x80000000
1c008644:	00ffff80 	bstrpick.d	$r0,$r28,0x3f,0x3f
1c008648:	00000000 	0x00000000
1c00864c:	0000ffff 	0x0000ffff
1c008650:	00000000 	0x00000000
1c008654:	00c00000 	bstrpick.d	$r0,$r0,0x0,0x0
1c008658:	00000000 	0x00000000
1c00865c:	03060606 	lu52i.d	$r6,$r16,385(0x181)
1c008660:	00010103 	0x00010103
1c008664:	003f7f00 	0x003f7f00
1c008668:	00000000 	0x00000000
1c00866c:	30303f1f 	0x30303f1f
1c008670:	30303030 	0x30303030
1c008674:	183f3830 	pcaddi	$r16,129473(0x1f9c1)
1c008678:	bae40000 	0xbae40000
1c00867c:	800000ac 	0x800000ac
1c008680:	80808080 	0x80808080
1c008684:	80808080 	0x80808080
1c008688:	8c808080 	0x8c808080
1c00868c:	80b0f898 	0x80b0f898
1c008690:	80808080 	0x80808080
1c008694:	c0808080 	0xc0808080
1c008698:	0080c0e0 	bstrins.d	$r0,$r7,0x0,0x30
	...
1c0086a4:	08f8f800 	0x08f8f800
1c0086a8:	08080808 	0x08080808
1c0086ac:	08080808 	0x08080808
1c0086b0:	f8080808 	0xf8080808
1c0086b4:	000008fc 	0x000008fc
	...
1c0086c4:	e4cf0f00 	0xe4cf0f00
1c0086c8:	04040444 	csrxchg	$r4,$r2,0x101
1c0086cc:	0404fcfc 	csrxchg	$r28,$r7,0x13f
1c0086d0:	cf442404 	0xcf442404
1c0086d4:	0000008f 	0x0000008f
1c0086d8:	00000000 	0x00000000
1c0086dc:	20000000 	ll.w	$r0,$r0,0
1c0086e0:	04081010 	csrrd	$r16,0x204
1c0086e4:	00010306 	0x00010306
1c0086e8:	70301010 	vsubwev.h.bu	$vr16,$vr0,$vr4
1c0086ec:	00003f3f 	revb.d	$r31,$r25
1c0086f0:	00000000 	0x00000000
1c0086f4:	1e0e0301 	pcaddu18i	$r1,28696(0x7018)
1c0086f8:	00000018 	0x00000018
1c0086fc:	89bcef00 	0x89bcef00
1c008700:	00000000 	0x00000000
1c008704:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c008708:	0080c060 	bstrins.d	$r0,$r3,0x0,0x30
	...
1c008728:	06010000 	cacop	0x0,$r0,64(0x40)
1c00872c:	0000f03c 	0x0000f03c
	...
1c008748:	c0800000 	0xc0800000
1c00874c:	00000f78 	0x00000f78
	...
1c008764:	0c081000 	0x0c081000
1c008768:	00010306 	0x00010306
	...
1c008780:	0091a7e7 	bstrins.d	$r7,$r31,0x11,0x29
1c008784:	40404000 	beqz	$r0,16448(0x4040) # 1c00c7c4 <_sidata+0x399c>
1c008788:	e0202020 	0xe0202020
1c00878c:	181030e0 	pcaddi	$r0,33159(0x8187)
1c008790:	00000018 	0x00000018
1c008794:	00008080 	0x00008080
1c008798:	fc000000 	0xfc000000
1c00879c:	000008f8 	0x000008f8
1c0087a0:	00000000 	0x00000000
1c0087a4:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c0087a8:	ff901010 	0xff901010
1c0087ac:	101010ff 	addu16i.d	$r31,$r7,1028(0x404)
1c0087b0:	00001018 	clo.w	$r24,$r0
1c0087b4:	060781c0 	cacop	0x0,$r14,480(0x1e0)
1c0087b8:	ff000000 	0xff000000
1c0087bc:	000000ff 	0x000000ff
1c0087c0:	00000000 	0x00000000
1c0087c4:	20408000 	ll.w	$r0,$r0,16512(0x4080)
1c0087c8:	ff030e18 	0xff030e18
1c0087cc:	060301ff 	cacop	0x1f,$r15,192(0xc0)
1c0087d0:	2020405e 	ll.w	$r30,$r2,8256(0x2040)
1c0087d4:	10232120 	addu16i.d	$r0,$r9,2248(0x8c8)
1c0087d8:	ff101010 	0xff101010
1c0087dc:	0c0808ff 	0x0c0808ff
1c0087e0:	0000000c 	0x0000000c
1c0087e4:	00000001 	0x00000001
1c0087e8:	7f000000 	0x7f000000
1c0087ec:	0000003f 	0x0000003f
	...
1c0087f8:	7f000000 	0x7f000000
1c0087fc:	0000003f 	0x0000003f
1c008800:	e6000000 	0xe6000000
1c008804:	0000808a 	0x0000808a
1c008808:	00000000 	0x00000000
1c00880c:	08f8fc00 	0x08f8fc00
	...
1c008818:	f8fc0000 	0xf8fc0000
1c00881c:	00000008 	0x00000008
	...
1c008828:	02020202 	slti	$r2,$r16,128(0x80)
1c00882c:	02ffff02 	addi.d	$r2,$r24,-1(0xfff)
1c008830:	42438382 	beqz	$r28,672640(0xa4380) # 1c0acbb0 <_sidata+0xa3d88>
1c008834:	82828282 	0x82828282
1c008838:	ffff8282 	0xffff8282
1c00883c:	82828282 	0x82828282
1c008840:	020383c2 	slti	$r2,$r30,224(0xe0)
1c008844:	00000000 	0x00000000
1c008848:	06060c0c 	cacop	0xc,$r0,387(0x183)
1c00884c:	01ffff02 	0x01ffff02
1c008850:	00000000 	0x00000000
1c008854:	1c030000 	pcaddu12i	$r0,6144(0x1800)
1c008858:	8000c070 	0x8000c070
1c00885c:	0f3c70c0 	0x0f3c70c0
1c008860:	00000003 	0x00000003
1c008864:	00000000 	0x00000000
1c008868:	30101000 	vldrepl.d	$vr0,$r0,32(0x20)
1c00886c:	003f3f70 	0x003f3f70
1c008870:	20204040 	ll.w	$r0,$r2,8256(0x2040)
1c008874:	08181020 	fmadd.s	$f0,$f1,$f4,$f16
1c008878:	0703060c 	0x0703060c
1c00887c:	38180c0f 	stx.w	$r15,$r0,$r3
1c008880:	20303030 	ll.w	$r16,$r1,12336(0x3030)
1c008884:	8fe50000 	0x8fe50000
1c008888:	00000091 	0x00000091
1c00888c:	f0800000 	0xf0800000
1c008890:	00000070 	0x00000070
1c008894:	18fcc000 	pcaddi	$r0,517632(0x7e600)
1c008898:	00000000 	0x00000000
1c00889c:	70100800 	0x70100800
1c0088a0:	0000c0e0 	0x0000c0e0
	...
1c0088ac:	05070e04 	0x05070e04
1c0088b0:	84040404 	0x84040404
1c0088b4:	8487fff4 	0x8487fff4
1c0088b8:	84848484 	0x84848484
1c0088bc:	84848484 	0x84848484
1c0088c0:	0484c584 	csrxchg	$r4,$r12,0x2131
1c0088c4:	00040606 	alsl.w	$r6,$r16,$r1,0x1
	...
1c0088d0:	0f3ce080 	0x0f3ce080
1c0088d4:	06010003 	cacop	0x3,$r0,64(0x40)
1c0088d8:	80e03018 	0x80e03018
1c0088dc:	1e3860c0 	pcaddu18i	$r0,115462(0x1c306)
1c0088e0:	00000307 	0x00000307
1c0088e4:	00000000 	0x00000000
1c0088e8:	20000000 	ll.w	$r0,$r0,0
1c0088ec:	03040810 	lu52i.d	$r16,$r0,258(0x102)
1c0088f0:	20204041 	ll.w	$r1,$r2,8256(0x2040)
1c0088f4:	08181020 	fmadd.s	$f0,$f1,$f4,$f16
1c0088f8:	0303060c 	lu52i.d	$r12,$r16,193(0xc1)
1c0088fc:	0c060703 	0x0c060703
1c008900:	3038181c 	0x3038181c
1c008904:	00103030 	add.w	$r16,$r1,$r12
1c008908:	95b1e500 	0x95b1e500
1c00890c:	00000000 	0x00000000
1c008910:	08f80400 	0x08f80400
1c008914:	08080808 	0x08080808
1c008918:	08080808 	0x08080808
1c00891c:	08080808 	0x08080808
1c008920:	08080808 	0x08080808
1c008924:	08f8fc08 	0x08f8fc08
	...
1c008930:	21ff0000 	sc.w	$r0,$r0,-256(0xff00)
1c008934:	21212121 	sc.w	$r1,$r9,8480(0x2120)
1c008938:	21fdff21 	sc.w	$r1,$r25,-516(0xfdfc)
1c00893c:	21212121 	sc.w	$r1,$r9,8480(0x2120)
1c008940:	2121fdff 	sc.w	$r31,$r15,8700(0x21fc)
1c008944:	00233321 	div.du	$r1,$r25,$r12
	...
1c008950:	043fff00 	csrxchg	$r0,$r24,0xfff
1c008954:	fc040404 	0xfc040404
1c008958:	040707fc 	csrxchg	$r28,$r31,0x1c1
1c00895c:	04c4740c 	csrrd	$r12,0x311d
1c008960:	64448707 	bge	$r24,$r7,17540(0x4484) # 1c00cde4 <_sidata+0x3fbc>
1c008964:	06062434 	cacop	0x14,$r1,393(0x189)
1c008968:	00000004 	0x00000004
1c00896c:	18204000 	pcaddi	$r0,66048(0x10200)
1c008970:	00000107 	0x00000107
1c008974:	3f000000 	0x3f000000
1c008978:	0818103f 	fmadd.s	$f31,$f1,$f4,$f16
1c00897c:	03000004 	lu52i.d	$r4,$r0,0
1c008980:	180c0607 	pcaddi	$r7,24624(0x6030)
1c008984:	30383818 	0x30383818
1c008988:	00001010 	clo.w	$r16,$r0
1c00898c:	00899ce6 	bstrins.d	$r6,$r7,0x9,0x27
1c008990:	80808000 	0x80808000
1c008994:	80808080 	0x80808080
1c008998:	80808080 	0x80808080
1c00899c:	88b8fce0 	0x88b8fce0
1c0089a0:	80808080 	0x80808080
1c0089a4:	80808080 	0x80808080
1c0089a8:	c0e0c080 	0xc0e0c080
1c0089ac:	00000080 	0x00000080
1c0089b0:	00000000 	0x00000000
1c0089b4:	c0800000 	0xc0800000
1c0089b8:	171cf8e0 	lu32i.d	$r0,-464953(0x8e7c7)
1c0089bc:	10101013 	addu16i.d	$r19,$r0,1028(0x404)
1c0089c0:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0089c4:	10f81010 	addu16i.d	$r16,$r0,15876(0x3e04)
	...
1c0089d0:	04081000 	csrrd	$r0,0x204
1c0089d4:	00010306 	0x00010306
1c0089d8:	4242ffff 	beqz	$r31,-113924(0x7e42fc) # 1bfeccd4 <_start-0x1332c>
1c0089dc:	42424242 	beqz	$r18,672320(0xa4240) # 1c0acc1c <_sidata+0xa3df4>
1c0089e0:	42424242 	beqz	$r18,672320(0xa4240) # 1c0acc20 <_sidata+0xa3df8>
1c0089e4:	00ff4242 	bstrpick.d	$r2,$r18,0x3f,0x10
	...
1c0089f8:	00003f7f 	revb.d	$r31,$r27
1c0089fc:	00000000 	0x00000000
1c008a00:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c008a04:	003f7030 	0x003f7030
1c008a08:	00000000 	0x00000000
1c008a0c:	e9000000 	0xe9000000
1c008a10:	00009099 	0x00009099
1c008a14:	10f00800 	addu16i.d	$r0,$r0,15362(0x3c02)
1c008a18:	f0101010 	0xf0101010
1c008a1c:	00001078 	clo.w	$r24,$r3
1c008a20:	1010f0f8 	addu16i.d	$r24,$r7,1084(0x43c)
1c008a24:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008a28:	f8101010 	0xf8101010
1c008a2c:	00000010 	0x00000010
1c008a30:	00000000 	0x00000000
1c008a34:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c008a38:	c33e0000 	0xc33e0000
1c008a3c:	00000000 	0x00000000
1c008a40:	8484ffff 	0x8484ffff
1c008a44:	84848484 	0x84848484
1c008a48:	ff848484 	0xff848484
	...
1c008a54:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c008a58:	c0c04000 	0xc0c04000
1c008a5c:	00007eff 	0x00007eff
1c008a60:	0000ffff 	0x0000ffff
1c008a64:	c0701e01 	0xc0701e01
1c008a68:	0d1030a0 	vbitsel.v	$vr0,$vr5,$vr12,$vr0
1c008a6c:	0000040e 	0x0000040e
1c008a70:	00000000 	0x00000000
1c008a74:	007f0000 	bstrins.w	$r0,$r0,0x1f,0x0
1c008a78:	00010000 	asrtle.d	$r0,$r0
1c008a7c:	00000000 	0x00000000
1c008a80:	08183f1f 	fmadd.s	$f31,$f24,$f15,$f16
1c008a84:	01020204 	0x01020204
1c008a88:	1c0e0703 	pcaddu12i	$r3,28728(0x7038)
1c008a8c:	00183818 	sra.w	$r24,$r0,$r14
1c008a90:	85e50000 	0x85e50000
1c008a94:	000000ac 	0x000000ac
1c008a98:	00000000 	0x00000000
1c008a9c:	80000000 	0x80000000
1c008aa0:	001078e0 	add.w	$r0,$r7,$r30
1c008aa4:	1c000000 	pcaddu12i	$r0,0
1c008aa8:	000080e0 	0x000080e0
	...
1c008ab8:	c0800000 	0xc0800000
1c008abc:	070e3860 	0x070e3860
1c008ac0:	00000001 	0x00000001
1c008ac4:	0080c0e0 	bstrins.d	$r0,$r7,0x0,0x30
1c008ac8:	1c0e0300 	pcaddu12i	$r0,28696(0x7018)
1c008acc:	c0c0e070 	0xc0c0e070
1c008ad0:	00000080 	0x00000080
1c008ad4:	04000000 	csrrd	$r0,0x0
1c008ad8:	00010302 	0x00010302
1c008adc:	c0000000 	0xc0000000
1c008ae0:	071c3860 	0x071c3860
1c008ae4:	00000103 	0x00000103
1c008ae8:	0080c020 	bstrins.d	$r0,$r1,0x0,0x30
1c008aec:	03010000 	lu52i.d	$r0,$r0,64(0x40)
1c008af0:	00010103 	0x00010103
1c008af4:	00000000 	0x00000000
1c008af8:	38080000 	ldx.w	$r0,$r0,$r0
1c008afc:	191b1e3c 	pcaddi	$r28,-468751(0x8d8f1)
1c008b00:	08081818 	0x08081818
1c008b04:	08080808 	0x08080808
1c008b08:	0f090808 	0x0f090808
1c008b0c:	00307c1e 	0x00307c1e
1c008b10:	00000000 	0x00000000
1c008b14:	b88fe500 	0xb88fe500
1c008b18:	00000000 	0x00000000
1c008b1c:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c008b20:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008b24:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008b28:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008b2c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008b30:	00f0f810 	bstrpick.d	$r16,$r0,0x30,0x3e
1c008b34:	00000000 	0x00000000
1c008b38:	04000000 	csrrd	$r0,0x0
1c008b3c:	84c40404 	0x84c40404
1c008b40:	84848484 	0x84848484
1c008b44:	84848484 	0x84848484
1c008b48:	0684c484 	0x0684c484
1c008b4c:	00000406 	0x00000406
1c008b50:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
	...
1c008b5c:	ffff0000 	0xffff0000
1c008b60:	40404040 	beqz	$r2,16448(0x4040) # 1c00cba0 <_sidata+0x3d78>
1c008b64:	40404040 	beqz	$r2,16448(0x4040) # 1c00cba4 <_sidata+0x3d7c>
1c008b68:	0000ff40 	0x0000ff40
1c008b6c:	00000000 	0x00000000
1c008b70:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
	...
1c008b7c:	01030000 	fsub.d	$f0,$f0,$f0
	...
1c008b88:	00010100 	asrtle.d	$r8,$r0
1c008b8c:	30101010 	vldrepl.d	$vr16,$r0,32(0x20)
1c008b90:	000f3f70 	bytepick.d	$r16,$r27,$r15,0x6
1c008b94:	00000000 	0x00000000
1c008b98:	00be98e6 	bstrins.d	$r6,$r7,0x3e,0x26
1c008b9c:	00000000 	0x00000000
1c008ba0:	f0080000 	0xf0080000
1c008ba4:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008ba8:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008bac:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008bb0:	f0f81010 	0xf0f81010
	...
1c008bc0:	ff000000 	0xff000000
1c008bc4:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ace04 <_sidata+0xa3fdc>
1c008bc8:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ace08 <_sidata+0xa3fe0>
1c008bcc:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ace0c <_sidata+0xa3fe4>
1c008bd0:	ffff4242 	0xffff4242
	...
1c008bdc:	08000000 	0x08000000
1c008be0:	c0e17030 	0xc0e17030
1c008be4:	fe000000 	0xfe000000
1c008be8:	000000fe 	0x000000fe
1c008bec:	00fefe00 	bstrpick.d	$r0,$r16,0x3e,0x3f
1c008bf0:	60c08000 	blt	$r0,$r0,49280(0xc080) # 1c014c70 <_sidata+0xbe48>
1c008bf4:	00081c38 	bytepick.w	$r24,$r1,$r7,0x0
1c008bf8:	00000000 	0x00000000
1c008bfc:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c008c00:	13111010 	addu16i.d	$r16,$r0,-15292(0xc444)
1c008c04:	1f101010 	pcaddu18i	$r16,-491392(0x88080)
1c008c08:	1010101f 	addu16i.d	$r31,$r0,1028(0x404)
1c008c0c:	141f1f10 	lu12i.w	$r16,63736(0xf8f8)
1c008c10:	10101112 	addu16i.d	$r18,$r8,1028(0x404)
1c008c14:	10181810 	addu16i.d	$r16,$r0,1542(0x606)
1c008c18:	e7000000 	0xe7000000
1c008c1c:	0000baa4 	0x0000baa4
1c008c20:	00000000 	0x00000000
1c008c24:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008c28:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008c2c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008c30:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008c34:	30382020 	0x30382020
1c008c38:	00000020 	0x00000020
1c008c3c:	00000000 	0x00000000
1c008c40:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008c44:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008c48:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008c4c:	20e0e020 	ll.w	$r0,$r1,-7968(0xe0e0)
1c008c50:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008c54:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008c58:	20303020 	ll.w	$r0,$r1,12336(0x3030)
1c008c5c:	00000000 	0x00000000
1c008c60:	80000000 	0x80000000
1c008c64:	1e3c70c0 	pcaddu18i	$r0,123782(0x1e386)
1c008c68:	00000406 	0x00000406
1c008c6c:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
1c008c70:	04020000 	csrrd	$r0,0x80
1c008c74:	e0701808 	0xe0701808
1c008c78:	000080c0 	0x000080c0
1c008c7c:	00000000 	0x00000000
1c008c80:	01030408 	fsub.d	$f8,$f0,$f1
1c008c84:	08000000 	0x08000000
1c008c88:	30101008 	vldrepl.d	$vr8,$r0,32(0x20)
1c008c8c:	001f3f70 	mulw.d.w	$r16,$r27,$r15
	...
1c008c98:	00030701 	0x00030701
1c008c9c:	aee50000 	0xaee50000
1c008ca0:	0000009e 	0x0000009e
1c008ca4:	00800000 	bstrins.d	$r0,$r0,0x0,0x0
1c008ca8:	00000000 	0x00000000
1c008cac:	04000000 	csrrd	$r0,0x0
1c008cb0:	0070f818 	bstrpick.w	$r24,$r0,0x10,0x1e
	...
1c008cbc:	00000080 	0x00000080
1c008cc0:	00000000 	0x00000000
1c008cc4:	810f1c18 	0x810f1c18
1c008cc8:	09010101 	0x09010101
1c008ccc:	01713919 	0x01713919
1c008cd0:	fdff0101 	0xfdff0101
1c008cd4:	01010105 	fadd.d	$f5,$f8,$f0
1c008cd8:	07090101 	0x07090101
1c008cdc:	00020307 	0x00020307
1c008ce0:	10000000 	addu16i.d	$r0,$r0,0
1c008ce4:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008ce8:	1e171311 	pcaddu18i	$r17,47256(0xb898)
1c008cec:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008cf0:	93bffcd0 	0x93bffcd0
1c008cf4:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008cf8:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008cfc:	00101818 	add.w	$r24,$r0,$r6
1c008d00:	40000000 	beqz	$r0,0 # 1c008d00 <tfont32+0x998>
1c008d04:	20404040 	ll.w	$r0,$r2,16448(0x4040)
1c008d08:	10102020 	addu16i.d	$r0,$r1,1032(0x408)
1c008d0c:	070e0c18 	0x070e0c18
1c008d10:	01000003 	0x01000003
1c008d14:	06020301 	cacop	0x1,$r24,128(0x80)
1c008d18:	383c1c0e 	fstx.d	$f14,$r0,$r7
1c008d1c:	00000030 	0x00000030
1c008d20:	8caae900 	0x8caae900
1c008d24:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c008d28:	10109090 	addu16i.d	$r16,$r4,1060(0x424)
1c008d2c:	10f81010 	addu16i.d	$r16,$r0,15876(0x3e04)
1c008d30:	00000000 	0x00000000
1c008d34:	f0800000 	0xf0800000
1c008d38:	80e8183c 	0x80e8183c
	...
1c008d44:	80000000 	0x80000000
1c008d48:	00001fff 	ctz.w	$r31,$r31
1c008d4c:	003fff00 	0x003fff00
1c008d50:	50204080 	b	33562688(0x2002040) # 1e00ad90 <_sidata+0x2001f68>
1c008d54:	4043474c 	beqz	$r26,3162948(0x304344) # 1c30d098 <_sidata+0x304270>
1c008d58:	43404040 	beqz	$r2,213056(0x34040) # 1c03cd98 <_sidata+0x33f70>
1c008d5c:	70784c66 	0x70784c66
1c008d60:	00202070 	div.w	$r16,$r3,$r8
1c008d64:	c1c14000 	0xc1c14000
1c008d68:	21214143 	sc.w	$r3,$r10,8512(0x2140)
1c008d6c:	ff810121 	0xff810121
1c008d70:	1c00000f 	pcaddu12i	$r15,0
1c008d74:	0c02c0f0 	0x0c02c0f0
1c008d78:	0000e0f8 	0x0000e0f8
1c008d7c:	061f7cc0 	cacop	0x0,$r6,2015(0x7df)
	...
1c008d88:	18080800 	pcaddi	$r0,16448(0x4040)
1c008d8c:	070f1838 	0x070f1838
1c008d90:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c008d94:	10101113 	addu16i.d	$r19,$r8,1028(0x404)
1c008d98:	1e101011 	pcaddu18i	$r17,32896(0x8080)
1c008d9c:	18101013 	pcaddi	$r19,32896(0x8080)
1c008da0:	00001018 	clo.w	$r24,$r0
1c008da4:	00cc4240 	bstrpick.d	$r0,$r18,0xc,0x10
1c008da8:	5556fc00 	bl	87804(0x156fc) # 1c01e4a4 <_sidata+0x1567c>
1c008dac:	101080fc 	addu16i.d	$r28,$r7,1056(0x420)
1c008db0:	001010ff 	add.w	$r31,$r7,$r4
	...

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	1c006c29 	pcaddu12i	$r9,865(0x361)
80001008:	8000000c 	0x8000000c
8000100c:	80001028 	0x80001028
80001010:	80000010 	0x80000010
80001014:	80000138 	0x80000138
80001018:	80000268 	0x80000268
8000101c:	80000014 	0x80000014
80001020:	1c006c20 	pcaddu12i	$r0,865(0x361)
80001024:	80000034 	0x80000034

80001028 <g_SystemFreq>:
80001028:	007a1200 	bstrins.w	$r0,$r16,0x1a,0x4

8000102c <temp_threshold>:
8000102c:	 	0x000a1e3c

8000102d <humi_threshold>:
8000102d:	 	bl	-126287864(0x8790008) # 78791035 <_sidata+0x5c78820d>

8000102e <smoke_threshold>:
8000102e:	 	0xaa55000a

80001030 <MQTT_UP_DATA>:
80001030:	0000aa55 	0x0000aa55
80001034:	bb000000 	0xbb000000

80001038 <tolerance>:
80001038:	00000005 	0x00000005

Disassembly of section .bss:

80000000 <current_interface>:
	...

80000001 <abnormal_count>:
_sbss():
80000001:	 	0x00000000

80000004 <cvalue>:
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
