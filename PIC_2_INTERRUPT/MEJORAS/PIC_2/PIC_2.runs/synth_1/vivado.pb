
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:102

00:00:112	
551.0512	
239.379Z17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/utils_1/imports/synth_1/nexys_PIC.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2`
^C:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/utils_1/imports/synth_1/nexys_PIC.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
e
Command: %s
53*	vivadotcl24
2synth_design -top nexys_PIC -part xc7a100tcsg324-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7a100tZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7a100tZ17-349h px� 
E
Loading part %s157*device2
xc7a100tcsg324-1Z21-403h px� 
[
$Part: %s does not have CEAM library.966*device2
xc7a100tcsg324-1Z21-9227h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
17748Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1428.312 ; gain = 448.777
h px� 
�
synthesizing module '%s'638*oasys2
	nexys_PIC2s
oC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/nexys_PIC.vhd2
558@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	clk_wiz_02�
~C:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.runs/synth_1/.Xil/Vivado-4700-DESKTOP-NDA5VSL/realtime/clk_wiz_0_stub.vhdl2
62
	clk_20MHz2
	clk_wiz_02s
oC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/nexys_PIC.vhd2
2018@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
	clk_wiz_02�
~C:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.runs/synth_1/.Xil/Vivado-4700-DESKTOP-NDA5VSL/realtime/clk_wiz_0_stub.vhdl2
168@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
PICtop2n
lC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/PICtop.vhd2
62
UUT2
PICtop2s
oC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/nexys_PIC.vhd2
2078@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
PICtop2p
lC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/PICtop.vhd2
348@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	RS232_top2q
oC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/RS232_top.vhd2
62
	RS232_PHY2
	RS232_top2p
lC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/PICtop.vhd2
2478@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
	RS232_top2s
oC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/RS232_top.vhd2
288@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
trx2k
iC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/trx.vhd2
62
Transmitter2
trx2s
oC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/RS232_top.vhd2
1008@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
trx2m
iC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/trx.vhd2
168@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
trx2
02
12m
iC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/trx.vhd2
168@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
rrx2k
iC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/rrx.vhd2
272

Receiver2
rrx2s
oC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/RS232_top.vhd2
1108@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
rrx2m
iC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/rrx.vhd2
358@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
rrx2
02
12m
iC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/rrx.vhd2
358@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
shiftregister2u
sC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/ShiftRegister.vhd2
52
Shift2
ShiftRegister2s
oC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/RS232_top.vhd2
1208@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
shiftregister2w
sC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/ShiftRegister.vhd2
148@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
shiftregister2
02
12w
sC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/ShiftRegister.vhd2
148@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
fifo2{
yC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.runs/synth_1/.Xil/Vivado-4700-DESKTOP-NDA5VSL/realtime/fifo_stub.vhdl2
62
Internal_memory2
fifo2s
oC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/RS232_top.vhd2
1308@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
fifo2}
yC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.runs/synth_1/.Xil/Vivado-4700-DESKTOP-NDA5VSL/realtime/fifo_stub.vhdl2
208@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	RS232_top2
02
12s
oC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/RS232_top.vhd2
288@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2	
RAM_top2o
mC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/RAM_top.vhd2
72	
RAM_PHY2	
RAM_top2p
lC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/PICtop.vhd2
2668@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2	
RAM_top2q
mC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/RAM_top.vhd2
248@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
RAM_PG2s
qC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/RAM_general.vhd2
82
RAM_general2
RAM_PG2q
mC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/RAM_top.vhd2
628@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
RAM_PG2u
qC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/RAM_general.vhd2
188@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
RAM_PG2
02
12u
qC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/RAM_general.vhd2
188@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
RAM_ES2v
tC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/RAM_especifica.vhd2
152
RAM_especifica2
RAM_ES2q
mC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/RAM_top.vhd2
728@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
RAM_ES2x
tC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/RAM_especifica.vhd2
318@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
RAM_ES2
02
12x
tC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/RAM_especifica.vhd2
318@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2	
RAM_top2
02
12q
mC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/RAM_top.vhd2
248@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
DMA2k
iC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/DMA.vhd2
212	
DMA_PHY2
DMA2p
lC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/PICtop.vhd2
2838@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
DMA2m
iC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/DMA.vhd2
548@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
DMA2
02
12m
iC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/DMA.vhd2
548@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
ROM2k
iC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/ROM.vhd2
152	
ROM_PHY2
ROM2p
lC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/PICtop.vhd2
3138@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
ROM2m
iC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/ROM.vhd2
218@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ROM2
02
12m
iC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/ROM.vhd2
218@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
ALU2k
iC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/ALU.vhd2
82	
ALU_PHY2
ALU2p
lC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/PICtop.vhd2
3188@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
ALU2m
iC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/ALU.vhd2
228@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ALU2
02
12m
iC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/ALU.vhd2
228@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
CPU2k
iC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/CPU.vhd2
92	
CPU_PHY2
CPU2p
lC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/PICtop.vhd2
3318@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
CPU2m
iC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/CPU.vhd2
338@Z8-638h px� 
�
default block is never used226*oasys2m
iC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/CPU.vhd2
898@Z8-226h px� 
�
default block is never used226*oasys2m
iC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/CPU.vhd2
1118@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
CPU2
02
12m
iC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/CPU.vhd2
338@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
PICtop2
02
12p
lC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/PICtop.vhd2
348@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	nexys_PIC2
02
12s
oC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/sources_1/imports/PIC.srcs/sources_1/new/nexys_PIC.vhd2
558@Z8-256h px� 
h
+design %s has port %s driven by constant %s3447*oasys2
	nexys_PIC2
AN[7]2
1Z8-3917h px� 
h
+design %s has port %s driven by constant %s3447*oasys2
	nexys_PIC2
AN[6]2
1Z8-3917h px� 
h
+design %s has port %s driven by constant %s3447*oasys2
	nexys_PIC2
AN[5]2
1Z8-3917h px� 
h
+design %s has port %s driven by constant %s3447*oasys2
	nexys_PIC2
AN[4]2
1Z8-3917h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
ROM_Data[11]2
CPUZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
ROM_Data[10]2
CPUZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
ROM_Data[9]2
CPUZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
ROM_Data[8]2
CPUZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
FlagC2
CPUZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
FlagN2
CPUZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
FlagE2
CPUZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
RX_Full2
DMAZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[7]2
	nexys_PICZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[6]2
	nexys_PICZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[5]2
	nexys_PICZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[4]2
	nexys_PICZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[3]2
	nexys_PICZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[2]2
	nexys_PICZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[1]2
	nexys_PICZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[0]2
	nexys_PICZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[13]2
	nexys_PICZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[12]2
	nexys_PICZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[11]2
	nexys_PICZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[10]2
	nexys_PICZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[9]2
	nexys_PICZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[8]2
	nexys_PICZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[7]2
	nexys_PICZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[6]2
	nexys_PICZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[5]2
	nexys_PICZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[4]2
	nexys_PICZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[3]2
	nexys_PICZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[2]2
	nexys_PICZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[1]2
	nexys_PICZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[0]2
	nexys_PICZ8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1565.316 ; gain = 585.781
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1565.316 ; gain = 585.781
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1565.316 ; gain = 585.781
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0352

1565.3162
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2f
bc:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.gen/sources_1/ip/fifo/fifo/fifo_in_context.xdc2!
UUT/RS232_PHY/Internal_memory	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2f
bc:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.gen/sources_1/ip/fifo/fifo/fifo_in_context.xdc2!
UUT/RS232_PHY/Internal_memory	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2u
qc:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.gen/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2
	clk_20MHz	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2u
qc:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.gen/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2
	clk_20MHz	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2`
