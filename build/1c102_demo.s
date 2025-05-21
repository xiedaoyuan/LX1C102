
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
1c00000c:	038091ef 	ori	$r15,$r15,0x24
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
1c001090:	54393800 	bl	14648(0x3938) # 1c0049c8 <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	54398000 	bl	14720(0x3980) # 1c004a18 <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	543a0c00 	bl	14860(0x3a0c) # 1c004aac <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	543a4000 	bl	14912(0x3a40) # 1c004ae8 <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	54386000 	bl	14432(0x3860) # 1c004910 <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	543bb400 	bl	15284(0x3bb4) # 1c004c6c <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	543af800 	bl	15096(0x3af8) # 1c004bc0 <intc_handler>
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
1c0013d4:	541d9c00 	bl	7580(0x1d9c) # 1c003170 <DisableInt>
1c0013d8:	541cc400 	bl	7364(0x1cc4) # 1c00309c <SystemClockInit>
1c0013dc:	57ff53ff 	bl	-176(0xfffff50) # 1c00132c <GPIOInit>
1c0013e0:	54249c00 	bl	9372(0x249c) # 1c00387c <WdgInit>
1c0013e4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0013e8:	5423dc00 	bl	9180(0x23dc) # 1c0037c4 <WDG_SetWatchDog>
1c0013ec:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013f0:	03880184 	ori	$r4,$r12,0x200
1c0013f4:	5416ac00 	bl	5804(0x16ac) # 1c002aa0 <Uart1_init>
1c0013f8:	541f6c00 	bl	8044(0x1f6c) # 1c003364 <ls1x_logo>
1c0013fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001400:	0380118c 	ori	$r12,$r12,0x4
1c001404:	2880018e 	ld.w	$r14,$r12,0
1c001408:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00140c:	0380118c 	ori	$r12,$r12,0x4
1c001410:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c001414:	001535cd 	or	$r13,$r14,$r13
1c001418:	2980018d 	st.w	$r13,$r12,0
1c00141c:	541d7800 	bl	7544(0x1d78) # 1c003194 <EnableInt>
1c001420:	54200c00 	bl	8204(0x200c) # 1c00342c <open_count>
1c001424:	02801804 	addi.w	$r4,$r0,6(0x6)
1c001428:	541dd400 	bl	7636(0x1dd4) # 1c0031fc <Wake_Set>
1c00142c:	54242400 	bl	9252(0x2424) # 1c003850 <WDG_DogFeed>
1c001430:	541e7800 	bl	7800(0x1e78) # 1c0032a8 <PMU_GetRstRrc>
1c001434:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001438:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00143c:	44003180 	bnez	$r12,48(0x30) # 1c00146c <bsp_init+0xa8>
1c001440:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c001444:	02a6f084 	addi.w	$r4,$r4,-1604(0x9bc)
1c001448:	54074c00 	bl	1868(0x74c) # 1c001b94 <myprintf>
1c00144c:	541ec800 	bl	7880(0x1ec8) # 1c003314 <PMU_GetBootSpiStatus>
1c001450:	0015008c 	move	$r12,$r4
1c001454:	40001180 	beqz	$r12,16(0x10) # 1c001464 <bsp_init+0xa0>
1c001458:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c00145c:	02a6d084 	addi.w	$r4,$r4,-1612(0x9b4)
1c001460:	54073400 	bl	1844(0x734) # 1c001b94 <myprintf>
1c001464:	54384000 	bl	14400(0x3840) # 1c004ca4 <main>
1c001468:	50004000 	b	64(0x40) # 1c0014a8 <bsp_init+0xe4>
1c00146c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001470:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001474:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c00148c <bsp_init+0xc8>
1c001478:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c00147c:	02a68084 	addi.w	$r4,$r4,-1632(0x9a0)
1c001480:	54071400 	bl	1812(0x714) # 1c001b94 <myprintf>
1c001484:	54382000 	bl	14368(0x3820) # 1c004ca4 <main>
1c001488:	50002000 	b	32(0x20) # 1c0014a8 <bsp_init+0xe4>
1c00148c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001490:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c001494:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0014a8 <bsp_init+0xe4>
1c001498:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c00149c:	02a64084 	addi.w	$r4,$r4,-1648(0x990)
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
1c001c30:	0288218c 	addi.w	$r12,$r12,520(0x208)
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
1c001f54:	54176000 	bl	5984(0x1760) # 1c0036b4 <strlen>
1c001f58:	0015008c 	move	$r12,$r4
1c001f5c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f60:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c001f64:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c001f68:	5416f000 	bl	5872(0x16f0) # 1c003658 <strcpy>
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
1c0021c8:	02b7018c 	addi.w	$r12,$r12,-576(0xdc0)
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

1c0029dc <Uart0_init>:
Uart0_init():
1c0029dc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0029e0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0029e4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0029e8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0029ec:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0029f0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0029f4:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0029f8:	57ec5fff 	bl	-5028(0xfffec5c) # 1c001654 <gpio_pin_remap>
1c0029fc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002a00:	02801c04 	addi.w	$r4,$r0,7(0x7)
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
1c002a34:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002a38:	57fb5bff 	bl	-1192(0xffffb58) # 1c002590 <UART_Init>
1c002a3c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002a40:	0380098c 	ori	$r12,$r12,0x2
1c002a44:	2a00018c 	ld.bu	$r12,$r12,0
1c002a48:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002a4c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002a50:	0380098c 	ori	$r12,$r12,0x2
1c002a54:	038021ad 	ori	$r13,$r13,0x8
1c002a58:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002a5c:	2900018d 	st.b	$r13,$r12,0
1c002a60:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002a64:	2a00018c 	ld.bu	$r12,$r12,0
1c002a68:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002a6c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002a70:	038021ad 	ori	$r13,$r13,0x8
1c002a74:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002a78:	2900018d 	st.b	$r13,$r12,0
1c002a7c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c002a80:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002a84:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002a88:	57fe83ff 	bl	-384(0xffffe80) # 1c002908 <UART_ITConfig>
1c002a8c:	03400000 	andi	$r0,$r0,0x0
1c002a90:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002a94:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002a98:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002a9c:	4c000020 	jirl	$r0,$r1,0

1c002aa0 <Uart1_init>:
Uart1_init():
1c002aa0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002aa4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002aa8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002aac:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002ab0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002ab4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002ab8:	02802004 	addi.w	$r4,$r0,8(0x8)
1c002abc:	57eb9bff 	bl	-5224(0xfffeb98) # 1c001654 <gpio_pin_remap>
1c002ac0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002ac4:	02802404 	addi.w	$r4,$r0,9(0x9)
1c002ac8:	57eb8fff 	bl	-5236(0xfffeb8c) # 1c001654 <gpio_pin_remap>
1c002acc:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002ad0:	00150184 	move	$r4,$r12
1c002ad4:	57fdbbff 	bl	-584(0xffffdb8) # 1c00288c <UART_StructInit>
1c002ad8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002adc:	2894d18c 	ld.w	$r12,$r12,1332(0x534)
1c002ae0:	2880018c 	ld.w	$r12,$r12,0
1c002ae4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002ae8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002aec:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002af0:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002af4:	00150185 	move	$r5,$r12
1c002af8:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002afc:	57fa97ff 	bl	-1388(0xffffa94) # 1c002590 <UART_Init>
1c002b00:	02800406 	addi.w	$r6,$r0,1(0x1)
1c002b04:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002b08:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002b0c:	57fdffff 	bl	-516(0xffffdfc) # 1c002908 <UART_ITConfig>
1c002b10:	03400000 	andi	$r0,$r0,0x0
1c002b14:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002b18:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002b1c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002b20:	4c000020 	jirl	$r0,$r1,0

1c002b24 <Uart1_send>:
Uart1_send():
1c002b24:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002b28:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002b2c:	29806076 	st.w	$r22,$r3,24(0x18)
1c002b30:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002b34:	0015008c 	move	$r12,$r4
1c002b38:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002b3c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002b40:	00150185 	move	$r5,$r12
1c002b44:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002b48:	57fe4bff 	bl	-440(0xffffe48) # 1c002990 <UART_SendData>
1c002b4c:	03400000 	andi	$r0,$r0,0x0
1c002b50:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002b54:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002b58:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002b5c:	4c000020 	jirl	$r0,$r1,0

1c002b60 <CLOCK_WaitForHSEStartUp>:
CLOCK_WaitForHSEStartUp():
1c002b60:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002b64:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002b68:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002b6c:	1400006c 	lu12i.w	$r12,3(0x3)
1c002b70:	03ba018c 	ori	$r12,$r12,0xe80
1c002b74:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002b78:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002b7c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b80:	2880018d 	ld.w	$r13,$r12,0
1c002b84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b88:	038101ad 	ori	$r13,$r13,0x40
1c002b8c:	2980018d 	st.w	$r13,$r12,0
1c002b90:	03400000 	andi	$r0,$r0,0x0
1c002b94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002b98:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002b9c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002ba0:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c002b94 <CLOCK_WaitForHSEStartUp+0x34>
1c002ba4:	50001c00 	b	28(0x1c) # 1c002bc0 <CLOCK_WaitForHSEStartUp+0x60>
1c002ba8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bac:	2880018e 	ld.w	$r14,$r12,0
1c002bb0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bb4:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002bb8:	0014b5cd 	and	$r13,$r14,$r13
1c002bbc:	2980018d 	st.w	$r13,$r12,0
1c002bc0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bc4:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002bc8:	63ffe180 	blt	$r12,$r0,-32(0x3ffe0) # 1c002ba8 <CLOCK_WaitForHSEStartUp+0x48>
1c002bcc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bd0:	2880018d 	ld.w	$r13,$r12,0
1c002bd4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bd8:	038201ad 	ori	$r13,$r13,0x80
1c002bdc:	2980018d 	st.w	$r13,$r12,0
1c002be0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002be4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002be8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002bec:	00150184 	move	$r4,$r12
1c002bf0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002bf4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002bf8:	4c000020 	jirl	$r0,$r1,0

1c002bfc <CLOCK_WaitForLSEStartUp>:
CLOCK_WaitForLSEStartUp():
1c002bfc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002c00:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002c04:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002c08:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002c0c:	50008800 	b	136(0x88) # 1c002c94 <CLOCK_WaitForLSEStartUp+0x98>
1c002c10:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c14:	2880018e 	ld.w	$r14,$r12,0
1c002c18:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c1c:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002c20:	0014b5cd 	and	$r13,$r14,$r13
1c002c24:	2980018d 	st.w	$r13,$r12,0
1c002c28:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002c2c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002c30:	50001400 	b	20(0x14) # 1c002c44 <CLOCK_WaitForLSEStartUp+0x48>
1c002c34:	03400000 	andi	$r0,$r0,0x0
1c002c38:	03400000 	andi	$r0,$r0,0x0
1c002c3c:	03400000 	andi	$r0,$r0,0x0
1c002c40:	03400000 	andi	$r0,$r0,0x0
1c002c44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c48:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002c4c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002c50:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002c34 <CLOCK_WaitForLSEStartUp+0x38>
1c002c54:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c58:	2880018d 	ld.w	$r13,$r12,0
1c002c5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c60:	038081ad 	ori	$r13,$r13,0x20
1c002c64:	2980018d 	st.w	$r13,$r12,0
1c002c68:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002c6c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002c70:	50001400 	b	20(0x14) # 1c002c84 <CLOCK_WaitForLSEStartUp+0x88>
1c002c74:	03400000 	andi	$r0,$r0,0x0
1c002c78:	03400000 	andi	$r0,$r0,0x0
1c002c7c:	03400000 	andi	$r0,$r0,0x0
1c002c80:	03400000 	andi	$r0,$r0,0x0
1c002c84:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002c88:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002c8c:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002c90:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002c74 <CLOCK_WaitForLSEStartUp+0x78>
1c002c94:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c98:	0380118c 	ori	$r12,$r12,0x4
1c002c9c:	2880018d 	ld.w	$r13,$r12,0
1c002ca0:	1420000c 	lu12i.w	$r12,65536(0x10000)
1c002ca4:	0014b1ac 	and	$r12,$r13,$r12
1c002ca8:	43ff699f 	beqz	$r12,-152(0x7fff68) # 1c002c10 <CLOCK_WaitForLSEStartUp+0x14>
1c002cac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cb0:	0380118c 	ori	$r12,$r12,0x4
1c002cb4:	2880018d 	ld.w	$r13,$r12,0
1c002cb8:	1440000c 	lu12i.w	$r12,131072(0x20000)
1c002cbc:	0014b1ac 	and	$r12,$r13,$r12
1c002cc0:	47ff519f 	bnez	$r12,-176(0x7fff50) # 1c002c10 <CLOCK_WaitForLSEStartUp+0x14>
1c002cc4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002cc8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002ccc:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002cd0:	00150184 	move	$r4,$r12
1c002cd4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002cd8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002cdc:	4c000020 	jirl	$r0,$r1,0

1c002ce0 <CLOCK_HSEConfig>:
CLOCK_HSEConfig():
1c002ce0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002ce4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002ce8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002cec:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002cf0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002cf4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002cf8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cfc:	2880018e 	ld.w	$r14,$r12,0
1c002d00:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002d04:	0014300d 	nor	$r13,$r0,$r12
1c002d08:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d0c:	0014b5cd 	and	$r13,$r14,$r13
1c002d10:	2980018d 	st.w	$r13,$r12,0
1c002d14:	1400002c 	lu12i.w	$r12,1(0x1)
1c002d18:	03b4bd8c 	ori	$r12,$r12,0xd2f
1c002d1c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002d20:	50001400 	b	20(0x14) # 1c002d34 <CLOCK_HSEConfig+0x54>
1c002d24:	03400000 	andi	$r0,$r0,0x0
1c002d28:	03400000 	andi	$r0,$r0,0x0
1c002d2c:	03400000 	andi	$r0,$r0,0x0
1c002d30:	03400000 	andi	$r0,$r0,0x0
1c002d34:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002d38:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002d3c:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002d40:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002d24 <CLOCK_HSEConfig+0x44>
1c002d44:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002d48:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002d4c:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002d5c <CLOCK_HSEConfig+0x7c>
1c002d50:	57fe13ff 	bl	-496(0xffffe10) # 1c002b60 <CLOCK_WaitForHSEStartUp>
1c002d54:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002d58:	50002400 	b	36(0x24) # 1c002d7c <CLOCK_HSEConfig+0x9c>
1c002d5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d60:	2880018e 	ld.w	$r14,$r12,0
1c002d64:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d68:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002d6c:	0014b5cd 	and	$r13,$r14,$r13
1c002d70:	2980018d 	st.w	$r13,$r12,0
1c002d74:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002d78:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002d7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d80:	00150184 	move	$r4,$r12
1c002d84:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002d88:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002d8c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002d90:	4c000020 	jirl	$r0,$r1,0

1c002d94 <CLOCK_LSEConfig>:
CLOCK_LSEConfig():
1c002d94:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002d98:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002d9c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002da0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002da4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002da8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002dac:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002db0:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c002db4:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002dc4 <CLOCK_LSEConfig+0x30>
1c002db8:	57fe47ff 	bl	-444(0xffffe44) # 1c002bfc <CLOCK_WaitForLSEStartUp>
1c002dbc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002dc0:	50002400 	b	36(0x24) # 1c002de4 <CLOCK_LSEConfig+0x50>
1c002dc4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002dc8:	2880018e 	ld.w	$r14,$r12,0
1c002dcc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002dd0:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002dd4:	0014b5cd 	and	$r13,$r14,$r13
1c002dd8:	2980018d 	st.w	$r13,$r12,0
1c002ddc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002de0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002de4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002de8:	00150184 	move	$r4,$r12
1c002dec:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002df0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002df4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002df8:	4c000020 	jirl	$r0,$r1,0

1c002dfc <CLOCK_StructInit>:
CLOCK_StructInit():
1c002dfc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002e00:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002e04:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002e08:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002e0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e10:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c002e14:	2980018d 	st.w	$r13,$r12,0
1c002e18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e1c:	0282000d 	addi.w	$r13,$r0,128(0x80)
1c002e20:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002e24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e28:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c002e2c:	2980218d 	st.w	$r13,$r12,8(0x8)
1c002e30:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e34:	29803180 	st.w	$r0,$r12,12(0xc)
1c002e38:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e3c:	29804180 	st.w	$r0,$r12,16(0x10)
1c002e40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e44:	29805180 	st.w	$r0,$r12,20(0x14)
1c002e48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e4c:	29806180 	st.w	$r0,$r12,24(0x18)
1c002e50:	03400000 	andi	$r0,$r0,0x0
1c002e54:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002e58:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002e5c:	4c000020 	jirl	$r0,$r1,0

1c002e60 <CLOCK_Init>:
CLOCK_Init():
1c002e60:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002e64:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002e68:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002e6c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002e70:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002e74:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002e78:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e7c:	2880018e 	ld.w	$r14,$r12,0
1c002e80:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e84:	02b3fc0d 	addi.w	$r13,$r0,-769(0xcff)
1c002e88:	0014b5cd 	and	$r13,$r14,$r13
1c002e8c:	2980018d 	st.w	$r13,$r12,0
1c002e90:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e94:	2880018e 	ld.w	$r14,$r12,0
1c002e98:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e9c:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c002ea0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ea4:	001535cd 	or	$r13,$r14,$r13
1c002ea8:	2980018d 	st.w	$r13,$r12,0
1c002eac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002eb0:	2880018e 	ld.w	$r14,$r12,0
1c002eb4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002eb8:	02bfbc0d 	addi.w	$r13,$r0,-17(0xfef)
1c002ebc:	0014b5cd 	and	$r13,$r14,$r13
1c002ec0:	2980018d 	st.w	$r13,$r12,0
1c002ec4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ec8:	2880018e 	ld.w	$r14,$r12,0
1c002ecc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ed0:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c002ed4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ed8:	001535cd 	or	$r13,$r14,$r13
1c002edc:	2980018d 	st.w	$r13,$r12,0
1c002ee0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ee4:	2880018e 	ld.w	$r14,$r12,0
1c002ee8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002eec:	15ffffed 	lu12i.w	$r13,-1(0xfffff)
1c002ef0:	039ffdad 	ori	$r13,$r13,0x7ff
1c002ef4:	0014b5cd 	and	$r13,$r14,$r13
1c002ef8:	2980018d 	st.w	$r13,$r12,0
1c002efc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f00:	2880018e 	ld.w	$r14,$r12,0
1c002f04:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f08:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c002f0c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f10:	001535cd 	or	$r13,$r14,$r13
1c002f14:	2980018d 	st.w	$r13,$r12,0
1c002f18:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f1c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002f20:	00150184 	move	$r4,$r12
1c002f24:	57fdbfff 	bl	-580(0xffffdbc) # 1c002ce0 <CLOCK_HSEConfig>
1c002f28:	0015008d 	move	$r13,$r4
1c002f2c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002f30:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002f3c <CLOCK_Init+0xdc>
1c002f34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f38:	50015000 	b	336(0x150) # 1c003088 <CLOCK_Init+0x228>
1c002f3c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f40:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c002f44:	00150184 	move	$r4,$r12
1c002f48:	57fe4fff 	bl	-436(0xffffe4c) # 1c002d94 <CLOCK_LSEConfig>
1c002f4c:	0015008d 	move	$r13,$r4
1c002f50:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002f54:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002f60 <CLOCK_Init+0x100>
1c002f58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f5c:	50012c00 	b	300(0x12c) # 1c003088 <CLOCK_Init+0x228>
1c002f60:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f64:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002f68:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002f6c:	5800fdac 	beq	$r13,$r12,252(0xfc) # 1c003068 <CLOCK_Init+0x208>
1c002f70:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f74:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c002f78:	4000a180 	beqz	$r12,160(0xa0) # 1c003018 <CLOCK_Init+0x1b8>
1c002f7c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f80:	2880018e 	ld.w	$r14,$r12,0
1c002f84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f88:	15efffed 	lu12i.w	$r13,-32769(0xf7fff)
1c002f8c:	03bffdad 	ori	$r13,$r13,0xfff
1c002f90:	0014b5cd 	and	$r13,$r14,$r13
1c002f94:	2980018d 	st.w	$r13,$r12,0
1c002f98:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f9c:	2880018e 	ld.w	$r14,$r12,0
1c002fa0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002fa4:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c002fa8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002fac:	001535cd 	or	$r13,$r14,$r13
1c002fb0:	2980018d 	st.w	$r13,$r12,0
1c002fb4:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002fb8:	0386c18c 	ori	$r12,$r12,0x1b0
1c002fbc:	2880018c 	ld.w	$r12,$r12,0
1c002fc0:	40004180 	beqz	$r12,64(0x40) # 1c003000 <CLOCK_Init+0x1a0>
1c002fc4:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002fc8:	0386c18c 	ori	$r12,$r12,0x1b0
1c002fcc:	2880018c 	ld.w	$r12,$r12,0
1c002fd0:	0040898e 	slli.w	$r14,$r12,0x2
1c002fd4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002fd8:	002031cd 	div.w	$r13,$r14,$r12
1c002fdc:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002fe4 <CLOCK_Init+0x184>
1c002fe0:	002a0007 	break	0x7
1c002fe4:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c002fe8:	001c31ac 	mul.w	$r12,$r13,$r12
1c002fec:	0015018d 	move	$r13,$r12
1c002ff0:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002ff4:	0280e18c 	addi.w	$r12,$r12,56(0x38)
1c002ff8:	2980018d 	st.w	$r13,$r12,0
1c002ffc:	50008000 	b	128(0x80) # 1c00307c <CLOCK_Init+0x21c>
1c003000:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003004:	0280a18c 	addi.w	$r12,$r12,40(0x28)
1c003008:	1401458d 	lu12i.w	$r13,2604(0xa2c)
1c00300c:	038fe1ad 	ori	$r13,$r13,0x3f8
1c003010:	2980018d 	st.w	$r13,$r12,0
1c003014:	50006800 	b	104(0x68) # 1c00307c <CLOCK_Init+0x21c>
1c003018:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c00301c:	0386c18c 	ori	$r12,$r12,0x1b0
1c003020:	2880018c 	ld.w	$r12,$r12,0
1c003024:	40002d80 	beqz	$r12,44(0x2c) # 1c003050 <CLOCK_Init+0x1f0>
1c003028:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c00302c:	0386c18c 	ori	$r12,$r12,0x1b0
1c003030:	2880018d 	ld.w	$r13,$r12,0
1c003034:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c003038:	001c31ac 	mul.w	$r12,$r13,$r12
1c00303c:	0015018d 	move	$r13,$r12
1c003040:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003044:	02bfa18c 	addi.w	$r12,$r12,-24(0xfe8)
1c003048:	2980018d 	st.w	$r13,$r12,0
1c00304c:	50003000 	b	48(0x30) # 1c00307c <CLOCK_Init+0x21c>
1c003050:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003054:	02bf618c 	addi.w	$r12,$r12,-40(0xfd8)
1c003058:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c00305c:	038801ad 	ori	$r13,$r13,0x200
1c003060:	2980018d 	st.w	$r13,$r12,0
1c003064:	50001800 	b	24(0x18) # 1c00307c <CLOCK_Init+0x21c>
1c003068:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c00306c:	02bf018c 	addi.w	$r12,$r12,-64(0xfc0)
1c003070:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c003074:	038801ad 	ori	$r13,$r13,0x200
1c003078:	2980018d 	st.w	$r13,$r12,0
1c00307c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003080:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003084:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003088:	00150184 	move	$r4,$r12
1c00308c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003090:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003094:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003098:	4c000020 	jirl	$r0,$r1,0

1c00309c <SystemClockInit>:
SystemClockInit():
1c00309c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0030a0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0030a4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0030a8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0030ac:	29bf52c0 	st.w	$r0,$r22,-44(0xfd4)
1c0030b0:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c0030b4:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c0030b8:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0030bc:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0030c0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0030c4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0030c8:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c0030cc:	00150184 	move	$r4,$r12
1c0030d0:	57fd2fff 	bl	-724(0xffffd2c) # 1c002dfc <CLOCK_StructInit>
1c0030d4:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0030d8:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c0030dc:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c0030e0:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0030e4:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c0030e8:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0030ec:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0030f0:	0284000c 	addi.w	$r12,$r0,256(0x100)
1c0030f4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0030f8:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0030fc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003100:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003104:	00150184 	move	$r4,$r12
1c003108:	57fd5bff 	bl	-680(0xffffd58) # 1c002e60 <CLOCK_Init>
1c00310c:	0015008d 	move	$r13,$r4
1c003110:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003114:	58000dac 	beq	$r13,$r12,12(0xc) # 1c003120 <SystemClockInit+0x84>
1c003118:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c00311c:	50000800 	b	8(0x8) # 1c003124 <SystemClockInit+0x88>
1c003120:	0015000c 	move	$r12,$r0
1c003124:	00150184 	move	$r4,$r12
1c003128:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00312c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003130:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003134:	4c000020 	jirl	$r0,$r1,0

1c003138 <IsGlobalIntOpen>:
IsGlobalIntOpen():
1c003138:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00313c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003140:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003144:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003148:	0400000c 	csrrd	$r12,0x0
1c00314c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003150:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003154:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003158:	0340118c 	andi	$r12,$r12,0x4
1c00315c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003160:	00150184 	move	$r4,$r12
1c003164:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003168:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00316c:	4c000020 	jirl	$r0,$r1,0

1c003170 <DisableInt>:
DisableInt():
1c003170:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003174:	29803076 	st.w	$r22,$r3,12(0xc)
1c003178:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00317c:	0380100c 	ori	$r12,$r0,0x4
1c003180:	04000180 	csrxchg	$r0,$r12,0x0
1c003184:	03400000 	andi	$r0,$r0,0x0
1c003188:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00318c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003190:	4c000020 	jirl	$r0,$r1,0

1c003194 <EnableInt>:
EnableInt():
1c003194:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003198:	29803076 	st.w	$r22,$r3,12(0xc)
1c00319c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0031a0:	0380100c 	ori	$r12,$r0,0x4
1c0031a4:	0400018c 	csrxchg	$r12,$r12,0x0
1c0031a8:	03400000 	andi	$r0,$r0,0x0
1c0031ac:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0031b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0031b4:	4c000020 	jirl	$r0,$r1,0

1c0031b8 <Set_Timer_stop>:
Set_Timer_stop():
1c0031b8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0031bc:	29803076 	st.w	$r22,$r3,12(0xc)
1c0031c0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0031c4:	04010420 	csrwr	$r0,0x41
1c0031c8:	03400000 	andi	$r0,$r0,0x0
1c0031cc:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0031d0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0031d4:	4c000020 	jirl	$r0,$r1,0

1c0031d8 <Set_Timer_clear>:
Set_Timer_clear():
1c0031d8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0031dc:	29803076 	st.w	$r22,$r3,12(0xc)
1c0031e0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0031e4:	0380040c 	ori	$r12,$r0,0x1
1c0031e8:	0401102c 	csrwr	$r12,0x44
1c0031ec:	03400000 	andi	$r0,$r0,0x0
1c0031f0:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0031f4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0031f8:	4c000020 	jirl	$r0,$r1,0

1c0031fc <Wake_Set>:
Wake_Set():
1c0031fc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003200:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003204:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003208:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00320c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003210:	40006980 	beqz	$r12,104(0x68) # 1c003278 <Wake_Set+0x7c>
1c003214:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003218:	0040a18c 	slli.w	$r12,$r12,0x8
1c00321c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003220:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003224:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003228:	0380218c 	ori	$r12,$r12,0x8
1c00322c:	2880018d 	ld.w	$r13,$r12,0
1c003230:	14001fec 	lu12i.w	$r12,255(0xff)
1c003234:	03bffd8c 	ori	$r12,$r12,0xfff
1c003238:	0014b1ac 	and	$r12,$r13,$r12
1c00323c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003240:	001031ac 	add.w	$r12,$r13,$r12
1c003244:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003248:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00324c:	0380318c 	ori	$r12,$r12,0xc
1c003250:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c003254:	2980018d 	st.w	$r13,$r12,0
1c003258:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00325c:	0380118c 	ori	$r12,$r12,0x4
1c003260:	2880018d 	ld.w	$r13,$r12,0
1c003264:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003268:	0380118c 	ori	$r12,$r12,0x4
1c00326c:	038601ad 	ori	$r13,$r13,0x180
1c003270:	2980018d 	st.w	$r13,$r12,0
1c003274:	50002400 	b	36(0x24) # 1c003298 <Wake_Set+0x9c>
1c003278:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00327c:	0380118c 	ori	$r12,$r12,0x4
1c003280:	2880018e 	ld.w	$r14,$r12,0
1c003284:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003288:	0380118c 	ori	$r12,$r12,0x4
1c00328c:	02b9fc0d 	addi.w	$r13,$r0,-385(0xe7f)
1c003290:	0014b5cd 	and	$r13,$r14,$r13
1c003294:	2980018d 	st.w	$r13,$r12,0
1c003298:	03400000 	andi	$r0,$r0,0x0
1c00329c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0032a0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0032a4:	4c000020 	jirl	$r0,$r1,0

1c0032a8 <PMU_GetRstRrc>:
PMU_GetRstRrc():
1c0032a8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0032ac:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0032b0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0032b4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0032b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032bc:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0032c0:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c0032c4:	0014b1ac 	and	$r12,$r13,$r12
1c0032c8:	44000d80 	bnez	$r12,12(0xc) # 1c0032d4 <PMU_GetRstRrc+0x2c>
1c0032cc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0032d0:	50003000 	b	48(0x30) # 1c003300 <PMU_GetRstRrc+0x58>
1c0032d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032d8:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0032dc:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c0032e0:	0014b1ad 	and	$r13,$r13,$r12
1c0032e4:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c0032e8:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0032f8 <PMU_GetRstRrc+0x50>
1c0032ec:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0032f0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0032f4:	50000c00 	b	12(0xc) # 1c003300 <PMU_GetRstRrc+0x58>
1c0032f8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0032fc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003300:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003304:	00150184 	move	$r4,$r12
1c003308:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00330c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003310:	4c000020 	jirl	$r0,$r1,0

1c003314 <PMU_GetBootSpiStatus>:
PMU_GetBootSpiStatus():
1c003314:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003318:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00331c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003320:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003324:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003328:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00332c:	0380198c 	ori	$r12,$r12,0x6
1c003330:	2a00018c 	ld.bu	$r12,$r12,0
1c003334:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003338:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00333c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003340:	0340058c 	andi	$r12,$r12,0x1
1c003344:	40000d80 	beqz	$r12,12(0xc) # 1c003350 <PMU_GetBootSpiStatus+0x3c>
1c003348:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00334c:	50000800 	b	8(0x8) # 1c003354 <PMU_GetBootSpiStatus+0x40>
1c003350:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003354:	00150184 	move	$r4,$r12
1c003358:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00335c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003360:	4c000020 	jirl	$r0,$r1,0

1c003364 <ls1x_logo>:
ls1x_logo():
1c003364:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003368:	29803061 	st.w	$r1,$r3,12(0xc)
1c00336c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003370:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003374:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003378:	02b58084 	addi.w	$r4,$r4,-672(0xd60)
1c00337c:	57e81bff 	bl	-6120(0xfffe818) # 1c001b94 <myprintf>
1c003380:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003384:	02b56084 	addi.w	$r4,$r4,-680(0xd58)
1c003388:	57e80fff 	bl	-6132(0xfffe80c) # 1c001b94 <myprintf>
1c00338c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003390:	02b6c084 	addi.w	$r4,$r4,-592(0xdb0)
1c003394:	57e803ff 	bl	-6144(0xfffe800) # 1c001b94 <myprintf>
1c003398:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00339c:	02b82084 	addi.w	$r4,$r4,-504(0xe08)
1c0033a0:	57e7f7ff 	bl	-6156(0xfffe7f4) # 1c001b94 <myprintf>
1c0033a4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0033a8:	02b98084 	addi.w	$r4,$r4,-416(0xe60)
1c0033ac:	57e7ebff 	bl	-6168(0xfffe7e8) # 1c001b94 <myprintf>
1c0033b0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0033b4:	02bae084 	addi.w	$r4,$r4,-328(0xeb8)
1c0033b8:	57e7dfff 	bl	-6180(0xfffe7dc) # 1c001b94 <myprintf>
1c0033bc:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0033c0:	02bc4084 	addi.w	$r4,$r4,-240(0xf10)
1c0033c4:	57e7d3ff 	bl	-6192(0xfffe7d0) # 1c001b94 <myprintf>
1c0033c8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0033cc:	02bda084 	addi.w	$r4,$r4,-152(0xf68)
1c0033d0:	57e7c7ff 	bl	-6204(0xfffe7c4) # 1c001b94 <myprintf>
1c0033d4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0033d8:	02bf0084 	addi.w	$r4,$r4,-64(0xfc0)
1c0033dc:	57e7bbff 	bl	-6216(0xfffe7b8) # 1c001b94 <myprintf>
1c0033e0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0033e4:	02806084 	addi.w	$r4,$r4,24(0x18)
1c0033e8:	57e7afff 	bl	-6228(0xfffe7ac) # 1c001b94 <myprintf>
1c0033ec:	03400000 	andi	$r0,$r0,0x0
1c0033f0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0033f4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0033f8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0033fc:	4c000020 	jirl	$r0,$r1,0

1c003400 <get_count>:
get_count():
1c003400:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003404:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003408:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00340c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003410:	0000600c 	rdtimel.w	$r12,$r0
1c003414:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003418:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00341c:	00150184 	move	$r4,$r12
1c003420:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003424:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003428:	4c000020 	jirl	$r0,$r1,0

1c00342c <open_count>:
open_count():
1c00342c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003430:	29803076 	st.w	$r22,$r3,12(0xc)
1c003434:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003438:	0380400c 	ori	$r12,$r0,0x10
1c00343c:	0402bd80 	csrxchg	$r0,$r12,0xaf
1c003440:	03400000 	andi	$r0,$r0,0x0
1c003444:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003448:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00344c:	4c000020 	jirl	$r0,$r1,0

1c003450 <start_count>:
start_count():
1c003450:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003454:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003458:	29806076 	st.w	$r22,$r3,24(0x18)
1c00345c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003460:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003464:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003468:	29800180 	st.w	$r0,$r12,0
1c00346c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003470:	29801180 	st.w	$r0,$r12,4(0x4)
1c003474:	57ff8fff 	bl	-116(0xfffff8c) # 1c003400 <get_count>
1c003478:	0015008d 	move	$r13,$r4
1c00347c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003480:	2980018d 	st.w	$r13,$r12,0
1c003484:	03400000 	andi	$r0,$r0,0x0
1c003488:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00348c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003490:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003494:	4c000020 	jirl	$r0,$r1,0

1c003498 <stop_count>:
stop_count():
1c003498:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00349c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0034a0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0034a4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0034a8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0034ac:	57ff57ff 	bl	-172(0xfffff54) # 1c003400 <get_count>
1c0034b0:	0015008d 	move	$r13,$r4
1c0034b4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034b8:	2980118d 	st.w	$r13,$r12,4(0x4)
1c0034bc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034c0:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0034c4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034c8:	2880018c 	ld.w	$r12,$r12,0
1c0034cc:	68001dac 	bltu	$r13,$r12,28(0x1c) # 1c0034e8 <stop_count+0x50>
1c0034d0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034d4:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0034d8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034dc:	2880018c 	ld.w	$r12,$r12,0
1c0034e0:	001131ac 	sub.w	$r12,$r13,$r12
1c0034e4:	50002800 	b	40(0x28) # 1c00350c <stop_count+0x74>
1c0034e8:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0034ec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0034f0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034f4:	2880018c 	ld.w	$r12,$r12,0
1c0034f8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0034fc:	001131ad 	sub.w	$r13,$r13,$r12
1c003500:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003504:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c003508:	001031ac 	add.w	$r12,$r13,$r12
1c00350c:	00150184 	move	$r4,$r12
1c003510:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003514:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003518:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00351c:	4c000020 	jirl	$r0,$r1,0

1c003520 <delay_cycle>:
delay_cycle():
1c003520:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003524:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003528:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00352c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003530:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003534:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003538:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c00353c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003540:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c003544:	00150184 	move	$r4,$r12
1c003548:	57ff0bff 	bl	-248(0xfffff08) # 1c003450 <start_count>
1c00354c:	50001400 	b	20(0x14) # 1c003560 <delay_cycle+0x40>
1c003550:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c003554:	00150184 	move	$r4,$r12
1c003558:	57ff43ff 	bl	-192(0xfffff40) # 1c003498 <stop_count>
1c00355c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003560:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003564:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003568:	6bffe9ac 	bltu	$r13,$r12,-24(0x3ffe8) # 1c003550 <delay_cycle+0x30>
1c00356c:	03400000 	andi	$r0,$r0,0x0
1c003570:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003574:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003578:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00357c:	4c000020 	jirl	$r0,$r1,0

1c003580 <delay_us>:
delay_us():
1c003580:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003584:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003588:	29806076 	st.w	$r22,$r3,24(0x18)
1c00358c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003590:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003594:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003598:	00408d8c 	slli.w	$r12,$r12,0x3
1c00359c:	00150184 	move	$r4,$r12
1c0035a0:	57ff83ff 	bl	-128(0xfffff80) # 1c003520 <delay_cycle>
1c0035a4:	03400000 	andi	$r0,$r0,0x0
1c0035a8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0035ac:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0035b0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0035b4:	4c000020 	jirl	$r0,$r1,0

1c0035b8 <delay_ms>:
delay_ms():
1c0035b8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0035bc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0035c0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0035c4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0035c8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0035cc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0035d0:	1400002c 	lu12i.w	$r12,1(0x1)
1c0035d4:	03bd018c 	ori	$r12,$r12,0xf40
1c0035d8:	001c31ac 	mul.w	$r12,$r13,$r12
1c0035dc:	00150184 	move	$r4,$r12
1c0035e0:	57ff43ff 	bl	-192(0xfffff40) # 1c003520 <delay_cycle>
1c0035e4:	03400000 	andi	$r0,$r0,0x0
1c0035e8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0035ec:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0035f0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0035f4:	4c000020 	jirl	$r0,$r1,0

1c0035f8 <memset>:
memset():
1c0035f8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0035fc:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003600:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003604:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003608:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00360c:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c003610:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003614:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003618:	50001c00 	b	28(0x1c) # 1c003634 <memset+0x3c>
1c00361c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003620:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c003624:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003628:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00362c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003630:	2900018d 	st.b	$r13,$r12,0
1c003634:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c003638:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00363c:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c003640:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c00361c <memset+0x24>
1c003644:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003648:	00150184 	move	$r4,$r12
1c00364c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003650:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003654:	4c000020 	jirl	$r0,$r1,0

1c003658 <strcpy>:
strcpy():
1c003658:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00365c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003660:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003664:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003668:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00366c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003670:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003674:	03400000 	andi	$r0,$r0,0x0
1c003678:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00367c:	028005ac 	addi.w	$r12,$r13,1(0x1)
1c003680:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c003684:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003688:	0280058e 	addi.w	$r14,$r12,1(0x1)
1c00368c:	29bf72ce 	st.w	$r14,$r22,-36(0xfdc)
1c003690:	280001ad 	ld.b	$r13,$r13,0
1c003694:	2900018d 	st.b	$r13,$r12,0
1c003698:	2800018c 	ld.b	$r12,$r12,0
1c00369c:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c003678 <strcpy+0x20>
1c0036a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036a4:	00150184 	move	$r4,$r12
1c0036a8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0036ac:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0036b0:	4c000020 	jirl	$r0,$r1,0

1c0036b4 <strlen>:
strlen():
1c0036b4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0036b8:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0036bc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0036c0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0036c4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0036c8:	50001000 	b	16(0x10) # 1c0036d8 <strlen+0x24>
1c0036cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036d0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0036d4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0036d8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0036dc:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0036e0:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c0036e4:	2800018c 	ld.b	$r12,$r12,0
1c0036e8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0036cc <strlen+0x18>
1c0036ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036f0:	00150184 	move	$r4,$r12
1c0036f4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0036f8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0036fc:	4c000020 	jirl	$r0,$r1,0

1c003700 <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c003700:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003704:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003708:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00370c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003710:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c003714:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003718:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c00371c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003720:	001531ad 	or	$r13,$r13,$r12
1c003724:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003728:	2980318d 	st.w	$r13,$r12,12(0xc)
1c00372c:	03400000 	andi	$r0,$r0,0x0
1c003730:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003734:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003738:	4c000020 	jirl	$r0,$r1,0

1c00373c <WDG_getOddValue>:
WDG_getOddValue():
1c00373c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003740:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003744:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003748:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00374c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003750:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003754:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003758:	50003800 	b	56(0x38) # 1c003790 <WDG_getOddValue+0x54>
1c00375c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003760:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003764:	001731ac 	sll.w	$r12,$r13,$r12
1c003768:	0015018d 	move	$r13,$r12
1c00376c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003770:	0014b1ac 	and	$r12,$r13,$r12
1c003774:	40001180 	beqz	$r12,16(0x10) # 1c003784 <WDG_getOddValue+0x48>
1c003778:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00377c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003780:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003784:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003788:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00378c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003790:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003794:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c003798:	67ffc58d 	bge	$r12,$r13,-60(0x3ffc4) # 1c00375c <WDG_getOddValue+0x20>
1c00379c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0037a0:	0340058c 	andi	$r12,$r12,0x1
1c0037a4:	44000d80 	bnez	$r12,12(0xc) # 1c0037b0 <WDG_getOddValue+0x74>
1c0037a8:	1400010c 	lu12i.w	$r12,8(0x8)
1c0037ac:	50000800 	b	8(0x8) # 1c0037b4 <WDG_getOddValue+0x78>
1c0037b0:	0015000c 	move	$r12,$r0
1c0037b4:	00150184 	move	$r4,$r12
1c0037b8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0037bc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0037c0:	4c000020 	jirl	$r0,$r1,0

1c0037c4 <WDG_SetWatchDog>:
WDG_SetWatchDog():
1c0037c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0037c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0037cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0037d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0037d4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0037d8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0037dc:	140000ec 	lu12i.w	$r12,7(0x7)
1c0037e0:	03bffd8c 	ori	$r12,$r12,0xfff
1c0037e4:	0014b1ac 	and	$r12,$r13,$r12
1c0037e8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0037ec:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c0037f0:	57ff4fff 	bl	-180(0xfffff4c) # 1c00373c <WDG_getOddValue>
1c0037f4:	0015008c 	move	$r12,$r4
1c0037f8:	0015018d 	move	$r13,$r12
1c0037fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003800:	0015358c 	or	$r12,$r12,$r13
1c003804:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003808:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00380c:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c003810:	0396a9ad 	ori	$r13,$r13,0x5aa
1c003814:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c003818:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00381c:	0014300c 	nor	$r12,$r0,$r12
1c003820:	0040c18c 	slli.w	$r12,$r12,0x10
1c003824:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003828:	001531ac 	or	$r12,$r13,$r12
1c00382c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003830:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003834:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003838:	2980c18d 	st.w	$r13,$r12,48(0x30)
1c00383c:	03400000 	andi	$r0,$r0,0x0
1c003840:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003844:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003848:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00384c:	4c000020 	jirl	$r0,$r1,0

1c003850 <WDG_DogFeed>:
WDG_DogFeed():
1c003850:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003854:	29803076 	st.w	$r22,$r3,12(0xc)
1c003858:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00385c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003860:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c003864:	0396a9ad 	ori	$r13,$r13,0x5aa
1c003868:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c00386c:	03400000 	andi	$r0,$r0,0x0
1c003870:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003874:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003878:	4c000020 	jirl	$r0,$r1,0

1c00387c <WdgInit>:
WdgInit():
1c00387c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003880:	29803061 	st.w	$r1,$r3,12(0xc)
1c003884:	29802076 	st.w	$r22,$r3,8(0x8)
1c003888:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00388c:	150000ec 	lu12i.w	$r12,-524281(0x80007)
1c003890:	03bffd84 	ori	$r4,$r12,0xfff
1c003894:	57ff33ff 	bl	-208(0xfffff30) # 1c0037c4 <WDG_SetWatchDog>
1c003898:	03400000 	andi	$r0,$r0,0x0
1c00389c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0038a0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0038a4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0038a8:	4c000020 	jirl	$r0,$r1,0

1c0038ac <Adc_powerOn>:
Adc_powerOn():
1c0038ac:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0038b0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0038b4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0038b8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0038bc:	57f87fff 	bl	-1924(0xffff87c) # 1c003138 <IsGlobalIntOpen>
1c0038c0:	0015008c 	move	$r12,$r4
1c0038c4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0038c8:	57f8abff 	bl	-1880(0xffff8a8) # 1c003170 <DisableInt>
1c0038cc:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c0038d0:	288001ac 	ld.w	$r12,$r13,0
1c0038d4:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0038d8:	007041cc 	bstrins.w	$r12,$r14,0x10,0x10
1c0038dc:	298001ac 	st.w	$r12,$r13,0
1c0038e0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0038e4:	40000980 	beqz	$r12,8(0x8) # 1c0038ec <Adc_powerOn+0x40>
1c0038e8:	57f8afff 	bl	-1876(0xffff8ac) # 1c003194 <EnableInt>
1c0038ec:	03400000 	andi	$r0,$r0,0x0
1c0038f0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0038f4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0038f8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0038fc:	4c000020 	jirl	$r0,$r1,0

1c003900 <Adc_open>:
Adc_open():
1c003900:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003904:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003908:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00390c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003910:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003914:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003918:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00391c:	001731ac 	sll.w	$r12,$r13,$r12
1c003920:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003924:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003928:	0340058c 	andi	$r12,$r12,0x1
1c00392c:	40003580 	beqz	$r12,52(0x34) # 1c003960 <Adc_open+0x60>
1c003930:	57f80bff 	bl	-2040(0xffff808) # 1c003138 <IsGlobalIntOpen>
1c003934:	0015008c 	move	$r12,$r4
1c003938:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c00393c:	57f837ff 	bl	-1996(0xffff834) # 1c003170 <DisableInt>
1c003940:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c003944:	288001ac 	ld.w	$r12,$r13,0
1c003948:	0071440c 	bstrins.w	$r12,$r0,0x11,0x11
1c00394c:	298001ac 	st.w	$r12,$r13,0
1c003950:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c003954:	40004980 	beqz	$r12,72(0x48) # 1c00399c <Adc_open+0x9c>
1c003958:	57f83fff 	bl	-1988(0xffff83c) # 1c003194 <EnableInt>
1c00395c:	50004000 	b	64(0x40) # 1c00399c <Adc_open+0x9c>
1c003960:	57f7dbff 	bl	-2088(0xffff7d8) # 1c003138 <IsGlobalIntOpen>
1c003964:	0015008c 	move	$r12,$r4
1c003968:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c00396c:	57f807ff 	bl	-2044(0xffff804) # 1c003170 <DisableInt>
1c003970:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003974:	0044918c 	srli.w	$r12,$r12,0x4
1c003978:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c00397c:	03403d8c 	andi	$r12,$r12,0xf
1c003980:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c003984:	288001ac 	ld.w	$r12,$r13,0
1c003988:	007751cc 	bstrins.w	$r12,$r14,0x17,0x14
1c00398c:	298001ac 	st.w	$r12,$r13,0
1c003990:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c003994:	40000980 	beqz	$r12,8(0x8) # 1c00399c <Adc_open+0x9c>
1c003998:	57f7ffff 	bl	-2052(0xffff7fc) # 1c003194 <EnableInt>
1c00399c:	03400000 	andi	$r0,$r0,0x0
1c0039a0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0039a4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0039a8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0039ac:	4c000020 	jirl	$r0,$r1,0

1c0039b0 <Adc_Measure>:
Adc_Measure():
1c0039b0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0039b4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0039b8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0039bc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0039c0:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c0039c4:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c0039c8:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c0039cc:	50008400 	b	132(0x84) # 1c003a50 <Adc_Measure+0xa0>
1c0039d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0039d4:	0381b18c 	ori	$r12,$r12,0x6c
1c0039d8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0039dc:	038401ad 	ori	$r13,$r13,0x100
1c0039e0:	2980018d 	st.w	$r13,$r12,0
1c0039e4:	03400000 	andi	$r0,$r0,0x0
1c0039e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0039ec:	0381b18c 	ori	$r12,$r12,0x6c
1c0039f0:	2880018c 	ld.w	$r12,$r12,0
1c0039f4:	0344018c 	andi	$r12,$r12,0x100
1c0039f8:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c0039e8 <Adc_Measure+0x38>
1c0039fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003a00:	0381c18c 	ori	$r12,$r12,0x70
1c003a04:	2880018c 	ld.w	$r12,$r12,0
1c003a08:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003a0c:	037ffd8c 	andi	$r12,$r12,0xfff
1c003a10:	297fa2cc 	st.h	$r12,$r22,-24(0xfe8)
1c003a14:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c003a18:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c003a1c:	6c00298d 	bgeu	$r12,$r13,40(0x28) # 1c003a44 <Adc_Measure+0x94>
1c003a20:	2a7faacd 	ld.hu	$r13,$r22,-22(0xfea)
1c003a24:	2a7fa2cc 	ld.hu	$r12,$r22,-24(0xfe8)
1c003a28:	001031ac 	add.w	$r12,$r13,$r12
1c003a2c:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c003a30:	2a7fa2cd 	ld.hu	$r13,$r22,-24(0xfe8)
1c003a34:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c003a38:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c003a44 <Adc_Measure+0x94>
1c003a3c:	2a7fa2cc 	ld.hu	$r12,$r22,-24(0xfe8)
1c003a40:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c003a44:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003a48:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003a4c:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003a50:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c003a54:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c003a58:	6fff798d 	bgeu	$r12,$r13,-136(0x3ff78) # 1c0039d0 <Adc_Measure+0x20>
1c003a5c:	2a7faacd 	ld.hu	$r13,$r22,-22(0xfea)
1c003a60:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c003a64:	001131ad 	sub.w	$r13,$r13,$r12
1c003a68:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c003a6c:	002031ae 	div.w	$r14,$r13,$r12
1c003a70:	5c000980 	bne	$r12,$r0,8(0x8) # 1c003a78 <Adc_Measure+0xc8>
1c003a74:	002a0007 	break	0x7
1c003a78:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c003a7c:	00150184 	move	$r4,$r12
1c003a80:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003a84:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003a88:	4c000020 	jirl	$r0,$r1,0

1c003a8c <Adc_getVoltage>:
Adc_getVoltage():
1c003a8c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003a90:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003a94:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003a98:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003a9c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003aa0:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c003aa4:	57ff0fff 	bl	-244(0xfffff0c) # 1c0039b0 <Adc_Measure>
1c003aa8:	0015008c 	move	$r12,$r4
1c003aac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003ab0:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c003ab4:	57feffff 	bl	-260(0xffffefc) # 1c0039b0 <Adc_Measure>
1c003ab8:	0015008c 	move	$r12,$r4
1c003abc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003ac0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003ac4:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c003ac8:	001c31ad 	mul.w	$r13,$r13,$r12
1c003acc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003ad0:	002131ae 	div.wu	$r14,$r13,$r12
1c003ad4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c003adc <Adc_getVoltage+0x50>
1c003ad8:	002a0007 	break	0x7
1c003adc:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c003ae0:	00150184 	move	$r4,$r12
1c003ae4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003ae8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003aec:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003af0:	4c000020 	jirl	$r0,$r1,0

1c003af4 <TOUCH_GetBaseVal>:
TOUCH_GetBaseVal():
1c003af4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003af8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003afc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003b00:	0015008c 	move	$r12,$r4
1c003b04:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003b08:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003b0c:	0040898c 	slli.w	$r12,$r12,0x2
1c003b10:	0015018d 	move	$r13,$r12
1c003b14:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003b18:	0381018c 	ori	$r12,$r12,0x40
1c003b1c:	001031ac 	add.w	$r12,$r13,$r12
1c003b20:	2880018c 	ld.w	$r12,$r12,0
1c003b24:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003b28:	037ffd8c 	andi	$r12,$r12,0xfff
1c003b2c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003b30:	00150184 	move	$r4,$r12
1c003b34:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003b38:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003b3c:	4c000020 	jirl	$r0,$r1,0

1c003b40 <TOUCH_GetCountValue>:
TOUCH_GetCountValue():
1c003b40:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003b44:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003b48:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003b4c:	0015008c 	move	$r12,$r4
1c003b50:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003b54:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003b58:	0040898c 	slli.w	$r12,$r12,0x2
1c003b5c:	0015018d 	move	$r13,$r12
1c003b60:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003b64:	0382018c 	ori	$r12,$r12,0x80
1c003b68:	001031ac 	add.w	$r12,$r13,$r12
1c003b6c:	2880018c 	ld.w	$r12,$r12,0
1c003b70:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003b74:	037ffd8c 	andi	$r12,$r12,0xfff
1c003b78:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003b7c:	00150184 	move	$r4,$r12
1c003b80:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003b84:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003b88:	4c000020 	jirl	$r0,$r1,0

1c003b8c <Printf_KeyChannel>:
Printf_KeyChannel():
1c003b8c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003b90:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003b94:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003b98:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003b9c:	0015008c 	move	$r12,$r4
1c003ba0:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c003ba4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003ba8:	50003400 	b	52(0x34) # 1c003bdc <Printf_KeyChannel+0x50>
1c003bac:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c003bb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003bb4:	001831ac 	sra.w	$r12,$r13,$r12
1c003bb8:	0340058c 	andi	$r12,$r12,0x1
1c003bbc:	40001580 	beqz	$r12,20(0x14) # 1c003bd0 <Printf_KeyChannel+0x44>
1c003bc0:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c003bc4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003bc8:	02a26084 	addi.w	$r4,$r4,-1896(0x898)
1c003bcc:	57dfcbff 	bl	-8248(0xfffdfc8) # 1c001b94 <myprintf>
1c003bd0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003bd4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003bd8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003bdc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003be0:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003be4:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c003bac <Printf_KeyChannel+0x20>
1c003be8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003bec:	02a1e084 	addi.w	$r4,$r4,-1928(0x878)
1c003bf0:	57dfa7ff 	bl	-8284(0xfffdfa4) # 1c001b94 <myprintf>
1c003bf4:	03400000 	andi	$r0,$r0,0x0
1c003bf8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003bfc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003c00:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003c04:	4c000020 	jirl	$r0,$r1,0

1c003c08 <Printf_KeyType>:
Printf_KeyType():
1c003c08:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003c0c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003c10:	29806076 	st.w	$r22,$r3,24(0x18)
1c003c14:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003c18:	0015008c 	move	$r12,$r4
1c003c1c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003c20:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003c24:	0340058c 	andi	$r12,$r12,0x1
1c003c28:	40001180 	beqz	$r12,16(0x10) # 1c003c38 <Printf_KeyType+0x30>
1c003c2c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003c30:	02a0e084 	addi.w	$r4,$r4,-1992(0x838)
1c003c34:	57df63ff 	bl	-8352(0xfffdf60) # 1c001b94 <myprintf>
1c003c38:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003c3c:	0340098c 	andi	$r12,$r12,0x2
1c003c40:	40001180 	beqz	$r12,16(0x10) # 1c003c50 <Printf_KeyType+0x48>
1c003c44:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003c48:	02a0a084 	addi.w	$r4,$r4,-2008(0x828)
1c003c4c:	57df4bff 	bl	-8376(0xfffdf48) # 1c001b94 <myprintf>
1c003c50:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003c54:	0340118c 	andi	$r12,$r12,0x4
1c003c58:	40001180 	beqz	$r12,16(0x10) # 1c003c68 <Printf_KeyType+0x60>
1c003c5c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003c60:	02a06084 	addi.w	$r4,$r4,-2024(0x818)
1c003c64:	57df33ff 	bl	-8400(0xfffdf30) # 1c001b94 <myprintf>
1c003c68:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003c6c:	0340218c 	andi	$r12,$r12,0x8
1c003c70:	40001180 	beqz	$r12,16(0x10) # 1c003c80 <Printf_KeyType+0x78>
1c003c74:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003c78:	02a03084 	addi.w	$r4,$r4,-2036(0x80c)
1c003c7c:	57df1bff 	bl	-8424(0xfffdf18) # 1c001b94 <myprintf>
1c003c80:	03400000 	andi	$r0,$r0,0x0
1c003c84:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003c88:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003c8c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003c90:	4c000020 	jirl	$r0,$r1,0

1c003c94 <Printf_KeyVal>:
Printf_KeyVal():
1c003c94:	02bd4063 	addi.w	$r3,$r3,-176(0xf50)
1c003c98:	2982b061 	st.w	$r1,$r3,172(0xac)
1c003c9c:	2982a076 	st.w	$r22,$r3,168(0xa8)
1c003ca0:	0282c076 	addi.w	$r22,$r3,176(0xb0)
1c003ca4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003ca8:	5000d800 	b	216(0xd8) # 1c003d80 <Printf_KeyVal+0xec>
1c003cac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003cb0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003cb4:	00150184 	move	$r4,$r12
1c003cb8:	57fe8bff 	bl	-376(0xffffe88) # 1c003b40 <TOUCH_GetCountValue>
1c003cbc:	0015008c 	move	$r12,$r4
1c003cc0:	0015018d 	move	$r13,$r12
1c003cc4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003cc8:	0040898c 	slli.w	$r12,$r12,0x2
1c003ccc:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003cd0:	001031cc 	add.w	$r12,$r14,$r12
1c003cd4:	29bdb18d 	st.w	$r13,$r12,-148(0xf6c)
1c003cd8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003cdc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003ce0:	00150184 	move	$r4,$r12
1c003ce4:	57fe13ff 	bl	-496(0xffffe10) # 1c003af4 <TOUCH_GetBaseVal>
1c003ce8:	0015008c 	move	$r12,$r4
1c003cec:	0015018d 	move	$r13,$r12
1c003cf0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003cf4:	0040898c 	slli.w	$r12,$r12,0x2
1c003cf8:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003cfc:	001031cc 	add.w	$r12,$r14,$r12
1c003d00:	29be718d 	st.w	$r13,$r12,-100(0xf9c)
1c003d04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d08:	0040898c 	slli.w	$r12,$r12,0x2
1c003d0c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003d10:	001031ac 	add.w	$r12,$r13,$r12
1c003d14:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003d18:	40004980 	beqz	$r12,72(0x48) # 1c003d60 <Printf_KeyVal+0xcc>
1c003d1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d20:	0040898c 	slli.w	$r12,$r12,0x2
1c003d24:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003d28:	001031ac 	add.w	$r12,$r13,$r12
1c003d2c:	28be718d 	ld.w	$r13,$r12,-100(0xf9c)
1c003d30:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d34:	0040898c 	slli.w	$r12,$r12,0x2
1c003d38:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003d3c:	001031cc 	add.w	$r12,$r14,$r12
1c003d40:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003d44:	001131ad 	sub.w	$r13,$r13,$r12
1c003d48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d4c:	0040898c 	slli.w	$r12,$r12,0x2
1c003d50:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003d54:	001031cc 	add.w	$r12,$r14,$r12
1c003d58:	29bf318d 	st.w	$r13,$r12,-52(0xfcc)
1c003d5c:	50001800 	b	24(0x18) # 1c003d74 <Printf_KeyVal+0xe0>
1c003d60:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d64:	0040898c 	slli.w	$r12,$r12,0x2
1c003d68:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003d6c:	001031ac 	add.w	$r12,$r13,$r12
1c003d70:	29bf3180 	st.w	$r0,$r12,-52(0xfcc)
1c003d74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d78:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003d7c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003d80:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003d84:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003d88:	67ff258d 	bge	$r12,$r13,-220(0x3ff24) # 1c003cac <Printf_KeyVal+0x18>
1c003d8c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003d90:	029c0084 	addi.w	$r4,$r4,1792(0x700)
1c003d94:	57de03ff 	bl	-8704(0xfffde00) # 1c001b94 <myprintf>
1c003d98:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003d9c:	029c7084 	addi.w	$r4,$r4,1820(0x71c)
1c003da0:	57ddf7ff 	bl	-8716(0xfffddf4) # 1c001b94 <myprintf>
1c003da4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003da8:	50003400 	b	52(0x34) # 1c003ddc <Printf_KeyVal+0x148>
1c003dac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003db0:	0040898c 	slli.w	$r12,$r12,0x2
1c003db4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003db8:	001031ac 	add.w	$r12,$r13,$r12
1c003dbc:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003dc0:	00150185 	move	$r5,$r12
1c003dc4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003dc8:	029be084 	addi.w	$r4,$r4,1784(0x6f8)
1c003dcc:	57ddcbff 	bl	-8760(0xfffddc8) # 1c001b94 <myprintf>
1c003dd0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003dd4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003dd8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003ddc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003de0:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003de4:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003dac <Printf_KeyVal+0x118>
1c003de8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003dec:	029b7084 	addi.w	$r4,$r4,1756(0x6dc)
1c003df0:	57dda7ff 	bl	-8796(0xfffdda4) # 1c001b94 <myprintf>
1c003df4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003df8:	50003400 	b	52(0x34) # 1c003e2c <Printf_KeyVal+0x198>
1c003dfc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e00:	0040898c 	slli.w	$r12,$r12,0x2
1c003e04:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003e08:	001031ac 	add.w	$r12,$r13,$r12
1c003e0c:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003e10:	00150185 	move	$r5,$r12
1c003e14:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003e18:	029aa084 	addi.w	$r4,$r4,1704(0x6a8)
1c003e1c:	57dd7bff 	bl	-8840(0xfffdd78) # 1c001b94 <myprintf>
1c003e20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e24:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003e28:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003e2c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003e30:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003e34:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003dfc <Printf_KeyVal+0x168>
1c003e38:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003e3c:	029a6084 	addi.w	$r4,$r4,1688(0x698)
1c003e40:	57dd57ff 	bl	-8876(0xfffdd54) # 1c001b94 <myprintf>
1c003e44:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003e48:	50007400 	b	116(0x74) # 1c003ebc <Printf_KeyVal+0x228>
1c003e4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e50:	0040898c 	slli.w	$r12,$r12,0x2
1c003e54:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003e58:	001031ac 	add.w	$r12,$r13,$r12
1c003e5c:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003e60:	64002d80 	bge	$r12,$r0,44(0x2c) # 1c003e8c <Printf_KeyVal+0x1f8>
1c003e64:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e68:	0040898c 	slli.w	$r12,$r12,0x2
1c003e6c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003e70:	001031ac 	add.w	$r12,$r13,$r12
1c003e74:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003e78:	00150185 	move	$r5,$r12
1c003e7c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003e80:	02998084 	addi.w	$r4,$r4,1632(0x660)
1c003e84:	57dd13ff 	bl	-8944(0xfffdd10) # 1c001b94 <myprintf>
1c003e88:	50002800 	b	40(0x28) # 1c003eb0 <Printf_KeyVal+0x21c>
1c003e8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e90:	0040898c 	slli.w	$r12,$r12,0x2
1c003e94:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003e98:	001031ac 	add.w	$r12,$r13,$r12
1c003e9c:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003ea0:	00150185 	move	$r5,$r12
1c003ea4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003ea8:	02990084 	addi.w	$r4,$r4,1600(0x640)
1c003eac:	57dcebff 	bl	-8984(0xfffdce8) # 1c001b94 <myprintf>
1c003eb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003eb4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003eb8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003ebc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003ec0:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003ec4:	67ff898d 	bge	$r12,$r13,-120(0x3ff88) # 1c003e4c <Printf_KeyVal+0x1b8>
1c003ec8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003ecc:	02966084 	addi.w	$r4,$r4,1432(0x598)
1c003ed0:	57dcc7ff 	bl	-9020(0xfffdcc4) # 1c001b94 <myprintf>
1c003ed4:	03400000 	andi	$r0,$r0,0x0
1c003ed8:	2882b061 	ld.w	$r1,$r3,172(0xac)
1c003edc:	2882a076 	ld.w	$r22,$r3,168(0xa8)
1c003ee0:	0282c063 	addi.w	$r3,$r3,176(0xb0)
1c003ee4:	4c000020 	jirl	$r0,$r1,0

1c003ee8 <TIM_GetITStatus>:
TIM_GetITStatus():
1c003ee8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003eec:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003ef0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003ef4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003ef8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003efc:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003f00:	2880018d 	ld.w	$r13,$r12,0
1c003f04:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003f08:	0014b1ac 	and	$r12,$r13,$r12
1c003f0c:	40001180 	beqz	$r12,16(0x10) # 1c003f1c <TIM_GetITStatus+0x34>
1c003f10:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003f14:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003f18:	50000800 	b	8(0x8) # 1c003f20 <TIM_GetITStatus+0x38>
1c003f1c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003f20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f24:	00150184 	move	$r4,$r12
1c003f28:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003f2c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003f30:	4c000020 	jirl	$r0,$r1,0

1c003f34 <TIM_ClearIT>:
TIM_ClearIT():
1c003f34:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003f38:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003f3c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003f40:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003f44:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003f48:	2880018e 	ld.w	$r14,$r12,0
1c003f4c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003f50:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003f54:	001535cd 	or	$r13,$r14,$r13
1c003f58:	2980018d 	st.w	$r13,$r12,0
1c003f5c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003f60:	03800d8c 	ori	$r12,$r12,0x3
1c003f64:	2a00018c 	ld.bu	$r12,$r12,0
1c003f68:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003f6c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003f70:	03800d8c 	ori	$r12,$r12,0x3
1c003f74:	038005ad 	ori	$r13,$r13,0x1
1c003f78:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003f7c:	2900018d 	st.b	$r13,$r12,0
1c003f80:	03400000 	andi	$r0,$r0,0x0
1c003f84:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003f88:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003f8c:	4c000020 	jirl	$r0,$r1,0

1c003f90 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c003f90:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003f94:	29803061 	st.w	$r1,$r3,12(0xc)
1c003f98:	29802076 	st.w	$r22,$r3,8(0x8)
1c003f9c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003fa0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003fa4:	029ba0c6 	addi.w	$r6,$r6,1768(0x6e8)
1c003fa8:	02804805 	addi.w	$r5,$r0,18(0x12)
1c003fac:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003fb0:	02950084 	addi.w	$r4,$r4,1344(0x540)
1c003fb4:	57dbe3ff 	bl	-9248(0xfffdbe0) # 1c001b94 <myprintf>
1c003fb8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003fbc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003fc0:	03808184 	ori	$r4,$r12,0x20
1c003fc4:	57f73fff 	bl	-2244(0xffff73c) # 1c003700 <EXTI_ClearITPendingBit>
1c003fc8:	03400000 	andi	$r0,$r0,0x0
1c003fcc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003fd0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003fd4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003fd8:	4c000020 	jirl	$r0,$r1,0

1c003fdc <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c003fdc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003fe0:	29803061 	st.w	$r1,$r3,12(0xc)
1c003fe4:	29802076 	st.w	$r22,$r3,8(0x8)
1c003fe8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003fec:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003ff0:	029ad0c6 	addi.w	$r6,$r6,1716(0x6b4)
1c003ff4:	02805c05 	addi.w	$r5,$r0,23(0x17)
1c003ff8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003ffc:	0293d084 	addi.w	$r4,$r4,1268(0x4f4)
1c004000:	57db97ff 	bl	-9324(0xfffdb94) # 1c001b94 <myprintf>
1c004004:	02800805 	addi.w	$r5,$r0,2(0x2)
1c004008:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00400c:	03808184 	ori	$r4,$r12,0x20
1c004010:	57f6f3ff 	bl	-2320(0xffff6f0) # 1c003700 <EXTI_ClearITPendingBit>
1c004014:	03400000 	andi	$r0,$r0,0x0
1c004018:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00401c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004020:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004024:	4c000020 	jirl	$r0,$r1,0

1c004028 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c004028:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00402c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004030:	29802076 	st.w	$r22,$r3,8(0x8)
1c004034:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004038:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00403c:	029a00c6 	addi.w	$r6,$r6,1664(0x680)
1c004040:	02807005 	addi.w	$r5,$r0,28(0x1c)
1c004044:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004048:	0292a084 	addi.w	$r4,$r4,1192(0x4a8)
1c00404c:	57db4bff 	bl	-9400(0xfffdb48) # 1c001b94 <myprintf>
1c004050:	02801005 	addi.w	$r5,$r0,4(0x4)
1c004054:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004058:	03808184 	ori	$r4,$r12,0x20
1c00405c:	57f6a7ff 	bl	-2396(0xffff6a4) # 1c003700 <EXTI_ClearITPendingBit>
1c004060:	03400000 	andi	$r0,$r0,0x0
1c004064:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004068:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00406c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004070:	4c000020 	jirl	$r0,$r1,0

1c004074 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c004074:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004078:	29803061 	st.w	$r1,$r3,12(0xc)
1c00407c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004080:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004084:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004088:	029930c6 	addi.w	$r6,$r6,1612(0x64c)
1c00408c:	02808405 	addi.w	$r5,$r0,33(0x21)
1c004090:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004094:	02917084 	addi.w	$r4,$r4,1116(0x45c)
1c004098:	57daffff 	bl	-9476(0xfffdafc) # 1c001b94 <myprintf>
1c00409c:	02802005 	addi.w	$r5,$r0,8(0x8)
1c0040a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0040a4:	03808184 	ori	$r4,$r12,0x20
1c0040a8:	57f65bff 	bl	-2472(0xffff658) # 1c003700 <EXTI_ClearITPendingBit>
1c0040ac:	03400000 	andi	$r0,$r0,0x0
1c0040b0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0040b4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0040b8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0040bc:	4c000020 	jirl	$r0,$r1,0

1c0040c0 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c0040c0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0040c4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0040c8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0040cc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0040d0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0040d4:	029860c6 	addi.w	$r6,$r6,1560(0x618)
1c0040d8:	02809805 	addi.w	$r5,$r0,38(0x26)
1c0040dc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0040e0:	02904084 	addi.w	$r4,$r4,1040(0x410)
1c0040e4:	57dab3ff 	bl	-9552(0xfffdab0) # 1c001b94 <myprintf>
1c0040e8:	02804005 	addi.w	$r5,$r0,16(0x10)
1c0040ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0040f0:	03808184 	ori	$r4,$r12,0x20
1c0040f4:	57f60fff 	bl	-2548(0xffff60c) # 1c003700 <EXTI_ClearITPendingBit>
1c0040f8:	03400000 	andi	$r0,$r0,0x0
1c0040fc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004100:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004104:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004108:	4c000020 	jirl	$r0,$r1,0

1c00410c <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c00410c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004110:	29803061 	st.w	$r1,$r3,12(0xc)
1c004114:	29802076 	st.w	$r22,$r3,8(0x8)
1c004118:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00411c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004120:	029790c6 	addi.w	$r6,$r6,1508(0x5e4)
1c004124:	0280ac05 	addi.w	$r5,$r0,43(0x2b)
1c004128:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00412c:	028f1084 	addi.w	$r4,$r4,964(0x3c4)
1c004130:	57da67ff 	bl	-9628(0xfffda64) # 1c001b94 <myprintf>
1c004134:	02808005 	addi.w	$r5,$r0,32(0x20)
1c004138:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00413c:	03808184 	ori	$r4,$r12,0x20
1c004140:	57f5c3ff 	bl	-2624(0xffff5c0) # 1c003700 <EXTI_ClearITPendingBit>
1c004144:	03400000 	andi	$r0,$r0,0x0
1c004148:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00414c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004150:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004154:	4c000020 	jirl	$r0,$r1,0

1c004158 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c004158:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00415c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004160:	29802076 	st.w	$r22,$r3,8(0x8)
1c004164:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004168:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00416c:	0296c0c6 	addi.w	$r6,$r6,1456(0x5b0)
1c004170:	0280c005 	addi.w	$r5,$r0,48(0x30)
1c004174:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004178:	028de084 	addi.w	$r4,$r4,888(0x378)
1c00417c:	57da1bff 	bl	-9704(0xfffda18) # 1c001b94 <myprintf>
1c004180:	02810005 	addi.w	$r5,$r0,64(0x40)
1c004184:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004188:	03808184 	ori	$r4,$r12,0x20
1c00418c:	57f577ff 	bl	-2700(0xffff574) # 1c003700 <EXTI_ClearITPendingBit>
1c004190:	03400000 	andi	$r0,$r0,0x0
1c004194:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004198:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00419c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0041a0:	4c000020 	jirl	$r0,$r1,0

1c0041a4 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c0041a4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0041a8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0041ac:	29802076 	st.w	$r22,$r3,8(0x8)
1c0041b0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0041b4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0041b8:	0295f0c6 	addi.w	$r6,$r6,1404(0x57c)
1c0041bc:	0280d405 	addi.w	$r5,$r0,53(0x35)
1c0041c0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0041c4:	028cb084 	addi.w	$r4,$r4,812(0x32c)
1c0041c8:	57d9cfff 	bl	-9780(0xfffd9cc) # 1c001b94 <myprintf>
1c0041cc:	02820005 	addi.w	$r5,$r0,128(0x80)
1c0041d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0041d4:	03808184 	ori	$r4,$r12,0x20
1c0041d8:	57f52bff 	bl	-2776(0xffff528) # 1c003700 <EXTI_ClearITPendingBit>
1c0041dc:	03400000 	andi	$r0,$r0,0x0
1c0041e0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0041e4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0041e8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0041ec:	4c000020 	jirl	$r0,$r1,0

1c0041f0 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c0041f0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0041f4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0041f8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0041fc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004200:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004204:	029520c6 	addi.w	$r6,$r6,1352(0x548)
1c004208:	0280e805 	addi.w	$r5,$r0,58(0x3a)
1c00420c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004210:	028b8084 	addi.w	$r4,$r4,736(0x2e0)
1c004214:	57d983ff 	bl	-9856(0xfffd980) # 1c001b94 <myprintf>
1c004218:	02840005 	addi.w	$r5,$r0,256(0x100)
1c00421c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004220:	03808184 	ori	$r4,$r12,0x20
1c004224:	57f4dfff 	bl	-2852(0xffff4dc) # 1c003700 <EXTI_ClearITPendingBit>
1c004228:	03400000 	andi	$r0,$r0,0x0
1c00422c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004230:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004234:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004238:	4c000020 	jirl	$r0,$r1,0

1c00423c <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c00423c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004240:	29803061 	st.w	$r1,$r3,12(0xc)
1c004244:	29802076 	st.w	$r22,$r3,8(0x8)
1c004248:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00424c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004250:	029450c6 	addi.w	$r6,$r6,1300(0x514)
1c004254:	0280fc05 	addi.w	$r5,$r0,63(0x3f)
1c004258:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00425c:	028a5084 	addi.w	$r4,$r4,660(0x294)
1c004260:	57d937ff 	bl	-9932(0xfffd934) # 1c001b94 <myprintf>
1c004264:	02880005 	addi.w	$r5,$r0,512(0x200)
1c004268:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00426c:	03808184 	ori	$r4,$r12,0x20
1c004270:	57f493ff 	bl	-2928(0xffff490) # 1c003700 <EXTI_ClearITPendingBit>
1c004274:	03400000 	andi	$r0,$r0,0x0
1c004278:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00427c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004280:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004284:	4c000020 	jirl	$r0,$r1,0

1c004288 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c004288:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00428c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004290:	29802076 	st.w	$r22,$r3,8(0x8)
1c004294:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004298:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00429c:	029380c6 	addi.w	$r6,$r6,1248(0x4e0)
1c0042a0:	02811005 	addi.w	$r5,$r0,68(0x44)
1c0042a4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0042a8:	02892084 	addi.w	$r4,$r4,584(0x248)
1c0042ac:	57d8ebff 	bl	-10008(0xfffd8e8) # 1c001b94 <myprintf>
1c0042b0:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c0042b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0042b8:	03808184 	ori	$r4,$r12,0x20
1c0042bc:	57f447ff 	bl	-3004(0xffff444) # 1c003700 <EXTI_ClearITPendingBit>
1c0042c0:	03400000 	andi	$r0,$r0,0x0
1c0042c4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0042c8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0042cc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0042d0:	4c000020 	jirl	$r0,$r1,0

1c0042d4 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c0042d4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0042d8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0042dc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0042e0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0042e4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0042e8:	0292b0c6 	addi.w	$r6,$r6,1196(0x4ac)
1c0042ec:	02812405 	addi.w	$r5,$r0,73(0x49)
1c0042f0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0042f4:	0287f084 	addi.w	$r4,$r4,508(0x1fc)
1c0042f8:	57d89fff 	bl	-10084(0xfffd89c) # 1c001b94 <myprintf>
1c0042fc:	03a00005 	ori	$r5,$r0,0x800
1c004300:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004304:	03808184 	ori	$r4,$r12,0x20
1c004308:	57f3fbff 	bl	-3080(0xffff3f8) # 1c003700 <EXTI_ClearITPendingBit>
1c00430c:	03400000 	andi	$r0,$r0,0x0
1c004310:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004314:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004318:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00431c:	4c000020 	jirl	$r0,$r1,0

1c004320 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c004320:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004324:	29803061 	st.w	$r1,$r3,12(0xc)
1c004328:	29802076 	st.w	$r22,$r3,8(0x8)
1c00432c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004330:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004334:	0291e0c6 	addi.w	$r6,$r6,1144(0x478)
1c004338:	02813805 	addi.w	$r5,$r0,78(0x4e)
1c00433c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004340:	0286c084 	addi.w	$r4,$r4,432(0x1b0)
1c004344:	57d853ff 	bl	-10160(0xfffd850) # 1c001b94 <myprintf>
1c004348:	14000025 	lu12i.w	$r5,1(0x1)
1c00434c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004350:	03808184 	ori	$r4,$r12,0x20
1c004354:	57f3afff 	bl	-3156(0xffff3ac) # 1c003700 <EXTI_ClearITPendingBit>
1c004358:	03400000 	andi	$r0,$r0,0x0
1c00435c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004360:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004364:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004368:	4c000020 	jirl	$r0,$r1,0

1c00436c <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c00436c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004370:	29803061 	st.w	$r1,$r3,12(0xc)
1c004374:	29802076 	st.w	$r22,$r3,8(0x8)
1c004378:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00437c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004380:	029110c6 	addi.w	$r6,$r6,1092(0x444)
1c004384:	02814c05 	addi.w	$r5,$r0,83(0x53)
1c004388:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00438c:	02859084 	addi.w	$r4,$r4,356(0x164)
1c004390:	57d807ff 	bl	-10236(0xfffd804) # 1c001b94 <myprintf>
1c004394:	14000045 	lu12i.w	$r5,2(0x2)
1c004398:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00439c:	03808184 	ori	$r4,$r12,0x20
1c0043a0:	57f363ff 	bl	-3232(0xffff360) # 1c003700 <EXTI_ClearITPendingBit>
1c0043a4:	03400000 	andi	$r0,$r0,0x0
1c0043a8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0043ac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0043b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0043b4:	4c000020 	jirl	$r0,$r1,0

1c0043b8 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c0043b8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0043bc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0043c0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0043c4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0043c8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0043cc:	029040c6 	addi.w	$r6,$r6,1040(0x410)
1c0043d0:	02816005 	addi.w	$r5,$r0,88(0x58)
1c0043d4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0043d8:	02846084 	addi.w	$r4,$r4,280(0x118)
1c0043dc:	57d7bbff 	bl	-10312(0xfffd7b8) # 1c001b94 <myprintf>
1c0043e0:	14000085 	lu12i.w	$r5,4(0x4)
1c0043e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0043e8:	03808184 	ori	$r4,$r12,0x20
1c0043ec:	57f317ff 	bl	-3308(0xffff314) # 1c003700 <EXTI_ClearITPendingBit>
1c0043f0:	03400000 	andi	$r0,$r0,0x0
1c0043f4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0043f8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0043fc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004400:	4c000020 	jirl	$r0,$r1,0

1c004404 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c004404:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004408:	29803061 	st.w	$r1,$r3,12(0xc)
1c00440c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004410:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004414:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004418:	028f70c6 	addi.w	$r6,$r6,988(0x3dc)
1c00441c:	02817405 	addi.w	$r5,$r0,93(0x5d)
1c004420:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004424:	02833084 	addi.w	$r4,$r4,204(0xcc)
1c004428:	57d76fff 	bl	-10388(0xfffd76c) # 1c001b94 <myprintf>
1c00442c:	14000105 	lu12i.w	$r5,8(0x8)
1c004430:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004434:	03808184 	ori	$r4,$r12,0x20
1c004438:	57f2cbff 	bl	-3384(0xffff2c8) # 1c003700 <EXTI_ClearITPendingBit>
1c00443c:	03400000 	andi	$r0,$r0,0x0
1c004440:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004444:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004448:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00444c:	4c000020 	jirl	$r0,$r1,0

1c004450 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c004450:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004454:	29803061 	st.w	$r1,$r3,12(0xc)
1c004458:	29802076 	st.w	$r22,$r3,8(0x8)
1c00445c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004460:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004464:	028ea0c6 	addi.w	$r6,$r6,936(0x3a8)
1c004468:	02818c05 	addi.w	$r5,$r0,99(0x63)
1c00446c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004470:	02820084 	addi.w	$r4,$r4,128(0x80)
1c004474:	57d723ff 	bl	-10464(0xfffd720) # 1c001b94 <myprintf>
1c004478:	14000205 	lu12i.w	$r5,16(0x10)
1c00447c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004480:	03808184 	ori	$r4,$r12,0x20
1c004484:	57f27fff 	bl	-3460(0xffff27c) # 1c003700 <EXTI_ClearITPendingBit>
1c004488:	03400000 	andi	$r0,$r0,0x0
1c00448c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004490:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004494:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004498:	4c000020 	jirl	$r0,$r1,0

1c00449c <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c00449c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0044a0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0044a4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0044a8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0044ac:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0044b0:	028dd0c6 	addi.w	$r6,$r6,884(0x374)
1c0044b4:	0281a005 	addi.w	$r5,$r0,104(0x68)
1c0044b8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0044bc:	0280d084 	addi.w	$r4,$r4,52(0x34)
1c0044c0:	57d6d7ff 	bl	-10540(0xfffd6d4) # 1c001b94 <myprintf>
1c0044c4:	14000405 	lu12i.w	$r5,32(0x20)
1c0044c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0044cc:	03808184 	ori	$r4,$r12,0x20
1c0044d0:	57f233ff 	bl	-3536(0xffff230) # 1c003700 <EXTI_ClearITPendingBit>
1c0044d4:	03400000 	andi	$r0,$r0,0x0
1c0044d8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0044dc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0044e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0044e4:	4c000020 	jirl	$r0,$r1,0

1c0044e8 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c0044e8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0044ec:	29803061 	st.w	$r1,$r3,12(0xc)
1c0044f0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0044f4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0044f8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0044fc:	028d00c6 	addi.w	$r6,$r6,832(0x340)
1c004500:	0281b405 	addi.w	$r5,$r0,109(0x6d)
1c004504:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004508:	02bfa084 	addi.w	$r4,$r4,-24(0xfe8)
1c00450c:	57d68bff 	bl	-10616(0xfffd688) # 1c001b94 <myprintf>
1c004510:	14000805 	lu12i.w	$r5,64(0x40)
1c004514:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004518:	03808184 	ori	$r4,$r12,0x20
1c00451c:	57f1e7ff 	bl	-3612(0xffff1e4) # 1c003700 <EXTI_ClearITPendingBit>
1c004520:	03400000 	andi	$r0,$r0,0x0
1c004524:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004528:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00452c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004530:	4c000020 	jirl	$r0,$r1,0

1c004534 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c004534:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004538:	29803061 	st.w	$r1,$r3,12(0xc)
1c00453c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004540:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004544:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004548:	028c30c6 	addi.w	$r6,$r6,780(0x30c)
1c00454c:	0281c805 	addi.w	$r5,$r0,114(0x72)
1c004550:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004554:	02be7084 	addi.w	$r4,$r4,-100(0xf9c)
1c004558:	57d63fff 	bl	-10692(0xfffd63c) # 1c001b94 <myprintf>
1c00455c:	14001005 	lu12i.w	$r5,128(0x80)
1c004560:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004564:	03808184 	ori	$r4,$r12,0x20
1c004568:	57f19bff 	bl	-3688(0xffff198) # 1c003700 <EXTI_ClearITPendingBit>
1c00456c:	03400000 	andi	$r0,$r0,0x0
1c004570:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004574:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004578:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00457c:	4c000020 	jirl	$r0,$r1,0

1c004580 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c004580:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004584:	29803061 	st.w	$r1,$r3,12(0xc)
1c004588:	29802076 	st.w	$r22,$r3,8(0x8)
1c00458c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004590:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004594:	028b60c6 	addi.w	$r6,$r6,728(0x2d8)
1c004598:	0281dc05 	addi.w	$r5,$r0,119(0x77)
1c00459c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0045a0:	02bd4084 	addi.w	$r4,$r4,-176(0xf50)
1c0045a4:	57d5f3ff 	bl	-10768(0xfffd5f0) # 1c001b94 <myprintf>
1c0045a8:	14002005 	lu12i.w	$r5,256(0x100)
1c0045ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0045b0:	03808184 	ori	$r4,$r12,0x20
1c0045b4:	57f14fff 	bl	-3764(0xffff14c) # 1c003700 <EXTI_ClearITPendingBit>
1c0045b8:	03400000 	andi	$r0,$r0,0x0
1c0045bc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0045c0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0045c4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0045c8:	4c000020 	jirl	$r0,$r1,0

1c0045cc <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c0045cc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045d0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045d4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045d8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045dc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0045e0:	028a90c6 	addi.w	$r6,$r6,676(0x2a4)
1c0045e4:	0281f005 	addi.w	$r5,$r0,124(0x7c)
1c0045e8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0045ec:	02bc1084 	addi.w	$r4,$r4,-252(0xf04)
1c0045f0:	57d5a7ff 	bl	-10844(0xfffd5a4) # 1c001b94 <myprintf>
1c0045f4:	14004005 	lu12i.w	$r5,512(0x200)
1c0045f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0045fc:	03808184 	ori	$r4,$r12,0x20
1c004600:	57f103ff 	bl	-3840(0xffff100) # 1c003700 <EXTI_ClearITPendingBit>
1c004604:	03400000 	andi	$r0,$r0,0x0
1c004608:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00460c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004610:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004614:	4c000020 	jirl	$r0,$r1,0

1c004618 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c004618:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00461c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004620:	29802076 	st.w	$r22,$r3,8(0x8)
1c004624:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004628:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00462c:	0289c0c6 	addi.w	$r6,$r6,624(0x270)
1c004630:	02820405 	addi.w	$r5,$r0,129(0x81)
1c004634:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004638:	02bae084 	addi.w	$r4,$r4,-328(0xeb8)
1c00463c:	57d55bff 	bl	-10920(0xfffd558) # 1c001b94 <myprintf>
1c004640:	14008005 	lu12i.w	$r5,1024(0x400)
1c004644:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004648:	03808184 	ori	$r4,$r12,0x20
1c00464c:	57f0b7ff 	bl	-3916(0xffff0b4) # 1c003700 <EXTI_ClearITPendingBit>
1c004650:	03400000 	andi	$r0,$r0,0x0
1c004654:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004658:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00465c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004660:	4c000020 	jirl	$r0,$r1,0

1c004664 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c004664:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004668:	29803061 	st.w	$r1,$r3,12(0xc)
1c00466c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004670:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004674:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004678:	0288f0c6 	addi.w	$r6,$r6,572(0x23c)
1c00467c:	02821805 	addi.w	$r5,$r0,134(0x86)
1c004680:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004684:	02b9b084 	addi.w	$r4,$r4,-404(0xe6c)
1c004688:	57d50fff 	bl	-10996(0xfffd50c) # 1c001b94 <myprintf>
1c00468c:	14010005 	lu12i.w	$r5,2048(0x800)
1c004690:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004694:	03808184 	ori	$r4,$r12,0x20
1c004698:	57f06bff 	bl	-3992(0xffff068) # 1c003700 <EXTI_ClearITPendingBit>
1c00469c:	03400000 	andi	$r0,$r0,0x0
1c0046a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0046a4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0046a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0046ac:	4c000020 	jirl	$r0,$r1,0

1c0046b0 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c0046b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0046b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0046b8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0046bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0046c0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0046c4:	028820c6 	addi.w	$r6,$r6,520(0x208)
1c0046c8:	02822c05 	addi.w	$r5,$r0,139(0x8b)
1c0046cc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0046d0:	02b88084 	addi.w	$r4,$r4,-480(0xe20)
1c0046d4:	57d4c3ff 	bl	-11072(0xfffd4c0) # 1c001b94 <myprintf>
1c0046d8:	14020005 	lu12i.w	$r5,4096(0x1000)
1c0046dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0046e0:	03808184 	ori	$r4,$r12,0x20
1c0046e4:	57f01fff 	bl	-4068(0xffff01c) # 1c003700 <EXTI_ClearITPendingBit>
1c0046e8:	03400000 	andi	$r0,$r0,0x0
1c0046ec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0046f0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0046f4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0046f8:	4c000020 	jirl	$r0,$r1,0

1c0046fc <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c0046fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004700:	29803061 	st.w	$r1,$r3,12(0xc)
1c004704:	29802076 	st.w	$r22,$r3,8(0x8)
1c004708:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00470c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004710:	028750c6 	addi.w	$r6,$r6,468(0x1d4)
1c004714:	02824005 	addi.w	$r5,$r0,144(0x90)
1c004718:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00471c:	02b75084 	addi.w	$r4,$r4,-556(0xdd4)
1c004720:	57d477ff 	bl	-11148(0xfffd474) # 1c001b94 <myprintf>
1c004724:	14040005 	lu12i.w	$r5,8192(0x2000)
1c004728:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00472c:	03808184 	ori	$r4,$r12,0x20
1c004730:	57efd3ff 	bl	-4144(0xfffefd0) # 1c003700 <EXTI_ClearITPendingBit>
1c004734:	03400000 	andi	$r0,$r0,0x0
1c004738:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00473c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004740:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004744:	4c000020 	jirl	$r0,$r1,0

1c004748 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c004748:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00474c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004750:	29802076 	st.w	$r22,$r3,8(0x8)
1c004754:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004758:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00475c:	028680c6 	addi.w	$r6,$r6,416(0x1a0)
1c004760:	02825405 	addi.w	$r5,$r0,149(0x95)
1c004764:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004768:	02b62084 	addi.w	$r4,$r4,-632(0xd88)
1c00476c:	57d42bff 	bl	-11224(0xfffd428) # 1c001b94 <myprintf>
1c004770:	14080005 	lu12i.w	$r5,16384(0x4000)
1c004774:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004778:	03808184 	ori	$r4,$r12,0x20
1c00477c:	57ef87ff 	bl	-4220(0xfffef84) # 1c003700 <EXTI_ClearITPendingBit>
1c004780:	03400000 	andi	$r0,$r0,0x0
1c004784:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004788:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00478c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004790:	4c000020 	jirl	$r0,$r1,0

1c004794 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c004794:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004798:	29803061 	st.w	$r1,$r3,12(0xc)
1c00479c:	29802076 	st.w	$r22,$r3,8(0x8)
1c0047a0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0047a4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0047a8:	0285b0c6 	addi.w	$r6,$r6,364(0x16c)
1c0047ac:	02826805 	addi.w	$r5,$r0,154(0x9a)
1c0047b0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0047b4:	02b4f084 	addi.w	$r4,$r4,-708(0xd3c)
1c0047b8:	57d3dfff 	bl	-11300(0xfffd3dc) # 1c001b94 <myprintf>
1c0047bc:	14100005 	lu12i.w	$r5,32768(0x8000)
1c0047c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0047c4:	03808184 	ori	$r4,$r12,0x20
1c0047c8:	57ef3bff 	bl	-4296(0xfffef38) # 1c003700 <EXTI_ClearITPendingBit>
1c0047cc:	03400000 	andi	$r0,$r0,0x0
1c0047d0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0047d4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0047d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0047dc:	4c000020 	jirl	$r0,$r1,0

1c0047e0 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c0047e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0047e4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0047e8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0047ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0047f0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0047f4:	0284e0c6 	addi.w	$r6,$r6,312(0x138)
1c0047f8:	02827c05 	addi.w	$r5,$r0,159(0x9f)
1c0047fc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004800:	02b3c084 	addi.w	$r4,$r4,-784(0xcf0)
1c004804:	57d393ff 	bl	-11376(0xfffd390) # 1c001b94 <myprintf>
1c004808:	14200005 	lu12i.w	$r5,65536(0x10000)
1c00480c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004810:	03808184 	ori	$r4,$r12,0x20
1c004814:	57eeefff 	bl	-4372(0xfffeeec) # 1c003700 <EXTI_ClearITPendingBit>
1c004818:	03400000 	andi	$r0,$r0,0x0
1c00481c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004820:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004824:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004828:	4c000020 	jirl	$r0,$r1,0

1c00482c <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c00482c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004830:	29803061 	st.w	$r1,$r3,12(0xc)
1c004834:	29802076 	st.w	$r22,$r3,8(0x8)
1c004838:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00483c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004840:	028410c6 	addi.w	$r6,$r6,260(0x104)
1c004844:	02829405 	addi.w	$r5,$r0,165(0xa5)
1c004848:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00484c:	02b29084 	addi.w	$r4,$r4,-860(0xca4)
1c004850:	57d347ff 	bl	-11452(0xfffd344) # 1c001b94 <myprintf>
1c004854:	14400005 	lu12i.w	$r5,131072(0x20000)
1c004858:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00485c:	03808184 	ori	$r4,$r12,0x20
1c004860:	57eea3ff 	bl	-4448(0xfffeea0) # 1c003700 <EXTI_ClearITPendingBit>
1c004864:	03400000 	andi	$r0,$r0,0x0
1c004868:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00486c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004870:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004874:	4c000020 	jirl	$r0,$r1,0

1c004878 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c004878:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00487c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004880:	29802076 	st.w	$r22,$r3,8(0x8)
1c004884:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004888:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00488c:	028340c6 	addi.w	$r6,$r6,208(0xd0)
1c004890:	0282a805 	addi.w	$r5,$r0,170(0xaa)
1c004894:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004898:	02b16084 	addi.w	$r4,$r4,-936(0xc58)
1c00489c:	57d2fbff 	bl	-11528(0xfffd2f8) # 1c001b94 <myprintf>
1c0048a0:	14800005 	lu12i.w	$r5,262144(0x40000)
1c0048a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0048a8:	03808184 	ori	$r4,$r12,0x20
1c0048ac:	57ee57ff 	bl	-4524(0xfffee54) # 1c003700 <EXTI_ClearITPendingBit>
1c0048b0:	03400000 	andi	$r0,$r0,0x0
1c0048b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0048b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0048bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0048c0:	4c000020 	jirl	$r0,$r1,0

1c0048c4 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c0048c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0048c8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0048cc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0048d0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0048d4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0048d8:	028270c6 	addi.w	$r6,$r6,156(0x9c)
1c0048dc:	0282bc05 	addi.w	$r5,$r0,175(0xaf)
1c0048e0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0048e4:	02b03084 	addi.w	$r4,$r4,-1012(0xc0c)
1c0048e8:	57d2afff 	bl	-11604(0xfffd2ac) # 1c001b94 <myprintf>
1c0048ec:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c0048f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0048f4:	03808184 	ori	$r4,$r12,0x20
1c0048f8:	57ee0bff 	bl	-4600(0xfffee08) # 1c003700 <EXTI_ClearITPendingBit>
1c0048fc:	03400000 	andi	$r0,$r0,0x0
1c004900:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004904:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004908:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00490c:	4c000020 	jirl	$r0,$r1,0

1c004910 <ext_handler>:
ext_handler():
1c004910:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004914:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004918:	29806076 	st.w	$r22,$r3,24(0x18)
1c00491c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004920:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004924:	0380f18c 	ori	$r12,$r12,0x3c
1c004928:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c00492c:	2980018d 	st.w	$r13,$r12,0
1c004930:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004934:	0380818c 	ori	$r12,$r12,0x20
1c004938:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c00493c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004940:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004944:	0380818c 	ori	$r12,$r12,0x20
1c004948:	2880018c 	ld.w	$r12,$r12,0
1c00494c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004950:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004954:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004958:	0014b1ac 	and	$r12,$r13,$r12
1c00495c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004960:	03400000 	andi	$r0,$r0,0x0
1c004964:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004968:	50004000 	b	64(0x40) # 1c0049a8 <ext_handler+0x98>
1c00496c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004970:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004974:	0017b1ac 	srl.w	$r12,$r13,$r12
1c004978:	0340058c 	andi	$r12,$r12,0x1
1c00497c:	40002180 	beqz	$r12,32(0x20) # 1c00499c <ext_handler+0x8c>
1c004980:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c004984:	02b111ad 	addi.w	$r13,$r13,-956(0xc44)
1c004988:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00498c:	0040898c 	slli.w	$r12,$r12,0x2
1c004990:	001031ac 	add.w	$r12,$r13,$r12
1c004994:	2880018c 	ld.w	$r12,$r12,0
1c004998:	4c000181 	jirl	$r1,$r12,0
1c00499c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0049a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0049a4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0049a8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0049ac:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c0049b0:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c00496c <ext_handler+0x5c>
1c0049b4:	03400000 	andi	$r0,$r0,0x0
1c0049b8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0049bc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0049c0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0049c4:	4c000020 	jirl	$r0,$r1,0

1c0049c8 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c0049c8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0049cc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0049d0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0049d4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0049d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0049dc:	0380f18c 	ori	$r12,$r12,0x3c
1c0049e0:	1400020d 	lu12i.w	$r13,16(0x10)
1c0049e4:	2980018d 	st.w	$r13,$r12,0
1c0049e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0049ec:	0380118c 	ori	$r12,$r12,0x4
1c0049f0:	2880018c 	ld.w	$r12,$r12,0
1c0049f4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0049f8:	57ee5bff 	bl	-4520(0xfffee58) # 1c003850 <WDG_DogFeed>
1c0049fc:	02801804 	addi.w	$r4,$r0,6(0x6)
1c004a00:	57e7ffff 	bl	-6148(0xfffe7fc) # 1c0031fc <Wake_Set>
1c004a04:	03400000 	andi	$r0,$r0,0x0
1c004a08:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004a0c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004a10:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004a14:	4c000020 	jirl	$r0,$r1,0

1c004a18 <TOUCH>:
TOUCH():
1c004a18:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004a1c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004a20:	29806076 	st.w	$r22,$r3,24(0x18)
1c004a24:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004a28:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004a2c:	0380118c 	ori	$r12,$r12,0x4
1c004a30:	2880018c 	ld.w	$r12,$r12,0
1c004a34:	0044c18c 	srli.w	$r12,$r12,0x10
1c004a38:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004a3c:	037ffd8c 	andi	$r12,$r12,0xfff
1c004a40:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c004a44:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004a48:	0380118c 	ori	$r12,$r12,0x4
1c004a4c:	2880018c 	ld.w	$r12,$r12,0
1c004a50:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004a54:	03403d8c 	andi	$r12,$r12,0xf
1c004a58:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c004a5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a60:	0380f18c 	ori	$r12,$r12,0x3c
1c004a64:	1400040d 	lu12i.w	$r13,32(0x20)
1c004a68:	2980018d 	st.w	$r13,$r12,0
1c004a6c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004a70:	0380118c 	ori	$r12,$r12,0x4
1c004a74:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c004a78:	2980018d 	st.w	$r13,$r12,0
1c004a7c:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c004a80:	00150184 	move	$r4,$r12
1c004a84:	57f187ff 	bl	-3708(0xffff184) # 1c003c08 <Printf_KeyType>
1c004a88:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c004a8c:	00150184 	move	$r4,$r12
1c004a90:	57f0ffff 	bl	-3844(0xffff0fc) # 1c003b8c <Printf_KeyChannel>
1c004a94:	57f203ff 	bl	-3584(0xffff200) # 1c003c94 <Printf_KeyVal>
1c004a98:	03400000 	andi	$r0,$r0,0x0
1c004a9c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004aa0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004aa4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004aa8:	4c000020 	jirl	$r0,$r1,0

1c004aac <UART2_INT>:
UART2_INT():
1c004aac:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004ab0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004ab4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004ab8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004abc:	0380f18c 	ori	$r12,$r12,0x3c
1c004ac0:	1400080d 	lu12i.w	$r13,64(0x40)
1c004ac4:	2980018d 	st.w	$r13,$r12,0
1c004ac8:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c004acc:	0380098c 	ori	$r12,$r12,0x2
1c004ad0:	2a00018c 	ld.bu	$r12,$r12,0
1c004ad4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004ad8:	03400000 	andi	$r0,$r0,0x0
1c004adc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004ae0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004ae4:	4c000020 	jirl	$r0,$r1,0

1c004ae8 <BAT_FAIL>:
BAT_FAIL():
1c004ae8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004aec:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004af0:	29806076 	st.w	$r22,$r3,24(0x18)
1c004af4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004af8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004afc:	0380118c 	ori	$r12,$r12,0x4
1c004b00:	2880018c 	ld.w	$r12,$r12,0
1c004b04:	0044cd8c 	srli.w	$r12,$r12,0x13
1c004b08:	03407d8c 	andi	$r12,$r12,0x1f
1c004b0c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004b10:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b14:	0380118c 	ori	$r12,$r12,0x4
1c004b18:	2880018e 	ld.w	$r14,$r12,0
1c004b1c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b20:	0380f18c 	ori	$r12,$r12,0x3c
1c004b24:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c004b28:	0014b5cd 	and	$r13,$r14,$r13
1c004b2c:	2980018d 	st.w	$r13,$r12,0
1c004b30:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004b34:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004b38:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c004ba8 <BAT_FAIL+0xc0>
1c004b3c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004b40:	0040898d 	slli.w	$r13,$r12,0x2
1c004b44:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c004b48:	02ac018c 	addi.w	$r12,$r12,-1280(0xb00)
1c004b4c:	001031ac 	add.w	$r12,$r13,$r12
1c004b50:	2880018c 	ld.w	$r12,$r12,0
1c004b54:	4c000180 	jirl	$r0,$r12,0
1c004b58:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004b5c:	02a76084 	addi.w	$r4,$r4,-1576(0x9d8)
1c004b60:	57d037ff 	bl	-12236(0xfffd034) # 1c001b94 <myprintf>
1c004b64:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b68:	0380118c 	ori	$r12,$r12,0x4
1c004b6c:	29800180 	st.w	$r0,$r12,0
1c004b70:	50003c00 	b	60(0x3c) # 1c004bac <BAT_FAIL+0xc4>
1c004b74:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004b78:	02a79084 	addi.w	$r4,$r4,-1564(0x9e4)
1c004b7c:	57d01bff 	bl	-12264(0xfffd018) # 1c001b94 <myprintf>
1c004b80:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b84:	0380118c 	ori	$r12,$r12,0x4
1c004b88:	2880018e 	ld.w	$r14,$r12,0
1c004b8c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b90:	0380118c 	ori	$r12,$r12,0x4
1c004b94:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c004b98:	03bffdad 	ori	$r13,$r13,0xfff
1c004b9c:	0014b5cd 	and	$r13,$r14,$r13
1c004ba0:	2980018d 	st.w	$r13,$r12,0
1c004ba4:	50000800 	b	8(0x8) # 1c004bac <BAT_FAIL+0xc4>
1c004ba8:	03400000 	andi	$r0,$r0,0x0
1c004bac:	03400000 	andi	$r0,$r0,0x0
1c004bb0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004bb4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004bb8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004bbc:	4c000020 	jirl	$r0,$r1,0

1c004bc0 <intc_handler>:
intc_handler():
1c004bc0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004bc4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004bc8:	29806076 	st.w	$r22,$r3,24(0x18)
1c004bcc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004bd0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004bd4:	0380158c 	ori	$r12,$r12,0x5
1c004bd8:	2a00018c 	ld.bu	$r12,$r12,0
1c004bdc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004be0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004be4:	0340058c 	andi	$r12,$r12,0x1
1c004be8:	40002980 	beqz	$r12,40(0x28) # 1c004c10 <intc_handler+0x50>
1c004bec:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004bf0:	57f2fbff 	bl	-3336(0xffff2f8) # 1c003ee8 <TIM_GetITStatus>
1c004bf4:	0015008c 	move	$r12,$r4
1c004bf8:	40001980 	beqz	$r12,24(0x18) # 1c004c10 <intc_handler+0x50>
1c004bfc:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004c00:	57f337ff 	bl	-3276(0xffff334) # 1c003f34 <TIM_ClearIT>
1c004c04:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004c08:	02a5e084 	addi.w	$r4,$r4,-1672(0x978)
1c004c0c:	57cf8bff 	bl	-12408(0xfffcf88) # 1c001b94 <myprintf>
1c004c10:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004c14:	0340118c 	andi	$r12,$r12,0x4
1c004c18:	40001580 	beqz	$r12,20(0x14) # 1c004c2c <intc_handler+0x6c>
1c004c1c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004c20:	03800d8c 	ori	$r12,$r12,0x3
1c004c24:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c004c28:	2900018d 	st.b	$r13,$r12,0
1c004c2c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004c30:	0340218c 	andi	$r12,$r12,0x8
1c004c34:	40001580 	beqz	$r12,20(0x14) # 1c004c48 <intc_handler+0x88>
1c004c38:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004c3c:	03800d8c 	ori	$r12,$r12,0x3
1c004c40:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c004c44:	2900018d 	st.b	$r13,$r12,0
1c004c48:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004c4c:	03800d8c 	ori	$r12,$r12,0x3
1c004c50:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c004c54:	2900018d 	st.b	$r13,$r12,0
1c004c58:	03400000 	andi	$r0,$r0,0x0
1c004c5c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004c60:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004c64:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004c68:	4c000020 	jirl	$r0,$r1,0

1c004c6c <TIMER_HANDLER>:
TIMER_HANDLER():
1c004c6c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004c70:	29803061 	st.w	$r1,$r3,12(0xc)
1c004c74:	29802076 	st.w	$r22,$r3,8(0x8)
1c004c78:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004c7c:	57e55fff 	bl	-6820(0xfffe55c) # 1c0031d8 <Set_Timer_clear>
1c004c80:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004c84:	02a49084 	addi.w	$r4,$r4,-1756(0x924)
1c004c88:	57cf0fff 	bl	-12532(0xfffcf0c) # 1c001b94 <myprintf>
1c004c8c:	57e52fff 	bl	-6868(0xfffe52c) # 1c0031b8 <Set_Timer_stop>
1c004c90:	03400000 	andi	$r0,$r0,0x0
1c004c94:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004c98:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004c9c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004ca0:	4c000020 	jirl	$r0,$r1,0

1c004ca4 <main>:
main():
1c004ca4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004ca8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004cac:	29806076 	st.w	$r22,$r3,24(0x18)
1c004cb0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004cb4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004cb8:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c004cbc:	57e3e3ff 	bl	-7200(0xfffe3e0) # 1c00309c <SystemClockInit>
1c004cc0:	57c66fff 	bl	-14740(0xfffc66c) # 1c00132c <GPIOInit>
1c004cc4:	541b0800 	bl	6920(0x1b08) # 1c0067cc <RGB_LED_Init>
1c004cc8:	54104c00 	bl	4172(0x104c) # 1c005d14 <LED_Init>
1c004ccc:	54107800 	bl	4216(0x1078) # 1c005d44 <KEY_Init>
1c004cd0:	54089800 	bl	2200(0x898) # 1c005568 <BEEP_Init>
1c004cd4:	54125800 	bl	4696(0x1258) # 1c005f2c <OLED_Init>
1c004cd8:	54100000 	bl	4096(0x1000) # 1c005cd8 <FAN_Init>
1c004cdc:	57e4bbff 	bl	-6984(0xfffe4b8) # 1c003194 <EnableInt>
1c004ce0:	541c3000 	bl	7216(0x1c30) # 1c006910 <Smoke_Init>
1c004ce4:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004ce8:	288cc084 	ld.w	$r4,$r4,816(0x330)
1c004cec:	541bd800 	bl	7128(0x1bd8) # 1c0068c4 <Queue_Init>
1c004cf0:	1400038c 	lu12i.w	$r12,28(0x1c)
1c004cf4:	03880184 	ori	$r4,$r12,0x200
1c004cf8:	57ddabff 	bl	-8792(0xfffdda8) # 1c002aa0 <Uart1_init>
1c004cfc:	1400038c 	lu12i.w	$r12,28(0x1c)
1c004d00:	03880184 	ori	$r4,$r12,0x200
1c004d04:	57dcdbff 	bl	-9000(0xfffdcd8) # 1c0029dc <Uart0_init>
1c004d08:	57eba7ff 	bl	-5212(0xfffeba4) # 1c0038ac <Adc_powerOn>
1c004d0c:	02801804 	addi.w	$r4,$r0,6(0x6)
1c004d10:	57ebf3ff 	bl	-5136(0xfffebf0) # 1c003900 <Adc_open>
1c004d14:	541edc00 	bl	7900(0x1edc) # 1c006bf0 <YUYIN_Init>
1c004d18:	541b2000 	bl	6944(0x1b20) # 1c006838 <ESP8266_Init>
1c004d1c:	03400000 	andi	$r0,$r0,0x0
1c004d20:	540f7800 	bl	3960(0xf78) # 1c005c98 <DHT11_Init>
1c004d24:	0015008c 	move	$r12,$r4
1c004d28:	47fff99f 	bnez	$r12,-8(0x7ffff8) # 1c004d20 <main+0x7c>
1c004d2c:	1cc7ff85 	pcaddu12i	$r5,409596(0x63ffc)
1c004d30:	288b70a5 	ld.w	$r5,$r5,732(0x2dc)
1c004d34:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004d38:	288b7084 	ld.w	$r4,$r4,732(0x2dc)
1c004d3c:	540e5000 	bl	3664(0xe50) # 1c005b8c <DHT11_Read_Data>
1c004d40:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004d44:	288b9084 	ld.w	$r4,$r4,740(0x2e4)
1c004d48:	541ddc00 	bl	7644(0x1ddc) # 1c006b24 <Smoke_Read_Data>
1c004d4c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004d50:	288b118c 	ld.w	$r12,$r12,708(0x2c4)
1c004d54:	2a40018d 	ld.hu	$r13,$r12,0
1c004d58:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004d5c:	002131ae 	div.wu	$r14,$r13,$r12
1c004d60:	5c000980 	bne	$r12,$r0,8(0x8) # 1c004d68 <main+0xc4>
1c004d64:	002a0007 	break	0x7
1c004d68:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c004d6c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004d70:	288a918c 	ld.w	$r12,$r12,676(0x2a4)
1c004d74:	2940018d 	st.h	$r13,$r12,0
1c004d78:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004d7c:	288a418c 	ld.w	$r12,$r12,656(0x290)
1c004d80:	2a40018d 	ld.hu	$r13,$r12,0
1c004d84:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004d88:	002131ae 	div.wu	$r14,$r13,$r12
1c004d8c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c004d94 <main+0xf0>
1c004d90:	002a0007 	break	0x7
1c004d94:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c004d98:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004d9c:	2889c18c 	ld.w	$r12,$r12,624(0x270)
1c004da0:	2940018d 	st.h	$r13,$r12,0
1c004da4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004da8:	2889b18c 	ld.w	$r12,$r12,620(0x26c)
1c004dac:	2a40018c 	ld.hu	$r12,$r12,0
1c004db0:	0015018d 	move	$r13,$r12
1c004db4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004db8:	2889518c 	ld.w	$r12,$r12,596(0x254)
1c004dbc:	2a40018c 	ld.hu	$r12,$r12,0
1c004dc0:	0015018e 	move	$r14,$r12
1c004dc4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004dc8:	2889818c 	ld.w	$r12,$r12,608(0x260)
1c004dcc:	2a40018c 	ld.hu	$r12,$r12,0
1c004dd0:	00150187 	move	$r7,$r12
1c004dd4:	001501c6 	move	$r6,$r14
1c004dd8:	001501a5 	move	$r5,$r13
1c004ddc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004de0:	02aeb084 	addi.w	$r4,$r4,-1108(0xbac)
1c004de4:	57cdb3ff 	bl	-12880(0xfffcdb0) # 1c001b94 <myprintf>
1c004de8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004dec:	0288618c 	addi.w	$r12,$r12,536(0x218)
1c004df0:	29000180 	st.b	$r0,$r12,0
1c004df4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004df8:	0288ed8c 	addi.w	$r12,$r12,571(0x23b)
1c004dfc:	2a00018c 	ld.bu	$r12,$r12,0
1c004e00:	40013980 	beqz	$r12,312(0x138) # 1c004f38 <main+0x294>
1c004e04:	54108c00 	bl	4236(0x108c) # 1c005e90 <OLED_Clear>
1c004e08:	02802007 	addi.w	$r7,$r0,8(0x8)
1c004e0c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004e10:	02ae90c6 	addi.w	$r6,$r6,-1116(0xba4)
1c004e14:	00150005 	move	$r5,$r0
1c004e18:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c004e1c:	54174000 	bl	5952(0x1740) # 1c00655c <OLED_Show_Str>
1c004e20:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004e24:	2887c18c 	ld.w	$r12,$r12,496(0x1f0)
1c004e28:	2a40018c 	ld.hu	$r12,$r12,0
1c004e2c:	00150186 	move	$r6,$r12
1c004e30:	1c000065 	pcaddu12i	$r5,3(0x3)
1c004e34:	02ae20a5 	addi.w	$r5,$r5,-1144(0xb88)
1c004e38:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004e3c:	28879084 	ld.w	$r4,$r4,484(0x1e4)
1c004e40:	57d6e7ff 	bl	-10524(0xfffd6e4) # 1c002524 <sprintf>
1c004e44:	02802007 	addi.w	$r7,$r0,8(0x8)
1c004e48:	1cc7ff86 	pcaddu12i	$r6,409596(0x63ffc)
1c004e4c:	288750c6 	ld.w	$r6,$r6,468(0x1d4)
1c004e50:	02800805 	addi.w	$r5,$r0,2(0x2)
1c004e54:	02801004 	addi.w	$r4,$r0,4(0x4)
1c004e58:	54170400 	bl	5892(0x1704) # 1c00655c <OLED_Show_Str>
1c004e5c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004e60:	2886b18c 	ld.w	$r12,$r12,428(0x1ac)
1c004e64:	2a40018c 	ld.hu	$r12,$r12,0
1c004e68:	00150186 	move	$r6,$r12
1c004e6c:	1c000065 	pcaddu12i	$r5,3(0x3)
1c004e70:	02ad60a5 	addi.w	$r5,$r5,-1192(0xb58)
1c004e74:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004e78:	2886a084 	ld.w	$r4,$r4,424(0x1a8)
1c004e7c:	57d6abff 	bl	-10584(0xfffd6a8) # 1c002524 <sprintf>
1c004e80:	02802007 	addi.w	$r7,$r0,8(0x8)
1c004e84:	1cc7ff86 	pcaddu12i	$r6,409596(0x63ffc)
1c004e88:	288660c6 	ld.w	$r6,$r6,408(0x198)
1c004e8c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c004e90:	02801004 	addi.w	$r4,$r0,4(0x4)
1c004e94:	5416c800 	bl	5832(0x16c8) # 1c00655c <OLED_Show_Str>
1c004e98:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004e9c:	2886318c 	ld.w	$r12,$r12,396(0x18c)
1c004ea0:	2a40018c 	ld.hu	$r12,$r12,0
1c004ea4:	00150186 	move	$r6,$r12
1c004ea8:	1c000065 	pcaddu12i	$r5,3(0x3)
1c004eac:	02acb0a5 	addi.w	$r5,$r5,-1236(0xb2c)
1c004eb0:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004eb4:	2885b084 	ld.w	$r4,$r4,364(0x16c)
1c004eb8:	57d66fff 	bl	-10644(0xfffd66c) # 1c002524 <sprintf>
1c004ebc:	02802007 	addi.w	$r7,$r0,8(0x8)
1c004ec0:	1cc7ff86 	pcaddu12i	$r6,409596(0x63ffc)
1c004ec4:	288570c6 	ld.w	$r6,$r6,348(0x15c)
1c004ec8:	02801805 	addi.w	$r5,$r0,6(0x6)
1c004ecc:	02801004 	addi.w	$r4,$r0,4(0x4)
1c004ed0:	54168c00 	bl	5772(0x168c) # 1c00655c <OLED_Show_Str>
1c004ed4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004ed8:	2884f18c 	ld.w	$r12,$r12,316(0x13c)
1c004edc:	2a40018c 	ld.hu	$r12,$r12,0
1c004ee0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004ee4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004ee8:	0284758c 	addi.w	$r12,$r12,285(0x11d)
1c004eec:	2900018d 	st.b	$r13,$r12,0
1c004ef0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004ef4:	2884618c 	ld.w	$r12,$r12,280(0x118)
1c004ef8:	2a40018c 	ld.hu	$r12,$r12,0
1c004efc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004f00:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004f04:	0284098c 	addi.w	$r12,$r12,258(0x102)
1c004f08:	2900018d 	st.b	$r13,$r12,0
1c004f0c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004f10:	2884618c 	ld.w	$r12,$r12,280(0x118)
1c004f14:	2a40018c 	ld.hu	$r12,$r12,0
1c004f18:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004f1c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004f20:	02839d8c 	addi.w	$r12,$r12,231(0xe7)
1c004f24:	2900018d 	st.b	$r13,$r12,0
1c004f28:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004f2c:	02841d8c 	addi.w	$r12,$r12,263(0x107)
1c004f30:	29000180 	st.b	$r0,$r12,0
1c004f34:	5001b400 	b	436(0x1b4) # 1c0050e8 <main+0x444>
1c004f38:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004f3c:	0283258c 	addi.w	$r12,$r12,201(0xc9)
1c004f40:	2a00018c 	ld.bu	$r12,$r12,0
1c004f44:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c004f48:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004f4c:	2883218c 	ld.w	$r12,$r12,200(0xc8)
1c004f50:	2a40018c 	ld.hu	$r12,$r12,0
1c004f54:	580075ac 	beq	$r13,$r12,116(0x74) # 1c004fc8 <main+0x324>
1c004f58:	02802007 	addi.w	$r7,$r0,8(0x8)
1c004f5c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004f60:	02aa20c6 	addi.w	$r6,$r6,-1400(0xa88)
1c004f64:	02800805 	addi.w	$r5,$r0,2(0x2)
1c004f68:	02801004 	addi.w	$r4,$r0,4(0x4)
1c004f6c:	5415f000 	bl	5616(0x15f0) # 1c00655c <OLED_Show_Str>
1c004f70:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004f74:	2882818c 	ld.w	$r12,$r12,160(0xa0)
1c004f78:	2a40018c 	ld.hu	$r12,$r12,0
1c004f7c:	00150186 	move	$r6,$r12
1c004f80:	1c000065 	pcaddu12i	$r5,3(0x3)
1c004f84:	02a8e0a5 	addi.w	$r5,$r5,-1480(0xa38)
1c004f88:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004f8c:	28825084 	ld.w	$r4,$r4,148(0x94)
1c004f90:	57d597ff 	bl	-10860(0xfffd594) # 1c002524 <sprintf>
1c004f94:	02802007 	addi.w	$r7,$r0,8(0x8)
1c004f98:	1cc7ff86 	pcaddu12i	$r6,409596(0x63ffc)
1c004f9c:	288210c6 	ld.w	$r6,$r6,132(0x84)
1c004fa0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c004fa4:	02801004 	addi.w	$r4,$r0,4(0x4)
1c004fa8:	5415b400 	bl	5556(0x15b4) # 1c00655c <OLED_Show_Str>
1c004fac:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004fb0:	2881918c 	ld.w	$r12,$r12,100(0x64)
1c004fb4:	2a40018c 	ld.hu	$r12,$r12,0
1c004fb8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004fbc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004fc0:	0281158c 	addi.w	$r12,$r12,69(0x45)
1c004fc4:	2900018d 	st.b	$r13,$r12,0
1c004fc8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004fcc:	0280e98c 	addi.w	$r12,$r12,58(0x3a)
1c004fd0:	2a00018c 	ld.bu	$r12,$r12,0
1c004fd4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c004fd8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004fdc:	2880c18c 	ld.w	$r12,$r12,48(0x30)
1c004fe0:	2a40018c 	ld.hu	$r12,$r12,0
1c004fe4:	580075ac 	beq	$r13,$r12,116(0x74) # 1c005058 <main+0x3b4>
1c004fe8:	02802007 	addi.w	$r7,$r0,8(0x8)
1c004fec:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004ff0:	02a7e0c6 	addi.w	$r6,$r6,-1544(0x9f8)
1c004ff4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c004ff8:	02801004 	addi.w	$r4,$r0,4(0x4)
1c004ffc:	54156000 	bl	5472(0x1560) # 1c00655c <OLED_Show_Str>
1c005000:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005004:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c005008:	2a40018c 	ld.hu	$r12,$r12,0
1c00500c:	00150186 	move	$r6,$r12
1c005010:	1c000065 	pcaddu12i	$r5,3(0x3)
1c005014:	02a6d0a5 	addi.w	$r5,$r5,-1612(0x9b4)
1c005018:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c00501c:	28801084 	ld.w	$r4,$r4,4(0x4)
1c005020:	57d507ff 	bl	-11004(0xfffd504) # 1c002524 <sprintf>
1c005024:	02802007 	addi.w	$r7,$r0,8(0x8)
1c005028:	1cc7ff86 	pcaddu12i	$r6,409596(0x63ffc)
1c00502c:	28bfd0c6 	ld.w	$r6,$r6,-12(0xff4)
1c005030:	02801005 	addi.w	$r5,$r0,4(0x4)
1c005034:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005038:	54152400 	bl	5412(0x1524) # 1c00655c <OLED_Show_Str>
1c00503c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005040:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c005044:	2a40018c 	ld.hu	$r12,$r12,0
1c005048:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00504c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005050:	02bed98c 	addi.w	$r12,$r12,-74(0xfb6)
1c005054:	2900018d 	st.b	$r13,$r12,0
1c005058:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00505c:	02bead8c 	addi.w	$r12,$r12,-85(0xfab)
1c005060:	2a00018c 	ld.bu	$r12,$r12,0
1c005064:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005068:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00506c:	28bef18c 	ld.w	$r12,$r12,-68(0xfbc)
1c005070:	2a40018c 	ld.hu	$r12,$r12,0
1c005074:	580075ac 	beq	$r13,$r12,116(0x74) # 1c0050e8 <main+0x444>
1c005078:	02802007 	addi.w	$r7,$r0,8(0x8)
1c00507c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c005080:	02a5a0c6 	addi.w	$r6,$r6,-1688(0x968)
1c005084:	02801805 	addi.w	$r5,$r0,6(0x6)
1c005088:	02801004 	addi.w	$r4,$r0,4(0x4)
1c00508c:	5414d000 	bl	5328(0x14d0) # 1c00655c <OLED_Show_Str>
1c005090:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005094:	28be518c 	ld.w	$r12,$r12,-108(0xf94)
1c005098:	2a40018c 	ld.hu	$r12,$r12,0
1c00509c:	00150186 	move	$r6,$r12
1c0050a0:	1c000065 	pcaddu12i	$r5,3(0x3)
1c0050a4:	02a4d0a5 	addi.w	$r5,$r5,-1740(0x934)
1c0050a8:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0050ac:	28bdd084 	ld.w	$r4,$r4,-140(0xf74)
1c0050b0:	57d477ff 	bl	-11148(0xfffd474) # 1c002524 <sprintf>
1c0050b4:	02802007 	addi.w	$r7,$r0,8(0x8)
1c0050b8:	1cc7ff86 	pcaddu12i	$r6,409596(0x63ffc)
1c0050bc:	28bd90c6 	ld.w	$r6,$r6,-156(0xf64)
1c0050c0:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0050c4:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0050c8:	54149400 	bl	5268(0x1494) # 1c00655c <OLED_Show_Str>
1c0050cc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0050d0:	28bd618c 	ld.w	$r12,$r12,-168(0xf58)
1c0050d4:	2a40018c 	ld.hu	$r12,$r12,0
1c0050d8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0050dc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0050e0:	02bc9d8c 	addi.w	$r12,$r12,-217(0xf27)
1c0050e4:	2900018d 	st.b	$r13,$r12,0
1c0050e8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0050ec:	02bd118c 	addi.w	$r12,$r12,-188(0xf44)
1c0050f0:	2a00018c 	ld.bu	$r12,$r12,0
1c0050f4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0050f8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0050fc:	28bc618c 	ld.w	$r12,$r12,-232(0xf18)
1c005100:	2a40018c 	ld.hu	$r12,$r12,0
1c005104:	6c0025ac 	bgeu	$r13,$r12,36(0x24) # 1c005128 <main+0x484>
1c005108:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00510c:	02bbe18c 	addi.w	$r12,$r12,-264(0xef8)
1c005110:	2a00018c 	ld.bu	$r12,$r12,0
1c005114:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005118:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00511c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005120:	02bb918c 	addi.w	$r12,$r12,-284(0xee4)
1c005124:	2900018d 	st.b	$r13,$r12,0
1c005128:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00512c:	02bc158c 	addi.w	$r12,$r12,-251(0xf05)
1c005130:	2a00018c 	ld.bu	$r12,$r12,0
1c005134:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005138:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00513c:	28bb418c 	ld.w	$r12,$r12,-304(0xed0)
1c005140:	2a40018c 	ld.hu	$r12,$r12,0
1c005144:	6c00258d 	bgeu	$r12,$r13,36(0x24) # 1c005168 <main+0x4c4>
1c005148:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00514c:	02bae18c 	addi.w	$r12,$r12,-328(0xeb8)
1c005150:	2a00018c 	ld.bu	$r12,$r12,0
1c005154:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005158:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00515c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005160:	02ba918c 	addi.w	$r12,$r12,-348(0xea4)
1c005164:	2900018d 	st.b	$r13,$r12,0
1c005168:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00516c:	02bb198c 	addi.w	$r12,$r12,-314(0xec6)
1c005170:	2a00018c 	ld.bu	$r12,$r12,0
1c005174:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005178:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00517c:	28bab18c 	ld.w	$r12,$r12,-340(0xeac)
1c005180:	2a40018c 	ld.hu	$r12,$r12,0
1c005184:	6c0025ac 	bgeu	$r13,$r12,36(0x24) # 1c0051a8 <main+0x504>
1c005188:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00518c:	02b9e18c 	addi.w	$r12,$r12,-392(0xe78)
1c005190:	2a00018c 	ld.bu	$r12,$r12,0
1c005194:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005198:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00519c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0051a0:	02b9918c 	addi.w	$r12,$r12,-412(0xe64)
1c0051a4:	2900018d 	st.b	$r13,$r12,0
1c0051a8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0051ac:	02b9618c 	addi.w	$r12,$r12,-424(0xe58)
1c0051b0:	2a00018c 	ld.bu	$r12,$r12,0
1c0051b4:	44003580 	bnez	$r12,52(0x34) # 1c0051e8 <main+0x544>
1c0051b8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0051bc:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c0051c0:	57c41fff 	bl	-15332(0xfffc41c) # 1c0015dc <gpio_write_pin>
1c0051c4:	00150005 	move	$r5,$r0
1c0051c8:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c0051cc:	57c413ff 	bl	-15344(0xfffc410) # 1c0015dc <gpio_write_pin>
1c0051d0:	00150005 	move	$r5,$r0
1c0051d4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0051d8:	57c407ff 	bl	-15356(0xfffc404) # 1c0015dc <gpio_write_pin>
1c0051dc:	02801404 	addi.w	$r4,$r0,5(0x5)
1c0051e0:	541a9400 	bl	6804(0x1a94) # 1c006c74 <YUYIN_Ctrl>
1c0051e4:	5000bc00 	b	188(0xbc) # 1c0052a0 <main+0x5fc>
1c0051e8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0051ec:	02b8618c 	addi.w	$r12,$r12,-488(0xe18)
1c0051f0:	2a00018d 	ld.bu	$r13,$r12,0
1c0051f4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0051f8:	5c002dac 	bne	$r13,$r12,44(0x2c) # 1c005224 <main+0x580>
1c0051fc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005200:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c005204:	57c3dbff 	bl	-15400(0xfffc3d8) # 1c0015dc <gpio_write_pin>
1c005208:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00520c:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c005210:	57c3cfff 	bl	-15412(0xfffc3cc) # 1c0015dc <gpio_write_pin>
1c005214:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005218:	02805004 	addi.w	$r4,$r0,20(0x14)
1c00521c:	57c3c3ff 	bl	-15424(0xfffc3c0) # 1c0015dc <gpio_write_pin>
1c005220:	50008000 	b	128(0x80) # 1c0052a0 <main+0x5fc>
1c005224:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005228:	02b7718c 	addi.w	$r12,$r12,-548(0xddc)
1c00522c:	2a00018d 	ld.bu	$r13,$r12,0
1c005230:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c005234:	580019ac 	beq	$r13,$r12,24(0x18) # 1c00524c <main+0x5a8>
1c005238:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00523c:	02b7218c 	addi.w	$r12,$r12,-568(0xdc8)
1c005240:	2a00018d 	ld.bu	$r13,$r12,0
1c005244:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c005248:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c00527c <main+0x5d8>
1c00524c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005250:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c005254:	57c38bff 	bl	-15480(0xfffc388) # 1c0015dc <gpio_write_pin>
1c005258:	00150005 	move	$r5,$r0
1c00525c:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c005260:	57c37fff 	bl	-15492(0xfffc37c) # 1c0015dc <gpio_write_pin>
1c005264:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005268:	02805004 	addi.w	$r4,$r0,20(0x14)
1c00526c:	57c373ff 	bl	-15504(0xfffc370) # 1c0015dc <gpio_write_pin>
1c005270:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005274:	541a0000 	bl	6656(0x1a00) # 1c006c74 <YUYIN_Ctrl>
1c005278:	50002800 	b	40(0x28) # 1c0052a0 <main+0x5fc>
1c00527c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005280:	02b6118c 	addi.w	$r12,$r12,-636(0xd84)
1c005284:	2a00018d 	ld.bu	$r13,$r12,0
1c005288:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00528c:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0052a0 <main+0x5fc>
1c005290:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005294:	54031000 	bl	784(0x310) # 1c0055a4 <BEEP_on>
1c005298:	02801004 	addi.w	$r4,$r0,4(0x4)
1c00529c:	5419d800 	bl	6616(0x19d8) # 1c006c74 <YUYIN_Ctrl>
1c0052a0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0052a4:	02b6318c 	addi.w	$r12,$r12,-628(0xd8c)
1c0052a8:	2a00018c 	ld.bu	$r12,$r12,0
1c0052ac:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0052b0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0052b4:	28b5818c 	ld.w	$r12,$r12,-672(0xd60)
1c0052b8:	2a40018c 	ld.hu	$r12,$r12,0
1c0052bc:	6c0011ac 	bgeu	$r13,$r12,16(0x10) # 1c0052cc <main+0x628>
1c0052c0:	00150005 	move	$r5,$r0
1c0052c4:	02808804 	addi.w	$r4,$r0,34(0x22)
1c0052c8:	57c317ff 	bl	-15596(0xfffc314) # 1c0015dc <gpio_write_pin>
1c0052cc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0052d0:	02b5818c 	addi.w	$r12,$r12,-672(0xd60)
1c0052d4:	2a00018c 	ld.bu	$r12,$r12,0
1c0052d8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0052dc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0052e0:	28b4d18c 	ld.w	$r12,$r12,-716(0xd34)
1c0052e4:	2a40018c 	ld.hu	$r12,$r12,0
1c0052e8:	6800598d 	bltu	$r12,$r13,88(0x58) # 1c005340 <main+0x69c>
1c0052ec:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0052f0:	02b5058c 	addi.w	$r12,$r12,-703(0xd41)
1c0052f4:	2a00018c 	ld.bu	$r12,$r12,0
1c0052f8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0052fc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005300:	28b4318c 	ld.w	$r12,$r12,-756(0xd0c)
1c005304:	2a40018c 	ld.hu	$r12,$r12,0
1c005308:	6800398d 	bltu	$r12,$r13,56(0x38) # 1c005340 <main+0x69c>
1c00530c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005310:	02b4898c 	addi.w	$r12,$r12,-734(0xd22)
1c005314:	2a00018c 	ld.bu	$r12,$r12,0
1c005318:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00531c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005320:	28b4218c 	ld.w	$r12,$r12,-760(0xd08)
1c005324:	2a40018c 	ld.hu	$r12,$r12,0
1c005328:	680019ac 	bltu	$r13,$r12,24(0x18) # 1c005340 <main+0x69c>
1c00532c:	00150005 	move	$r5,$r0
1c005330:	02808804 	addi.w	$r4,$r0,34(0x22)
1c005334:	57c2abff 	bl	-15704(0xfffc2a8) # 1c0015dc <gpio_write_pin>
1c005338:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00533c:	54193800 	bl	6456(0x1938) # 1c006c74 <YUYIN_Ctrl>
1c005340:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005344:	02b3b18c 	addi.w	$r12,$r12,-788(0xcec)
1c005348:	2a00018c 	ld.bu	$r12,$r12,0
1c00534c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005350:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005354:	28b3018c 	ld.w	$r12,$r12,-832(0xcc0)
1c005358:	2a40018c 	ld.hu	$r12,$r12,0
1c00535c:	6c00198d 	bgeu	$r12,$r13,24(0x18) # 1c005374 <main+0x6d0>
1c005360:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005364:	02808804 	addi.w	$r4,$r0,34(0x22)
1c005368:	57c277ff 	bl	-15756(0xfffc274) # 1c0015dc <gpio_write_pin>
1c00536c:	00150004 	move	$r4,$r0
1c005370:	54023400 	bl	564(0x234) # 1c0055a4 <BEEP_on>
1c005374:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005378:	02b2e58c 	addi.w	$r12,$r12,-839(0xcb9)
1c00537c:	2a00018c 	ld.bu	$r12,$r12,0
1c005380:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005384:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005388:	28b2118c 	ld.w	$r12,$r12,-892(0xc84)
1c00538c:	2a40018c 	ld.hu	$r12,$r12,0
1c005390:	680059ac 	bltu	$r13,$r12,88(0x58) # 1c0053e8 <main+0x744>
1c005394:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005398:	02b2618c 	addi.w	$r12,$r12,-872(0xc98)
1c00539c:	2a00018c 	ld.bu	$r12,$r12,0
1c0053a0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0053a4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0053a8:	28b1b18c 	ld.w	$r12,$r12,-916(0xc6c)
1c0053ac:	2a40018c 	ld.hu	$r12,$r12,0
1c0053b0:	680039ac 	bltu	$r13,$r12,56(0x38) # 1c0053e8 <main+0x744>
1c0053b4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0053b8:	02b1e98c 	addi.w	$r12,$r12,-902(0xc7a)
1c0053bc:	2a00018c 	ld.bu	$r12,$r12,0
1c0053c0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0053c4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0053c8:	28b1818c 	ld.w	$r12,$r12,-928(0xc60)
1c0053cc:	2a40018c 	ld.hu	$r12,$r12,0
1c0053d0:	680019ac 	bltu	$r13,$r12,24(0x18) # 1c0053e8 <main+0x744>
1c0053d4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0053d8:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0053dc:	57c203ff 	bl	-15872(0xfffc200) # 1c0015dc <gpio_write_pin>
1c0053e0:	02800804 	addi.w	$r4,$r0,2(0x2)
1c0053e4:	54189000 	bl	6288(0x1890) # 1c006c74 <YUYIN_Ctrl>
1c0053e8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0053ec:	02b1158c 	addi.w	$r12,$r12,-955(0xc45)
1c0053f0:	2a00018c 	ld.bu	$r12,$r12,0
1c0053f4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0053f8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0053fc:	28b0418c 	ld.w	$r12,$r12,-1008(0xc10)
1c005400:	2a40018c 	ld.hu	$r12,$r12,0
1c005404:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c005410 <main+0x76c>
1c005408:	00150004 	move	$r4,$r0
1c00540c:	54019800 	bl	408(0x198) # 1c0055a4 <BEEP_on>
1c005410:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005414:	02b0798c 	addi.w	$r12,$r12,-994(0xc1e)
1c005418:	2a00018c 	ld.bu	$r12,$r12,0
1c00541c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005420:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005424:	28b0118c 	ld.w	$r12,$r12,-1020(0xc04)
1c005428:	2a40018c 	ld.hu	$r12,$r12,0
1c00542c:	6c0011ac 	bgeu	$r13,$r12,16(0x10) # 1c00543c <main+0x798>
1c005430:	00150005 	move	$r5,$r0
1c005434:	02808804 	addi.w	$r4,$r0,34(0x22)
1c005438:	57c1a7ff 	bl	-15964(0xfffc1a4) # 1c0015dc <gpio_write_pin>
1c00543c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005440:	02afc98c 	addi.w	$r12,$r12,-1038(0xbf2)
1c005444:	2a00018c 	ld.bu	$r12,$r12,0
1c005448:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00544c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005450:	28af618c 	ld.w	$r12,$r12,-1064(0xbd8)
1c005454:	2a40018c 	ld.hu	$r12,$r12,0
1c005458:	6800598d 	bltu	$r12,$r13,88(0x58) # 1c0054b0 <main+0x80c>
1c00545c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005460:	02af418c 	addi.w	$r12,$r12,-1072(0xbd0)
1c005464:	2a00018c 	ld.bu	$r12,$r12,0
1c005468:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00546c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005470:	28ae918c 	ld.w	$r12,$r12,-1116(0xba4)
1c005474:	2a40018c 	ld.hu	$r12,$r12,0
1c005478:	680039ac 	bltu	$r13,$r12,56(0x38) # 1c0054b0 <main+0x80c>
1c00547c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005480:	02aec58c 	addi.w	$r12,$r12,-1103(0xbb1)
1c005484:	2a00018c 	ld.bu	$r12,$r12,0
1c005488:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00548c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005490:	28adf18c 	ld.w	$r12,$r12,-1156(0xb7c)
1c005494:	2a40018c 	ld.hu	$r12,$r12,0
1c005498:	6800198d 	bltu	$r12,$r13,24(0x18) # 1c0054b0 <main+0x80c>
1c00549c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0054a0:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0054a4:	57c13bff 	bl	-16072(0xfffc138) # 1c0015dc <gpio_write_pin>
1c0054a8:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0054ac:	5417c800 	bl	6088(0x17c8) # 1c006c74 <YUYIN_Ctrl>
1c0054b0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0054b4:	02adf98c 	addi.w	$r12,$r12,-1154(0xb7e)
1c0054b8:	2a00018c 	ld.bu	$r12,$r12,0
1c0054bc:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0054c0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0054c4:	28ad918c 	ld.w	$r12,$r12,-1180(0xb64)
1c0054c8:	2a40018c 	ld.hu	$r12,$r12,0
1c0054cc:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c0054d8 <main+0x834>
1c0054d0:	00150004 	move	$r4,$r0
1c0054d4:	5400d000 	bl	208(0xd0) # 1c0055a4 <BEEP_on>
1c0054d8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0054dc:	02ad518c 	addi.w	$r12,$r12,-1196(0xb54)
1c0054e0:	2a00018c 	ld.bu	$r12,$r12,0
1c0054e4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0054e8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0054ec:	28aca18c 	ld.w	$r12,$r12,-1240(0xb28)
1c0054f0:	2a40018c 	ld.hu	$r12,$r12,0
1c0054f4:	6bf839ac 	bltu	$r13,$r12,-1992(0x3f838) # 1c004d2c <main+0x88>
1c0054f8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0054fc:	02acd58c 	addi.w	$r12,$r12,-1227(0xb35)
1c005500:	2a00018c 	ld.bu	$r12,$r12,0
1c005504:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005508:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00550c:	28ac018c 	ld.w	$r12,$r12,-1280(0xb00)
1c005510:	2a40018c 	ld.hu	$r12,$r12,0
1c005514:	6bf8198d 	bltu	$r12,$r13,-2024(0x3f818) # 1c004d2c <main+0x88>
1c005518:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00551c:	02ac598c 	addi.w	$r12,$r12,-1258(0xb16)
1c005520:	2a00018c 	ld.bu	$r12,$r12,0
1c005524:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005528:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00552c:	28abf18c 	ld.w	$r12,$r12,-1284(0xafc)
1c005530:	2a40018c 	ld.hu	$r12,$r12,0
1c005534:	6bf7f9ac 	bltu	$r13,$r12,-2056(0x3f7f8) # 1c004d2c <main+0x88>
1c005538:	00150004 	move	$r4,$r0
1c00553c:	54006800 	bl	104(0x68) # 1c0055a4 <BEEP_on>
1c005540:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005544:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c005548:	57c097ff 	bl	-16236(0xfffc094) # 1c0015dc <gpio_write_pin>
1c00554c:	00150005 	move	$r5,$r0
1c005550:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c005554:	57c08bff 	bl	-16248(0xfffc088) # 1c0015dc <gpio_write_pin>
1c005558:	00150005 	move	$r5,$r0
1c00555c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005560:	57c07fff 	bl	-16260(0xfffc07c) # 1c0015dc <gpio_write_pin>
1c005564:	53f7cbff 	b	-2104(0xffff7c8) # 1c004d2c <main+0x88>

1c005568 <BEEP_Init>:
BEEP_Init():
1c005568:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00556c:	29803061 	st.w	$r1,$r3,12(0xc)
1c005570:	29802076 	st.w	$r22,$r3,8(0x8)
1c005574:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005578:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00557c:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c005580:	57c2e3ff 	bl	-15648(0xfffc2e0) # 1c001860 <gpio_set_direction>
1c005584:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005588:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c00558c:	57c053ff 	bl	-16304(0xfffc050) # 1c0015dc <gpio_write_pin>
1c005590:	03400000 	andi	$r0,$r0,0x0
1c005594:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005598:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00559c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0055a0:	4c000020 	jirl	$r0,$r1,0

1c0055a4 <BEEP_on>:
BEEP_on():
1c0055a4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0055a8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0055ac:	29806076 	st.w	$r22,$r3,24(0x18)
1c0055b0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0055b4:	0015008c 	move	$r12,$r4
1c0055b8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0055bc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0055c0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0055c4:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0055d4 <BEEP_on+0x30>
1c0055c8:	00150005 	move	$r5,$r0
1c0055cc:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c0055d0:	57c00fff 	bl	-16372(0xfffc00c) # 1c0015dc <gpio_write_pin>
1c0055d4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0055d8:	44001180 	bnez	$r12,16(0x10) # 1c0055e8 <BEEP_on+0x44>
1c0055dc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0055e0:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c0055e4:	57bffbff 	bl	-16392(0xfffbff8) # 1c0015dc <gpio_write_pin>
1c0055e8:	03400000 	andi	$r0,$r0,0x0
1c0055ec:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0055f0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0055f4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0055f8:	4c000020 	jirl	$r0,$r1,0

1c0055fc <IIC_Delay>:
IIC_Delay():
1c0055fc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005600:	29807076 	st.w	$r22,$r3,28(0x1c)
1c005604:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005608:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00560c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005610:	50001000 	b	16(0x10) # 1c005620 <IIC_Delay+0x24>
1c005614:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005618:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00561c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005620:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005624:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c005614 <IIC_Delay+0x18>
1c005628:	03400000 	andi	$r0,$r0,0x0
1c00562c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c005630:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005634:	4c000020 	jirl	$r0,$r1,0

1c005638 <IIC_Init>:
IIC_Init():
1c005638:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00563c:	29803061 	st.w	$r1,$r3,12(0xc)
1c005640:	29802076 	st.w	$r22,$r3,8(0x8)
1c005644:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005648:	00150005 	move	$r5,$r0
1c00564c:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005650:	57c007ff 	bl	-16380(0xfffc004) # 1c001654 <gpio_pin_remap>
1c005654:	00150005 	move	$r5,$r0
1c005658:	02801404 	addi.w	$r4,$r0,5(0x5)
1c00565c:	57bffbff 	bl	-16392(0xfffbff8) # 1c001654 <gpio_pin_remap>
1c005660:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005664:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005668:	57c1fbff 	bl	-15880(0xfffc1f8) # 1c001860 <gpio_set_direction>
1c00566c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005670:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005674:	57c1efff 	bl	-15892(0xfffc1ec) # 1c001860 <gpio_set_direction>
1c005678:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00567c:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005680:	57bf5fff 	bl	-16548(0xfffbf5c) # 1c0015dc <gpio_write_pin>
1c005684:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005688:	02801404 	addi.w	$r4,$r0,5(0x5)
1c00568c:	57bf53ff 	bl	-16560(0xfffbf50) # 1c0015dc <gpio_write_pin>
1c005690:	03400000 	andi	$r0,$r0,0x0
1c005694:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005698:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00569c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0056a0:	4c000020 	jirl	$r0,$r1,0

1c0056a4 <SDA_IN>:
SDA_IN():
1c0056a4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0056a8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0056ac:	29802076 	st.w	$r22,$r3,8(0x8)
1c0056b0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0056b4:	00150005 	move	$r5,$r0
1c0056b8:	02801404 	addi.w	$r4,$r0,5(0x5)
1c0056bc:	57c1a7ff 	bl	-15964(0xfffc1a4) # 1c001860 <gpio_set_direction>
1c0056c0:	03400000 	andi	$r0,$r0,0x0
1c0056c4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0056c8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0056cc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0056d0:	4c000020 	jirl	$r0,$r1,0

1c0056d4 <SDA_OUT>:
SDA_OUT():
1c0056d4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0056d8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0056dc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0056e0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0056e4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0056e8:	02801404 	addi.w	$r4,$r0,5(0x5)
1c0056ec:	57c177ff 	bl	-16012(0xfffc174) # 1c001860 <gpio_set_direction>
1c0056f0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0056f4:	02801404 	addi.w	$r4,$r0,5(0x5)
1c0056f8:	57bee7ff 	bl	-16668(0xfffbee4) # 1c0015dc <gpio_write_pin>
1c0056fc:	03400000 	andi	$r0,$r0,0x0
1c005700:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005704:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005708:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00570c:	4c000020 	jirl	$r0,$r1,0

1c005710 <IIC_Start>:
IIC_Start():
1c005710:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005714:	29803061 	st.w	$r1,$r3,12(0xc)
1c005718:	29802076 	st.w	$r22,$r3,8(0x8)
1c00571c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005720:	57ffb7ff 	bl	-76(0xfffffb4) # 1c0056d4 <SDA_OUT>
1c005724:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005728:	02801404 	addi.w	$r4,$r0,5(0x5)
1c00572c:	57beb3ff 	bl	-16720(0xfffbeb0) # 1c0015dc <gpio_write_pin>
1c005730:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005734:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005738:	57bea7ff 	bl	-16732(0xfffbea4) # 1c0015dc <gpio_write_pin>
1c00573c:	57fec3ff 	bl	-320(0xffffec0) # 1c0055fc <IIC_Delay>
1c005740:	00150005 	move	$r5,$r0
1c005744:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005748:	57be97ff 	bl	-16748(0xfffbe94) # 1c0015dc <gpio_write_pin>
1c00574c:	57feb3ff 	bl	-336(0xffffeb0) # 1c0055fc <IIC_Delay>
1c005750:	00150005 	move	$r5,$r0
1c005754:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005758:	57be87ff 	bl	-16764(0xfffbe84) # 1c0015dc <gpio_write_pin>
1c00575c:	03400000 	andi	$r0,$r0,0x0
1c005760:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005764:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005768:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00576c:	4c000020 	jirl	$r0,$r1,0

1c005770 <IIC_Stop>:
IIC_Stop():
1c005770:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005774:	29803061 	st.w	$r1,$r3,12(0xc)
1c005778:	29802076 	st.w	$r22,$r3,8(0x8)
1c00577c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005780:	57ff57ff 	bl	-172(0xfffff54) # 1c0056d4 <SDA_OUT>
1c005784:	00150005 	move	$r5,$r0
1c005788:	02801004 	addi.w	$r4,$r0,4(0x4)
1c00578c:	57be53ff 	bl	-16816(0xfffbe50) # 1c0015dc <gpio_write_pin>
1c005790:	00150005 	move	$r5,$r0
1c005794:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005798:	57be47ff 	bl	-16828(0xfffbe44) # 1c0015dc <gpio_write_pin>
1c00579c:	57fe63ff 	bl	-416(0xffffe60) # 1c0055fc <IIC_Delay>
1c0057a0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0057a4:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0057a8:	57be37ff 	bl	-16844(0xfffbe34) # 1c0015dc <gpio_write_pin>
1c0057ac:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0057b0:	02801404 	addi.w	$r4,$r0,5(0x5)
1c0057b4:	57be2bff 	bl	-16856(0xfffbe28) # 1c0015dc <gpio_write_pin>
1c0057b8:	57fe47ff 	bl	-444(0xffffe44) # 1c0055fc <IIC_Delay>
1c0057bc:	03400000 	andi	$r0,$r0,0x0
1c0057c0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0057c4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0057c8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0057cc:	4c000020 	jirl	$r0,$r1,0

1c0057d0 <IIC_Wait_Ack>:
IIC_Wait_Ack():
1c0057d0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0057d4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0057d8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0057dc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0057e0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0057e4:	57fec3ff 	bl	-320(0xffffec0) # 1c0056a4 <SDA_IN>
1c0057e8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0057ec:	02801404 	addi.w	$r4,$r0,5(0x5)
1c0057f0:	57bdefff 	bl	-16916(0xfffbdec) # 1c0015dc <gpio_write_pin>
1c0057f4:	57fe0bff 	bl	-504(0xffffe08) # 1c0055fc <IIC_Delay>
1c0057f8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0057fc:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005800:	57bddfff 	bl	-16932(0xfffbddc) # 1c0015dc <gpio_write_pin>
1c005804:	57fdfbff 	bl	-520(0xffffdf8) # 1c0055fc <IIC_Delay>
1c005808:	50002800 	b	40(0x28) # 1c005830 <IIC_Wait_Ack+0x60>
1c00580c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005810:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005814:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005818:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00581c:	0283e80c 	addi.w	$r12,$r0,250(0xfa)
1c005820:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c005830 <IIC_Wait_Ack+0x60>
1c005824:	57ff4fff 	bl	-180(0xfffff4c) # 1c005770 <IIC_Stop>
1c005828:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00582c:	50002400 	b	36(0x24) # 1c005850 <IIC_Wait_Ack+0x80>
1c005830:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005834:	57bd5bff 	bl	-17064(0xfffbd58) # 1c00158c <gpio_get_pin>
1c005838:	0015008c 	move	$r12,$r4
1c00583c:	47ffd19f 	bnez	$r12,-48(0x7fffd0) # 1c00580c <IIC_Wait_Ack+0x3c>
1c005840:	00150005 	move	$r5,$r0
1c005844:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005848:	57bd97ff 	bl	-17004(0xfffbd94) # 1c0015dc <gpio_write_pin>
1c00584c:	0015000c 	move	$r12,$r0
1c005850:	00150184 	move	$r4,$r12
1c005854:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005858:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00585c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005860:	4c000020 	jirl	$r0,$r1,0

1c005864 <IIC_Send_Byte>:
IIC_Send_Byte():
1c005864:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005868:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00586c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005870:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005874:	0015008c 	move	$r12,$r4
1c005878:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c00587c:	57fe5bff 	bl	-424(0xffffe58) # 1c0056d4 <SDA_OUT>
1c005880:	00150005 	move	$r5,$r0
1c005884:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005888:	57bd57ff 	bl	-17068(0xfffbd54) # 1c0015dc <gpio_write_pin>
1c00588c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005890:	50006000 	b	96(0x60) # 1c0058f0 <IIC_Send_Byte+0x8c>
1c005894:	283f7ecc 	ld.b	$r12,$r22,-33(0xfdf)
1c005898:	64001580 	bge	$r12,$r0,20(0x14) # 1c0058ac <IIC_Send_Byte+0x48>
1c00589c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0058a0:	02801404 	addi.w	$r4,$r0,5(0x5)
1c0058a4:	57bd3bff 	bl	-17096(0xfffbd38) # 1c0015dc <gpio_write_pin>
1c0058a8:	50001000 	b	16(0x10) # 1c0058b8 <IIC_Send_Byte+0x54>
1c0058ac:	00150005 	move	$r5,$r0
1c0058b0:	02801404 	addi.w	$r4,$r0,5(0x5)
1c0058b4:	57bd2bff 	bl	-17112(0xfffbd28) # 1c0015dc <gpio_write_pin>
1c0058b8:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0058bc:	0040858c 	slli.w	$r12,$r12,0x1
1c0058c0:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0058c4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0058c8:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0058cc:	57bd13ff 	bl	-17136(0xfffbd10) # 1c0015dc <gpio_write_pin>
1c0058d0:	57fd2fff 	bl	-724(0xffffd2c) # 1c0055fc <IIC_Delay>
1c0058d4:	00150005 	move	$r5,$r0
1c0058d8:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0058dc:	57bd03ff 	bl	-17152(0xfffbd00) # 1c0015dc <gpio_write_pin>
1c0058e0:	57fd1fff 	bl	-740(0xffffd1c) # 1c0055fc <IIC_Delay>
1c0058e4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0058e8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0058ec:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0058f0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0058f4:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0058f8:	6fff9d8d 	bgeu	$r12,$r13,-100(0x3ff9c) # 1c005894 <IIC_Send_Byte+0x30>
1c0058fc:	03400000 	andi	$r0,$r0,0x0
1c005900:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005904:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005908:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00590c:	4c000020 	jirl	$r0,$r1,0

1c005910 <DHT11_Rst>:
DHT11_Rst():
1c005910:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005914:	29803061 	st.w	$r1,$r3,12(0xc)
1c005918:	29802076 	st.w	$r22,$r3,8(0x8)
1c00591c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005920:	54007000 	bl	112(0x70) # 1c005990 <DHT11_IO_Out>
1c005924:	00150005 	move	$r5,$r0
1c005928:	02804404 	addi.w	$r4,$r0,17(0x11)
1c00592c:	57bcb3ff 	bl	-17232(0xfffbcb0) # 1c0015dc <gpio_write_pin>
1c005930:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005934:	57dc87ff 	bl	-9084(0xfffdc84) # 1c0035b8 <delay_ms>
1c005938:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00593c:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005940:	57bc9fff 	bl	-17252(0xfffbc9c) # 1c0015dc <gpio_write_pin>
1c005944:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c005948:	57dc3bff 	bl	-9160(0xfffdc38) # 1c003580 <delay_us>
1c00594c:	03400000 	andi	$r0,$r0,0x0
1c005950:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005954:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005958:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00595c:	4c000020 	jirl	$r0,$r1,0

1c005960 <DHT11_IO_In>:
DHT11_IO_In():
1c005960:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005964:	29803061 	st.w	$r1,$r3,12(0xc)
1c005968:	29802076 	st.w	$r22,$r3,8(0x8)
1c00596c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005970:	00150005 	move	$r5,$r0
1c005974:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005978:	57beebff 	bl	-16664(0xfffbee8) # 1c001860 <gpio_set_direction>
1c00597c:	03400000 	andi	$r0,$r0,0x0
1c005980:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005984:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005988:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00598c:	4c000020 	jirl	$r0,$r1,0

1c005990 <DHT11_IO_Out>:
DHT11_IO_Out():
1c005990:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005994:	29803061 	st.w	$r1,$r3,12(0xc)
1c005998:	29802076 	st.w	$r22,$r3,8(0x8)
1c00599c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0059a0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0059a4:	02804404 	addi.w	$r4,$r0,17(0x11)
1c0059a8:	57bebbff 	bl	-16712(0xfffbeb8) # 1c001860 <gpio_set_direction>
1c0059ac:	03400000 	andi	$r0,$r0,0x0
1c0059b0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0059b4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0059b8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0059bc:	4c000020 	jirl	$r0,$r1,0

1c0059c0 <DHT11_Check>:
DHT11_Check():
1c0059c0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0059c4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0059c8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0059cc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0059d0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0059d4:	57ff8fff 	bl	-116(0xfffff8c) # 1c005960 <DHT11_IO_In>
1c0059d8:	50001000 	b	16(0x10) # 1c0059e8 <DHT11_Check+0x28>
1c0059dc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0059e0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0059e4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0059e8:	02804404 	addi.w	$r4,$r0,17(0x11)
1c0059ec:	57bba3ff 	bl	-17504(0xfffbba0) # 1c00158c <gpio_get_pin>
1c0059f0:	0015008c 	move	$r12,$r4
1c0059f4:	40001180 	beqz	$r12,16(0x10) # 1c005a04 <DHT11_Check+0x44>
1c0059f8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0059fc:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c005a00:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c0059dc <DHT11_Check+0x1c>
1c005a04:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005a08:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c005a0c:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c005a18 <DHT11_Check+0x58>
1c005a10:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005a14:	50004c00 	b	76(0x4c) # 1c005a60 <DHT11_Check+0xa0>
1c005a18:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005a1c:	50001000 	b	16(0x10) # 1c005a2c <DHT11_Check+0x6c>
1c005a20:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005a24:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005a28:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005a2c:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005a30:	57bb5fff 	bl	-17572(0xfffbb5c) # 1c00158c <gpio_get_pin>
1c005a34:	0015008c 	move	$r12,$r4
1c005a38:	44001180 	bnez	$r12,16(0x10) # 1c005a48 <DHT11_Check+0x88>
1c005a3c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005a40:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c005a44:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c005a20 <DHT11_Check+0x60>
1c005a48:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005a4c:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c005a50:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c005a5c <DHT11_Check+0x9c>
1c005a54:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005a58:	50000800 	b	8(0x8) # 1c005a60 <DHT11_Check+0xa0>
1c005a5c:	0015000c 	move	$r12,$r0
1c005a60:	00150184 	move	$r4,$r12
1c005a64:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005a68:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005a6c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005a70:	4c000020 	jirl	$r0,$r1,0

1c005a74 <DHT11_Read_Bit>:
DHT11_Read_Bit():
1c005a74:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005a78:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005a7c:	29806076 	st.w	$r22,$r3,24(0x18)
1c005a80:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005a84:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005a88:	50001000 	b	16(0x10) # 1c005a98 <DHT11_Read_Bit+0x24>
1c005a8c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005a90:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005a94:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005a98:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005a9c:	57baf3ff 	bl	-17680(0xfffbaf0) # 1c00158c <gpio_get_pin>
1c005aa0:	0015008c 	move	$r12,$r4
1c005aa4:	40001180 	beqz	$r12,16(0x10) # 1c005ab4 <DHT11_Read_Bit+0x40>
1c005aa8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005aac:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c005ab0:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c005a8c <DHT11_Read_Bit+0x18>
1c005ab4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005ab8:	50001000 	b	16(0x10) # 1c005ac8 <DHT11_Read_Bit+0x54>
1c005abc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005ac0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005ac4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005ac8:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005acc:	57bac3ff 	bl	-17728(0xfffbac0) # 1c00158c <gpio_get_pin>
1c005ad0:	0015008c 	move	$r12,$r4
1c005ad4:	44001180 	bnez	$r12,16(0x10) # 1c005ae4 <DHT11_Read_Bit+0x70>
1c005ad8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005adc:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c005ae0:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c005abc <DHT11_Read_Bit+0x48>
1c005ae4:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c005ae8:	57da9bff 	bl	-9576(0xfffda98) # 1c003580 <delay_us>
1c005aec:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005af0:	57ba9fff 	bl	-17764(0xfffba9c) # 1c00158c <gpio_get_pin>
1c005af4:	0015008c 	move	$r12,$r4
1c005af8:	40000d80 	beqz	$r12,12(0xc) # 1c005b04 <DHT11_Read_Bit+0x90>
1c005afc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005b00:	50000800 	b	8(0x8) # 1c005b08 <DHT11_Read_Bit+0x94>
1c005b04:	0015000c 	move	$r12,$r0
1c005b08:	00150184 	move	$r4,$r12
1c005b0c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005b10:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005b14:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005b18:	4c000020 	jirl	$r0,$r1,0

1c005b1c <DHT11_Read_Byte>:
DHT11_Read_Byte():
1c005b1c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005b20:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005b24:	29806076 	st.w	$r22,$r3,24(0x18)
1c005b28:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005b2c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005b30:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005b34:	50003400 	b	52(0x34) # 1c005b68 <DHT11_Read_Byte+0x4c>
1c005b38:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005b3c:	0040858c 	slli.w	$r12,$r12,0x1
1c005b40:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005b44:	57ff33ff 	bl	-208(0xfffff30) # 1c005a74 <DHT11_Read_Bit>
1c005b48:	0015008c 	move	$r12,$r4
1c005b4c:	0015018d 	move	$r13,$r12
1c005b50:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005b54:	001531ac 	or	$r12,$r13,$r12
1c005b58:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005b5c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005b60:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005b64:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005b68:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005b6c:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005b70:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c005b38 <DHT11_Read_Byte+0x1c>
1c005b74:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005b78:	00150184 	move	$r4,$r12
1c005b7c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005b80:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005b84:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005b88:	4c000020 	jirl	$r0,$r1,0

1c005b8c <DHT11_Read_Data>:
DHT11_Read_Data():
1c005b8c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005b90:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005b94:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005b98:	29809077 	st.w	$r23,$r3,36(0x24)
1c005b9c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005ba0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005ba4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005ba8:	57fd6bff 	bl	-664(0xffffd68) # 1c005910 <DHT11_Rst>
1c005bac:	57fe17ff 	bl	-492(0xffffe14) # 1c0059c0 <DHT11_Check>
1c005bb0:	0015008c 	move	$r12,$r4
1c005bb4:	4400c180 	bnez	$r12,192(0xc0) # 1c005c74 <DHT11_Read_Data+0xe8>
1c005bb8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005bbc:	50002800 	b	40(0x28) # 1c005be4 <DHT11_Read_Data+0x58>
1c005bc0:	2a3fbed7 	ld.bu	$r23,$r22,-17(0xfef)
1c005bc4:	57ff5bff 	bl	-168(0xfffff58) # 1c005b1c <DHT11_Read_Byte>
1c005bc8:	0015008c 	move	$r12,$r4
1c005bcc:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c005bd0:	00105dad 	add.w	$r13,$r13,$r23
1c005bd4:	293fe1ac 	st.b	$r12,$r13,-8(0xff8)
1c005bd8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005bdc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005be0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005be4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005be8:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c005bec:	6fffd58d 	bgeu	$r12,$r13,-44(0x3ffd4) # 1c005bc0 <DHT11_Read_Data+0x34>
1c005bf0:	2a3fa2cc 	ld.bu	$r12,$r22,-24(0xfe8)
1c005bf4:	0015018d 	move	$r13,$r12
1c005bf8:	2a3fa6cc 	ld.bu	$r12,$r22,-23(0xfe9)
1c005bfc:	001031ac 	add.w	$r12,$r13,$r12
1c005c00:	2a3faacd 	ld.bu	$r13,$r22,-22(0xfea)
1c005c04:	0010358c 	add.w	$r12,$r12,$r13
1c005c08:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c005c0c:	0010358c 	add.w	$r12,$r12,$r13
1c005c10:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c005c14:	5c00698d 	bne	$r12,$r13,104(0x68) # 1c005c7c <DHT11_Read_Data+0xf0>
1c005c18:	2a3fa2cc 	ld.bu	$r12,$r22,-24(0xfe8)
1c005c1c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005c20:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005c24:	001c31ac 	mul.w	$r12,$r13,$r12
1c005c28:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005c2c:	2a3fa6cc 	ld.bu	$r12,$r22,-23(0xfe9)
1c005c30:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005c34:	001031ac 	add.w	$r12,$r13,$r12
1c005c38:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005c3c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005c40:	2940018d 	st.h	$r13,$r12,0
1c005c44:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c005c48:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005c4c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005c50:	001c31ac 	mul.w	$r12,$r13,$r12
1c005c54:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005c58:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c005c5c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005c60:	001031ac 	add.w	$r12,$r13,$r12
1c005c64:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005c68:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005c6c:	2940018d 	st.h	$r13,$r12,0
1c005c70:	50000c00 	b	12(0xc) # 1c005c7c <DHT11_Read_Data+0xf0>
1c005c74:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005c78:	50000800 	b	8(0x8) # 1c005c80 <DHT11_Read_Data+0xf4>
1c005c7c:	0015000c 	move	$r12,$r0
1c005c80:	00150184 	move	$r4,$r12
1c005c84:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005c88:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005c8c:	28809077 	ld.w	$r23,$r3,36(0x24)
1c005c90:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005c94:	4c000020 	jirl	$r0,$r1,0

1c005c98 <DHT11_Init>:
DHT11_Init():
1c005c98:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005c9c:	29803061 	st.w	$r1,$r3,12(0xc)
1c005ca0:	29802076 	st.w	$r22,$r3,8(0x8)
1c005ca4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005ca8:	00150005 	move	$r5,$r0
1c005cac:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005cb0:	57b9a7ff 	bl	-18012(0xfffb9a4) # 1c001654 <gpio_pin_remap>
1c005cb4:	57fcdfff 	bl	-804(0xffffcdc) # 1c005990 <DHT11_IO_Out>
1c005cb8:	57fc5bff 	bl	-936(0xffffc58) # 1c005910 <DHT11_Rst>
1c005cbc:	57fd07ff 	bl	-764(0xffffd04) # 1c0059c0 <DHT11_Check>
1c005cc0:	0015008c 	move	$r12,$r4
1c005cc4:	00150184 	move	$r4,$r12
1c005cc8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005ccc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005cd0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005cd4:	4c000020 	jirl	$r0,$r1,0

1c005cd8 <FAN_Init>:
FAN_Init():
1c005cd8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005cdc:	29803061 	st.w	$r1,$r3,12(0xc)
1c005ce0:	29802076 	st.w	$r22,$r3,8(0x8)
1c005ce4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005ce8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005cec:	02808804 	addi.w	$r4,$r0,34(0x22)
1c005cf0:	57bb73ff 	bl	-17552(0xfffbb70) # 1c001860 <gpio_set_direction>
1c005cf4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005cf8:	02808804 	addi.w	$r4,$r0,34(0x22)
1c005cfc:	57b8e3ff 	bl	-18208(0xfffb8e0) # 1c0015dc <gpio_write_pin>
1c005d00:	03400000 	andi	$r0,$r0,0x0
1c005d04:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005d08:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005d0c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005d10:	4c000020 	jirl	$r0,$r1,0

1c005d14 <LED_Init>:
LED_Init():
1c005d14:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005d18:	29803061 	st.w	$r1,$r3,12(0xc)
1c005d1c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005d20:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005d24:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005d28:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005d2c:	57bb37ff 	bl	-17612(0xfffbb34) # 1c001860 <gpio_set_direction>
1c005d30:	03400000 	andi	$r0,$r0,0x0
1c005d34:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005d38:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005d3c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005d40:	4c000020 	jirl	$r0,$r1,0

1c005d44 <KEY_Init>:
KEY_Init():
1c005d44:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005d48:	29803061 	st.w	$r1,$r3,12(0xc)
1c005d4c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005d50:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005d54:	00150005 	move	$r5,$r0
1c005d58:	02805804 	addi.w	$r4,$r0,22(0x16)
1c005d5c:	57bb07ff 	bl	-17660(0xfffbb04) # 1c001860 <gpio_set_direction>
1c005d60:	03400000 	andi	$r0,$r0,0x0
1c005d64:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005d68:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005d6c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005d70:	4c000020 	jirl	$r0,$r1,0

1c005d74 <OLED_Hardware_Init>:
OLED_Hardware_Init():
1c005d74:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005d78:	29803061 	st.w	$r1,$r3,12(0xc)
1c005d7c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005d80:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005d84:	57f8b7ff 	bl	-1868(0xffff8b4) # 1c005638 <IIC_Init>
1c005d88:	03400000 	andi	$r0,$r0,0x0
1c005d8c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005d90:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005d94:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005d98:	4c000020 	jirl	$r0,$r1,0

1c005d9c <OLED_WR_Byte>:
OLED_WR_Byte():
1c005d9c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005da0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005da4:	29806076 	st.w	$r22,$r3,24(0x18)
1c005da8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005dac:	0015008c 	move	$r12,$r4
1c005db0:	001500ad 	move	$r13,$r5
1c005db4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005db8:	001501ac 	move	$r12,$r13
1c005dbc:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005dc0:	57f953ff 	bl	-1712(0xffff950) # 1c005710 <IIC_Start>
1c005dc4:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c005dc8:	57fa9fff 	bl	-1380(0xffffa9c) # 1c005864 <IIC_Send_Byte>
1c005dcc:	57fa07ff 	bl	-1532(0xffffa04) # 1c0057d0 <IIC_Wait_Ack>
1c005dd0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005dd4:	00150184 	move	$r4,$r12
1c005dd8:	57fa8fff 	bl	-1396(0xffffa8c) # 1c005864 <IIC_Send_Byte>
1c005ddc:	57f9f7ff 	bl	-1548(0xffff9f4) # 1c0057d0 <IIC_Wait_Ack>
1c005de0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005de4:	00150184 	move	$r4,$r12
1c005de8:	57fa7fff 	bl	-1412(0xffffa7c) # 1c005864 <IIC_Send_Byte>
1c005dec:	57f9e7ff 	bl	-1564(0xffff9e4) # 1c0057d0 <IIC_Wait_Ack>
1c005df0:	57f983ff 	bl	-1664(0xffff980) # 1c005770 <IIC_Stop>
1c005df4:	03400000 	andi	$r0,$r0,0x0
1c005df8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005dfc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005e00:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005e04:	4c000020 	jirl	$r0,$r1,0

1c005e08 <OLED_Set_Pos>:
OLED_Set_Pos():
1c005e08:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005e0c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005e10:	29806076 	st.w	$r22,$r3,24(0x18)
1c005e14:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005e18:	0015008c 	move	$r12,$r4
1c005e1c:	001500ad 	move	$r13,$r5
1c005e20:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005e24:	001501ac 	move	$r12,$r13
1c005e28:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005e2c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005e30:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c005e34:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005e38:	00150005 	move	$r5,$r0
1c005e3c:	00150184 	move	$r4,$r12
1c005e40:	57ff5fff 	bl	-164(0xfffff5c) # 1c005d9c <OLED_WR_Byte>
1c005e44:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005e48:	0044918c 	srli.w	$r12,$r12,0x4
1c005e4c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005e50:	0380418c 	ori	$r12,$r12,0x10
1c005e54:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005e58:	00150005 	move	$r5,$r0
1c005e5c:	00150184 	move	$r4,$r12
1c005e60:	57ff3fff 	bl	-196(0xfffff3c) # 1c005d9c <OLED_WR_Byte>
1c005e64:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005e68:	03403d8c 	andi	$r12,$r12,0xf
1c005e6c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005e70:	00150005 	move	$r5,$r0
1c005e74:	00150184 	move	$r4,$r12
1c005e78:	57ff27ff 	bl	-220(0xfffff24) # 1c005d9c <OLED_WR_Byte>
1c005e7c:	03400000 	andi	$r0,$r0,0x0
1c005e80:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005e84:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005e88:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005e8c:	4c000020 	jirl	$r0,$r1,0

1c005e90 <OLED_Clear>:
OLED_Clear():
1c005e90:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005e94:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005e98:	29806076 	st.w	$r22,$r3,24(0x18)
1c005e9c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005ea0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005ea4:	50006800 	b	104(0x68) # 1c005f0c <OLED_Clear+0x7c>
1c005ea8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005eac:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c005eb0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005eb4:	00150005 	move	$r5,$r0
1c005eb8:	00150184 	move	$r4,$r12
1c005ebc:	57fee3ff 	bl	-288(0xffffee0) # 1c005d9c <OLED_WR_Byte>
1c005ec0:	00150005 	move	$r5,$r0
1c005ec4:	02800804 	addi.w	$r4,$r0,2(0x2)
1c005ec8:	57fed7ff 	bl	-300(0xffffed4) # 1c005d9c <OLED_WR_Byte>
1c005ecc:	00150005 	move	$r5,$r0
1c005ed0:	02804004 	addi.w	$r4,$r0,16(0x10)
1c005ed4:	57fecbff 	bl	-312(0xffffec8) # 1c005d9c <OLED_WR_Byte>
1c005ed8:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005edc:	50001c00 	b	28(0x1c) # 1c005ef8 <OLED_Clear+0x68>
1c005ee0:	02810005 	addi.w	$r5,$r0,64(0x40)
1c005ee4:	00150004 	move	$r4,$r0
1c005ee8:	57feb7ff 	bl	-332(0xffffeb4) # 1c005d9c <OLED_WR_Byte>
1c005eec:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005ef0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005ef4:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005ef8:	283fbacc 	ld.b	$r12,$r22,-18(0xfee)
1c005efc:	67ffe580 	bge	$r12,$r0,-28(0x3ffe4) # 1c005ee0 <OLED_Clear+0x50>
1c005f00:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005f04:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005f08:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005f0c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005f10:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005f14:	6fff958d 	bgeu	$r12,$r13,-108(0x3ff94) # 1c005ea8 <OLED_Clear+0x18>
1c005f18:	03400000 	andi	$r0,$r0,0x0
1c005f1c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005f20:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005f24:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005f28:	4c000020 	jirl	$r0,$r1,0

1c005f2c <OLED_Init>:
OLED_Init():
1c005f2c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005f30:	29803061 	st.w	$r1,$r3,12(0xc)
1c005f34:	29802076 	st.w	$r22,$r3,8(0x8)
1c005f38:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005f3c:	57fe3bff 	bl	-456(0xffffe38) # 1c005d74 <OLED_Hardware_Init>
1c005f40:	02819004 	addi.w	$r4,$r0,100(0x64)
1c005f44:	57d677ff 	bl	-10636(0xfffd674) # 1c0035b8 <delay_ms>
1c005f48:	57ff4bff 	bl	-184(0xfffff48) # 1c005e90 <OLED_Clear>
1c005f4c:	00150005 	move	$r5,$r0
1c005f50:	00150004 	move	$r4,$r0
1c005f54:	57feb7ff 	bl	-332(0xffffeb4) # 1c005e08 <OLED_Set_Pos>
1c005f58:	00150005 	move	$r5,$r0
1c005f5c:	0282b804 	addi.w	$r4,$r0,174(0xae)
1c005f60:	57fe3fff 	bl	-452(0xffffe3c) # 1c005d9c <OLED_WR_Byte>
1c005f64:	00150005 	move	$r5,$r0
1c005f68:	00150004 	move	$r4,$r0
1c005f6c:	57fe33ff 	bl	-464(0xffffe30) # 1c005d9c <OLED_WR_Byte>
1c005f70:	00150005 	move	$r5,$r0
1c005f74:	02804004 	addi.w	$r4,$r0,16(0x10)
1c005f78:	57fe27ff 	bl	-476(0xffffe24) # 1c005d9c <OLED_WR_Byte>
1c005f7c:	00150005 	move	$r5,$r0
1c005f80:	02810004 	addi.w	$r4,$r0,64(0x40)
1c005f84:	57fe1bff 	bl	-488(0xffffe18) # 1c005d9c <OLED_WR_Byte>
1c005f88:	00150005 	move	$r5,$r0
1c005f8c:	02820404 	addi.w	$r4,$r0,129(0x81)
1c005f90:	57fe0fff 	bl	-500(0xffffe0c) # 1c005d9c <OLED_WR_Byte>
1c005f94:	00150005 	move	$r5,$r0
1c005f98:	02833c04 	addi.w	$r4,$r0,207(0xcf)
1c005f9c:	57fe03ff 	bl	-512(0xffffe00) # 1c005d9c <OLED_WR_Byte>
1c005fa0:	00150005 	move	$r5,$r0
1c005fa4:	02828404 	addi.w	$r4,$r0,161(0xa1)
1c005fa8:	57fdf7ff 	bl	-524(0xffffdf4) # 1c005d9c <OLED_WR_Byte>
1c005fac:	00150005 	move	$r5,$r0
1c005fb0:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c005fb4:	57fdebff 	bl	-536(0xffffde8) # 1c005d9c <OLED_WR_Byte>
1c005fb8:	00150005 	move	$r5,$r0
1c005fbc:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c005fc0:	57fddfff 	bl	-548(0xffffddc) # 1c005d9c <OLED_WR_Byte>
1c005fc4:	00150005 	move	$r5,$r0
1c005fc8:	0282a004 	addi.w	$r4,$r0,168(0xa8)
1c005fcc:	57fdd3ff 	bl	-560(0xffffdd0) # 1c005d9c <OLED_WR_Byte>
1c005fd0:	00150005 	move	$r5,$r0
1c005fd4:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c005fd8:	57fdc7ff 	bl	-572(0xffffdc4) # 1c005d9c <OLED_WR_Byte>
1c005fdc:	00150005 	move	$r5,$r0
1c005fe0:	02820404 	addi.w	$r4,$r0,129(0x81)
1c005fe4:	57fdbbff 	bl	-584(0xffffdb8) # 1c005d9c <OLED_WR_Byte>
1c005fe8:	00150005 	move	$r5,$r0
1c005fec:	0283fc04 	addi.w	$r4,$r0,255(0xff)
1c005ff0:	57fdafff 	bl	-596(0xffffdac) # 1c005d9c <OLED_WR_Byte>
1c005ff4:	00150005 	move	$r5,$r0
1c005ff8:	02834c04 	addi.w	$r4,$r0,211(0xd3)
1c005ffc:	57fda3ff 	bl	-608(0xffffda0) # 1c005d9c <OLED_WR_Byte>
1c006000:	00150005 	move	$r5,$r0
1c006004:	00150004 	move	$r4,$r0
1c006008:	57fd97ff 	bl	-620(0xffffd94) # 1c005d9c <OLED_WR_Byte>
1c00600c:	00150005 	move	$r5,$r0
1c006010:	02835404 	addi.w	$r4,$r0,213(0xd5)
1c006014:	57fd8bff 	bl	-632(0xffffd88) # 1c005d9c <OLED_WR_Byte>
1c006018:	00150005 	move	$r5,$r0
1c00601c:	02820004 	addi.w	$r4,$r0,128(0x80)
1c006020:	57fd7fff 	bl	-644(0xffffd7c) # 1c005d9c <OLED_WR_Byte>
1c006024:	00150005 	move	$r5,$r0
1c006028:	02836404 	addi.w	$r4,$r0,217(0xd9)
1c00602c:	57fd73ff 	bl	-656(0xffffd70) # 1c005d9c <OLED_WR_Byte>
1c006030:	00150005 	move	$r5,$r0
1c006034:	0283c404 	addi.w	$r4,$r0,241(0xf1)
1c006038:	57fd67ff 	bl	-668(0xffffd64) # 1c005d9c <OLED_WR_Byte>
1c00603c:	00150005 	move	$r5,$r0
1c006040:	02836804 	addi.w	$r4,$r0,218(0xda)
1c006044:	57fd5bff 	bl	-680(0xffffd58) # 1c005d9c <OLED_WR_Byte>
1c006048:	00150005 	move	$r5,$r0
1c00604c:	02804804 	addi.w	$r4,$r0,18(0x12)
1c006050:	57fd4fff 	bl	-692(0xffffd4c) # 1c005d9c <OLED_WR_Byte>
1c006054:	00150005 	move	$r5,$r0
1c006058:	02836c04 	addi.w	$r4,$r0,219(0xdb)
1c00605c:	57fd43ff 	bl	-704(0xffffd40) # 1c005d9c <OLED_WR_Byte>
1c006060:	00150005 	move	$r5,$r0
1c006064:	02810004 	addi.w	$r4,$r0,64(0x40)
1c006068:	57fd37ff 	bl	-716(0xffffd34) # 1c005d9c <OLED_WR_Byte>
1c00606c:	00150005 	move	$r5,$r0
1c006070:	02808004 	addi.w	$r4,$r0,32(0x20)
1c006074:	57fd2bff 	bl	-728(0xffffd28) # 1c005d9c <OLED_WR_Byte>
1c006078:	00150005 	move	$r5,$r0
1c00607c:	02800804 	addi.w	$r4,$r0,2(0x2)
1c006080:	57fd1fff 	bl	-740(0xffffd1c) # 1c005d9c <OLED_WR_Byte>
1c006084:	00150005 	move	$r5,$r0
1c006088:	02823404 	addi.w	$r4,$r0,141(0x8d)
1c00608c:	57fd13ff 	bl	-752(0xffffd10) # 1c005d9c <OLED_WR_Byte>
1c006090:	00150005 	move	$r5,$r0
1c006094:	02805004 	addi.w	$r4,$r0,20(0x14)
1c006098:	57fd07ff 	bl	-764(0xffffd04) # 1c005d9c <OLED_WR_Byte>
1c00609c:	00150005 	move	$r5,$r0
1c0060a0:	02829004 	addi.w	$r4,$r0,164(0xa4)
1c0060a4:	57fcfbff 	bl	-776(0xffffcf8) # 1c005d9c <OLED_WR_Byte>
1c0060a8:	00150005 	move	$r5,$r0
1c0060ac:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c0060b0:	57fcefff 	bl	-788(0xffffcec) # 1c005d9c <OLED_WR_Byte>
1c0060b4:	00150005 	move	$r5,$r0
1c0060b8:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c0060bc:	57fce3ff 	bl	-800(0xffffce0) # 1c005d9c <OLED_WR_Byte>
1c0060c0:	00150005 	move	$r5,$r0
1c0060c4:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c0060c8:	57fcd7ff 	bl	-812(0xffffcd4) # 1c005d9c <OLED_WR_Byte>
1c0060cc:	57fdc7ff 	bl	-572(0xffffdc4) # 1c005e90 <OLED_Clear>
1c0060d0:	00150005 	move	$r5,$r0
1c0060d4:	00150004 	move	$r4,$r0
1c0060d8:	57fd33ff 	bl	-720(0xffffd30) # 1c005e08 <OLED_Set_Pos>
1c0060dc:	03400000 	andi	$r0,$r0,0x0
1c0060e0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0060e4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0060e8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0060ec:	4c000020 	jirl	$r0,$r1,0

1c0060f0 <OLED_ShowChar>:
OLED_ShowChar():
1c0060f0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0060f4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0060f8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0060fc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006100:	0015008c 	move	$r12,$r4
1c006104:	001500af 	move	$r15,$r5
1c006108:	001500ce 	move	$r14,$r6
1c00610c:	001500ed 	move	$r13,$r7
1c006110:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c006114:	001501ec 	move	$r12,$r15
1c006118:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c00611c:	001501cc 	move	$r12,$r14
1c006120:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c006124:	001501ac 	move	$r12,$r13
1c006128:	293f6acc 	st.b	$r12,$r22,-38(0xfda)
1c00612c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006130:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c006134:	2a3f6acd 	ld.bu	$r13,$r22,-38(0xfda)
1c006138:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00613c:	58000dac 	beq	$r13,$r12,12(0xc) # 1c006148 <OLED_ShowChar+0x58>
1c006140:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006144:	293f6acc 	st.b	$r12,$r22,-38(0xfda)
1c006148:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c00614c:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c006150:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c006154:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006158:	50009800 	b	152(0x98) # 1c0061f0 <OLED_ShowChar+0x100>
1c00615c:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c006160:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c006164:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c006168:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00616c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006170:	001031ac 	add.w	$r12,$r13,$r12
1c006174:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006178:	00150185 	move	$r5,$r12
1c00617c:	001501c4 	move	$r4,$r14
1c006180:	57fc8bff 	bl	-888(0xffffc88) # 1c005e08 <OLED_Set_Pos>
1c006184:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c006188:	50004800 	b	72(0x48) # 1c0061d0 <OLED_ShowChar+0xe0>
1c00618c:	2a3f6ecd 	ld.bu	$r13,$r22,-37(0xfdb)
1c006190:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006194:	00408d8e 	slli.w	$r14,$r12,0x3
1c006198:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00619c:	001031cc 	add.w	$r12,$r14,$r12
1c0061a0:	1c00004e 	pcaddu12i	$r14,2(0x2)
1c0061a4:	02a161ce 	addi.w	$r14,$r14,-1960(0x858)
1c0061a8:	004091ad 	slli.w	$r13,$r13,0x4
1c0061ac:	001035cd 	add.w	$r13,$r14,$r13
1c0061b0:	001031ac 	add.w	$r12,$r13,$r12
1c0061b4:	2a00018c 	ld.bu	$r12,$r12,0
1c0061b8:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0061bc:	00150184 	move	$r4,$r12
1c0061c0:	57fbdfff 	bl	-1060(0xffffbdc) # 1c005d9c <OLED_WR_Byte>
1c0061c4:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0061c8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0061cc:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0061d0:	2a3f6acc 	ld.bu	$r12,$r22,-38(0xfda)
1c0061d4:	0044858c 	srli.w	$r12,$r12,0x1
1c0061d8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0061dc:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c0061e0:	6bffadac 	bltu	$r13,$r12,-84(0x3ffac) # 1c00618c <OLED_ShowChar+0x9c>
1c0061e4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0061e8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0061ec:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0061f0:	2a3f6acc 	ld.bu	$r12,$r22,-38(0xfda)
1c0061f4:	00448d8c 	srli.w	$r12,$r12,0x3
1c0061f8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0061fc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006200:	6bff5dac 	bltu	$r13,$r12,-164(0x3ff5c) # 1c00615c <OLED_ShowChar+0x6c>
1c006204:	03400000 	andi	$r0,$r0,0x0
1c006208:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00620c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006210:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006214:	4c000020 	jirl	$r0,$r1,0

1c006218 <OLED_DrawFont16>:
OLED_DrawFont16():
1c006218:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00621c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006220:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006224:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006228:	0015008c 	move	$r12,$r4
1c00622c:	001500ad 	move	$r13,$r5
1c006230:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c006234:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c006238:	001501ac 	move	$r12,$r13
1c00623c:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c006240:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006244:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c006248:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c00624c:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c006250:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c006254:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c006258:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c00625c:	50013800 	b	312(0x138) # 1c006394 <OLED_DrawFont16+0x17c>
1c006260:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c006264:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c006268:	02b611ad 	addi.w	$r13,$r13,-636(0xd84)
1c00626c:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c006270:	001c31cc 	mul.w	$r12,$r14,$r12
1c006274:	001031ac 	add.w	$r12,$r13,$r12
1c006278:	2a00018d 	ld.bu	$r13,$r12,0
1c00627c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006280:	2a00018c 	ld.bu	$r12,$r12,0
1c006284:	5c0105ac 	bne	$r13,$r12,260(0x104) # 1c006388 <OLED_DrawFont16+0x170>
1c006288:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c00628c:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c006290:	02b571ad 	addi.w	$r13,$r13,-676(0xd5c)
1c006294:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c006298:	001c31cc 	mul.w	$r12,$r14,$r12
1c00629c:	001031ac 	add.w	$r12,$r13,$r12
1c0062a0:	2a00058d 	ld.bu	$r13,$r12,1(0x1)
1c0062a4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0062a8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0062ac:	2a00018c 	ld.bu	$r12,$r12,0
1c0062b0:	5c00d9ac 	bne	$r13,$r12,216(0xd8) # 1c006388 <OLED_DrawFont16+0x170>
1c0062b4:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c0062b8:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c0062bc:	02b4c1ad 	addi.w	$r13,$r13,-720(0xd30)
1c0062c0:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c0062c4:	001c31cc 	mul.w	$r12,$r14,$r12
1c0062c8:	001031ac 	add.w	$r12,$r13,$r12
1c0062cc:	2a00098d 	ld.bu	$r13,$r12,2(0x2)
1c0062d0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0062d4:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0062d8:	2a00018c 	ld.bu	$r12,$r12,0
1c0062dc:	5c00adac 	bne	$r13,$r12,172(0xac) # 1c006388 <OLED_DrawFont16+0x170>
1c0062e0:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0062e4:	50009400 	b	148(0x94) # 1c006378 <OLED_DrawFont16+0x160>
1c0062e8:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0062ec:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c0062f0:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0062f4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0062f8:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0062fc:	001031ac 	add.w	$r12,$r13,$r12
1c006300:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006304:	00150185 	move	$r5,$r12
1c006308:	001501c4 	move	$r4,$r14
1c00630c:	57faffff 	bl	-1284(0xffffafc) # 1c005e08 <OLED_Set_Pos>
1c006310:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006314:	50004c00 	b	76(0x4c) # 1c006360 <OLED_DrawFont16+0x148>
1c006318:	2a7fb2cf 	ld.hu	$r15,$r22,-20(0xfec)
1c00631c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006320:	0040918d 	slli.w	$r13,$r12,0x4
1c006324:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006328:	001031ad 	add.w	$r13,$r13,$r12
1c00632c:	1c00004e 	pcaddu12i	$r14,2(0x2)
1c006330:	02b2f1ce 	addi.w	$r14,$r14,-836(0xcbc)
1c006334:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c006338:	001c31ec 	mul.w	$r12,$r15,$r12
1c00633c:	001031cc 	add.w	$r12,$r14,$r12
1c006340:	0010358c 	add.w	$r12,$r12,$r13
1c006344:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c006348:	02810005 	addi.w	$r5,$r0,64(0x40)
1c00634c:	00150184 	move	$r4,$r12
1c006350:	57fa4fff 	bl	-1460(0xffffa4c) # 1c005d9c <OLED_WR_Byte>
1c006354:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006358:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00635c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006360:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006364:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c006368:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c006318 <OLED_DrawFont16+0x100>
1c00636c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006370:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006374:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c006378:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c00637c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006380:	6fff698d 	bgeu	$r12,$r13,-152(0x3ff68) # 1c0062e8 <OLED_DrawFont16+0xd0>
1c006384:	50001c00 	b	28(0x1c) # 1c0063a0 <OLED_DrawFont16+0x188>
1c006388:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c00638c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006390:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c006394:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c006398:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c00639c:	6bfec5ac 	bltu	$r13,$r12,-316(0x3fec4) # 1c006260 <OLED_DrawFont16+0x48>
1c0063a0:	03400000 	andi	$r0,$r0,0x0
1c0063a4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0063a8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0063ac:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0063b0:	4c000020 	jirl	$r0,$r1,0

1c0063b4 <OLED_DrawFont32>:
OLED_DrawFont32():
1c0063b4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0063b8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0063bc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0063c0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0063c4:	0015008c 	move	$r12,$r4
1c0063c8:	001500ad 	move	$r13,$r5
1c0063cc:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c0063d0:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0063d4:	001501ac 	move	$r12,$r13
1c0063d8:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c0063dc:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0063e0:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0063e4:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c0063e8:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c0063ec:	0280540c 	addi.w	$r12,$r0,21(0x15)
1c0063f0:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c0063f4:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c0063f8:	50014400 	b	324(0x144) # 1c00653c <OLED_DrawFont32+0x188>
1c0063fc:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c006400:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c006404:	02afa1ad 	addi.w	$r13,$r13,-1048(0xbe8)
1c006408:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c00640c:	001c31cc 	mul.w	$r12,$r14,$r12
1c006410:	001031ac 	add.w	$r12,$r13,$r12
1c006414:	2a00018c 	ld.bu	$r12,$r12,0
1c006418:	0015018d 	move	$r13,$r12
1c00641c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006420:	2800018c 	ld.b	$r12,$r12,0
1c006424:	5c010dac 	bne	$r13,$r12,268(0x10c) # 1c006530 <OLED_DrawFont32+0x17c>
1c006428:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c00642c:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c006430:	02aef1ad 	addi.w	$r13,$r13,-1092(0xbbc)
1c006434:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c006438:	001c31cc 	mul.w	$r12,$r14,$r12
1c00643c:	001031ac 	add.w	$r12,$r13,$r12
1c006440:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c006444:	0015018d 	move	$r13,$r12
1c006448:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00644c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006450:	2800018c 	ld.b	$r12,$r12,0
1c006454:	5c00ddac 	bne	$r13,$r12,220(0xdc) # 1c006530 <OLED_DrawFont32+0x17c>
1c006458:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c00645c:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c006460:	02ae31ad 	addi.w	$r13,$r13,-1140(0xb8c)
1c006464:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c006468:	001c31cc 	mul.w	$r12,$r14,$r12
1c00646c:	001031ac 	add.w	$r12,$r13,$r12
1c006470:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c006474:	0015018d 	move	$r13,$r12
1c006478:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00647c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006480:	2800018c 	ld.b	$r12,$r12,0
1c006484:	5c00adac 	bne	$r13,$r12,172(0xac) # 1c006530 <OLED_DrawFont32+0x17c>
1c006488:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c00648c:	50009400 	b	148(0x94) # 1c006520 <OLED_DrawFont32+0x16c>
1c006490:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c006494:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c006498:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c00649c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0064a0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0064a4:	001031ac 	add.w	$r12,$r13,$r12
1c0064a8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0064ac:	00150185 	move	$r5,$r12
1c0064b0:	001501c4 	move	$r4,$r14
1c0064b4:	57f957ff 	bl	-1708(0xffff954) # 1c005e08 <OLED_Set_Pos>
1c0064b8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0064bc:	50004c00 	b	76(0x4c) # 1c006508 <OLED_DrawFont32+0x154>
1c0064c0:	2a7fb2cf 	ld.hu	$r15,$r22,-20(0xfec)
1c0064c4:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0064c8:	0040958d 	slli.w	$r13,$r12,0x5
1c0064cc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0064d0:	001031ad 	add.w	$r13,$r13,$r12
1c0064d4:	1c00004e 	pcaddu12i	$r14,2(0x2)
1c0064d8:	028091ce 	addi.w	$r14,$r14,36(0x24)
1c0064dc:	02820c0c 	addi.w	$r12,$r0,131(0x83)
1c0064e0:	001c31ec 	mul.w	$r12,$r15,$r12
1c0064e4:	001031cc 	add.w	$r12,$r14,$r12
1c0064e8:	0010358c 	add.w	$r12,$r12,$r13
1c0064ec:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0064f0:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0064f4:	00150184 	move	$r4,$r12
1c0064f8:	57f8a7ff 	bl	-1884(0xffff8a4) # 1c005d9c <OLED_WR_Byte>
1c0064fc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006500:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006504:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006508:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00650c:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c006510:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c0064c0 <OLED_DrawFont32+0x10c>
1c006514:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006518:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00651c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c006520:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c006524:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c006528:	6fff698d 	bgeu	$r12,$r13,-152(0x3ff68) # 1c006490 <OLED_DrawFont32+0xdc>
1c00652c:	50001c00 	b	28(0x1c) # 1c006548 <OLED_DrawFont32+0x194>
1c006530:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c006534:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006538:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c00653c:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c006540:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c006544:	6bfeb9ac 	bltu	$r13,$r12,-328(0x3feb8) # 1c0063fc <OLED_DrawFont32+0x48>
1c006548:	03400000 	andi	$r0,$r0,0x0
1c00654c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006550:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006554:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006558:	4c000020 	jirl	$r0,$r1,0

1c00655c <OLED_Show_Str>:
OLED_Show_Str():
1c00655c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006560:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006564:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006568:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00656c:	0015008c 	move	$r12,$r4
1c006570:	001500ae 	move	$r14,$r5
1c006574:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c006578:	001500ed 	move	$r13,$r7
1c00657c:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c006580:	001501cc 	move	$r12,$r14
1c006584:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c006588:	001501ac 	move	$r12,$r13
1c00658c:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c006590:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c006594:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c006598:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00659c:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c0065a0:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c0065a4:	580209ac 	beq	$r13,$r12,520(0x208) # 1c0067ac <OLED_Show_Str+0x250>
1c0065a8:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0065ac:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c0065b0:	5001fc00 	b	508(0x1fc) # 1c0067ac <OLED_Show_Str+0x250>
1c0065b4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0065b8:	44012580 	bnez	$r12,292(0x124) # 1c0066dc <OLED_Show_Str+0x180>
1c0065bc:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c0065c0:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0065c4:	0044858c 	srli.w	$r12,$r12,0x1
1c0065c8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0065cc:	0015018e 	move	$r14,$r12
1c0065d0:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c0065d4:	0011398c 	sub.w	$r12,$r12,$r14
1c0065d8:	64002d8d 	bge	$r12,$r13,44(0x2c) # 1c006604 <OLED_Show_Str+0xa8>
1c0065dc:	297f7ac0 	st.h	$r0,$r22,-34(0xfde)
1c0065e0:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0065e4:	00448d8c 	srli.w	$r12,$r12,0x3
1c0065e8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0065ec:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0065f0:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0065f4:	001031ac 	add.w	$r12,$r13,$r12
1c0065f8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0065fc:	03401d8c 	andi	$r12,$r12,0x7
1c006600:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c006604:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c006608:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c00660c:	00448d8c 	srli.w	$r12,$r12,0x3
1c006610:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006614:	0015018e 	move	$r14,$r12
1c006618:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c00661c:	0011398c 	sub.w	$r12,$r12,$r14
1c006620:	6400098d 	bge	$r12,$r13,8(0x8) # 1c006628 <OLED_Show_Str+0xcc>
1c006624:	297f72c0 	st.h	$r0,$r22,-36(0xfdc)
1c006628:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00662c:	2800018c 	ld.b	$r12,$r12,0
1c006630:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c006634:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c006638:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c006648 <OLED_Show_Str+0xec>
1c00663c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006640:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006644:	50016800 	b	360(0x168) # 1c0067ac <OLED_Show_Str+0x250>
1c006648:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00664c:	2800018d 	ld.b	$r13,$r12,0
1c006650:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c006654:	5c0031ac 	bne	$r13,$r12,48(0x30) # 1c006684 <OLED_Show_Str+0x128>
1c006658:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c00665c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006660:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c006664:	001031ac 	add.w	$r12,$r13,$r12
1c006668:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c00666c:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c006670:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c006674:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006678:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00667c:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c006680:	50004c00 	b	76(0x4c) # 1c0066cc <OLED_Show_Str+0x170>
1c006684:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006688:	2800018c 	ld.b	$r12,$r12,0
1c00668c:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c006690:	2a3f5ecf 	ld.bu	$r15,$r22,-41(0xfd7)
1c006694:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c006698:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c00669c:	001501e7 	move	$r7,$r15
1c0066a0:	001501c6 	move	$r6,$r14
1c0066a4:	001501a5 	move	$r5,$r13
1c0066a8:	00150184 	move	$r4,$r12
1c0066ac:	57fa47ff 	bl	-1468(0xffffa44) # 1c0060f0 <OLED_ShowChar>
1c0066b0:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0066b4:	0044858c 	srli.w	$r12,$r12,0x1
1c0066b8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0066bc:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0066c0:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0066c4:	001031ac 	add.w	$r12,$r13,$r12
1c0066c8:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0066cc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0066d0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0066d4:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0066d8:	5000d400 	b	212(0xd4) # 1c0067ac <OLED_Show_Str+0x250>
1c0066dc:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c0066e0:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0066e4:	0282000e 	addi.w	$r14,$r0,128(0x80)
1c0066e8:	001131cc 	sub.w	$r12,$r14,$r12
1c0066ec:	64002d8d 	bge	$r12,$r13,44(0x2c) # 1c006718 <OLED_Show_Str+0x1bc>
1c0066f0:	297f7ac0 	st.h	$r0,$r22,-34(0xfde)
1c0066f4:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0066f8:	00448d8c 	srli.w	$r12,$r12,0x3
1c0066fc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006700:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006704:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c006708:	001031ac 	add.w	$r12,$r13,$r12
1c00670c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006710:	03401d8c 	andi	$r12,$r12,0x7
1c006714:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c006718:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c00671c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c006720:	00448d8c 	srli.w	$r12,$r12,0x3
1c006724:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006728:	0015018e 	move	$r14,$r12
1c00672c:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c006730:	0011398c 	sub.w	$r12,$r12,$r14
1c006734:	6400098d 	bge	$r12,$r13,8(0x8) # 1c00673c <OLED_Show_Str+0x1e0>
1c006738:	297f72c0 	st.h	$r0,$r22,-36(0xfdc)
1c00673c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006740:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c006744:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c006748:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c006768 <OLED_Show_Str+0x20c>
1c00674c:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c006750:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c006754:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c006758:	001501a5 	move	$r5,$r13
1c00675c:	00150184 	move	$r4,$r12
1c006760:	57fc57ff 	bl	-940(0xffffc54) # 1c0063b4 <OLED_DrawFont32>
1c006764:	50002800 	b	40(0x28) # 1c00678c <OLED_Show_Str+0x230>
1c006768:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c00676c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006770:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c00678c <OLED_Show_Str+0x230>
1c006774:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c006778:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c00677c:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c006780:	001501a5 	move	$r5,$r13
1c006784:	00150184 	move	$r4,$r12
1c006788:	57fa93ff 	bl	-1392(0xffffa90) # 1c006218 <OLED_DrawFont16>
1c00678c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006790:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c006794:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c006798:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c00679c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0067a0:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0067a4:	001031ac 	add.w	$r12,$r13,$r12
1c0067a8:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0067ac:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0067b0:	2800018c 	ld.b	$r12,$r12,0
1c0067b4:	47fe019f 	bnez	$r12,-512(0x7ffe00) # 1c0065b4 <OLED_Show_Str+0x58>
1c0067b8:	03400000 	andi	$r0,$r0,0x0
1c0067bc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0067c0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0067c4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0067c8:	4c000020 	jirl	$r0,$r1,0

1c0067cc <RGB_LED_Init>:
RGB_LED_Init():
1c0067cc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0067d0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0067d4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0067d8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0067dc:	00150005 	move	$r5,$r0
1c0067e0:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c0067e4:	57ae73ff 	bl	-20880(0xfffae70) # 1c001654 <gpio_pin_remap>
1c0067e8:	00150005 	move	$r5,$r0
1c0067ec:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c0067f0:	57ae67ff 	bl	-20892(0xfffae64) # 1c001654 <gpio_pin_remap>
1c0067f4:	00150005 	move	$r5,$r0
1c0067f8:	02807c04 	addi.w	$r4,$r0,31(0x1f)
1c0067fc:	57ae5bff 	bl	-20904(0xfffae58) # 1c001654 <gpio_pin_remap>
1c006800:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006804:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c006808:	57b05bff 	bl	-20392(0xfffb058) # 1c001860 <gpio_set_direction>
1c00680c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006810:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c006814:	57b04fff 	bl	-20404(0xfffb04c) # 1c001860 <gpio_set_direction>
1c006818:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00681c:	02807c04 	addi.w	$r4,$r0,31(0x1f)
1c006820:	57b043ff 	bl	-20416(0xfffb040) # 1c001860 <gpio_set_direction>
1c006824:	03400000 	andi	$r0,$r0,0x0
1c006828:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00682c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006830:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006834:	4c000020 	jirl	$r0,$r1,0

1c006838 <ESP8266_Init>:
ESP8266_Init():
1c006838:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00683c:	29803061 	st.w	$r1,$r3,12(0xc)
1c006840:	29802076 	st.w	$r22,$r3,8(0x8)
1c006844:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006848:	1c00004c 	pcaddu12i	$r12,2(0x2)
1c00684c:	029dc18c 	addi.w	$r12,$r12,1904(0x770)
1c006850:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006854:	00150184 	move	$r4,$r12
1c006858:	57c2cfff 	bl	-15668(0xfffc2cc) # 1c002b24 <Uart1_send>
1c00685c:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c006860:	57cd5bff 	bl	-12968(0xfffcd58) # 1c0035b8 <delay_ms>
1c006864:	1c00004c 	pcaddu12i	$r12,2(0x2)
1c006868:	029d718c 	addi.w	$r12,$r12,1884(0x75c)
1c00686c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006870:	00150184 	move	$r4,$r12
1c006874:	57c2b3ff 	bl	-15696(0xfffc2b0) # 1c002b24 <Uart1_send>
1c006878:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c00687c:	57cd3fff 	bl	-12996(0xfffcd3c) # 1c0035b8 <delay_ms>
1c006880:	1c00004c 	pcaddu12i	$r12,2(0x2)
1c006884:	029d418c 	addi.w	$r12,$r12,1872(0x750)
1c006888:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00688c:	00150184 	move	$r4,$r12
1c006890:	57c297ff 	bl	-15724(0xfffc294) # 1c002b24 <Uart1_send>
1c006894:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c006898:	57cd23ff 	bl	-13024(0xfffcd20) # 1c0035b8 <delay_ms>
1c00689c:	1c00004c 	pcaddu12i	$r12,2(0x2)
1c0068a0:	029d518c 	addi.w	$r12,$r12,1876(0x754)
1c0068a4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0068a8:	00150184 	move	$r4,$r12
1c0068ac:	57c27bff 	bl	-15752(0xfffc278) # 1c002b24 <Uart1_send>
1c0068b0:	03400000 	andi	$r0,$r0,0x0
1c0068b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0068b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0068bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0068c0:	4c000020 	jirl	$r0,$r1,0

1c0068c4 <Queue_Init>:
Queue_Init():
1c0068c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0068c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0068cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0068d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0068d4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0068d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0068dc:	44000d80 	bnez	$r12,12(0xc) # 1c0068e8 <Queue_Init+0x24>
1c0068e0:	0015000c 	move	$r12,$r0
1c0068e4:	50001800 	b	24(0x18) # 1c0068fc <Queue_Init+0x38>
1c0068e8:	0284c006 	addi.w	$r6,$r0,304(0x130)
1c0068ec:	00150005 	move	$r5,$r0
1c0068f0:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c0068f4:	57cd07ff 	bl	-13052(0xfffcd04) # 1c0035f8 <memset>
1c0068f8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0068fc:	00150184 	move	$r4,$r12
1c006900:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006904:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006908:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00690c:	4c000020 	jirl	$r0,$r1,0

1c006910 <Smoke_Init>:
Smoke_Init():
1c006910:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006914:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006918:	29806076 	st.w	$r22,$r3,24(0x18)
1c00691c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006920:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c006924:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c006928:	297fa2c0 	st.h	$r0,$r22,-24(0xfe8)
1c00692c:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c006930:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006934:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c006938:	02801804 	addi.w	$r4,$r0,6(0x6)
1c00693c:	57cfc7ff 	bl	-12348(0xfffcfc4) # 1c003900 <Adc_open>
1c006940:	02801804 	addi.w	$r4,$r0,6(0x6)
1c006944:	57d14bff 	bl	-11960(0xfffd148) # 1c003a8c <Adc_getVoltage>
1c006948:	0015008c 	move	$r12,$r4
1c00694c:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c006950:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c006954:	50008800 	b	136(0x88) # 1c0069dc <Smoke_Init+0xcc>
1c006958:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c00695c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006960:	0040858c 	slli.w	$r12,$r12,0x1
1c006964:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c006968:	001031cc 	add.w	$r12,$r14,$r12
1c00696c:	2a7fc18c 	ld.hu	$r12,$r12,-16(0xff0)
1c006970:	001131ad 	sub.w	$r13,$r13,$r12
1c006974:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006978:	289a918c 	ld.w	$r12,$r12,1700(0x6a4)
1c00697c:	2980018d 	st.w	$r13,$r12,0
1c006980:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006984:	029ac18c 	addi.w	$r12,$r12,1712(0x6b0)
1c006988:	2880018c 	ld.w	$r12,$r12,0
1c00698c:	0011300d 	sub.w	$r13,$r0,$r12
1c006990:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006994:	289a218c 	ld.w	$r12,$r12,1672(0x688)
1c006998:	2880018c 	ld.w	$r12,$r12,0
1c00699c:	6000358d 	blt	$r12,$r13,52(0x34) # 1c0069d0 <Smoke_Init+0xc0>
1c0069a0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0069a4:	2899e18c 	ld.w	$r12,$r12,1656(0x678)
1c0069a8:	2880018d 	ld.w	$r13,$r12,0
1c0069ac:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0069b0:	029a118c 	addi.w	$r12,$r12,1668(0x684)
1c0069b4:	2880018c 	ld.w	$r12,$r12,0
1c0069b8:	6000198d 	blt	$r12,$r13,24(0x18) # 1c0069d0 <Smoke_Init+0xc0>
1c0069bc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0069c0:	0299318c 	addi.w	$r12,$r12,1612(0x64c)
1c0069c4:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0069c8:	2980018d 	st.w	$r13,$r12,0
1c0069cc:	50001c00 	b	28(0x1c) # 1c0069e8 <Smoke_Init+0xd8>
1c0069d0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0069d4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0069d8:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0069dc:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c0069e0:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c0069e4:	6fff758d 	bgeu	$r12,$r13,-140(0x3ff74) # 1c006958 <Smoke_Init+0x48>
1c0069e8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0069ec:	0298818c 	addi.w	$r12,$r12,1568(0x620)
1c0069f0:	2880018c 	ld.w	$r12,$r12,0
1c0069f4:	44004d80 	bnez	$r12,76(0x4c) # 1c006a40 <Smoke_Init+0x130>
1c0069f8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0069fc:	0040858c 	slli.w	$r12,$r12,0x1
1c006a00:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c006a04:	001031ac 	add.w	$r12,$r13,$r12
1c006a08:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c006a0c:	297fc18d 	st.h	$r13,$r12,-16(0xff0)
1c006a10:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006a14:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006a18:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006a1c:	2a3fbece 	ld.bu	$r14,$r22,-17(0xfef)
1c006a20:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c006a24:	0021b5cc 	mod.wu	$r12,$r14,$r13
1c006a28:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c006a30 <Smoke_Init+0x120>
1c006a2c:	002a0007 	break	0x7
1c006a30:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006a34:	0287d004 	addi.w	$r4,$r0,500(0x1f4)
1c006a38:	57cb83ff 	bl	-13440(0xfffcb80) # 1c0035b8 <delay_ms>
1c006a3c:	53ff07ff 	b	-252(0xfffff04) # 1c006940 <Smoke_Init+0x30>
1c006a40:	03400000 	andi	$r0,$r0,0x0
1c006a44:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c006a48:	0287f80d 	addi.w	$r13,$r0,510(0x1fe)
1c006a4c:	001131ad 	sub.w	$r13,$r13,$r12
1c006a50:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006a54:	0296d18c 	addi.w	$r12,$r12,1460(0x5b4)
1c006a58:	2980018d 	st.w	$r13,$r12,0
1c006a5c:	03400000 	andi	$r0,$r0,0x0
1c006a60:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006a64:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006a68:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006a6c:	4c000020 	jirl	$r0,$r1,0

1c006a70 <Median_Read_Data>:
Median_Read_Data():
1c006a70:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006a74:	29807076 	st.w	$r22,$r3,28(0x1c)
1c006a78:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006a7c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006a80:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c006a84:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006a88:	0340058c 	andi	$r12,$r12,0x1
1c006a8c:	44006980 	bnez	$r12,104(0x68) # 1c006af4 <Median_Read_Data+0x84>
1c006a90:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006a94:	0044fd8d 	srli.w	$r13,$r12,0x1f
1c006a98:	001031ac 	add.w	$r12,$r13,$r12
1c006a9c:	0048858c 	srai.w	$r12,$r12,0x1
1c006aa0:	0015018d 	move	$r13,$r12
1c006aa4:	147fffec 	lu12i.w	$r12,262143(0x3ffff)
1c006aa8:	03bffd8c 	ori	$r12,$r12,0xfff
1c006aac:	001031ac 	add.w	$r12,$r13,$r12
1c006ab0:	0040898c 	slli.w	$r12,$r12,0x2
1c006ab4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006ab8:	001031ac 	add.w	$r12,$r13,$r12
1c006abc:	2880018d 	ld.w	$r13,$r12,0
1c006ac0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006ac4:	0044fd8e 	srli.w	$r14,$r12,0x1f
1c006ac8:	001031cc 	add.w	$r12,$r14,$r12
1c006acc:	0048858c 	srai.w	$r12,$r12,0x1
1c006ad0:	0040898c 	slli.w	$r12,$r12,0x2
1c006ad4:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c006ad8:	001031cc 	add.w	$r12,$r14,$r12
1c006adc:	2880018c 	ld.w	$r12,$r12,0
1c006ae0:	001031ac 	add.w	$r12,$r13,$r12
1c006ae4:	0044fd8d 	srli.w	$r13,$r12,0x1f
1c006ae8:	001031ac 	add.w	$r12,$r13,$r12
1c006aec:	0048858c 	srai.w	$r12,$r12,0x1
1c006af0:	50002400 	b	36(0x24) # 1c006b14 <Median_Read_Data+0xa4>
1c006af4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006af8:	0044fd8d 	srli.w	$r13,$r12,0x1f
1c006afc:	001031ac 	add.w	$r12,$r13,$r12
1c006b00:	0048858c 	srai.w	$r12,$r12,0x1
1c006b04:	0040898c 	slli.w	$r12,$r12,0x2
1c006b08:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006b0c:	001031ac 	add.w	$r12,$r13,$r12
1c006b10:	2880018c 	ld.w	$r12,$r12,0
1c006b14:	00150184 	move	$r4,$r12
1c006b18:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c006b1c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006b20:	4c000020 	jirl	$r0,$r1,0

1c006b24 <Smoke_Read_Data>:
Smoke_Read_Data():
1c006b24:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c006b28:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c006b2c:	2980e076 	st.w	$r22,$r3,56(0x38)
1c006b30:	02810076 	addi.w	$r22,$r3,64(0x40)
1c006b34:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c006b38:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c006b3c:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c006b40:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c006b44:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c006b48:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c006b4c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006b50:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006b54:	50004000 	b	64(0x40) # 1c006b94 <Smoke_Read_Data+0x70>
1c006b58:	02801804 	addi.w	$r4,$r0,6(0x6)
1c006b5c:	57cf33ff 	bl	-12496(0xfffcf30) # 1c003a8c <Adc_getVoltage>
1c006b60:	0015008c 	move	$r12,$r4
1c006b64:	0015018d 	move	$r13,$r12
1c006b68:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006b6c:	004085ad 	slli.w	$r13,$r13,0x1
1c006b70:	0040898c 	slli.w	$r12,$r12,0x2
1c006b74:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c006b78:	001031cc 	add.w	$r12,$r14,$r12
1c006b7c:	29bfa18d 	st.w	$r13,$r12,-24(0xfe8)
1c006b80:	02819004 	addi.w	$r4,$r0,100(0x64)
1c006b84:	57ca37ff 	bl	-13772(0xfffca34) # 1c0035b8 <delay_ms>
1c006b88:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006b8c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006b90:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006b94:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006b98:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006b9c:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c006b58 <Smoke_Read_Data+0x34>
1c006ba0:	02bf62cc 	addi.w	$r12,$r22,-40(0xfd8)
1c006ba4:	02801405 	addi.w	$r5,$r0,5(0x5)
1c006ba8:	00150184 	move	$r4,$r12
1c006bac:	57fec7ff 	bl	-316(0xffffec4) # 1c006a70 <Median_Read_Data>
1c006bb0:	0015008d 	move	$r13,$r4
1c006bb4:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c006bb8:	2980018d 	st.w	$r13,$r12,0
1c006bbc:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c006bc0:	2880018e 	ld.w	$r14,$r12,0
1c006bc4:	0280640c 	addi.w	$r12,$r0,25(0x19)
1c006bc8:	002031cd 	div.w	$r13,$r14,$r12
1c006bcc:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006bd4 <Smoke_Read_Data+0xb0>
1c006bd0:	002a0007 	break	0x7
1c006bd4:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c006bd8:	2980018d 	st.w	$r13,$r12,0
1c006bdc:	03400000 	andi	$r0,$r0,0x0
1c006be0:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c006be4:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c006be8:	02810063 	addi.w	$r3,$r3,64(0x40)
1c006bec:	4c000020 	jirl	$r0,$r1,0

1c006bf0 <YUYIN_Init>:
YUYIN_Init():
1c006bf0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006bf4:	29803061 	st.w	$r1,$r3,12(0xc)
1c006bf8:	29802076 	st.w	$r22,$r3,8(0x8)
1c006bfc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006c00:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006c04:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006c08:	57ac5bff 	bl	-21416(0xfffac58) # 1c001860 <gpio_set_direction>
1c006c0c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006c10:	02809004 	addi.w	$r4,$r0,36(0x24)
1c006c14:	57ac4fff 	bl	-21428(0xfffac4c) # 1c001860 <gpio_set_direction>
1c006c18:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006c1c:	02808404 	addi.w	$r4,$r0,33(0x21)
1c006c20:	57ac43ff 	bl	-21440(0xfffac40) # 1c001860 <gpio_set_direction>
1c006c24:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006c28:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c006c2c:	57ac37ff 	bl	-21452(0xfffac34) # 1c001860 <gpio_set_direction>
1c006c30:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006c34:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006c38:	57a9a7ff 	bl	-22108(0xfffa9a4) # 1c0015dc <gpio_write_pin>
1c006c3c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006c40:	02809004 	addi.w	$r4,$r0,36(0x24)
1c006c44:	57a99bff 	bl	-22120(0xfffa998) # 1c0015dc <gpio_write_pin>
1c006c48:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006c4c:	02808404 	addi.w	$r4,$r0,33(0x21)
1c006c50:	57a98fff 	bl	-22132(0xfffa98c) # 1c0015dc <gpio_write_pin>
1c006c54:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006c58:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c006c5c:	57a983ff 	bl	-22144(0xfffa980) # 1c0015dc <gpio_write_pin>
1c006c60:	03400000 	andi	$r0,$r0,0x0
1c006c64:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006c68:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006c6c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006c70:	4c000020 	jirl	$r0,$r1,0

1c006c74 <YUYIN_Ctrl>:
YUYIN_Ctrl():
1c006c74:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006c78:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006c7c:	29806076 	st.w	$r22,$r3,24(0x18)
1c006c80:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006c84:	0015008c 	move	$r12,$r4
1c006c88:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006c8c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006c90:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006c94:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c006cc8 <YUYIN_Ctrl+0x54>
1c006c98:	00150005 	move	$r5,$r0
1c006c9c:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006ca0:	57a93fff 	bl	-22212(0xfffa93c) # 1c0015dc <gpio_write_pin>
1c006ca4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006ca8:	02809004 	addi.w	$r4,$r0,36(0x24)
1c006cac:	57a933ff 	bl	-22224(0xfffa930) # 1c0015dc <gpio_write_pin>
1c006cb0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006cb4:	02808404 	addi.w	$r4,$r0,33(0x21)
1c006cb8:	57a927ff 	bl	-22236(0xfffa924) # 1c0015dc <gpio_write_pin>
1c006cbc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006cc0:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c006cc4:	57a91bff 	bl	-22248(0xfffa918) # 1c0015dc <gpio_write_pin>
1c006cc8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006ccc:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006cd0:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c006d04 <YUYIN_Ctrl+0x90>
1c006cd4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006cd8:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006cdc:	57a903ff 	bl	-22272(0xfffa900) # 1c0015dc <gpio_write_pin>
1c006ce0:	00150005 	move	$r5,$r0
1c006ce4:	02809004 	addi.w	$r4,$r0,36(0x24)
1c006ce8:	57a8f7ff 	bl	-22284(0xfffa8f4) # 1c0015dc <gpio_write_pin>
1c006cec:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006cf0:	02808404 	addi.w	$r4,$r0,33(0x21)
1c006cf4:	57a8ebff 	bl	-22296(0xfffa8e8) # 1c0015dc <gpio_write_pin>
1c006cf8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006cfc:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c006d00:	57a8dfff 	bl	-22308(0xfffa8dc) # 1c0015dc <gpio_write_pin>
1c006d04:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006d08:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c006d0c:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c006d40 <YUYIN_Ctrl+0xcc>
1c006d10:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006d14:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006d18:	57a8c7ff 	bl	-22332(0xfffa8c4) # 1c0015dc <gpio_write_pin>
1c006d1c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006d20:	02809004 	addi.w	$r4,$r0,36(0x24)
1c006d24:	57a8bbff 	bl	-22344(0xfffa8b8) # 1c0015dc <gpio_write_pin>
1c006d28:	00150005 	move	$r5,$r0
1c006d2c:	02808404 	addi.w	$r4,$r0,33(0x21)
1c006d30:	57a8afff 	bl	-22356(0xfffa8ac) # 1c0015dc <gpio_write_pin>
1c006d34:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006d38:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c006d3c:	57a8a3ff 	bl	-22368(0xfffa8a0) # 1c0015dc <gpio_write_pin>
1c006d40:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006d44:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006d48:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c006d7c <YUYIN_Ctrl+0x108>
1c006d4c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006d50:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006d54:	57a88bff 	bl	-22392(0xfffa888) # 1c0015dc <gpio_write_pin>
1c006d58:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006d5c:	02809004 	addi.w	$r4,$r0,36(0x24)
1c006d60:	57a87fff 	bl	-22404(0xfffa87c) # 1c0015dc <gpio_write_pin>
1c006d64:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006d68:	02808404 	addi.w	$r4,$r0,33(0x21)
1c006d6c:	57a873ff 	bl	-22416(0xfffa870) # 1c0015dc <gpio_write_pin>
1c006d70:	00150005 	move	$r5,$r0
1c006d74:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c006d78:	57a867ff 	bl	-22428(0xfffa864) # 1c0015dc <gpio_write_pin>
1c006d7c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006d80:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c006d84:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c006db8 <YUYIN_Ctrl+0x144>
1c006d88:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006d8c:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006d90:	57a84fff 	bl	-22452(0xfffa84c) # 1c0015dc <gpio_write_pin>
1c006d94:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006d98:	02809004 	addi.w	$r4,$r0,36(0x24)
1c006d9c:	57a843ff 	bl	-22464(0xfffa840) # 1c0015dc <gpio_write_pin>
1c006da0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006da4:	02808404 	addi.w	$r4,$r0,33(0x21)
1c006da8:	57a837ff 	bl	-22476(0xfffa834) # 1c0015dc <gpio_write_pin>
1c006dac:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006db0:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c006db4:	57a82bff 	bl	-22488(0xfffa828) # 1c0015dc <gpio_write_pin>
1c006db8:	03400000 	andi	$r0,$r0,0x0
1c006dbc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006dc0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006dc4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006dc8:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c006de0 <msg_wakeup>:
msg_wakeup():
1c006de0:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01d940 <_sidata+0x1491c>
1c006de4:	0a217075 	xvfmadd.d	$xr21,$xr3,$xr28,$xr2
	...

1c006de9 <hexdecarr>:
hexdecarr():
1c006de9:	33323130 	xvstelm.w	$xr16,$r9,-464(0x230),0x4
1c006ded:	37363534 	0x37363534
1c006df1:	62613938 	blt	$r9,$r24,-106184(0x26138) # 1bfecf29 <_start-0x130d7>
1c006df5:	66656463 	bge	$r3,$r3,-105116(0x26564) # 1bfed359 <_start-0x12ca7>
1c006df9:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006dfd:	79654b0a 	0x79654b0a
1c006e01:	73657220 	vssrani.wu.d	$vr0,$vr17,0x1c
1c006e05:	0d217465 	xvbitsel.v	$xr5,$xr3,$xr29,$xr2
1c006e09:	0d00000a 	fsel	$f10,$f0,$f0,$fcc0
1c006e0d:	6970730a 	bltu	$r24,$r10,94320(0x17070) # 1c01de7d <_sidata+0x14e59>
1c006e11:	6f6f6220 	bgeu	$r17,$r0,-37024(0x36f60) # 1bffdd71 <_start-0x228f>
1c006e15:	0d000074 	fsel	$f20,$f3,$f0,$fcc0
1c006e19:	676f640a 	bge	$r0,$r10,-37020(0x36f64) # 1bffdd7d <_start-0x2283>
1c006e1d:	72616220 	0x72616220
1c006e21:	0a0d216b 	0x0a0d216b
1c006e25:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006e29:	6b61770a 	bltu	$r24,$r10,-40588(0x36174) # 1bffcf9d <_start-0x3063>
1c006e2d:	21705565 	sc.w	$r5,$r11,28756(0x7054)
1c006e31:	b4000a0d 	0xb4000a0d
1c006e35:	d01c001d 	0xd01c001d
1c006e39:	d01c001e 	0xd01c001e
1c006e3d:	d01c001e 	0xd01c001e
1c006e41:	d01c001e 	0xd01c001e
1c006e45:	d01c001e 	0xd01c001e
1c006e49:	d01c001e 	0xd01c001e
1c006e4d:	d01c001e 	0xd01c001e
1c006e51:	d01c001e 	0xd01c001e
1c006e55:	d01c001e 	0xd01c001e
1c006e59:	d01c001e 	0xd01c001e
1c006e5d:	cc1c001e 	0xcc1c001e
1c006e61:	541c001d 	bl	7609344(0x741c00) # 1c748a61 <_sidata+0x73fa3d>
1c006e65:	541c001e 	bl	7871488(0x781c00) # 1c788a65 <_sidata+0x77fa41>
1c006e69:	541c001e 	bl	7871488(0x781c00) # 1c788a69 <_sidata+0x77fa45>
1c006e6d:	541c001e 	bl	7871488(0x781c00) # 1c788a6d <_sidata+0x77fa49>
1c006e71:	541c001e 	bl	7871488(0x781c00) # 1c788a71 <_sidata+0x77fa4d>
1c006e75:	541c001e 	bl	7871488(0x781c00) # 1c788a75 <_sidata+0x77fa51>
1c006e79:	541c001e 	bl	7871488(0x781c00) # 1c788a79 <_sidata+0x77fa55>
1c006e7d:	541c001e 	bl	7871488(0x781c00) # 1c788a7d <_sidata+0x77fa59>
1c006e81:	541c001e 	bl	7871488(0x781c00) # 1c788a81 <_sidata+0x77fa5d>
1c006e85:	d01c001e 	0xd01c001e
1c006e89:	d01c001e 	0xd01c001e
1c006e8d:	d01c001e 	0xd01c001e
1c006e91:	d01c001e 	0xd01c001e
1c006e95:	d01c001e 	0xd01c001e
1c006e99:	d01c001e 	0xd01c001e
1c006e9d:	d01c001e 	0xd01c001e
1c006ea1:	d01c001e 	0xd01c001e
1c006ea5:	d01c001e 	0xd01c001e
1c006ea9:	d01c001e 	0xd01c001e
1c006ead:	d01c001e 	0xd01c001e
1c006eb1:	d01c001e 	0xd01c001e
1c006eb5:	d01c001e 	0xd01c001e
1c006eb9:	d01c001e 	0xd01c001e
1c006ebd:	d01c001e 	0xd01c001e
1c006ec1:	d01c001e 	0xd01c001e
1c006ec5:	d01c001e 	0xd01c001e
1c006ec9:	d01c001e 	0xd01c001e
1c006ecd:	d01c001e 	0xd01c001e
1c006ed1:	d01c001e 	0xd01c001e
1c006ed5:	d01c001e 	0xd01c001e
1c006ed9:	d01c001e 	0xd01c001e
1c006edd:	d01c001e 	0xd01c001e
1c006ee1:	d01c001e 	0xd01c001e
1c006ee5:	d01c001e 	0xd01c001e
1c006ee9:	d01c001e 	0xd01c001e
1c006eed:	d01c001e 	0xd01c001e
1c006ef1:	d01c001e 	0xd01c001e
1c006ef5:	d01c001e 	0xd01c001e
1c006ef9:	d01c001e 	0xd01c001e
1c006efd:	d01c001e 	0xd01c001e
1c006f01:	d01c001e 	0xd01c001e
1c006f05:	d01c001e 	0xd01c001e
1c006f09:	d01c001e 	0xd01c001e
1c006f0d:	d01c001e 	0xd01c001e
1c006f11:	d01c001e 	0xd01c001e
1c006f15:	d01c001e 	0xd01c001e
1c006f19:	d01c001e 	0xd01c001e
1c006f1d:	d01c001e 	0xd01c001e
1c006f21:	d01c001e 	0xd01c001e
1c006f25:	441c001e 	bnez	$r0,-517120(0x781c00) # 1bf88b25 <_start-0x774db>
1c006f29:	6c1c001d 	bgeu	$r0,$r29,7168(0x1c00) # 1c008b29 <tfont32+0x631>
1c006f2d:	d41c001c 	0xd41c001c
1c006f31:	d01c001c 	0xd01c001c
1c006f35:	d01c001e 	0xd01c001e
1c006f39:	d01c001e 	0xd01c001e
1c006f3d:	d01c001e 	0xd01c001e
1c006f41:	d01c001e 	0xd01c001e
1c006f45:	d01c001e 	0xd01c001e
1c006f49:	d01c001e 	0xd01c001e
1c006f4d:	d01c001e 	0xd01c001e
1c006f51:	d01c001e 	0xd01c001e
1c006f55:	d01c001e 	0xd01c001e
1c006f59:	0c1c001e 	0x0c1c001e
1c006f5d:	7c1c001d 	0x7c1c001d
1c006f61:	d01c001d 	0xd01c001d
1c006f65:	d01c001e 	0xd01c001e
1c006f69:	401c001e 	beqz	$r0,-517120(0x781c00) # 1bf88b69 <_start-0x77497>
1c006f6d:	d01c001c 	0xd01c001c
1c006f71:	9c1c001e 	0x9c1c001e
1c006f75:	d01c001c 	0xd01c001c
1c006f79:	d01c001e 	0xd01c001e
1c006f7d:	7c1c001e 	0x7c1c001e
1c006f81:	681c001d 	bltu	$r0,$r29,7168(0x1c00) # 1c008b81 <tfont32+0x689>
1c006f85:	8c1c0023 	0x8c1c0023
1c006f89:	8c1c0024 	0x8c1c0024
1c006f8d:	8c1c0024 	0x8c1c0024
1c006f91:	8c1c0024 	0x8c1c0024
1c006f95:	8c1c0024 	0x8c1c0024
1c006f99:	8c1c0024 	0x8c1c0024
1c006f9d:	8c1c0024 	0x8c1c0024
1c006fa1:	8c1c0024 	0x8c1c0024
1c006fa5:	8c1c0024 	0x8c1c0024
1c006fa9:	8c1c0024 	0x8c1c0024
1c006fad:	881c0024 	0x881c0024
1c006fb1:	101c0023 	addu16i.d	$r3,$r1,1792(0x700)
1c006fb5:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c006fb9:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c006fbd:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c006fc1:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c006fc5:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c006fc9:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c006fcd:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c006fd1:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c006fd5:	8c1c0024 	0x8c1c0024
1c006fd9:	8c1c0024 	0x8c1c0024
1c006fdd:	8c1c0024 	0x8c1c0024
1c006fe1:	8c1c0024 	0x8c1c0024
1c006fe5:	8c1c0024 	0x8c1c0024
1c006fe9:	8c1c0024 	0x8c1c0024
1c006fed:	8c1c0024 	0x8c1c0024
1c006ff1:	8c1c0024 	0x8c1c0024
1c006ff5:	8c1c0024 	0x8c1c0024
1c006ff9:	8c1c0024 	0x8c1c0024
1c006ffd:	8c1c0024 	0x8c1c0024
1c007001:	8c1c0024 	0x8c1c0024
1c007005:	8c1c0024 	0x8c1c0024
1c007009:	8c1c0024 	0x8c1c0024
1c00700d:	8c1c0024 	0x8c1c0024
1c007011:	8c1c0024 	0x8c1c0024
1c007015:	8c1c0024 	0x8c1c0024
1c007019:	8c1c0024 	0x8c1c0024
1c00701d:	8c1c0024 	0x8c1c0024
1c007021:	8c1c0024 	0x8c1c0024
1c007025:	8c1c0024 	0x8c1c0024
1c007029:	8c1c0024 	0x8c1c0024
1c00702d:	8c1c0024 	0x8c1c0024
1c007031:	8c1c0024 	0x8c1c0024
1c007035:	8c1c0024 	0x8c1c0024
1c007039:	8c1c0024 	0x8c1c0024
1c00703d:	8c1c0024 	0x8c1c0024
1c007041:	8c1c0024 	0x8c1c0024
1c007045:	8c1c0024 	0x8c1c0024
1c007049:	8c1c0024 	0x8c1c0024
1c00704d:	8c1c0024 	0x8c1c0024
1c007051:	8c1c0024 	0x8c1c0024
1c007055:	8c1c0024 	0x8c1c0024
1c007059:	8c1c0024 	0x8c1c0024
1c00705d:	8c1c0024 	0x8c1c0024
1c007061:	8c1c0024 	0x8c1c0024
1c007065:	8c1c0024 	0x8c1c0024
1c007069:	8c1c0024 	0x8c1c0024
1c00706d:	8c1c0024 	0x8c1c0024
1c007071:	8c1c0024 	0x8c1c0024
1c007075:	f01c0024 	0xf01c0024
1c007079:	081c0022 	fmadd.s	$f2,$f1,$f0,$f24
1c00707d:	781c0022 	0x781c0022
1c007081:	8c1c0022 	0x8c1c0022
1c007085:	8c1c0024 	0x8c1c0024
1c007089:	8c1c0024 	0x8c1c0024
1c00708d:	8c1c0024 	0x8c1c0024
1c007091:	8c1c0024 	0x8c1c0024
1c007095:	8c1c0024 	0x8c1c0024
1c007099:	8c1c0024 	0x8c1c0024
1c00709d:	8c1c0024 	0x8c1c0024
1c0070a1:	8c1c0024 	0x8c1c0024
1c0070a5:	8c1c0024 	0x8c1c0024
1c0070a9:	b41c0024 	0xb41c0024
1c0070ad:	2c1c0022 	vld	$vr2,$r1,1792(0x700)
1c0070b1:	8c1c0023 	0x8c1c0023
1c0070b5:	8c1c0024 	0x8c1c0024
1c0070b9:	d81c0024 	0xd81c0024
1c0070bd:	8c1c0021 	0x8c1c0021
1c0070c1:	3c1c0024 	0x3c1c0024
1c0070c5:	8c1c0022 	0x8c1c0022
1c0070c9:	8c1c0024 	0x8c1c0024
1c0070cd:	2c1c0024 	vld	$vr4,$r1,1792(0x700)
1c0070d1:	0a1c0023 	xvfmadd.s	$xr3,$xr1,$xr0,$xr24
1c0070d5:	7c000000 	0x7c000000
1c0070d9:	7c7c7c7c 	0x7c7c7c7c
1c0070dd:	7c7c7c7c 	0x7c7c7c7c
1c0070e1:	7c7c7c7c 	0x7c7c7c7c
1c0070e5:	7c7c7c7c 	0x7c7c7c7c
1c0070e9:	7c7c7c7c 	0x7c7c7c7c
1c0070ed:	7c7c7c7c 	0x7c7c7c7c
1c0070f1:	7c7c7c7c 	0x7c7c7c7c
1c0070f5:	7c7c7c7c 	0x7c7c7c7c
1c0070f9:	7c7c7c7c 	0x7c7c7c7c
1c0070fd:	7c7c7c7c 	0x7c7c7c7c
1c007101:	7c7c7c7c 	0x7c7c7c7c
1c007105:	7c7c7c7c 	0x7c7c7c7c
1c007109:	7c7c7c7c 	0x7c7c7c7c
1c00710d:	7c7c7c7c 	0x7c7c7c7c
1c007111:	7c7c7c7c 	0x7c7c7c7c
1c007115:	7c7c7c7c 	0x7c7c7c7c
1c007119:	7c7c7c7c 	0x7c7c7c7c
1c00711d:	7c7c7c7c 	0x7c7c7c7c
1c007121:	7c7c7c7c 	0x7c7c7c7c
1c007125:	7c7c7c7c 	0x7c7c7c7c
1c007129:	7c7c7c7c 	0x7c7c7c7c
1c00712d:	7c7c7c7c 	0x7c7c7c7c
1c007131:	7c7c7c7c 	0x7c7c7c7c
1c007135:	7c7c7c7c 	0x7c7c7c7c
1c007139:	7c00000a 	0x7c00000a
1c00713d:	7c20207c 	0x7c20207c
1c007141:	7c7c7c7c 	0x7c7c7c7c
1c007145:	7c7c7c7c 	0x7c7c7c7c
1c007149:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00714d:	7c202020 	0x7c202020
1c007151:	7c7c7c7c 	0x7c7c7c7c
1c007155:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007159:	7c202020 	0x7c202020
1c00715d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007161:	7c7c2020 	0x7c7c2020
1c007165:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007169:	7c7c7c20 	0x7c7c7c20
1c00716d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007171:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007175:	7c7c7c7c 	0x7c7c7c7c
1c007179:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00717d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007181:	7c7c7c7c 	0x7c7c7c7c
1c007185:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007189:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00718d:	7c7c7c7c 	0x7c7c7c7c
1c007191:	7c202020 	0x7c202020
1c007195:	7c7c7c7c 	0x7c7c7c7c
1c007199:	7c7c2020 	0x7c7c2020
1c00719d:	7c00000a 	0x7c00000a
1c0071a1:	7c20207c 	0x7c20207c
1c0071a5:	7c7c7c7c 	0x7c7c7c7c
1c0071a9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0071ad:	7c7c2020 	0x7c7c2020
1c0071b1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0071b5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0071b9:	7c7c2020 	0x7c7c2020
1c0071bd:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0071c1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0071c5:	7c202020 	0x7c202020
1c0071c9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0071cd:	7c7c7c20 	0x7c7c7c20
1c0071d1:	7c20207c 	0x7c20207c
1c0071d5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0071d9:	7c7c7c20 	0x7c7c7c20
1c0071dd:	7c202020 	0x7c202020
1c0071e1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0071e5:	7c7c7c20 	0x7c7c7c20
1c0071e9:	7c202020 	0x7c202020
1c0071ed:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0071f1:	7c7c7c20 	0x7c7c7c20
1c0071f5:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0071f9:	7c7c7c7c 	0x7c7c7c7c
1c0071fd:	7c7c2020 	0x7c7c2020
1c007201:	7c00000a 	0x7c00000a
1c007205:	7c20207c 	0x7c20207c
1c007209:	7c7c7c7c 	0x7c7c7c7c
1c00720d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007211:	7c7c7c20 	0x7c7c7c20
1c007215:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007219:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00721d:	7c7c7c20 	0x7c7c7c20
1c007221:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007225:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007229:	20207c20 	ll.w	$r0,$r1,8316(0x207c)
1c00722d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007231:	7c7c7c20 	0x7c7c7c20
1c007235:	7c7c2020 	0x7c7c2020
1c007239:	7c7c7c7c 	0x7c7c7c7c
1c00723d:	7c7c7c7c 	0x7c7c7c7c
1c007241:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007245:	7c7c7c20 	0x7c7c7c20
1c007249:	7c7c7c7c 	0x7c7c7c7c
1c00724d:	7c7c2020 	0x7c7c2020
1c007251:	7c7c7c7c 	0x7c7c7c7c
1c007255:	7c7c7c20 	0x7c7c7c20
1c007259:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c00725d:	7c7c7c20 	0x7c7c7c20
1c007261:	7c7c2020 	0x7c7c2020
1c007265:	7c00000a 	0x7c00000a
1c007269:	7c20207c 	0x7c20207c
1c00726d:	7c7c7c7c 	0x7c7c7c7c
1c007271:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007275:	7c7c7c20 	0x7c7c7c20
1c007279:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00727d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007281:	7c7c7c20 	0x7c7c7c20
1c007285:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007289:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00728d:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c007291:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c007295:	7c7c7c20 	0x7c7c7c20
1c007299:	7c7c2020 	0x7c7c2020
1c00729d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0072a1:	7c7c7c20 	0x7c7c7c20
1c0072a5:	7c7c7c7c 	0x7c7c7c7c
1c0072a9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0072ad:	7c7c7c7c 	0x7c7c7c7c
1c0072b1:	7c7c2020 	0x7c7c2020
1c0072b5:	7c7c7c7c 	0x7c7c7c7c
1c0072b9:	7c7c7c20 	0x7c7c7c20
1c0072bd:	7c7c2020 	0x7c7c2020
1c0072c1:	7c7c2020 	0x7c7c2020
1c0072c5:	7c7c2020 	0x7c7c2020
1c0072c9:	7c00000a 	0x7c00000a
1c0072cd:	7c20207c 	0x7c20207c
1c0072d1:	7c7c7c7c 	0x7c7c7c7c
1c0072d5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0072d9:	7c7c7c20 	0x7c7c7c20
1c0072dd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0072e1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0072e5:	7c7c7c20 	0x7c7c7c20
1c0072e9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0072ed:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0072f1:	7c7c7c20 	0x7c7c7c20
1c0072f5:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c0072f9:	7c7c7c20 	0x7c7c7c20
1c0072fd:	7c7c2020 	0x7c7c2020
1c007301:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007305:	7c7c7c20 	0x7c7c7c20
1c007309:	7c7c7c7c 	0x7c7c7c7c
1c00730d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007311:	7c7c7c20 	0x7c7c7c20
1c007315:	7c7c2020 	0x7c7c2020
1c007319:	7c7c7c7c 	0x7c7c7c7c
1c00731d:	7c7c7c20 	0x7c7c7c20
1c007321:	7c7c2020 	0x7c7c2020
1c007325:	7c20207c 	0x7c20207c
1c007329:	7c7c2020 	0x7c7c2020
1c00732d:	7c00000a 	0x7c00000a
1c007331:	7c20207c 	0x7c20207c
1c007335:	7c7c7c7c 	0x7c7c7c7c
1c007339:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00733d:	7c7c2020 	0x7c7c2020
1c007341:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007345:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007349:	7c7c2020 	0x7c7c2020
1c00734d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007351:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007355:	7c7c7c20 	0x7c7c7c20
1c007359:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00735d:	7c7c7c20 	0x7c7c7c20
1c007361:	7c202020 	0x7c202020
1c007365:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007369:	7c7c7c20 	0x7c7c7c20
1c00736d:	7c202020 	0x7c202020
1c007371:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007375:	7c7c7c7c 	0x7c7c7c7c
1c007379:	7c202020 	0x7c202020
1c00737d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007381:	7c7c7c20 	0x7c7c7c20
1c007385:	7c7c2020 	0x7c7c2020
1c007389:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c00738d:	7c7c2020 	0x7c7c2020
1c007391:	7c00000a 	0x7c00000a
1c007395:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007399:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00739d:	7c7c7c7c 	0x7c7c7c7c
1c0073a1:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0073a5:	7c202020 	0x7c202020
1c0073a9:	7c7c7c7c 	0x7c7c7c7c
1c0073ad:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0073b1:	7c202020 	0x7c202020
1c0073b5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0073b9:	7c7c7c20 	0x7c7c7c20
1c0073bd:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0073c1:	7c7c7c20 	0x7c7c7c20
1c0073c5:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0073c9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0073cd:	7c7c7c7c 	0x7c7c7c7c
1c0073d1:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0073d5:	7c202020 	0x7c202020
1c0073d9:	7c7c7c7c 	0x7c7c7c7c
1c0073dd:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0073e1:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0073e5:	7c7c7c7c 	0x7c7c7c7c
1c0073e9:	7c7c2020 	0x7c7c2020
1c0073ed:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0073f1:	7c7c2020 	0x7c7c2020
1c0073f5:	7c00000a 	0x7c00000a
1c0073f9:	7c7c7c7c 	0x7c7c7c7c
1c0073fd:	7c7c7c7c 	0x7c7c7c7c
1c007401:	7c7c7c7c 	0x7c7c7c7c
1c007405:	7c7c7c7c 	0x7c7c7c7c
1c007409:	7c7c7c7c 	0x7c7c7c7c
1c00740d:	7c7c7c7c 	0x7c7c7c7c
1c007411:	7c7c7c7c 	0x7c7c7c7c
1c007415:	7c7c7c7c 	0x7c7c7c7c
1c007419:	7c7c7c7c 	0x7c7c7c7c
1c00741d:	325b7c7c 	xvldrepl.h	$xr28,$r3,-578(0xdbe)
1c007421:	20303230 	ll.w	$r16,$r17,12336(0x3030)
1c007425:	4e4f4f4c 	jirl	$r12,$r26,-110772(0x24f4c)
1c007429:	4e4f5347 	jirl	$r7,$r26,-110768(0x24f50)
1c00742d:	7c7c7c5d 	0x7c7c7c5d
1c007431:	7c7c7c7c 	0x7c7c7c7c
1c007435:	7c7c7c7c 	0x7c7c7c7c
1c007439:	7c7c7c7c 	0x7c7c7c7c
1c00743d:	7c7c7c7c 	0x7c7c7c7c
1c007441:	7c7c7c7c 	0x7c7c7c7c
1c007445:	7c7c7c7c 	0x7c7c7c7c
1c007449:	7c7c7c7c 	0x7c7c7c7c
1c00744d:	7c7c7c7c 	0x7c7c7c7c
1c007451:	7c7c7c7c 	0x7c7c7c7c
1c007455:	7c7c7c7c 	0x7c7c7c7c
1c007459:	0900000a 	0x0900000a
1c00745d:	0a006425 	0x0a006425
1c007461:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007465:	776f440a 	xvssrarni.du.q	$xr10,$xr0,0x51
1c007469:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c00746d:	0050550a 	0x0050550a
1c007471:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007475:	6c754d0a 	bgeu	$r8,$r10,30028(0x754c) # 1c00e9c1 <_sidata+0x599d>
1c007479:	776f4469 	xvssrarni.du.q	$xr9,$xr3,0x51
1c00747d:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c007481:	756f430a 	0x756f430a
1c007485:	4f20746e 	jirl	$r14,$r3,-57228(0x32074)
1c007489:	0d000056 	fsel	$f22,$f2,$f0,$fcc0
1c00748d:	3030090a 	0x3030090a
1c007491:	09313009 	0x09313009
1c007495:	30093230 	0x30093230
1c007499:	34300933 	0x34300933
1c00749d:	09353009 	0x09353009
1c0074a1:	30093630 	0x30093630
1c0074a5:	38300937 	fldx.s	$f23,$r9,$r2
1c0074a9:	09393009 	0x09393009
1c0074ad:	31093031 	0x31093031
1c0074b1:	0d000031 	fsel	$f17,$f1,$f0,$fcc0
1c0074b5:	746e630a 	0x746e630a
1c0074b9:	09000000 	0x09000000
1c0074bd:	00643425 	bstrins.w	$r5,$r1,0x4,0xd
1c0074c1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0074c5:	7361420a 	vssrani.w.d	$vr10,$vr16,0x10
1c0074c9:	6c615665 	bgeu	$r19,$r5,24916(0x6154) # 1c00d61d <_sidata+0x45f9>
1c0074cd:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0074d1:	6275530a 	blt	$r24,$r10,-101040(0x27550) # 1bfeea21 <_start-0x115df>
1c0074d5:	006c6156 	bstrins.w	$r22,$r10,0xc,0x18
1c0074d9:	09000000 	0x09000000
1c0074dd:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c0074e1:	09000000 	0x09000000
1c0074e5:	00643325 	bstrins.w	$r5,$r25,0x4,0xc
1c0074e9:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0074ed:	203c200a 	ll.w	$r10,$r0,15392(0x3c20)
1c0074f1:	3a515249 	0x3a515249
1c0074f5:	20642520 	ll.w	$r0,$r9,25636(0x6424)
1c0074f9:	636e7566 	blt	$r11,$r6,-37260(0x36e74) # 1bffe36d <_start-0x1c93>
1c0074fd:	2073253a 	ll.w	$r26,$r9,29476(0x7324)
1c007501:	0d3e2020 	0x0d3e2020
1c007505:	0a00000a 	0x0a00000a
1c007509:	2e2e2e2e 	0x2e2e2e2e
1c00750d:	2e2e2e2e 	0x2e2e2e2e
1c007511:	2e2e2e2e 	0x2e2e2e2e
1c007515:	464f532e 	bnez	$r25,3821392(0x3a4f50) # 1c3ac465 <_sidata+0x3a3441>
1c007519:	4e495f54 	jirl	$r20,$r26,-112292(0x2495c)
1c00751d:	2e2e2e54 	0x2e2e2e54
1c007521:	2e2e2e2e 	0x2e2e2e2e
1c007525:	2e2e2e2e 	0x2e2e2e2e
1c007529:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c00752d:	0d00000d 	fsel	$f13,$f0,$f0,$fcc0
1c007531:	2e2e2e0a 	0x2e2e2e0a
1c007535:	2e2e2e2e 	0x2e2e2e2e
1c007539:	2e2e2e2e 	0x2e2e2e2e
1c00753d:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39b769 <_sidata+0x392745>
1c007541:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1bb9d <_start-0x2e4463>
1c007545:	2e2e4c49 	0x2e2e4c49
1c007549:	2e2e2e2e 	0x2e2e2e2e
1c00754d:	2e2e2e2e 	0x2e2e2e2e
1c007551:	2e2e2e2e 	0x2e2e2e2e
1c007555:	0d000a0d 	fsel	$f13,$f16,$f2,$fcc0
1c007559:	2e2e2e0a 	0x2e2e2e0a
1c00755d:	2e2e2e2e 	0x2e2e2e2e
1c007561:	2e2e2e2e 	0x2e2e2e2e
1c007565:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38b691 <_sidata+0x38266d>
1c007569:	2e2e2e43 	0x2e2e2e43
1c00756d:	2e2e2e2e 	0x2e2e2e2e
1c007571:	2e2e2e2e 	0x2e2e2e2e
1c007575:	0d2e2e2e 	xvbitsel.v	$xr14,$xr17,$xr11,$xr28
1c007579:	5000000a 	b	2621440(0x280000) # 1c287579 <_sidata+0x27e555>
1c00757d:	70697265 	vavgr.w	$vr5,$vr19,$vr28
1c007581:	61726568 	blt	$r11,$r8,94820(0x17264) # 1c01e7e5 <_sidata+0x157c1>
1c007585:	5420736c 	bl	-38789008(0xdb02070) # 19b095f5 <_start-0x24f6a0b>
1c007589:	72656d69 	0x72656d69
1c00758d:	656c6320 	bge	$r25,$r0,93280(0x16c60) # 1c01e1ed <_sidata+0x151c9>
1c007591:	69207261 	bltu	$r19,$r1,73840(0x12070) # 1c019601 <_sidata+0x105dd>
1c007595:	7265746e 	0x7265746e
1c007599:	74707572 	xvmax.b	$xr18,$xr11,$xr29
1c00759d:	0a0d2e2e 	0x0a0d2e2e
1c0075a1:	43000000 	beqz	$r0,196608(0x30000) # 1c0375a1 <_sidata+0x2e57d>
1c0075a5:	2065726f 	ll.w	$r15,$r19,25968(0x6570)
1c0075a9:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01e311 <_sidata+0x152ed>
1c0075ad:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00d8cd <_sidata+0x48a9>
1c0075b1:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c0075b5:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c01ea21 <_sidata+0x159fd>
1c0075b9:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c0075bd:	0d2e2e74 	xvbitsel.v	$xr20,$xr19,$xr11,$xr28
1c0075c1:	 	0x9000000a

1c0075c4 <Ext_IrqHandle>:
1c0075c4:	1c003f90 	pcaddu12i	$r16,508(0x1fc)
1c0075c8:	1c003fdc 	pcaddu12i	$r28,510(0x1fe)
1c0075cc:	1c004028 	pcaddu12i	$r8,513(0x201)
1c0075d0:	1c004074 	pcaddu12i	$r20,515(0x203)
1c0075d4:	1c0040c0 	pcaddu12i	$r0,518(0x206)
1c0075d8:	1c00410c 	pcaddu12i	$r12,520(0x208)
1c0075dc:	1c004158 	pcaddu12i	$r24,522(0x20a)
1c0075e0:	1c0041a4 	pcaddu12i	$r4,525(0x20d)
1c0075e4:	1c0041f0 	pcaddu12i	$r16,527(0x20f)
1c0075e8:	1c00423c 	pcaddu12i	$r28,529(0x211)
1c0075ec:	1c004288 	pcaddu12i	$r8,532(0x214)
1c0075f0:	1c0042d4 	pcaddu12i	$r20,534(0x216)
1c0075f4:	1c004320 	pcaddu12i	$r0,537(0x219)
1c0075f8:	1c00436c 	pcaddu12i	$r12,539(0x21b)
1c0075fc:	1c0043b8 	pcaddu12i	$r24,541(0x21d)
1c007600:	1c004404 	pcaddu12i	$r4,544(0x220)
1c007604:	1c004450 	pcaddu12i	$r16,546(0x222)
1c007608:	1c00449c 	pcaddu12i	$r28,548(0x224)
1c00760c:	1c0044e8 	pcaddu12i	$r8,551(0x227)
1c007610:	1c004534 	pcaddu12i	$r20,553(0x229)
1c007614:	1c004580 	pcaddu12i	$r0,556(0x22c)
1c007618:	1c0045cc 	pcaddu12i	$r12,558(0x22e)
1c00761c:	1c004618 	pcaddu12i	$r24,560(0x230)
1c007620:	1c004664 	pcaddu12i	$r4,563(0x233)
1c007624:	1c0046b0 	pcaddu12i	$r16,565(0x235)
1c007628:	1c0046fc 	pcaddu12i	$r28,567(0x237)
1c00762c:	1c004748 	pcaddu12i	$r8,570(0x23a)
1c007630:	1c004794 	pcaddu12i	$r20,572(0x23c)
1c007634:	1c0047e0 	pcaddu12i	$r0,575(0x23f)
1c007638:	1c00482c 	pcaddu12i	$r12,577(0x241)
1c00763c:	1c004878 	pcaddu12i	$r24,579(0x243)
1c007640:	1c0048c4 	pcaddu12i	$r4,582(0x246)
1c007644:	1c004ba8 	pcaddu12i	$r8,605(0x25d)
1c007648:	1c004b58 	pcaddu12i	$r24,602(0x25a)
1c00764c:	1c004ba8 	pcaddu12i	$r8,605(0x25d)
1c007650:	1c004ba8 	pcaddu12i	$r8,605(0x25d)
1c007654:	1c004ba8 	pcaddu12i	$r8,605(0x25d)
1c007658:	1c004ba8 	pcaddu12i	$r8,605(0x25d)
1c00765c:	1c004ba8 	pcaddu12i	$r8,605(0x25d)
1c007660:	1c004ba8 	pcaddu12i	$r8,605(0x25d)
1c007664:	1c004ba8 	pcaddu12i	$r8,605(0x25d)
1c007668:	1c004ba8 	pcaddu12i	$r8,605(0x25d)
1c00766c:	1c004ba8 	pcaddu12i	$r8,605(0x25d)
1c007670:	1c004ba8 	pcaddu12i	$r8,605(0x25d)
1c007674:	1c004ba8 	pcaddu12i	$r8,605(0x25d)
1c007678:	1c004ba8 	pcaddu12i	$r8,605(0x25d)
1c00767c:	1c004ba8 	pcaddu12i	$r8,605(0x25d)
1c007680:	1c004ba8 	pcaddu12i	$r8,605(0x25d)
1c007684:	1c004b74 	pcaddu12i	$r20,603(0x25b)

1c007688 <__FUNCTION__.1551>:
1c007688:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eb00 <_sidata+0x15adc>
1c00768c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e6f0 <_sidata+0x156cc>
1c007690:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bffa6f0 <_start-0x5910>
1c007694:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe804 <_start-0x17fc>
1c007698:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e4f8 <_sidata+0x54d4>
1c00769c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0076a0 <__FUNCTION__.1555>:
1c0076a0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eb18 <_sidata+0x15af4>
1c0076a4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e708 <_sidata+0x156e4>
1c0076a8:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bffa808 <_start-0x57f8>
1c0076ac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe81c <_start-0x17e4>
1c0076b0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e510 <_sidata+0x54ec>
1c0076b4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0076b8 <__FUNCTION__.1559>:
1c0076b8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eb30 <_sidata+0x15b0c>
1c0076bc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e720 <_sidata+0x156fc>
1c0076c0:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bffa920 <_start-0x56e0>
1c0076c4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe834 <_start-0x17cc>
1c0076c8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e528 <_sidata+0x5504>
1c0076cc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0076d0 <__FUNCTION__.1563>:
1c0076d0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eb48 <_sidata+0x15b24>
1c0076d4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e738 <_sidata+0x15714>
1c0076d8:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bffaa38 <_start-0x55c8>
1c0076dc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe84c <_start-0x17b4>
1c0076e0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e540 <_sidata+0x551c>
1c0076e4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0076e8 <__FUNCTION__.1567>:
1c0076e8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eb60 <_sidata+0x15b3c>
1c0076ec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e750 <_sidata+0x1572c>
1c0076f0:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bffab50 <_start-0x54b0>
1c0076f4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe864 <_start-0x179c>
1c0076f8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e558 <_sidata+0x5534>
1c0076fc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007700 <__FUNCTION__.1571>:
1c007700:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eb78 <_sidata+0x15b54>
1c007704:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e768 <_sidata+0x15744>
1c007708:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bffac68 <_start-0x5398>
1c00770c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe87c <_start-0x1784>
1c007710:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e570 <_sidata+0x554c>
1c007714:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007718 <__FUNCTION__.1575>:
1c007718:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eb90 <_sidata+0x15b6c>
1c00771c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e780 <_sidata+0x1575c>
1c007720:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bffad80 <_start-0x5280>
1c007724:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe894 <_start-0x176c>
1c007728:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e588 <_sidata+0x5564>
1c00772c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007730 <__FUNCTION__.1579>:
1c007730:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eba8 <_sidata+0x15b84>
1c007734:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e798 <_sidata+0x15774>
1c007738:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bffae98 <_start-0x5168>
1c00773c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe8ac <_start-0x1754>
1c007740:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e5a0 <_sidata+0x557c>
1c007744:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007748 <__FUNCTION__.1583>:
1c007748:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ebc0 <_sidata+0x15b9c>
1c00774c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e7b0 <_sidata+0x1578c>
1c007750:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bffa7b0 <_start-0x5850>
1c007754:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe8c4 <_start-0x173c>
1c007758:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e5b8 <_sidata+0x5594>
1c00775c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007760 <__FUNCTION__.1587>:
1c007760:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ebd8 <_sidata+0x15bb4>
1c007764:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e7c8 <_sidata+0x157a4>
1c007768:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bffa8c8 <_start-0x5738>
1c00776c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe8dc <_start-0x1724>
1c007770:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e5d0 <_sidata+0x55ac>
1c007774:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007778 <__FUNCTION__.1591>:
1c007778:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ebf0 <_sidata+0x15bcc>
1c00777c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e7e0 <_sidata+0x157bc>
1c007780:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bffa9e0 <_start-0x5620>
1c007784:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe8f4 <_start-0x170c>
1c007788:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e5e8 <_sidata+0x55c4>
1c00778c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007790 <__FUNCTION__.1595>:
1c007790:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ec08 <_sidata+0x15be4>
1c007794:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e7f8 <_sidata+0x157d4>
1c007798:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bffaaf8 <_start-0x5508>
1c00779c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe90c <_start-0x16f4>
1c0077a0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e600 <_sidata+0x55dc>
1c0077a4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0077a8 <__FUNCTION__.1599>:
1c0077a8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ec20 <_sidata+0x15bfc>
1c0077ac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e810 <_sidata+0x157ec>
1c0077b0:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bffac10 <_start-0x53f0>
1c0077b4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe924 <_start-0x16dc>
1c0077b8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e618 <_sidata+0x55f4>
1c0077bc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0077c0 <__FUNCTION__.1603>:
1c0077c0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ec38 <_sidata+0x15c14>
1c0077c4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e828 <_sidata+0x15804>
1c0077c8:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bffad28 <_start-0x52d8>
1c0077cc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe93c <_start-0x16c4>
1c0077d0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e630 <_sidata+0x560c>
1c0077d4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0077d8 <__FUNCTION__.1607>:
1c0077d8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ec50 <_sidata+0x15c2c>
1c0077dc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e840 <_sidata+0x1581c>
1c0077e0:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bffae40 <_start-0x51c0>
1c0077e4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe954 <_start-0x16ac>
1c0077e8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e648 <_sidata+0x5624>
1c0077ec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0077f0 <__FUNCTION__.1611>:
1c0077f0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ec68 <_sidata+0x15c44>
1c0077f4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e858 <_sidata+0x15834>
1c0077f8:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bffaf58 <_start-0x50a8>
1c0077fc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe96c <_start-0x1694>
1c007800:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e660 <_sidata+0x563c>
1c007804:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007808 <__FUNCTION__.1615>:
1c007808:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ec80 <_sidata+0x15c5c>
1c00780c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e870 <_sidata+0x1584c>
1c007810:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bffa870 <_start-0x5790>
1c007814:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe984 <_start-0x167c>
1c007818:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e678 <_sidata+0x5654>
1c00781c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007820 <__FUNCTION__.1619>:
1c007820:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ec98 <_sidata+0x15c74>
1c007824:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e888 <_sidata+0x15864>
1c007828:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bffa988 <_start-0x5678>
1c00782c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe99c <_start-0x1664>
1c007830:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e690 <_sidata+0x566c>
1c007834:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007838 <__FUNCTION__.1623>:
1c007838:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ecb0 <_sidata+0x15c8c>
1c00783c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e8a0 <_sidata+0x1587c>
1c007840:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bffaaa0 <_start-0x5560>
1c007844:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe9b4 <_start-0x164c>
1c007848:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e6a8 <_sidata+0x5684>
1c00784c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007850 <__FUNCTION__.1627>:
1c007850:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ecc8 <_sidata+0x15ca4>
1c007854:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e8b8 <_sidata+0x15894>
1c007858:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bffabb8 <_start-0x5448>
1c00785c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe9cc <_start-0x1634>
1c007860:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e6c0 <_sidata+0x569c>
1c007864:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007868 <__FUNCTION__.1631>:
1c007868:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ece0 <_sidata+0x15cbc>
1c00786c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e8d0 <_sidata+0x158ac>
1c007870:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bffacd0 <_start-0x5330>
1c007874:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe9e4 <_start-0x161c>
1c007878:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e6d8 <_sidata+0x56b4>
1c00787c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007880 <__FUNCTION__.1635>:
1c007880:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ecf8 <_sidata+0x15cd4>
1c007884:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e8e8 <_sidata+0x158c4>
1c007888:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bffade8 <_start-0x5218>
1c00788c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe9fc <_start-0x1604>
1c007890:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e6f0 <_sidata+0x56cc>
1c007894:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007898 <__FUNCTION__.1639>:
1c007898:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ed10 <_sidata+0x15cec>
1c00789c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e900 <_sidata+0x158dc>
1c0078a0:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bffaf00 <_start-0x5100>
1c0078a4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffea14 <_start-0x15ec>
1c0078a8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e708 <_sidata+0x56e4>
1c0078ac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0078b0 <__FUNCTION__.1643>:
1c0078b0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ed28 <_sidata+0x15d04>
1c0078b4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e918 <_sidata+0x158f4>
1c0078b8:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bffb018 <_start-0x4fe8>
1c0078bc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffea2c <_start-0x15d4>
1c0078c0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e720 <_sidata+0x56fc>
1c0078c4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0078c8 <__FUNCTION__.1647>:
1c0078c8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ed40 <_sidata+0x15d1c>
1c0078cc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e930 <_sidata+0x1590c>
1c0078d0:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bffa934 <_start-0x56cc>
1c0078d4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffea44 <_start-0x15bc>
1c0078d8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e738 <_sidata+0x5714>
1c0078dc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0078e0 <__FUNCTION__.1651>:
1c0078e0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ed58 <_sidata+0x15d34>
1c0078e4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e948 <_sidata+0x15924>
1c0078e8:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bffaa4c <_start-0x55b4>
1c0078ec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffea5c <_start-0x15a4>
1c0078f0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e750 <_sidata+0x572c>
1c0078f4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0078f8 <__FUNCTION__.1655>:
1c0078f8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ed70 <_sidata+0x15d4c>
1c0078fc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e960 <_sidata+0x1593c>
1c007900:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bffab64 <_start-0x549c>
1c007904:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffea74 <_start-0x158c>
1c007908:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e768 <_sidata+0x5744>
1c00790c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007910 <__FUNCTION__.1659>:
1c007910:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ed88 <_sidata+0x15d64>
1c007914:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e978 <_sidata+0x15954>
1c007918:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bffac7c <_start-0x5384>
1c00791c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffea8c <_start-0x1574>
1c007920:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e780 <_sidata+0x575c>
1c007924:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007928 <__FUNCTION__.1663>:
1c007928:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eda0 <_sidata+0x15d7c>
1c00792c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e990 <_sidata+0x1596c>
1c007930:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bffad94 <_start-0x526c>
1c007934:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeaa4 <_start-0x155c>
1c007938:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e798 <_sidata+0x5774>
1c00793c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007940 <__FUNCTION__.1667>:
1c007940:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01edb8 <_sidata+0x15d94>
1c007944:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e9a8 <_sidata+0x15984>
1c007948:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bffaeac <_start-0x5154>
1c00794c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeabc <_start-0x1544>
1c007950:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e7b0 <_sidata+0x578c>
1c007954:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007958 <__FUNCTION__.1671>:
1c007958:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01edd0 <_sidata+0x15dac>
1c00795c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e9c0 <_sidata+0x1599c>
1c007960:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bffafc4 <_start-0x503c>
1c007964:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffead4 <_start-0x152c>
1c007968:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e7c8 <_sidata+0x57a4>
1c00796c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007970 <__FUNCTION__.1675>:
1c007970:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ede8 <_sidata+0x15dc4>
1c007974:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e9d8 <_sidata+0x159b4>
1c007978:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bffb0dc <_start-0x4f24>
1c00797c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeaec <_start-0x1514>
1c007980:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e7e0 <_sidata+0x57bc>
1c007984:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
1c007988:	504d4554 	b	89148740(0x5504d44) # 2150c6cc <_sidata+0x55036a8>
1c00798c:	6425203a 	bge	$r1,$r26,9504(0x2520) # 1c009eac <_sidata+0xe88>
1c007990:	5548202c 	bl	11618336(0xb14820) # 1cb1c1b0 <_sidata+0xb1318c>
1c007994:	203a494d 	ll.w	$r13,$r10,14920(0x3a48)
1c007998:	25256425 	stptr.w	$r5,$r1,9572(0x2564)
1c00799c:	202c4852 	ll.w	$r18,$r2,11336(0x2c48)
1c0079a0:	4b4f4d53 	bcnez	$fcc2,-3190964(0x4f4f4c) # 1bcfc8ec <_start-0x303714>
1c0079a4:	25203a45 	stptr.w	$r5,$r18,8248(0x2038)
1c0079a8:	6d707064 	bgeu	$r3,$r4,94320(0x17070) # 1c01ea18 <_sidata+0x159f4>
1c0079ac:	0000000a 	0x0000000a
1c0079b0:	52525543 	b	84824660(0x50e5254) # 210ecc04 <_sidata+0x50e3be0>
1c0079b4:	00544e45 	0x00544e45
1c0079b8:	504d4554 	b	89148740(0x5504d44) # 2150c6fc <_sidata+0x55036d8>
1c0079bc:	6432253a 	bge	$r9,$r26,12836(0x3224) # 1c00abe0 <_sidata+0x1bbc>
1c0079c0:	008384e2 	bstrins.d	$r2,$r7,0x3,0x21
1c0079c4:	494d5548 	bcnez	$fcc2,2182484(0x214d54) # 1c21c718 <_sidata+0x2136f4>
1c0079c8:	6432253a 	bge	$r9,$r26,12836(0x3224) # 1c00abec <_sidata+0x1bc8>
1c0079cc:	48522525 	bcnez	$fcc1,1331748(0x145224) # 1c14cbf0 <_sidata+0x143bcc>
1c0079d0:	00000000 	0x00000000
1c0079d4:	4b4f4d53 	bcnez	$fcc2,-3190964(0x4f4f4c) # 1bcfc920 <_start-0x3036e0>
1c0079d8:	32253a45 	xvldrepl.w	$xr5,$r18,1336(0x538)
1c0079dc:	6d707064 	bgeu	$r3,$r4,94320(0x17070) # 1c01ea4c <_sidata+0x15a28>
1c0079e0:	00000000 	0x00000000
1c0079e4:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0079e8:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0079ec:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0079f0:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0079f4:	00000000 	0x00000000

1c0079f8 <asc2_1608>:
	...
1c007a08:	f8000000 	0xf8000000
1c007a0c:	00000000 	0x00000000
1c007a10:	33000000 	0x33000000
1c007a14:	00000000 	0x00000000
1c007a18:	020c1000 	slti	$r0,$r0,772(0x304)
1c007a1c:	00020c10 	0x00020c10
	...
1c007a28:	78c04000 	0x78c04000
1c007a2c:	0078c040 	bstrpick.w	$r0,$r2,0x18,0x10
1c007a30:	043f0400 	csrrd	$r0,0xfc1
1c007a34:	00043f04 	alsl.w	$r4,$r24,$r15,0x1
1c007a38:	88887000 	0x88887000
1c007a3c:	003008fc 	0x003008fc
1c007a40:	20201800 	ll.w	$r0,$r0,8216(0x2018)
1c007a44:	001e21ff 	mulh.d	$r31,$r15,$r8
1c007a48:	80f008f0 	0x80f008f0
1c007a4c:	00001860 	cto.w	$r0,$r3
1c007a50:	030c3100 	lu52i.d	$r0,$r8,780(0x30c)
1c007a54:	001e211e 	mulh.d	$r30,$r8,$r8
1c007a58:	8808f000 	0x8808f000
1c007a5c:	00000070 	0x00000070
1c007a60:	2c23211e 	vld	$vr30,$r8,-1848(0x8c8)
1c007a64:	10212719 	addu16i.d	$r25,$r24,2121(0x849)
1c007a68:	000e1200 	bytepick.d	$r0,$r16,$r4,0x4
	...
1c007a78:	e0000000 	0xe0000000
1c007a7c:	00020418 	0x00020418
1c007a80:	07000000 	0x07000000
1c007a84:	00402018 	0x00402018
1c007a88:	18040200 	pcaddi	$r0,8208(0x2010)
1c007a8c:	000000e0 	0x000000e0
1c007a90:	18204000 	pcaddi	$r0,66048(0x10200)
1c007a94:	00000007 	0x00000007
1c007a98:	f0804040 	0xf0804040
1c007a9c:	00404080 	0x00404080
1c007aa0:	0f010202 	0x0f010202
1c007aa4:	00020201 	0x00020201
1c007aa8:	00000000 	0x00000000
1c007aac:	000000e0 	0x000000e0
1c007ab0:	01010100 	fadd.d	$f0,$f8,$f0
1c007ab4:	0101010f 	fadd.d	$f15,$f8,$f0
	...
1c007ac0:	00709000 	bstrpick.w	$r0,$r0,0x10,0x4
	...
1c007ad0:	01010100 	fadd.d	$f0,$f8,$f0
1c007ad4:	00010101 	0x00010101
	...
1c007ae0:	00303000 	0x00303000
	...
1c007aec:	000438c0 	alsl.w	$r0,$r6,$r14,0x1
1c007af0:	07186000 	0x07186000
1c007af4:	00000000 	0x00000000
1c007af8:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c007afc:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007b00:	20100f00 	ll.w	$r0,$r24,4108(0x100c)
1c007b04:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c007b08:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c007b0c:	000000f8 	0x000000f8
1c007b10:	20200000 	ll.w	$r0,$r0,8192(0x2000)
1c007b14:	0020203f 	div.w	$r31,$r1,$r8
1c007b18:	08087000 	0x08087000
1c007b1c:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c007b20:	24283000 	ldptr.w	$r0,$r0,10288(0x2830)
1c007b24:	00302122 	0x00302122
1c007b28:	08083000 	0x08083000
1c007b2c:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c007b30:	21201800 	sc.w	$r0,$r0,8216(0x2018)
1c007b34:	001c2221 	mul.w	$r1,$r17,$r8
1c007b38:	40800000 	beqz	$r0,32768(0x8000) # 1c00fb38 <_sidata+0x6b14>
1c007b3c:	0000f830 	0x0000f830
1c007b40:	24050600 	ldptr.w	$r0,$r16,1284(0x504)
1c007b44:	24243f24 	ldptr.w	$r4,$r25,9276(0x243c)
1c007b48:	8888f800 	0x8888f800
1c007b4c:	00080888 	bytepick.w	$r8,$r4,$r2,0x0
1c007b50:	20201900 	ll.w	$r0,$r8,8216(0x2018)
1c007b54:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c007b58:	8810e000 	0x8810e000
1c007b5c:	00009088 	0x00009088
1c007b60:	20110f00 	ll.w	$r0,$r24,4364(0x110c)
1c007b64:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c007b68:	08081800 	0x08081800
1c007b6c:	00186888 	sra.w	$r8,$r4,$r26
1c007b70:	3e000000 	0x3e000000
1c007b74:	00000001 	0x00000001
1c007b78:	08887000 	0x08887000
1c007b7c:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c007b80:	21221c00 	sc.w	$r0,$r0,8732(0x221c)
1c007b84:	001c2221 	mul.w	$r1,$r17,$r8
1c007b88:	0808f000 	0x0808f000
1c007b8c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007b90:	22120100 	ll.d	$r0,$r8,4608(0x1200)
1c007b94:	000f1122 	bytepick.d	$r2,$r9,$r4,0x6
1c007b98:	c0000000 	0xc0000000
1c007b9c:	000000c0 	0x000000c0
1c007ba0:	30000000 	0x30000000
1c007ba4:	00000030 	0x00000030
1c007ba8:	80000000 	0x80000000
1c007bac:	00000000 	0x00000000
1c007bb0:	e0000000 	0xe0000000
1c007bb4:	00000000 	0x00000000
1c007bb8:	40800000 	beqz	$r0,32768(0x8000) # 1c00fbb8 <_sidata+0x6b94>
1c007bbc:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c007bc0:	04020100 	csrxchg	$r0,$r8,0x80
1c007bc4:	00201008 	div.w	$r8,$r0,$r4
1c007bc8:	40404000 	beqz	$r0,16448(0x4040) # 1c00bc08 <_sidata+0x2be4>
1c007bcc:	00404040 	0x00404040
1c007bd0:	02020200 	slti	$r0,$r16,128(0x80)
1c007bd4:	00020202 	0x00020202
1c007bd8:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c007bdc:	00008040 	0x00008040
1c007be0:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c007be4:	00010204 	0x00010204
1c007be8:	08487000 	0x08487000
1c007bec:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c007bf0:	30000000 	0x30000000
1c007bf4:	00000037 	0x00000037
1c007bf8:	28c830c0 	ld.d	$r0,$r6,524(0x20c)
1c007bfc:	00e010e8 	bstrpick.d	$r8,$r7,0x20,0x4
1c007c00:	28271807 	ld.b	$r7,$r0,-1594(0x9c6)
1c007c04:	0017282f 	sll.w	$r15,$r1,$r10
1c007c08:	38c00000 	0x38c00000
1c007c0c:	000000e0 	0x000000e0
1c007c10:	02233c20 	slti	$r0,$r1,-1841(0x8cf)
1c007c14:	20382702 	ll.w	$r2,$r24,14372(0x3824)
1c007c18:	8888f808 	0x8888f808
1c007c1c:	00007088 	0x00007088
1c007c20:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c007c24:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c007c28:	080830c0 	0x080830c0
1c007c2c:	00380808 	0x00380808
1c007c30:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c007c34:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c007c38:	0808f808 	0x0808f808
1c007c3c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007c40:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c007c44:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c007c48:	8888f808 	0x8888f808
1c007c4c:	001008e8 	add.w	$r8,$r7,$r2
1c007c50:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c007c54:	00182023 	sra.w	$r3,$r1,$r8
1c007c58:	8888f808 	0x8888f808
1c007c5c:	001008e8 	add.w	$r8,$r7,$r2
1c007c60:	00203f20 	div.w	$r0,$r25,$r15
1c007c64:	00000003 	0x00000003
1c007c68:	080830c0 	0x080830c0
1c007c6c:	00003808 	revb.2w	$r8,$r0
1c007c70:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c007c74:	00021e22 	0x00021e22
1c007c78:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c007c7c:	08f80800 	0x08f80800
1c007c80:	01213f20 	0x01213f20
1c007c84:	203f2101 	ll.w	$r1,$r8,16160(0x3f20)
1c007c88:	f8080800 	0xf8080800
1c007c8c:	00000808 	0x00000808
1c007c90:	3f202000 	0x3f202000
1c007c94:	00002020 	clo.d	$r0,$r1
1c007c98:	08080000 	0x08080000
1c007c9c:	000808f8 	bytepick.w	$r24,$r7,$r2,0x0
1c007ca0:	808080c0 	0x808080c0
1c007ca4:	0000007f 	0x0000007f
1c007ca8:	c088f808 	0xc088f808
1c007cac:	00081828 	bytepick.w	$r8,$r1,$r6,0x0
1c007cb0:	01203f20 	0x01203f20
1c007cb4:	00203826 	div.w	$r6,$r1,$r14
1c007cb8:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c007cbc:	00000000 	0x00000000
1c007cc0:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c007cc4:	00302020 	0x00302020
1c007cc8:	00f8f808 	bstrpick.d	$r8,$r0,0x38,0x3e
1c007ccc:	0008f8f8 	bytepick.w	$r24,$r7,$r30,0x1
1c007cd0:	3e013f20 	0x3e013f20
1c007cd4:	00203f01 	div.w	$r1,$r24,$r15
1c007cd8:	c030f808 	0xc030f808
1c007cdc:	08f80800 	0x08f80800
1c007ce0:	00203f20 	div.w	$r0,$r25,$r15
1c007ce4:	003f1807 	0x003f1807
1c007ce8:	080810e0 	0x080810e0
1c007cec:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007cf0:	2020100f 	ll.w	$r15,$r0,8208(0x2010)
1c007cf4:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c007cf8:	0808f808 	0x0808f808
1c007cfc:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c007d00:	01213f20 	0x01213f20
1c007d04:	00000101 	0x00000101
1c007d08:	080810e0 	0x080810e0
1c007d0c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007d10:	2828100f 	ld.b	$r15,$r0,-1532(0xa04)
1c007d14:	004f5030 	0x004f5030
1c007d18:	8888f808 	0x8888f808
1c007d1c:	00708888 	bstrpick.w	$r8,$r4,0x10,0x2
1c007d20:	00203f20 	div.w	$r0,$r25,$r15
1c007d24:	20300c03 	ll.w	$r3,$r0,12300(0x300c)
1c007d28:	08887000 	0x08887000
1c007d2c:	00380808 	0x00380808
1c007d30:	21203800 	sc.w	$r0,$r0,8248(0x2038)
1c007d34:	001c2221 	mul.w	$r1,$r17,$r8
1c007d38:	f8080818 	0xf8080818
1c007d3c:	00180808 	sra.w	$r8,$r0,$r2
1c007d40:	3f200000 	0x3f200000
1c007d44:	00000020 	0x00000020
1c007d48:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c007d4c:	08f80800 	0x08f80800
1c007d50:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c007d54:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c007d58:	00887808 	bstrins.d	$r8,$r0,0x8,0x1e
1c007d5c:	0838c800 	0x0838c800
1c007d60:	38070000 	0x38070000
1c007d64:	0000010e 	0x0000010e
1c007d68:	f800f808 	0xf800f808
1c007d6c:	0008f800 	bytepick.w	$r0,$r0,$r30,0x1
1c007d70:	013e0300 	0x013e0300
1c007d74:	0000033e 	0x0000033e
1c007d78:	80681808 	0x80681808
1c007d7c:	08186880 	fmadd.s	$f0,$f4,$f26,$f16
1c007d80:	032c3020 	lu52i.d	$r0,$r1,-1268(0xb0c)
1c007d84:	20302c03 	ll.w	$r3,$r0,12332(0x302c)
1c007d88:	00c83808 	bstrpick.d	$r8,$r0,0x8,0xe
1c007d8c:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c007d90:	3f200000 	0x3f200000
1c007d94:	00000020 	0x00000020
1c007d98:	08080810 	0x08080810
1c007d9c:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c007da0:	21263820 	sc.w	$r0,$r1,9784(0x2638)
1c007da4:	00182020 	sra.w	$r0,$r1,$r8
1c007da8:	fe000000 	0xfe000000
1c007dac:	00020202 	0x00020202
1c007db0:	7f000000 	0x7f000000
1c007db4:	00404040 	0x00404040
1c007db8:	c0380400 	0xc0380400
1c007dbc:	00000000 	0x00000000
1c007dc0:	01000000 	0x01000000
1c007dc4:	00c03806 	bstrpick.d	$r6,$r0,0x0,0xe
1c007dc8:	02020200 	slti	$r0,$r16,128(0x80)
1c007dcc:	000000fe 	0x000000fe
1c007dd0:	40404000 	beqz	$r0,16448(0x4040) # 1c00be10 <_sidata+0x2dec>
1c007dd4:	0000007f 	0x0000007f
1c007dd8:	02040000 	slti	$r0,$r0,256(0x100)
1c007ddc:	00000402 	0x00000402
	...
1c007df0:	80808080 	0x80808080
1c007df4:	80808080 	0x80808080
1c007df8:	04020200 	csrxchg	$r0,$r16,0x80
	...
1c007e08:	80800000 	0x80800000
1c007e0c:	00000080 	0x00000080
1c007e10:	24241900 	ldptr.w	$r0,$r8,9240(0x2418)
1c007e14:	00203f12 	div.w	$r18,$r24,$r15
1c007e18:	8000f010 	0x8000f010
1c007e1c:	00000080 	0x00000080
1c007e20:	20113f00 	ll.w	$r0,$r24,4412(0x113c)
1c007e24:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c007e28:	80000000 	0x80000000
1c007e2c:	00008080 	0x00008080
1c007e30:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c007e34:	00112020 	sub.w	$r0,$r1,$r8
1c007e38:	80800000 	0x80800000
1c007e3c:	00f09080 	bstrpick.d	$r0,$r4,0x30,0x24
1c007e40:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c007e44:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c007e48:	80800000 	0x80800000
1c007e4c:	00008080 	0x00008080
1c007e50:	24241f00 	ldptr.w	$r0,$r24,9244(0x241c)
1c007e54:	00172424 	sll.w	$r4,$r1,$r9
1c007e58:	e0808000 	0xe0808000
1c007e5c:	00209090 	mod.w	$r16,$r4,$r4
1c007e60:	3f202000 	0x3f202000
1c007e64:	00002020 	clo.d	$r0,$r1
1c007e68:	80800000 	0x80800000
1c007e6c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007e70:	94946b00 	0x94946b00
1c007e74:	00609394 	bstrpick.w	$r20,$r28,0x0,0x4
1c007e78:	8000f010 	0x8000f010
1c007e7c:	00008080 	0x00008080
1c007e80:	00213f20 	div.wu	$r0,$r25,$r15
1c007e84:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c007e88:	98988000 	0x98988000
1c007e8c:	00000000 	0x00000000
1c007e90:	3f202000 	0x3f202000
1c007e94:	00002020 	clo.d	$r0,$r1
1c007e98:	80000000 	0x80000000
1c007e9c:	00009898 	0x00009898
1c007ea0:	8080c000 	0x8080c000
1c007ea4:	00007f80 	0x00007f80
1c007ea8:	0000f010 	0x0000f010
1c007eac:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007eb0:	06243f20 	cacop	0x0,$r25,-1777(0x90f)
1c007eb4:	00203029 	div.w	$r9,$r1,$r12
1c007eb8:	f8101000 	0xf8101000
1c007ebc:	00000000 	0x00000000
1c007ec0:	3f202000 	0x3f202000
1c007ec4:	00002020 	clo.d	$r0,$r1
1c007ec8:	80808080 	0x80808080
1c007ecc:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007ed0:	00203f20 	div.w	$r0,$r25,$r15
1c007ed4:	3f00203f 	0x3f00203f
1c007ed8:	80008080 	0x80008080
1c007edc:	00008080 	0x00008080
1c007ee0:	00213f20 	div.wu	$r0,$r25,$r15
1c007ee4:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c007ee8:	80800000 	0x80800000
1c007eec:	00008080 	0x00008080
1c007ef0:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c007ef4:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c007ef8:	80008080 	0x80008080
1c007efc:	00000080 	0x00000080
1c007f00:	2091ff80 	ll.w	$r0,$r28,-28164(0x91fc)
1c007f04:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c007f08:	80000000 	0x80000000
1c007f0c:	00800080 	bstrins.d	$r0,$r4,0x0,0x0
1c007f10:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c007f14:	80ff9120 	0x80ff9120
1c007f18:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007f1c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007f20:	213f2020 	sc.w	$r0,$r1,16160(0x3f20)
1c007f24:	00010020 	asrtle.d	$r1,$r0
1c007f28:	80800000 	0x80800000
1c007f2c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007f30:	24243300 	ldptr.w	$r0,$r24,9264(0x2430)
1c007f34:	00192424 	srl.d	$r4,$r1,$r9
1c007f38:	e0808000 	0xe0808000
1c007f3c:	00008080 	0x00008080
1c007f40:	1f000000 	pcaddu18i	$r0,-524288(0x80000)
1c007f44:	00102020 	add.w	$r0,$r1,$r8
1c007f48:	00008080 	0x00008080
1c007f4c:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c007f50:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c007f54:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c007f58:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007f5c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007f60:	300c0300 	0x300c0300
1c007f64:	0000030c 	0x0000030c
1c007f68:	80008080 	0x80008080
1c007f6c:	80800080 	0x80800080
1c007f70:	0c300e01 	0x0c300e01
1c007f74:	01063807 	0x01063807
1c007f78:	80808000 	0x80808000
1c007f7c:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c007f80:	0e312000 	0x0e312000
1c007f84:	0020312e 	div.w	$r14,$r9,$r12
1c007f88:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007f8c:	80808000 	0x80808000
1c007f90:	78868100 	0x78868100
1c007f94:	00010618 	0x00010618
1c007f98:	80808000 	0x80808000
1c007f9c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007fa0:	2c302100 	vld	$vr0,$r8,-1016(0xc08)
1c007fa4:	00302122 	0x00302122
1c007fa8:	00000000 	0x00000000
1c007fac:	0202fc00 	slti	$r0,$r0,191(0xbf)
1c007fb0:	00000000 	0x00000000
1c007fb4:	40403e01 	beqz	$r16,278588(0x4403c) # 1c04bff0 <_sidata+0x42fcc>
1c007fb8:	00000000 	0x00000000
1c007fbc:	000000ff 	0x000000ff
1c007fc0:	00000000 	0x00000000
1c007fc4:	000000ff 	0x000000ff
1c007fc8:	00fc0202 	bstrpick.d	$r2,$r16,0x3c,0x0
1c007fcc:	00000000 	0x00000000
1c007fd0:	013e4040 	0x013e4040
1c007fd4:	00000000 	0x00000000
1c007fd8:	02010200 	slti	$r0,$r16,64(0x40)
1c007fdc:	00020402 	0x00020402
	...

1c007fe8 <tfont16>:
1c007fe8:	00be9be5 	bstrins.d	$r5,$r31,0x3e,0x26
1c007fec:	224202fe 	ll.d	$r30,$r23,16896(0x4200)
1c007ff0:	52925e32 	b	-120941988(0x8ca925c) # 14cb124c <_start-0x734edb4>
1c007ff4:	02021232 	slti	$r18,$r17,132(0x84)
1c007ff8:	000000fe 	0x000000fe
1c007ffc:	424242ff 	beqz	$r23,-114112(0x7e4240) # 1bfec23c <_start-0x13dc4>
1c008000:	69645551 	bltu	$r10,$r17,91220(0x16454) # 1c01e454 <_sidata+0x15430>
1c008004:	42424241 	beqz	$r18,410176(0x64240) # 1c06c244 <_sidata+0x63220>
1c008008:	e60000ff 	0xe60000ff
1c00800c:	08088796 	0x08088796
1c008010:	08c83808 	0x08c83808
1c008014:	08080e09 	0x08080e09
1c008018:	080838c8 	0x080838c8
1c00801c:	80800008 	0x80800008
1c008020:	11204040 	addu16i.d	$r0,$r2,18448(0x4810)
1c008024:	110a040a 	addu16i.d	$r10,$r0,17025(0x4281)
1c008028:	80404020 	0x80404020
1c00802c:	98e60080 	0x98e60080
1c008030:	000000be 	0x000000be
1c008034:	929292fe 	0x929292fe
1c008038:	92929292 	0x92929292
1c00803c:	000000fe 	0x000000fe
1c008040:	44424000 	bnez	$r0,16960(0x4240) # 1c00c280 <_sidata+0x325c>
1c008044:	407f4058 	beqz	$r2,-2064576(0x607f40) # 1be0ff84 <_start-0x1f007c>
1c008048:	407f4040 	beqz	$r2,32576(0x7f40) # 1c00ff88 <_sidata+0x6f64>
1c00804c:	40464850 	beqz	$r2,-4176312(0x404648) # 1bc0c694 <_start-0x3f396c>
1c008050:	baa4e700 	0xbaa4e700
1c008054:	42424040 	beqz	$r2,148032(0x24240) # 1c02c294 <_sidata+0x23270>
1c008058:	c2424242 	0xc2424242
1c00805c:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac29c <_sidata+0xa3278>
1c008060:	00404042 	0x00404042
1c008064:	06081020 	cacop	0x0,$r1,516(0x204)
1c008068:	7f804000 	0x7f804000
1c00806c:	02000000 	slti	$r0,$r0,0
1c008070:	00300804 	0x00300804
1c008074:	109eaee5 	addu16i.d	$r5,$r23,10155(0x27ab)
1c008078:	1484040c 	lu12i.w	$r12,270368(0x42020)
1c00807c:	f4060564 	0xf4060564
1c008080:	04040404 	csrrd	$r4,0x101
1c008084:	04000c14 	csrrd	$r20,0x3
1c008088:	47448484 	bnez	$r4,1262724(0x134484) # 1c13c50c <_sidata+0x1334e8>
1c00808c:	070c1424 	0x070c1424
1c008090:	4424140c 	bnez	$r0,3154964(0x302414) # 1c30a4a4 <_sidata+0x301480>
1c008094:	e9000484 	0xe9000484
1c008098:	fa028caa 	0xfa028caa
1c00809c:	80fe8282 	0x80fe8282
1c0080a0:	4c502040 	jirl	$r0,$r2,20512(0x5020)
1c0080a4:	20504c43 	ll.w	$r3,$r2,20556(0x504c)
1c0080a8:	18080040 	pcaddi	$r0,16386(0x4002)
1c0080ac:	3f448448 	0x3f448448
1c0080b0:	41584440 	beqz	$r2,88132(0x15844) # 1c01d8f4 <_sidata+0x148d0>
1c0080b4:	4758604e 	bnez	$r2,3889248(0x3b5860) # 1c3bd914 <_sidata+0x3b48f0>
1c0080b8:	b8e60040 	0xb8e60040
1c0080bc:	026010a9 	sltui	$r9,$r5,-2044(0x804)
1c0080c0:	fe00008c 	0xfe00008c
1c0080c4:	92929292 	0x92929292
1c0080c8:	0000fe92 	0x0000fe92
1c0080cc:	7e040400 	0x7e040400
1c0080d0:	427e4001 	beqz	$r0,425536(0x67e40) # 1c06ff10 <_sidata+0x66eec>
1c0080d4:	7e427e42 	0x7e427e42
1c0080d8:	407e4242 	beqz	$r18,556608(0x87e40) # 1c08ff18 <_sidata+0x86ef4>
1c0080dc:	bfb9e600 	0xbfb9e600
1c0080e0:	8c026010 	0x8c026010
1c0080e4:	9292fe00 	0x9292fe00
1c0080e8:	92929292 	0x92929292
1c0080ec:	000000fe 	0x000000fe
1c0080f0:	017e0404 	0x017e0404
1c0080f4:	7f504844 	0x7f504844
1c0080f8:	507f4040 	b	16809792(0x1007f40) # 1d010038 <_sidata+0x1007014>
1c0080fc:	00404448 	0x00404448
1c008100:	00a6bae5 	bstrins.d	$r5,$r23,0x26,0x2e
1c008104:	2424fc00 	ldptr.w	$r0,$r0,9468(0x24fc)
1c008108:	2625fc24 	ldptr.d	$r4,$r1,9724(0x25fc)
1c00810c:	2424fc24 	ldptr.w	$r4,$r1,9468(0x24fc)
1c008110:	40000424 	beqz	$r1,1048580(0x100004) # 1c108114 <_sidata+0xff0f0>
1c008114:	84808f30 	0x84808f30
1c008118:	2525554c 	stptr.w	$r12,$r10,9556(0x2554)
1c00811c:	804c5525 	0x804c5525
1c008120:	e6008080 	0xe6008080
1c008124:	101080a3 	addu16i.d	$r3,$r5,1056(0x420)
1c008128:	5090ffd0 	b	-12545796(0xf4090fc) # 1b411224 <_start-0xbeeddc>
1c00812c:	434c5020 	beqz	$r1,216144(0x34c50) # 1c03cd7c <_sidata+0x33d58>
1c008130:	4020504c 	beqz	$r2,3154000(0x302050) # 1c30a180 <_sidata+0x30115c>
1c008134:	03040040 	lu52i.d	$r0,$r2,256(0x100)
1c008138:	4100ff00 	beqz	$r24,65788(0x100fc) # 1c018234 <_sidata+0xf210>
1c00813c:	4e415844 	jirl	$r4,$r2,-114344(0x24158)
1c008140:	40475860 	beqz	$r3,18264(0x4758) # 1c00c898 <_sidata+0x3874>
1c008144:	b5e60040 	0xb5e60040
1c008148:	0260108b 	sltui	$r11,$r4,-2044(0x804)
1c00814c:	02fe008c 	addi.d	$r12,$r4,-128(0xf80)
1c008150:	00fe02f2 	bstrpick.d	$r18,$r23,0x3e,0x0
1c008154:	00ff00f8 	bstrpick.d	$r24,$r7,0x3f,0x0
1c008158:	7e040400 	0x7e040400
1c00815c:	30478001 	vldrepl.h	$vr1,$r0,960(0x3c0)
1c008160:	0027100f 	crcc.w.w.w	$r15,$r0,$r4
1c008164:	007f8047 	bstrpick.w	$r7,$r2,0x1f,0x0
1c008168:	9eaee500 	0x9eaee500
1c00816c:	84040c10 	0x84040c10
1c008170:	06056414 	cacop	0x14,$r0,345(0x159)
1c008174:	040404f4 	csrxchg	$r20,$r7,0x101
1c008178:	000c1404 	bytepick.d	$r4,$r0,$r5,0x0
1c00817c:	44848404 	bnez	$r0,1082500(0x108484) # 1c110600 <_sidata+0x1075dc>
1c008180:	0c142447 	fcmp.cun.s	$fcc7,$f2,$f9
1c008184:	24140c07 	ldptr.w	$r7,$r0,5132(0x140c)
1c008188:	00048444 	alsl.w	$r4,$r2,$r1,0x2
1c00818c:	028caae9 	addi.w	$r9,$r23,810(0x32a)
1c008190:	fe8282fa 	0xfe8282fa
1c008194:	50204080 	b	33562688(0x2002040) # 1e00a1d4 <_sidata+0x20011b0>
1c008198:	504c434c 	b	-47166400(0xd304c40) # 1930cdd8 <_start-0x2cf3228>
1c00819c:	08004020 	0x08004020
1c0081a0:	44844818 	bnez	$r0,-2063288(0x608448) # 1be105e8 <_start-0x1efa18>
1c0081a4:	5844403f 	beq	$r1,$r31,17472(0x4440) # 1c00c5e4 <_sidata+0x35c0>
1c0081a8:	58604e41 	beq	$r18,$r1,24652(0x604c) # 1c00e1f4 <_sidata+0x51d0>
1c0081ac:	e2004047 	0xe2004047
1c0081b0:	09068384 	0x09068384
1c0081b4:	0cf8e609 	0x0cf8e609
1c0081b8:	02020204 	slti	$r4,$r16,128(0x80)
1c0081bc:	1e040202 	pcaddu18i	$r2,8208(0x2010)
1c0081c0:	00000000 	0x00000000
1c0081c4:	301f0700 	0x301f0700
1c0081c8:	40404020 	beqz	$r1,16448(0x4040) # 1c00c208 <_sidata+0x31e4>
1c0081cc:	10204040 	addu16i.d	$r0,$r2,2064(0x810)
1c0081d0:	a4e70000 	0xa4e70000
1c0081d4:	424040ba 	beqz	$r5,-1425344(0x6a4040) # 1beac214 <_start-0x153dec>
1c0081d8:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac418 <_sidata+0xa33f4>
1c0081dc:	424242c2 	beqz	$r22,672320(0xa4240) # 1c0ac41c <_sidata+0xa33f8>
1c0081e0:	40404242 	beqz	$r18,540736(0x84040) # 1c08c220 <_sidata+0x831fc>
1c0081e4:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c0081e8:	80400006 	0x80400006
1c0081ec:	0000007f 	0x0000007f
1c0081f0:	30080402 	0x30080402
1c0081f4:	be98e600 	0xbe98e600
1c0081f8:	fe000000 	0xfe000000
1c0081fc:	92929292 	0x92929292
1c008200:	fe929292 	0xfe929292
1c008204:	00000000 	0x00000000
1c008208:	58444240 	beq	$r18,$r0,17472(0x4440) # 1c00c648 <_sidata+0x3624>
1c00820c:	40407f40 	beqz	$r26,16508(0x407c) # 1c00c288 <_sidata+0x3264>
1c008210:	50407f40 	b	-50315140(0xd00407c) # 1900c28c <_start-0x2ff3d74>
1c008214:	00404648 	0x00404648
1c008218:	109eaee5 	addu16i.d	$r5,$r23,10155(0x27ab)
1c00821c:	1484040c 	lu12i.w	$r12,270368(0x42020)
1c008220:	f4060564 	0xf4060564
1c008224:	04040404 	csrrd	$r4,0x101
1c008228:	04000c14 	csrrd	$r20,0x3
1c00822c:	47448484 	bnez	$r4,1262724(0x134484) # 1c13c6b0 <_sidata+0x13368c>
1c008230:	070c1424 	0x070c1424
1c008234:	4424140c 	bnez	$r0,3154964(0x302414) # 1c30a648 <_sidata+0x301624>
1c008238:	e9000484 	0xe9000484
1c00823c:	fa028caa 	0xfa028caa
1c008240:	80fe8282 	0x80fe8282
1c008244:	4c502040 	jirl	$r0,$r2,20512(0x5020)
1c008248:	20504c43 	ll.w	$r3,$r2,20556(0x504c)
1c00824c:	18080040 	pcaddi	$r0,16386(0x4002)
1c008250:	3f448448 	0x3f448448
1c008254:	41584440 	beqz	$r2,88132(0x15844) # 1c01da98 <_sidata+0x14a74>
1c008258:	4758604e 	bnez	$r2,3889248(0x3b5860) # 1c3bdab8 <_sidata+0x3b4a94>
1c00825c:	99e70040 	0x99e70040
1c008260:	e20202be 	0xe20202be
1c008264:	2a322222 	ld.bu	$r2,$r17,-888(0xc88)
1c008268:	22222226 	ll.d	$r6,$r17,8736(0x2220)
1c00826c:	0202e222 	slti	$r2,$r17,184(0xb8)
1c008270:	ff000000 	0xff000000
1c008274:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac4b4 <_sidata+0xa3490>
1c008278:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac4b8 <_sidata+0xa3494>
1c00827c:	0000ff42 	0x0000ff42
1c008280:	91a7e700 	0x91a7e700
1c008284:	fea42424 	0xfea42424
1c008288:	220022a3 	ll.d	$r3,$r21,32(0x20)
1c00828c:	ff0000cc 	0xff0000cc
1c008290:	00000000 	0x00000000
1c008294:	ff010608 	0xff010608
1c008298:	04040100 	csrxchg	$r0,$r8,0x100
1c00829c:	ff040404 	0xff040404
1c0082a0:	00020202 	0x00020202
1c0082a4:	84a38de8 	0x84a38de8
1c0082a8:	2f242464 	0x2f242464
1c0082ac:	24a42424 	ldptr.w	$r4,$r1,-23516(0xa424)
1c0082b0:	24242f24 	ldptr.w	$r4,$r25,9260(0x242c)
1c0082b4:	400064a4 	beqz	$r5,1048676(0x100064) # 1c108318 <_sidata+0xff2f4>
1c0082b8:	12222242 	addu16i.d	$r2,$r18,-30584(0x8888)
1c0082bc:	06ff060a 	0x06ff060a
1c0082c0:	2222120a 	ll.d	$r10,$r16,8720(0x2210)
1c0082c4:	e5004042 	0xe5004042
1c0082c8:	20409b88 	ll.w	$r8,$r28,16536(0x4098)
1c0082cc:	44434cd0 	bnez	$r6,-4177076(0x40434c) # 1bc0c618 <_start-0x3f39e8>
1c0082d0:	002010c8 	div.w	$r8,$r6,$r4
1c0082d4:	ff0000f8 	0xff0000f8
1c0082d8:	00000000 	0x00000000
1c0082dc:	4844403f 	bceqz	$fcc1,-244672(0x7c4440) # 1bfcc71c <_start-0x338e4>
1c0082e0:	00704047 	bstrins.w	$r7,$r2,0x10,0x10
1c0082e4:	7f80400f 	0x7f80400f
1c0082e8:	b0e80000 	0xb0e80000
1c0082ec:	cc4240a2 	0xcc4240a2
1c0082f0:	56fc0000 	bl	195584(0x2fc00) # 1c037ef0 <_sidata+0x2eecc>
1c0082f4:	1080fc55 	addu16i.d	$r21,$r2,8255(0x203f)
1c0082f8:	1010ff10 	addu16i.d	$r16,$r24,1087(0x43f)
1c0082fc:	3f000000 	0x3f000000
1c008300:	4a132a10 	0x4a132a10
1c008304:	43007f86 	beqz	$r28,1769596(0x1b007c) # 1c1b8380 <_sidata+0x1af35c>
1c008308:	00007f80 	0x00007f80
1c00830c:	9381e900 	0x9381e900
1c008310:	cc424040 	0xcc424040
1c008314:	aae90800 	0xaae90800
1c008318:	aaa8a8b8 	0xaaa8a8b8
1c00831c:	000008e9 	0x000008e9
1c008320:	1f204000 	pcaddu18i	$r0,-458240(0x90200)
1c008324:	4a5f4020 	bceqz	$fcc1,155456(0x25f40) # 1c02e264 <_sidata+0x25240>
1c008328:	4a4a4a4a 	0x4a4a4a4a
1c00832c:	0040405f 	0x0040405f
1c008330:	1090bae6 	addu16i.d	$r6,$r23,9262(0x242e)
1c008334:	008c0260 	bstrins.d	$r0,$r19,0xc,0x0
1c008338:	52f202fe 	b	-67440128(0xbfaf200) # 17fb7538 <_start-0x4048ac8>
1c00833c:	5252565a 	b	-110472620(0x96a5254) # 156ad590 <_start-0x6952a70>
1c008340:	040002f2 	csrxchg	$r18,$r23,0x0
1c008344:	30417e04 	vldrepl.h	$vr4,$r16,190(0xbe)
1c008348:	4913200f 	bceqz	$fcc0,4002592(0x3d1320) # 1c3d9668 <_sidata+0x3d0644>
1c00834c:	09017f81 	0x09017f81
1c008350:	e6002013 	0xe6002013
1c008354:	601096b9 	blt	$r21,$r25,4244(0x1094) # 1c0093e8 <_sidata+0x3c4>
1c008358:	88008c02 	0x88008c02
1c00835c:	8888ff88 	0x8888ff88
1c008360:	2222fe00 	ll.d	$r0,$r16,8956(0x22fc)
1c008364:	040400fe 	csrxchg	$r30,$r7,0x100
1c008368:	1f00017e 	pcaddu18i	$r30,-524277(0x8000b)
1c00836c:	9f080808 	0x9f080808
1c008370:	82421f60 	0x82421f60
1c008374:	8de5007f 	0x8de5007f
1c008378:	24e40497 	ldptr.w	$r23,$r4,-7164(0xe404)
1c00837c:	24a46424 	ldptr.w	$r4,$r1,-23452(0xa464)
1c008380:	64a4243f 	bge	$r1,$r31,42020(0xa424) # 1c0127a4 <_sidata+0x9780>
1c008384:	04e42424 	csrwr	$r4,0x3909
1c008388:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c00838c:	09090908 	0x09090908
1c008390:	0909097f 	0x0909097f
1c008394:	007f8048 	bstrpick.w	$r8,$r2,0x1f,0x0
1c008398:	a5b7e500 	0xa5b7e500
1c00839c:	04040400 	csrrd	$r0,0x101
1c0083a0:	fc040404 	0xfc040404
1c0083a4:	04040404 	csrrd	$r4,0x101
1c0083a8:	00000404 	0x00000404
1c0083ac:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0083b0:	3f202020 	0x3f202020
1c0083b4:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0083b8:	00202020 	div.w	$r0,$r1,$r8
1c0083bc:	009ab8e4 	bstrins.d	$r4,$r7,0x1a,0x2e
1c0083c0:	00806010 	bstrins.d	$r16,$r0,0x0,0x18
1c0083c4:	000000ff 	0x000000ff
1c0083c8:	c00000ff 	0xc00000ff
1c0083cc:	40000030 	beqz	$r1,-4194304(0x400000) # 1bc083cc <_start-0x3f7c34>
1c0083d0:	40434040 	beqz	$r2,17216(0x4340) # 1c00c710 <_sidata+0x36ec>
1c0083d4:	4040407f 	beqz	$r3,-245696(0x7c4040) # 1bfcc414 <_start-0x33bec>
1c0083d8:	4041427f 	beqz	$r19,-245440(0x7c4140) # 1bfcc518 <_start-0x33ae8>
1c0083dc:	e5004040 	0xe5004040
1c0083e0:	2020a7a4 	ll.w	$r4,$r29,8356(0x20a4)
1c0083e4:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0083e8:	2020ff20 	ll.w	$r0,$r25,8444(0x20fc)
1c0083ec:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0083f0:	80800020 	0x80800020
1c0083f4:	0c102040 	fcmp.caf.s	$fcc0,$f2,$f8
1c0083f8:	0c030003 	0x0c030003
1c0083fc:	80402010 	0x80402010
1c008400:	ade50080 	0xade50080
1c008404:	113040a6 	addu16i.d	$r6,$r5,19472(0x4c10)
1c008408:	91909096 	0x91909096
1c00840c:	98909096 	0x98909096
1c008410:	30501314 	vldrepl.h	$vr20,$r24,-2040(0x808)
1c008414:	04040400 	csrrd	$r0,0x101
1c008418:	84440404 	0x84440404
1c00841c:	0405067e 	csrxchg	$r30,$r19,0x141
1c008420:	04040404 	csrrd	$r4,0x101
1c008424:	a8bde800 	0xa8bde800
1c008428:	e88fb8c8 	0xe88fb8c8
1c00842c:	10108888 	addu16i.d	$r8,$r4,1058(0x422)
1c008430:	f01010ff 	0xf01010ff
1c008434:	00000000 	0x00000000
1c008438:	ff081808 	0xff081808
1c00843c:	30408404 	vldrepl.h	$vr4,$r0,66(0x42)
1c008440:	3f00000f 	0x3f00000f
1c008444:	00784040 	bstrins.w	$r0,$r2,0x18,0x10
1c008448:	409381e9 	beqz	$r15,2397056(0x249380) # 1c2517c8 <_sidata+0x2487a4>
1c00844c:	00cc4240 	bstrpick.d	$r0,$r18,0xc,0x10
1c008450:	b8aae908 	0xb8aae908
1c008454:	e9aaa8a8 	0xe9aaa8a8
1c008458:	00000008 	0x00000008
1c00845c:	201f2040 	ll.w	$r0,$r2,7968(0x1f20)
1c008460:	4a4a5f40 	0x4a4a5f40
1c008464:	5f4a4a4a 	bne	$r18,$r10,-46520(0x34a48) # 1bffceac <_start-0x3154>
1c008468:	e4004040 	0xe4004040
1c00846c:	0808a4ba 	0x0808a4ba
1c008470:	08086888 	0x08086888
1c008474:	08080e09 	0x08080e09
1c008478:	88482888 	0x88482888
1c00847c:	81800008 	0x81800008
1c008480:	22214040 	ll.d	$r0,$r2,8512(0x2140)
1c008484:	22140814 	ll.d	$r20,$r0,5128(0x1408)
1c008488:	81804041 	0x81804041
1c00848c:	80e90080 	0x80e90080
1c008490:	cc42409a 	0xcc42409a
1c008494:	22e20000 	ll.d	$r0,$r0,-7680(0xe200)
1c008498:	2af22a2a 	preld	0xa,$r17,-886(0xc8a)
1c00849c:	00e02226 	bstrpick.d	$r6,$r17,0x20,0x8
1c0084a0:	3f408000 	0x3f408000
1c0084a4:	89ff8040 	0x89ff8040
1c0084a8:	89bf8989 	0x89bf8989
1c0084ac:	80bfc9a9 	0x80bfc9a9
1c0084b0:	a6ade500 	0xa6ade500
1c0084b4:	96113040 	0x96113040
1c0084b8:	96919090 	0x96919090
1c0084bc:	14989090 	lu12i.w	$r16,312452(0x4c484)
1c0084c0:	00305013 	0x00305013
1c0084c4:	04040404 	csrrd	$r4,0x101
1c0084c8:	7e844404 	0x7e844404
1c0084cc:	04040506 	csrxchg	$r6,$r8,0x101
1c0084d0:	00040404 	alsl.w	$r4,$r0,$r1,0x1
1c0084d4:	00a299e9 	bstrins.d	$r9,$r15,0x22,0x26
1c0084d8:	865a22fe 	0x865a22fe
1c0084dc:	24240c10 	ldptr.w	$r16,$r0,9228(0x240c)
1c0084e0:	24242625 	ldptr.w	$r5,$r17,9252(0x2424)
1c0084e4:	00000c14 	0x00000c14
1c0084e8:	070804ff 	0x070804ff
1c0084ec:	0f314180 	0x0f314180
1c0084f0:	413f0101 	beqz	$r8,343808(0x53f00) # 1c05c3f0 <_sidata+0x533cc>
1c0084f4:	00007141 	0x00007141

1c0084f8 <tfont32>:
1c0084f8:	00be99e7 	bstrins.d	$r7,$r15,0x3e,0x26
1c0084fc:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c008500:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008504:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008508:	70f0f010 	vsrlr.h	$vr16,$vr0,$vr28
1c00850c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008510:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008514:	10181010 	addu16i.d	$r16,$r0,1540(0x604)
	...
1c008520:	f8fc0000 	0xf8fc0000
1c008524:	08080808 	0x08080808
1c008528:	08080b0c 	0x08080b0c
1c00852c:	08080808 	0x08080808
1c008530:	f8fc0808 	0xf8fc0808
	...
1c008540:	ffff0000 	0xffff0000
1c008544:	08080808 	0x08080808
1c008548:	08080808 	0x08080808
1c00854c:	08080808 	0x08080808
1c008550:	ffff0808 	0xffff0808
	...
1c008560:	3f7f0000 	0x3f7f0000
1c008564:	08080808 	0x08080808
1c008568:	08080808 	0x08080808
1c00856c:	08080808 	0x08080808
1c008570:	3f7f0808 	0x3f7f0808
1c008574:	00000000 	0x00000000
1c008578:	e7000000 	0xe7000000
1c00857c:	000091a7 	0x000091a7
1c008580:	20404040 	ll.w	$r0,$r2,16448(0x4040)
1c008584:	e0e02020 	0xe0e02020
1c008588:	18181030 	pcaddi	$r16,49281(0xc081)
1c00858c:	80000000 	0x80000000
1c008590:	00000080 	0x00000080
1c008594:	f8fc0000 	0xf8fc0000
1c008598:	00000008 	0x00000008
1c00859c:	00000000 	0x00000000
1c0085a0:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0085a4:	ffff9010 	0xffff9010
1c0085a8:	18101010 	pcaddi	$r16,32896(0x8080)
1c0085ac:	c0000010 	0xc0000010
1c0085b0:	00060781 	alsl.wu	$r1,$r28,$r1,0x1
1c0085b4:	ffff0000 	0xffff0000
	...
1c0085c0:	18204080 	pcaddi	$r0,66052(0x10204)
1c0085c4:	ffff030e 	0xffff030e
1c0085c8:	5e060301 	bne	$r24,$r1,-129536(0x20600) # 1bfe8bc8 <_start-0x17438>
1c0085cc:	20202040 	ll.w	$r0,$r2,8224(0x2020)
1c0085d0:	10102321 	addu16i.d	$r1,$r25,1032(0x408)
1c0085d4:	ffff1010 	0xffff1010
1c0085d8:	0c0c0808 	0x0c0c0808
1c0085dc:	01000000 	0x01000000
1c0085e0:	00000000 	0x00000000
1c0085e4:	3f7f0000 	0x3f7f0000
	...
1c0085f4:	3f7f0000 	0x3f7f0000
1c0085f8:	00000000 	0x00000000
1c0085fc:	8de80000 	0x8de80000
1c008600:	000000a3 	0x000000a3
1c008604:	80808080 	0x80808080
1c008608:	80808080 	0x80808080
1c00860c:	8088f8fc 	0x8088f8fc
1c008610:	80808080 	0x80808080
1c008614:	8088f8fc 	0x8088f8fc
1c008618:	e0c08080 	0xe0c08080
1c00861c:	000080c0 	0x000080c0
1c008620:	00000000 	0x00000000
1c008624:	10f8c080 	addu16i.d	$r0,$r4,15920(0x3e30)
1c008628:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00862c:	10101717 	addu16i.d	$r23,$r24,1029(0x405)
1c008630:	1050f0f0 	addu16i.d	$r16,$r7,5180(0x143c)
1c008634:	10101317 	addu16i.d	$r23,$r24,1028(0x404)
1c008638:	f0d01010 	0xf0d01010
1c00863c:	00001038 	clo.w	$r24,$r1
1c008640:	00000000 	0x00000000
1c008644:	02020200 	slti	$r0,$r16,128(0x80)
1c008648:	c2820202 	0xc2820202
1c00864c:	061e3a62 	cacop	0x2,$r19,1934(0x78e)
1c008650:	0e02ffff 	0x0e02ffff
1c008654:	82c26212 	0x82c26212
1c008658:	03020282 	lu52i.d	$r2,$r20,128(0x80)
1c00865c:	00000203 	0x00000203
1c008660:	10000000 	addu16i.d	$r0,$r0,0
1c008664:	06040808 	cacop	0x8,$r0,258(0x102)
1c008668:	00010102 	0x00010102
1c00866c:	00000000 	0x00000000
1c008670:	00003f7f 	revb.d	$r31,$r27
1c008674:	01000000 	0x01000000
1c008678:	0e060303 	0x0e060303
1c00867c:	0004040e 	alsl.w	$r14,$r0,$r1,0x1
1c008680:	9b88e500 	0x9b88e500
1c008684:	00000000 	0x00000000
1c008688:	c0000000 	0xc0000000
1c00868c:	28183cf0 	ld.b	$r16,$r7,1551(0x60f)
1c008690:	80c04060 	0x80c04060
	...
1c00869c:	f8000000 	0xf8000000
1c0086a0:	000000f8 	0x000000f8
1c0086a4:	40800000 	beqz	$r0,32768(0x8000) # 1c0106a4 <_sidata+0x7680>
1c0086a8:	23e6f830 	sc.d	$r16,$r1,-6408(0xe6f8)
1c0086ac:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0086b0:	23f0e020 	sc.d	$r0,$r1,-3872(0xf0e0)
1c0086b4:	00000207 	0x00000207
1c0086b8:	0002ff00 	0x0002ff00
1c0086bc:	ff000000 	0xff000000
1c0086c0:	000000ff 	0x000000ff
1c0086c4:	00000100 	0x00000100
1c0086c8:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
1c0086cc:	60200000 	blt	$r0,$r0,8192(0x2000) # 1c00a6cc <_sidata+0x16a8>
1c0086d0:	001f3f60 	mulw.d.w	$r0,$r27,$r15
1c0086d4:	00008000 	0x00008000
1c0086d8:	00007f00 	0x00007f00
1c0086dc:	ff000000 	0xff000000
1c0086e0:	000000ff 	0x000000ff
1c0086e4:	00000000 	0x00000000
1c0086e8:	303f0700 	0x303f0700
1c0086ec:	30303030 	0x30303030
1c0086f0:	30303030 	0x30303030
1c0086f4:	00103f38 	add.w	$r24,$r25,$r15
1c0086f8:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c0086fc:	3f703030 	0x3f703030
1c008700:	0000001f 	0x0000001f
1c008704:	0088bcef 	bstrins.d	$r15,$r7,0x8,0x2f
	...
1c00871c:	40800000 	beqz	$r0,32768(0x8000) # 1c01071c <_sidata+0x76f8>
1c008720:	00102040 	add.w	$r0,$r2,$r8
	...
1c008738:	1cf00000 	pcaddu12i	$r0,491520(0x78000)
1c00873c:	00000306 	0x00000306
	...
1c008758:	701f0000 	vaddwev.d.w	$vr0,$vr0,$vr0
1c00875c:	000000c0 	0x000000c0
	...
1c00877c:	04020100 	csrxchg	$r0,$r8,0x80
1c008780:	0010080c 	add.w	$r12,$r0,$r2
1c008784:	e5000000 	0xe5000000
1c008788:	0000978c 	0x0000978c
	...
1c008794:	08f8fc00 	0x08f8fc00
1c008798:	00000000 	0x00000000
1c00879c:	0008f8fc 	bytepick.w	$r28,$r7,$r30,0x1
	...
1c0087ac:	08080808 	0x08080808
1c0087b0:	08080808 	0x08080808
1c0087b4:	00ffff08 	bstrpick.d	$r8,$r24,0x3f,0x3f
1c0087b8:	00000000 	0x00000000
1c0087bc:	4040ffff 	beqz	$r31,-245508(0x7c40fc) # 1bfcc8b8 <_start-0x33748>
1c0087c0:	18103020 	pcaddi	$r0,33153(0x8181)
1c0087c4:	00040e0c 	alsl.w	$r12,$r16,$r3,0x1
	...
1c0087d0:	80000000 	0x80000000
1c0087d4:	00ffff80 	bstrpick.d	$r0,$r28,0x3f,0x3f
1c0087d8:	00000000 	0x00000000
1c0087dc:	0000ffff 	0x0000ffff
1c0087e0:	00000000 	0x00000000
1c0087e4:	00c00000 	bstrpick.d	$r0,$r0,0x0,0x0
1c0087e8:	00000000 	0x00000000
1c0087ec:	03060606 	lu52i.d	$r6,$r16,385(0x181)
1c0087f0:	00010103 	0x00010103
1c0087f4:	003f7f00 	0x003f7f00
1c0087f8:	00000000 	0x00000000
1c0087fc:	30303f1f 	0x30303f1f
1c008800:	30303030 	0x30303030
1c008804:	183f3830 	pcaddi	$r16,129473(0x1f9c1)
1c008808:	bae40000 	0xbae40000
1c00880c:	800000ac 	0x800000ac
1c008810:	80808080 	0x80808080
1c008814:	80808080 	0x80808080
1c008818:	8c808080 	0x8c808080
1c00881c:	80b0f898 	0x80b0f898
1c008820:	80808080 	0x80808080
1c008824:	c0808080 	0xc0808080
1c008828:	0080c0e0 	bstrins.d	$r0,$r7,0x0,0x30
	...
1c008834:	08f8f800 	0x08f8f800
1c008838:	08080808 	0x08080808
1c00883c:	08080808 	0x08080808
1c008840:	f8080808 	0xf8080808
1c008844:	000008fc 	0x000008fc
	...
1c008854:	e4cf0f00 	0xe4cf0f00
1c008858:	04040444 	csrxchg	$r4,$r2,0x101
1c00885c:	0404fcfc 	csrxchg	$r28,$r7,0x13f
1c008860:	cf442404 	0xcf442404
1c008864:	0000008f 	0x0000008f
1c008868:	00000000 	0x00000000
1c00886c:	20000000 	ll.w	$r0,$r0,0
1c008870:	04081010 	csrrd	$r16,0x204
1c008874:	00010306 	0x00010306
1c008878:	70301010 	vsubwev.h.bu	$vr16,$vr0,$vr4
1c00887c:	00003f3f 	revb.d	$r31,$r25
1c008880:	00000000 	0x00000000
1c008884:	1e0e0301 	pcaddu18i	$r1,28696(0x7018)
1c008888:	00000018 	0x00000018
1c00888c:	89bcef00 	0x89bcef00
1c008890:	00000000 	0x00000000
1c008894:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c008898:	0080c060 	bstrins.d	$r0,$r3,0x0,0x30
	...
1c0088b8:	06010000 	cacop	0x0,$r0,64(0x40)
1c0088bc:	0000f03c 	0x0000f03c
	...
1c0088d8:	c0800000 	0xc0800000
1c0088dc:	00000f78 	0x00000f78
	...
1c0088f4:	0c081000 	0x0c081000
1c0088f8:	00010306 	0x00010306
	...
1c008910:	0091a7e7 	bstrins.d	$r7,$r31,0x11,0x29
1c008914:	40404000 	beqz	$r0,16448(0x4040) # 1c00c954 <_sidata+0x3930>
1c008918:	e0202020 	0xe0202020
1c00891c:	181030e0 	pcaddi	$r0,33159(0x8187)
1c008920:	00000018 	0x00000018
1c008924:	00008080 	0x00008080
1c008928:	fc000000 	0xfc000000
1c00892c:	000008f8 	0x000008f8
1c008930:	00000000 	0x00000000
1c008934:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c008938:	ff901010 	0xff901010
1c00893c:	101010ff 	addu16i.d	$r31,$r7,1028(0x404)
1c008940:	00001018 	clo.w	$r24,$r0
1c008944:	060781c0 	cacop	0x0,$r14,480(0x1e0)
1c008948:	ff000000 	0xff000000
1c00894c:	000000ff 	0x000000ff
1c008950:	00000000 	0x00000000
1c008954:	20408000 	ll.w	$r0,$r0,16512(0x4080)
1c008958:	ff030e18 	0xff030e18
1c00895c:	060301ff 	cacop	0x1f,$r15,192(0xc0)
1c008960:	2020405e 	ll.w	$r30,$r2,8256(0x2040)
1c008964:	10232120 	addu16i.d	$r0,$r9,2248(0x8c8)
1c008968:	ff101010 	0xff101010
1c00896c:	0c0808ff 	0x0c0808ff
1c008970:	0000000c 	0x0000000c
1c008974:	00000001 	0x00000001
1c008978:	7f000000 	0x7f000000
1c00897c:	0000003f 	0x0000003f
	...
1c008988:	7f000000 	0x7f000000
1c00898c:	0000003f 	0x0000003f
1c008990:	e6000000 	0xe6000000
1c008994:	0000808a 	0x0000808a
1c008998:	00000000 	0x00000000
1c00899c:	08f8fc00 	0x08f8fc00
	...
1c0089a8:	f8fc0000 	0xf8fc0000
1c0089ac:	00000008 	0x00000008
	...
1c0089b8:	02020202 	slti	$r2,$r16,128(0x80)
1c0089bc:	02ffff02 	addi.d	$r2,$r24,-1(0xfff)
1c0089c0:	42438382 	beqz	$r28,672640(0xa4380) # 1c0acd40 <_sidata+0xa3d1c>
1c0089c4:	82828282 	0x82828282
1c0089c8:	ffff8282 	0xffff8282
1c0089cc:	82828282 	0x82828282
1c0089d0:	020383c2 	slti	$r2,$r30,224(0xe0)
1c0089d4:	00000000 	0x00000000
1c0089d8:	06060c0c 	cacop	0xc,$r0,387(0x183)
1c0089dc:	01ffff02 	0x01ffff02
1c0089e0:	00000000 	0x00000000
1c0089e4:	1c030000 	pcaddu12i	$r0,6144(0x1800)
1c0089e8:	8000c070 	0x8000c070
1c0089ec:	0f3c70c0 	0x0f3c70c0
1c0089f0:	00000003 	0x00000003
1c0089f4:	00000000 	0x00000000
1c0089f8:	30101000 	vldrepl.d	$vr0,$r0,32(0x20)
1c0089fc:	003f3f70 	0x003f3f70
1c008a00:	20204040 	ll.w	$r0,$r2,8256(0x2040)
1c008a04:	08181020 	fmadd.s	$f0,$f1,$f4,$f16
1c008a08:	0703060c 	0x0703060c
1c008a0c:	38180c0f 	stx.w	$r15,$r0,$r3
1c008a10:	20303030 	ll.w	$r16,$r1,12336(0x3030)
1c008a14:	8fe50000 	0x8fe50000
1c008a18:	00000091 	0x00000091
1c008a1c:	f0800000 	0xf0800000
1c008a20:	00000070 	0x00000070
1c008a24:	18fcc000 	pcaddi	$r0,517632(0x7e600)
1c008a28:	00000000 	0x00000000
1c008a2c:	70100800 	0x70100800
1c008a30:	0000c0e0 	0x0000c0e0
	...
1c008a3c:	05070e04 	0x05070e04
1c008a40:	84040404 	0x84040404
1c008a44:	8487fff4 	0x8487fff4
1c008a48:	84848484 	0x84848484
1c008a4c:	84848484 	0x84848484
1c008a50:	0484c584 	csrxchg	$r4,$r12,0x2131
1c008a54:	00040606 	alsl.w	$r6,$r16,$r1,0x1
	...
1c008a60:	0f3ce080 	0x0f3ce080
1c008a64:	06010003 	cacop	0x3,$r0,64(0x40)
1c008a68:	80e03018 	0x80e03018
1c008a6c:	1e3860c0 	pcaddu18i	$r0,115462(0x1c306)
1c008a70:	00000307 	0x00000307
1c008a74:	00000000 	0x00000000
1c008a78:	20000000 	ll.w	$r0,$r0,0
1c008a7c:	03040810 	lu52i.d	$r16,$r0,258(0x102)
1c008a80:	20204041 	ll.w	$r1,$r2,8256(0x2040)
1c008a84:	08181020 	fmadd.s	$f0,$f1,$f4,$f16
1c008a88:	0303060c 	lu52i.d	$r12,$r16,193(0xc1)
1c008a8c:	0c060703 	0x0c060703
1c008a90:	3038181c 	0x3038181c
1c008a94:	00103030 	add.w	$r16,$r1,$r12
1c008a98:	95b1e500 	0x95b1e500
1c008a9c:	00000000 	0x00000000
1c008aa0:	08f80400 	0x08f80400
1c008aa4:	08080808 	0x08080808
1c008aa8:	08080808 	0x08080808
1c008aac:	08080808 	0x08080808
1c008ab0:	08080808 	0x08080808
1c008ab4:	08f8fc08 	0x08f8fc08
	...
1c008ac0:	21ff0000 	sc.w	$r0,$r0,-256(0xff00)
1c008ac4:	21212121 	sc.w	$r1,$r9,8480(0x2120)
1c008ac8:	21fdff21 	sc.w	$r1,$r25,-516(0xfdfc)
1c008acc:	21212121 	sc.w	$r1,$r9,8480(0x2120)
1c008ad0:	2121fdff 	sc.w	$r31,$r15,8700(0x21fc)
1c008ad4:	00233321 	div.du	$r1,$r25,$r12
	...
1c008ae0:	043fff00 	csrxchg	$r0,$r24,0xfff
1c008ae4:	fc040404 	0xfc040404
1c008ae8:	040707fc 	csrxchg	$r28,$r31,0x1c1
1c008aec:	04c4740c 	csrrd	$r12,0x311d
1c008af0:	64448707 	bge	$r24,$r7,17540(0x4484) # 1c00cf74 <_sidata+0x3f50>
1c008af4:	06062434 	cacop	0x14,$r1,393(0x189)
1c008af8:	00000004 	0x00000004
1c008afc:	18204000 	pcaddi	$r0,66048(0x10200)
1c008b00:	00000107 	0x00000107
1c008b04:	3f000000 	0x3f000000
1c008b08:	0818103f 	fmadd.s	$f31,$f1,$f4,$f16
1c008b0c:	03000004 	lu52i.d	$r4,$r0,0
1c008b10:	180c0607 	pcaddi	$r7,24624(0x6030)
1c008b14:	30383818 	0x30383818
1c008b18:	00001010 	clo.w	$r16,$r0
1c008b1c:	00899ce6 	bstrins.d	$r6,$r7,0x9,0x27
1c008b20:	80808000 	0x80808000
1c008b24:	80808080 	0x80808080
1c008b28:	80808080 	0x80808080
1c008b2c:	88b8fce0 	0x88b8fce0
1c008b30:	80808080 	0x80808080
1c008b34:	80808080 	0x80808080
1c008b38:	c0e0c080 	0xc0e0c080
1c008b3c:	00000080 	0x00000080
1c008b40:	00000000 	0x00000000
1c008b44:	c0800000 	0xc0800000
1c008b48:	171cf8e0 	lu32i.d	$r0,-464953(0x8e7c7)
1c008b4c:	10101013 	addu16i.d	$r19,$r0,1028(0x404)
1c008b50:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008b54:	10f81010 	addu16i.d	$r16,$r0,15876(0x3e04)
	...
1c008b60:	04081000 	csrrd	$r0,0x204
1c008b64:	00010306 	0x00010306
1c008b68:	4242ffff 	beqz	$r31,-113924(0x7e42fc) # 1bfece64 <_start-0x1319c>
1c008b6c:	42424242 	beqz	$r18,672320(0xa4240) # 1c0acdac <_sidata+0xa3d88>
1c008b70:	42424242 	beqz	$r18,672320(0xa4240) # 1c0acdb0 <_sidata+0xa3d8c>
1c008b74:	00ff4242 	bstrpick.d	$r2,$r18,0x3f,0x10
	...
1c008b88:	00003f7f 	revb.d	$r31,$r27
1c008b8c:	00000000 	0x00000000
1c008b90:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c008b94:	003f7030 	0x003f7030
1c008b98:	00000000 	0x00000000
1c008b9c:	e9000000 	0xe9000000
1c008ba0:	00009099 	0x00009099
1c008ba4:	10f00800 	addu16i.d	$r0,$r0,15362(0x3c02)
1c008ba8:	f0101010 	0xf0101010
1c008bac:	00001078 	clo.w	$r24,$r3
1c008bb0:	1010f0f8 	addu16i.d	$r24,$r7,1084(0x43c)
1c008bb4:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008bb8:	f8101010 	0xf8101010
1c008bbc:	00000010 	0x00000010
1c008bc0:	00000000 	0x00000000
1c008bc4:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c008bc8:	c33e0000 	0xc33e0000
1c008bcc:	00000000 	0x00000000
1c008bd0:	8484ffff 	0x8484ffff
1c008bd4:	84848484 	0x84848484
1c008bd8:	ff848484 	0xff848484
	...
1c008be4:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c008be8:	c0c04000 	0xc0c04000
1c008bec:	00007eff 	0x00007eff
1c008bf0:	0000ffff 	0x0000ffff
1c008bf4:	c0701e01 	0xc0701e01
1c008bf8:	0d1030a0 	vbitsel.v	$vr0,$vr5,$vr12,$vr0
1c008bfc:	0000040e 	0x0000040e
1c008c00:	00000000 	0x00000000
1c008c04:	007f0000 	bstrins.w	$r0,$r0,0x1f,0x0
1c008c08:	00010000 	asrtle.d	$r0,$r0
1c008c0c:	00000000 	0x00000000
1c008c10:	08183f1f 	fmadd.s	$f31,$f24,$f15,$f16
1c008c14:	01020204 	0x01020204
1c008c18:	1c0e0703 	pcaddu12i	$r3,28728(0x7038)
1c008c1c:	00183818 	sra.w	$r24,$r0,$r14
1c008c20:	85e50000 	0x85e50000
1c008c24:	000000ac 	0x000000ac
1c008c28:	00000000 	0x00000000
1c008c2c:	80000000 	0x80000000
1c008c30:	001078e0 	add.w	$r0,$r7,$r30
1c008c34:	1c000000 	pcaddu12i	$r0,0
1c008c38:	000080e0 	0x000080e0
	...
1c008c48:	c0800000 	0xc0800000
1c008c4c:	070e3860 	0x070e3860
1c008c50:	00000001 	0x00000001
1c008c54:	0080c0e0 	bstrins.d	$r0,$r7,0x0,0x30
1c008c58:	1c0e0300 	pcaddu12i	$r0,28696(0x7018)
1c008c5c:	c0c0e070 	0xc0c0e070
1c008c60:	00000080 	0x00000080
1c008c64:	04000000 	csrrd	$r0,0x0
1c008c68:	00010302 	0x00010302
1c008c6c:	c0000000 	0xc0000000
1c008c70:	071c3860 	0x071c3860
1c008c74:	00000103 	0x00000103
1c008c78:	0080c020 	bstrins.d	$r0,$r1,0x0,0x30
1c008c7c:	03010000 	lu52i.d	$r0,$r0,64(0x40)
1c008c80:	00010103 	0x00010103
1c008c84:	00000000 	0x00000000
1c008c88:	38080000 	ldx.w	$r0,$r0,$r0
1c008c8c:	191b1e3c 	pcaddi	$r28,-468751(0x8d8f1)
1c008c90:	08081818 	0x08081818
1c008c94:	08080808 	0x08080808
1c008c98:	0f090808 	0x0f090808
1c008c9c:	00307c1e 	0x00307c1e
1c008ca0:	00000000 	0x00000000
1c008ca4:	b88fe500 	0xb88fe500
1c008ca8:	00000000 	0x00000000
1c008cac:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c008cb0:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008cb4:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008cb8:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008cbc:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008cc0:	00f0f810 	bstrpick.d	$r16,$r0,0x30,0x3e
1c008cc4:	00000000 	0x00000000
1c008cc8:	04000000 	csrrd	$r0,0x0
1c008ccc:	84c40404 	0x84c40404
1c008cd0:	84848484 	0x84848484
1c008cd4:	84848484 	0x84848484
1c008cd8:	0684c484 	0x0684c484
1c008cdc:	00000406 	0x00000406
1c008ce0:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
	...
1c008cec:	ffff0000 	0xffff0000
1c008cf0:	40404040 	beqz	$r2,16448(0x4040) # 1c00cd30 <_sidata+0x3d0c>
1c008cf4:	40404040 	beqz	$r2,16448(0x4040) # 1c00cd34 <_sidata+0x3d10>
1c008cf8:	0000ff40 	0x0000ff40
1c008cfc:	00000000 	0x00000000
1c008d00:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
	...
1c008d0c:	01030000 	fsub.d	$f0,$f0,$f0
	...
1c008d18:	00010100 	asrtle.d	$r8,$r0
1c008d1c:	30101010 	vldrepl.d	$vr16,$r0,32(0x20)
1c008d20:	000f3f70 	bytepick.d	$r16,$r27,$r15,0x6
1c008d24:	00000000 	0x00000000
1c008d28:	00be98e6 	bstrins.d	$r6,$r7,0x3e,0x26
1c008d2c:	00000000 	0x00000000
1c008d30:	f0080000 	0xf0080000
1c008d34:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008d38:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008d3c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008d40:	f0f81010 	0xf0f81010
	...
1c008d50:	ff000000 	0xff000000
1c008d54:	42424242 	beqz	$r18,672320(0xa4240) # 1c0acf94 <_sidata+0xa3f70>
1c008d58:	42424242 	beqz	$r18,672320(0xa4240) # 1c0acf98 <_sidata+0xa3f74>
1c008d5c:	42424242 	beqz	$r18,672320(0xa4240) # 1c0acf9c <_sidata+0xa3f78>
1c008d60:	ffff4242 	0xffff4242
	...
1c008d6c:	08000000 	0x08000000
1c008d70:	c0e17030 	0xc0e17030
1c008d74:	fe000000 	0xfe000000
1c008d78:	000000fe 	0x000000fe
1c008d7c:	00fefe00 	bstrpick.d	$r0,$r16,0x3e,0x3f
1c008d80:	60c08000 	blt	$r0,$r0,49280(0xc080) # 1c014e00 <_sidata+0xbddc>
1c008d84:	00081c38 	bytepick.w	$r24,$r1,$r7,0x0
1c008d88:	00000000 	0x00000000
1c008d8c:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c008d90:	13111010 	addu16i.d	$r16,$r0,-15292(0xc444)
1c008d94:	1f101010 	pcaddu18i	$r16,-491392(0x88080)
1c008d98:	1010101f 	addu16i.d	$r31,$r0,1028(0x404)
1c008d9c:	141f1f10 	lu12i.w	$r16,63736(0xf8f8)
1c008da0:	10101112 	addu16i.d	$r18,$r8,1028(0x404)
1c008da4:	10181810 	addu16i.d	$r16,$r0,1542(0x606)
1c008da8:	e7000000 	0xe7000000
1c008dac:	0000baa4 	0x0000baa4
1c008db0:	00000000 	0x00000000
1c008db4:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008db8:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008dbc:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008dc0:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008dc4:	30382020 	0x30382020
1c008dc8:	00000020 	0x00000020
1c008dcc:	00000000 	0x00000000
1c008dd0:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008dd4:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008dd8:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008ddc:	20e0e020 	ll.w	$r0,$r1,-7968(0xe0e0)
1c008de0:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008de4:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008de8:	20303020 	ll.w	$r0,$r1,12336(0x3030)
1c008dec:	00000000 	0x00000000
1c008df0:	80000000 	0x80000000
1c008df4:	1e3c70c0 	pcaddu18i	$r0,123782(0x1e386)
1c008df8:	00000406 	0x00000406
1c008dfc:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
1c008e00:	04020000 	csrrd	$r0,0x80
1c008e04:	e0701808 	0xe0701808
1c008e08:	000080c0 	0x000080c0
1c008e0c:	00000000 	0x00000000
1c008e10:	01030408 	fsub.d	$f8,$f0,$f1
1c008e14:	08000000 	0x08000000
1c008e18:	30101008 	vldrepl.d	$vr8,$r0,32(0x20)
1c008e1c:	001f3f70 	mulw.d.w	$r16,$r27,$r15
	...
1c008e28:	00030701 	0x00030701
1c008e2c:	aee50000 	0xaee50000
1c008e30:	0000009e 	0x0000009e
1c008e34:	00800000 	bstrins.d	$r0,$r0,0x0,0x0
1c008e38:	00000000 	0x00000000
1c008e3c:	04000000 	csrrd	$r0,0x0
1c008e40:	0070f818 	bstrpick.w	$r24,$r0,0x10,0x1e
	...
1c008e4c:	00000080 	0x00000080
1c008e50:	00000000 	0x00000000
1c008e54:	810f1c18 	0x810f1c18
1c008e58:	09010101 	0x09010101
1c008e5c:	01713919 	0x01713919
1c008e60:	fdff0101 	0xfdff0101
1c008e64:	01010105 	fadd.d	$f5,$f8,$f0
1c008e68:	07090101 	0x07090101
1c008e6c:	00020307 	0x00020307
1c008e70:	10000000 	addu16i.d	$r0,$r0,0
1c008e74:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008e78:	1e171311 	pcaddu18i	$r17,47256(0xb898)
1c008e7c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008e80:	93bffcd0 	0x93bffcd0
1c008e84:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008e88:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008e8c:	00101818 	add.w	$r24,$r0,$r6
1c008e90:	40000000 	beqz	$r0,0 # 1c008e90 <tfont32+0x998>
1c008e94:	20404040 	ll.w	$r0,$r2,16448(0x4040)
1c008e98:	10102020 	addu16i.d	$r0,$r1,1032(0x408)
1c008e9c:	070e0c18 	0x070e0c18
1c008ea0:	01000003 	0x01000003
1c008ea4:	06020301 	cacop	0x1,$r24,128(0x80)
1c008ea8:	383c1c0e 	fstx.d	$f14,$r0,$r7
1c008eac:	00000030 	0x00000030
1c008eb0:	8caae900 	0x8caae900
1c008eb4:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c008eb8:	10109090 	addu16i.d	$r16,$r4,1060(0x424)
1c008ebc:	10f81010 	addu16i.d	$r16,$r0,15876(0x3e04)
1c008ec0:	00000000 	0x00000000
1c008ec4:	f0800000 	0xf0800000
1c008ec8:	80e8183c 	0x80e8183c
	...
1c008ed4:	80000000 	0x80000000
1c008ed8:	00001fff 	ctz.w	$r31,$r31
1c008edc:	003fff00 	0x003fff00
1c008ee0:	50204080 	b	33562688(0x2002040) # 1e00af20 <_sidata+0x2001efc>
1c008ee4:	4043474c 	beqz	$r26,3162948(0x304344) # 1c30d228 <_sidata+0x304204>
1c008ee8:	43404040 	beqz	$r2,213056(0x34040) # 1c03cf28 <_sidata+0x33f04>
1c008eec:	70784c66 	0x70784c66
1c008ef0:	00202070 	div.w	$r16,$r3,$r8
1c008ef4:	c1c14000 	0xc1c14000
1c008ef8:	21214143 	sc.w	$r3,$r10,8512(0x2140)
1c008efc:	ff810121 	0xff810121
1c008f00:	1c00000f 	pcaddu12i	$r15,0
1c008f04:	0c02c0f0 	0x0c02c0f0
1c008f08:	0000e0f8 	0x0000e0f8
1c008f0c:	061f7cc0 	cacop	0x0,$r6,2015(0x7df)
	...
1c008f18:	18080800 	pcaddi	$r0,16448(0x4040)
1c008f1c:	070f1838 	0x070f1838
1c008f20:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c008f24:	10101113 	addu16i.d	$r19,$r8,1028(0x404)
1c008f28:	1e101011 	pcaddu18i	$r17,32896(0x8080)
1c008f2c:	18101013 	pcaddi	$r19,32896(0x8080)
1c008f30:	00001018 	clo.w	$r24,$r0
1c008f34:	00cc4240 	bstrpick.d	$r0,$r18,0xc,0x10
1c008f38:	5556fc00 	bl	87804(0x156fc) # 1c01e634 <_sidata+0x15610>
1c008f3c:	101080fc 	addu16i.d	$r28,$r7,1056(0x420)
1c008f40:	001010ff 	add.w	$r31,$r7,$r4
	...
1c008fb8:	0a0d5441 	0x0a0d5441
1c008fbc:	00000000 	0x00000000
1c008fc0:	432b5441 	beqz	$r2,469844(0x72b54) # 1c07bb14 <_sidata+0x72af0>
1c008fc4:	444f4d57 	bnez	$r10,-2338996(0x5c4f4c) # 1bdcdf10 <_start-0x2320f0>
1c008fc8:	0d313d45 	0x0d313d45
1c008fcc:	0000000a 	0x0000000a
1c008fd0:	432b5441 	beqz	$r2,469844(0x72b54) # 1c07bb24 <_sidata+0x72b00>
1c008fd4:	50414a57 	b	-111394488(0x95c4148) # 155cd11c <_start-0x6a32ee4>
1c008fd8:	6f73223d 	bgeu	$r17,$r29,-36064(0x37320) # 1c0002f8 <cpu_wait+0x24c>
1c008fdc:	65637275 	bge	$r19,$r21,90992(0x16370) # 1c01f34c <_sidata+0x16328>
1c008fe0:	38222c22 	0x38222c22
1c008fe4:	38383838 	fstx.s	$f24,$r1,$r14
1c008fe8:	22383838 	ll.d	$r24,$r1,14392(0x3838)
1c008fec:	00000a0d 	0x00000a0d
1c008ff0:	412b5441 	beqz	$r2,338772(0x52b54) # 1c05bb44 <_sidata+0x52b20>
1c008ff4:	4c434b54 	jirl	$r20,$r26,17224(0x4348)
1c008ff8:	41545344 	beqz	$r26,1135696(0x115450) # 1c11e448 <_sidata+0x115424>
1c008ffc:	3230223d 	0x3230223d
1c009000:	36353737 	0x36353737
1c009004:	35333139 	0x35333139
1c009008:	34333330 	0x34333330
1c00900c:	33333333 	xvstelm.w	$xr19,$r25,-208(0x330),0x4
1c009010:	2c223430 	vld	$vr16,$r1,-1907(0x88d)
1c009014:	33323122 	xvstelm.w	$xr2,$r9,-464(0x230),0x4
1c009018:	37363534 	0x37363534
1c00901c:	0a0d2238 	0x0a0d2238
1c009020:	00000000 	0x00000000

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	1c006de9 	pcaddu12i	$r9,879(0x36f)
80001008:	8000000c 	0x8000000c
8000100c:	80001028 	0x80001028
80001010:	80000010 	0x80000010
80001014:	80000138 	0x80000138
80001018:	80000268 	0x80000268
8000101c:	80000014 	0x80000014
80001020:	1c006de0 	pcaddu12i	$r0,879(0x36f)
80001024:	80000034 	0x80000034

80001028 <g_SystemFreq>:
80001028:	007a1200 	bstrins.w	$r0,$r16,0x1a,0x4

8000102c <temp_threshold>:
8000102c:	 	0x010a1e3c

8000102d <humi_threshold>:
8000102d:	 	0x05010a1e

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