\C:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/constrs_1/imports/new/Nexys_PIC.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2`
\C:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/constrs_1/imports/new/Nexys_PIC.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2^
\C:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.srcs/constrs_1/imports/new/Nexys_PIC.xdc2
.Xil/nexys_PIC_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1662.8792
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0162

1662.8792
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:20 ; elapsed = 00:00:20 . Memory (MB): peak = 1662.879 ; gain = 683.344
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Loading part: xc7a100tcsg324-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:20 ; elapsed = 00:00:20 . Memory (MB): peak = 1662.879 ; gain = 683.344
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 1662.879 ; gain = 683.344
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
o
3inferred FSM for state register '%s' in module '%s'802*oasys2
current_state_reg2
trxZ8-802h px� 
o
3inferred FSM for state register '%s' in module '%s'802*oasys2
current_state_reg2
rrxZ8-802h px� 
o
3inferred FSM for state register '%s' in module '%s'802*oasys2
current_state_reg2
DMAZ8-802h px� 
o
3inferred FSM for state register '%s' in module '%s'802*oasys2
current_state_reg2
CPUZ8-802h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                    idle |                               00 |                               00
h p
x
� 
y
%s
*synth2a
_                startbit |                               01 |                               01
h p
x
� 
y
%s
*synth2a
_                senddata |                               10 |                               10
h p
x
� 
y
%s
*synth2a
_                 stopbit |                               11 |                               11
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
current_state_reg2

sequential2
trxZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                    idle |                             0001 |                               00
h p
x
� 
y
%s
*synth2a
_                startbit |                             0010 |                               01
h p
x
� 
y
%s
*synth2a
_                 rcvdata |                             0100 |                               10
h p
x
� 
y
%s
*synth2a
_                 stopbit |                             1000 |                               11
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
current_state_reg2	
one-hot2
rrxZ8-3354h px� 
�
QFound Keep on FSM register '%s' in module '%s', re-encoding will not be performed4499*oasys2
current_state_reg2
DMAZ8-6159h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                    idle |                              000 |                              000
h p
x
� 
y
%s
*synth2a
_               read_fifo |                              001 |                              001
h p
x
� 
y
%s
*synth2a
_               write_ram |                              010 |                              010
h p
x
� 
y
%s
*synth2a
_          send_interrupt |                              111 |                              111
h p
x
� 
y
%s
*synth2a
_                 waiting |                              110 |                              110
h p
x
� 
y
%s
*synth2a
_        load_transmitter |                              011 |                              011
h p
x
� 
y
%s
*synth2a
_        send_transmitter |                              100 |                              100
h p
x
� 
y
%s
*synth2a
_         end_transmitter |                              101 |                              101
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                    idle |                             0000 |                             0000
h p
x
� 
y
%s
*synth2a
_                 receive |                             0001 |                             0101
h p
x
� 
y
%s
*synth2a
_               interrupt |                             0010 |                             0111
h p
x
� 
y
%s
*synth2a
_                   fetch |                             0011 |                             0001
h p
x
� 
y
%s
*synth2a
_                  decode |                             0100 |                             0011
h p
x
� 
y
%s
*synth2a
_                op_fetch |                             0101 |                             0010
h p
x
� 
y
%s
*synth2a
_                 execute |                             0110 |                             0100
h p
x
� 
y
%s
*synth2a
_              resetstate |                             0111 |                             1000
h p
x
� 
y
%s
*synth2a
_                transmit |                             1000 |                             0110
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
current_state_reg2

sequential2
CPUZ8-3354h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 1662.879 ; gain = 683.344
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input   27 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   3 Input    9 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    9 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit       Adders := 7     
h p
x
� 
F
%s
*synth2.
,	   3 Input    5 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 2     
h p
x
� 
&
%s
*synth2
+---XORs : 
h p
x
� 
H
%s
*synth20
.	   2 Input      8 Bit         XORs := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 5     
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 84    
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 13    
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   8 Input   32 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   27 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    9 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    8 Bit        Muxes := 8     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit        Muxes := 37    
h p
x
� 
F
%s
*synth2.
,	   8 Input    8 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	  24 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   9 Input    8 Bit        Muxes := 5     
h p
x
� 
F
%s
*synth2.
,	   2 Input    7 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   8 Input    7 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  24 Input    5 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   4 Input    5 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   5 Input    5 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   9 Input    5 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 12    
h p
x
� 
F
%s
*synth2.
,	   4 Input    4 Bit        Muxes := 5     
h p
x
� 
F
%s
*synth2.
,	   9 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   5 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   8 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit        Muxes := 6     
h p
x
� 
F
%s
*synth2.
,	   3 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 5     
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 16    
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 25    
h p
x
� 
F
%s
*synth2.
,	   8 Input    1 Bit        Muxes := 10    
h p
x
� 
F
%s
*synth2.
,	  25 Input    1 Bit        Muxes := 6     
h p
x
� 
F
%s
*synth2.
,	  24 Input    1 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  16 Input    1 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   9 Input    1 Bit        Muxes := 7     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
%s
*synth2Y
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
h
+design %s has port %s driven by constant %s3447*oasys2
	nexys_PIC2
AN[7]2
1Z8-3917h px� 
h
+design %s has port %s driven by constant %s3447*oasys2
	nexys_PIC2
AN[6]2
1Z8-3917h px� 
h
+design %s has port %s driven by constant %s3447*oasys2
	nexys_PIC2
AN[5]2
1Z8-3917h px� 
h
+design %s has port %s driven by constant %s3447*oasys2
	nexys_PIC2
AN[4]2
1Z8-3917h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
ROM_Data[11]2
CPUZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
ROM_Data[10]2
CPUZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
ROM_Data[9]2
CPUZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
ROM_Data[8]2
CPUZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
FlagC2
CPUZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
FlagN2
CPUZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
FlagE2
CPUZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
RX_Full2
DMAZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[7]2
	nexys_PICZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[6]2
	nexys_PICZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[5]2
	nexys_PICZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[4]2
	nexys_PICZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[3]2
	nexys_PICZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[2]2
	nexys_PICZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[1]2
	nexys_PICZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[0]2
	nexys_PICZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[13]2
	nexys_PICZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[12]2
	nexys_PICZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[11]2
	nexys_PICZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[10]2
	nexys_PICZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[9]2
	nexys_PICZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[8]2
	nexys_PICZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[7]2
	nexys_PICZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[6]2
	nexys_PICZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[5]2
	nexys_PICZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[4]2
	nexys_PICZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[3]2
	nexys_PICZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[2]2
	nexys_PICZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[1]2
	nexys_PICZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[0]2
	nexys_PICZ8-7129h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:38 ; elapsed = 00:00:39 . Memory (MB): peak = 1662.879 ; gain = 683.344
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
;
%s*synth2#
!
ROM: Preliminary Mapping Report
h px� 
X
%s*synth2@
>+------------+-------------+---------------+----------------+
h px� 
Y
%s*synth2A
?|Module Name | RTL Object  | Depth x Width | Implemented As | 
h px� 
X
%s*synth2@
>+------------+-------------+---------------+----------------+
h px� 
Y
%s*synth2A
?|ROM         | Instruction | 256x8         | LUT            | 
h px� 
Y
%s*synth2A
?+------------+-------------+---------------+----------------+

h px� 
X
%s*synth2@
>
Distributed RAM: Preliminary Mapping Report (see note below)
h px� 
�
%s*synth2}
{+------------+------------------------------------------+-----------+----------------------+-----------------------------+
h px� 
�
%s*synth2~
||Module Name | RTL Object                               | Inference | Size (Depth x Width) | Primitives                  | 
h px� 
�
%s*synth2}
{+------------+------------------------------------------+-----------+----------------------+-----------------------------+
h px� 
�
%s*synth2~
||nexys_PIC   | UUT/RAM_PHY/RAM_general/contents_ram_reg | Implied   | 256 x 8              | RAM64X1S x 8 RAM128X1S x 8  | 
h px� 
�
%s*synth2~
|+------------+------------------------------------------+-----------+----------------------+-----------------------------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:46 ; elapsed = 00:00:47 . Memory (MB): peak = 1662.879 ; gain = 683.344
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:49 ; elapsed = 00:00:50 . Memory (MB): peak = 1662.879 ; gain = 683.344
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
A
%s
*synth2)
'
Distributed RAM: Final Mapping Report
h p
x
� 
�
%s
*synth2}
{+------------+------------------------------------------+-----------+----------------------+-----------------------------+
h p
x
� 
�
%s
*synth2~
||Module Name | RTL Object                               | Inference | Size (Depth x Width) | Primitives                  | 
h p
x
� 
�
%s
*synth2}
{+------------+------------------------------------------+-----------+----------------------+-----------------------------+
h p
x
� 
�
%s
*synth2~
||nexys_PIC   | UUT/RAM_PHY/RAM_general/contents_ram_reg | Implied   | 256 x 8              | RAM64X1S x 8 RAM128X1S x 8  | 
h p
x
� 
�
%s
*synth2~
|+------------+------------------------------------------+-----------+----------------------+-----------------------------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:51 ; elapsed = 00:00:52 . Memory (MB): peak = 1662.879 ; gain = 683.344
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:57 ; elapsed = 00:00:58 . Memory (MB): peak = 1662.879 ; gain = 683.344
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:57 ; elapsed = 00:00:58 . Memory (MB): peak = 1662.879 ; gain = 683.344
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:58 ; elapsed = 00:00:59 . Memory (MB): peak = 1662.879 ; gain = 683.344
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:58 ; elapsed = 00:00:59 . Memory (MB): peak = 1662.879 ; gain = 683.344
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:58 ; elapsed = 00:00:59 . Memory (MB): peak = 1662.879 ; gain = 683.344
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:58 ; elapsed = 00:00:59 . Memory (MB): peak = 1662.879 ; gain = 683.344
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
=
%s
*synth2%
#|      |BlackBox name |Instances |
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
=
%s
*synth2%
#|1     |clk_wiz_0     |         1|
h p
x
� 
=
%s
*synth2%
#|2     |fifo          |         1|
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
:
%s*synth2"
 +------+---------------+------+
h px� 
:
%s*synth2"
 |      |Cell           |Count |
h px� 
:
%s*synth2"
 +------+---------------+------+
h px� 
:
%s*synth2"
 |1     |clk_wiz_0_bbox |     1|
h px� 
:
%s*synth2"
 |2     |fifo_bbox      |     1|
h px� 
:
%s*synth2"
 |3     |CARRY4         |   275|
h px� 
:
%s*synth2"
 |4     |LUT1           |    24|
h px� 
:
%s*synth2"
 |5     |LUT2           |   390|
h px� 
:
%s*synth2"
 |6     |LUT3           |   343|
h px� 
:
%s*synth2"
 |7     |LUT4           |   735|
h px� 
:
%s*synth2"
 |8     |LUT5           |   287|
h px� 
:
%s*synth2"
 |9     |LUT6           |   798|
h px� 
:
%s*synth2"
 |10    |MUXF7          |    80|
h px� 
:
%s*synth2"
 |11    |MUXF8          |    40|
h px� 
:
%s*synth2"
 |12    |RAM128X1S      |     8|
h px� 
:
%s*synth2"
 |13    |RAM64X1S       |     8|
h px� 
:
%s*synth2"
 |14    |FDCE           |   611|
h px� 
:
%s*synth2"
 |15    |FDPE           |     7|
h px� 
:
%s*synth2"
 |16    |FDRE           |   209|
h px� 
:
%s*synth2"
 |17    |LDC            |     1|
h px� 
:
%s*synth2"
 |18    |IBUF           |     4|
h px� 
:
%s*synth2"
 |19    |OBUF           |    27|
h px� 
:
%s*synth2"
 |20    |OBUFT          |     8|
h px� 
:
%s*synth2"
 +------+---------------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:58 ; elapsed = 00:00:59 . Memory (MB): peak = 1662.879 ; gain = 683.344
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
a
%s
*synth2I
GSynthesis finished with 0 errors, 0 critical warnings and 35 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:45 ; elapsed = 00:00:56 . Memory (MB): peak = 1662.879 ; gain = 585.781
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:58 ; elapsed = 00:00:59 . Memory (MB): peak = 1662.879 ; gain = 683.344
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0682

1662.8792
0.000Z17-268h px� 
U
-Analyzing %s Unisim elements for replacement
17*netlist2
412Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
1Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1662.8792
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 17 instances were transformed.
  LDC => LDCE: 1 instance 
  RAM128X1S => RAM128X1S (MUXF7, RAMS64E(x2)): 8 instances
  RAM64X1S => RAM64X1S (RAMS64E): 8 instances
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

93799118Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
742
692
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:01:052

00:01:072

1662.8792

1098.809Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0102

1662.8792
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2P
NC:/Users/worbb/Desktop/Electronics/LCSE/PIC_2/PIC_2.runs/synth_1/nexys_PIC.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2]
[report_utilization -file nexys_PIC_utilization_synth.rpt -pb nexys_PIC_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Mon Jan  6 19:58:52 2025Z17-206h px� 


End Record