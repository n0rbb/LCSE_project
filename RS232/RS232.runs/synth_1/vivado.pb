
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:102

00:00:102	
551.9102	
238.539Z17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/worbb/Desktop/Electronics/LCSE/RS232/RS232.srcs/utils_1/imports/synth_1/nexys_RS232.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2b
`C:/Users/worbb/Desktop/Electronics/LCSE/RS232/RS232.srcs/utils_1/imports/synth_1/nexys_RS232.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
g
Command: %s
53*	vivadotcl26
4synth_design -top nexys_RS232 -part xc7a100tcsg324-1Z4-113h px� 
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
12380Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 1428.922 ; gain = 447.352
h px� 
�
synthesizing module '%s'638*oasys2
nexys_RS2322K
GC:/Users/worbb/Downloads/Prueba placa/Prueba placa/fifo/Nexys_RS232.vhd2
558@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	clk_wiz_02�
~C:/Users/worbb/Desktop/Electronics/LCSE/RS232/RS232.runs/synth_1/.Xil/Vivado-5976-DESKTOP-NDA5VSL/realtime/clk_wiz_0_stub.vhdl2
62
	clk_20MHz2
	clk_wiz_02K
GC:/Users/worbb/Downloads/Prueba placa/Prueba placa/fifo/Nexys_RS232.vhd2
1618@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
	clk_wiz_02�
~C:/Users/worbb/Desktop/Electronics/LCSE/RS232/RS232.runs/synth_1/.Xil/Vivado-5976-DESKTOP-NDA5VSL/realtime/clk_wiz_0_stub.vhdl2
168@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

RS232top2F
DC:/Users/worbb/Downloads/Prueba placa/Prueba placa/fifo/RS232top.vhd2
62
UUT2

RS232top2K
GC:/Users/worbb/Downloads/Prueba placa/Prueba placa/fifo/Nexys_RS232.vhd2
1678@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

RS232top2H
DC:/Users/worbb/Downloads/Prueba placa/Prueba placa/fifo/RS232top.vhd2
288@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
trx2Y
WC:/Users/worbb/Downloads/Prueba placa/Prueba placa/fifo/fifo.srcs/sources_1/new/trx.vhd2
62
Transmitter2
trx2H
DC:/Users/worbb/Downloads/Prueba placa/Prueba placa/fifo/RS232top.vhd2
988@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
trx2[
WC:/Users/worbb/Downloads/Prueba placa/Prueba placa/fifo/fifo.srcs/sources_1/new/trx.vhd2
168@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
trx2
02
12[
WC:/Users/worbb/Downloads/Prueba placa/Prueba placa/fifo/fifo.srcs/sources_1/new/trx.vhd2
168@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
rrx2Y
WC:/Users/worbb/Downloads/Prueba placa/Prueba placa/fifo/fifo.srcs/sources_1/new/rrx.vhd2
272

Receiver2
rrx2H
DC:/Users/worbb/Downloads/Prueba placa/Prueba placa/fifo/RS232top.vhd2
1088@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
rrx2[
WC:/Users/worbb/Downloads/Prueba placa/Prueba placa/fifo/fifo.srcs/sources_1/new/rrx.vhd2
358@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
rrx2
02
12[
WC:/Users/worbb/Downloads/Prueba placa/Prueba placa/fifo/fifo.srcs/sources_1/new/rrx.vhd2
358@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
shiftregister2c
aC:/Users/worbb/Downloads/Prueba placa/Prueba placa/fifo/fifo.srcs/sources_1/new/shiftregister.vhd2
52
Shift2
ShiftRegister2H
DC:/Users/worbb/Downloads/Prueba placa/Prueba placa/fifo/RS232top.vhd2
1188@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
shiftregister2e
aC:/Users/worbb/Downloads/Prueba placa/Prueba placa/fifo/fifo.srcs/sources_1/new/shiftregister.vhd2
148@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
shiftregister2
02
12e
aC:/Users/worbb/Downloads/Prueba placa/Prueba placa/fifo/fifo.srcs/sources_1/new/shiftregister.vhd2
148@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
fifo2{
yC:/Users/worbb/Desktop/Electronics/LCSE/RS232/RS232.runs/synth_1/.Xil/Vivado-5976-DESKTOP-NDA5VSL/realtime/fifo_stub.vhdl2
62
Internal_memory2
fifo2H
DC:/Users/worbb/Downloads/Prueba placa/Prueba placa/fifo/RS232top.vhd2
1288@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
fifo2}
yC:/Users/worbb/Desktop/Electronics/LCSE/RS232/RS232.runs/synth_1/.Xil/Vivado-5976-DESKTOP-NDA5VSL/realtime/fifo_stub.vhdl2
208@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

RS232top2
02
12H
DC:/Users/worbb/Downloads/Prueba placa/Prueba placa/fifo/RS232top.vhd2
288@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
nexys_RS2322
02
12K
GC:/Users/worbb/Downloads/Prueba placa/Prueba placa/fifo/Nexys_RS232.vhd2
558@Z8-256h px� 
g
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
CA2
1Z8-3917h px� 
g
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
CB2
1Z8-3917h px� 
g
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
CC2
1Z8-3917h px� 
g
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
CD2
1Z8-3917h px� 
g
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
CE2
1Z8-3917h px� 
g
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
CF2
1Z8-3917h px� 
g
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
CG2
1Z8-3917h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
AN[7]2
0Z8-3917h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
AN[6]2
0Z8-3917h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
AN[5]2
0Z8-3917h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
AN[4]2
0Z8-3917h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
AN[3]2
0Z8-3917h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
AN[2]2
0Z8-3917h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
AN[1]2
0Z8-3917h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
AN[0]2
0Z8-3917h px� 
k
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
LED[9]2
0Z8-3917h px� 
k
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
LED[8]2
0Z8-3917h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[14]2
nexys_RS232Z8-7129h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[13]2
nexys_RS232Z8-7129h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[11]2
nexys_RS232Z8-7129h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[10]2
nexys_RS232Z8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[9]2
nexys_RS232Z8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[8]2
nexys_RS232Z8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1544.945 ; gain = 563.375
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 1544.945 ; gain = 563.375
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 1544.945 ; gain = 563.375
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
00:00:00.0032

1544.9452
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
848*designutils2u
qc:/Users/worbb/Desktop/Electronics/LCSE/RS232/RS232.gen/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2
	clk_20MHz	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2u
qc:/Users/worbb/Desktop/Electronics/LCSE/RS232/RS232.gen/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2
	clk_20MHz	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2f
bc:/Users/worbb/Desktop/Electronics/LCSE/RS232/RS232.gen/sources_1/ip/fifo/fifo/fifo_in_context.xdc2
UUT/Internal_memory	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2f
bc:/Users/worbb/Desktop/Electronics/LCSE/RS232/RS232.gen/sources_1/ip/fifo/fifo/fifo_in_context.xdc2
UUT/Internal_memory	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2K
GC:/Users/worbb/Downloads/Prueba placa/Prueba placa/fifo/Nexys_RS232.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2K
GC:/Users/worbb/Downloads/Prueba placa/Prueba placa/fifo/Nexys_RS232.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2I
GC:/Users/worbb/Downloads/Prueba placa/Prueba placa/fifo/Nexys_RS232.xdc2
.Xil/nexys_RS232_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1556.1952
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
00:00:00.0042

1556.1952
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
Finished Constraint Validation : Time (s): cpu = 00:00:21 ; elapsed = 00:00:21 . Memory (MB): peak = 1556.195 ; gain = 574.625
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:21 ; elapsed = 00:00:21 . Memory (MB): peak = 1556.195 ; gain = 574.625
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:21 ; elapsed = 00:00:21 . Memory (MB): peak = 1556.195 ; gain = 574.625
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
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1556.195 ; gain = 574.625
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
,	   2 Input   27 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit       Adders := 3     
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
.	               32 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 5     
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
.	                1 Bit    Registers := 3     
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
,	   2 Input   27 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    8 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 8     
h p
x
� 
F
%s
*synth2.
,	   4 Input    4 Bit        Muxes := 3     
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
,	   2 Input    2 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 6     
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
g
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
CA2
1Z8-3917h px� 
g
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
CB2
1Z8-3917h px� 
g
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
CC2
1Z8-3917h px� 
g
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
CD2
1Z8-3917h px� 
g
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
CE2
1Z8-3917h px� 
g
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
CF2
1Z8-3917h px� 
g
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
CG2
1Z8-3917h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
AN[7]2
0Z8-3917h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
AN[6]2
0Z8-3917h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
AN[5]2
0Z8-3917h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
AN[4]2
0Z8-3917h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
AN[3]2
0Z8-3917h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
AN[2]2
0Z8-3917h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
AN[1]2
0Z8-3917h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
AN[0]2
0Z8-3917h px� 
k
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
LED[9]2
0Z8-3917h px� 
k
+design %s has port %s driven by constant %s3447*oasys2
nexys_RS2322
LED[8]2
0Z8-3917h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[14]2
nexys_RS232Z8-7129h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[13]2
nexys_RS232Z8-7129h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[11]2
nexys_RS232Z8-7129h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[10]2
nexys_RS232Z8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[9]2
nexys_RS232Z8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[8]2
nexys_RS232Z8-7129h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:24 ; elapsed = 00:00:25 . Memory (MB): peak = 1556.195 ; gain = 574.625
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:32 ; elapsed = 00:00:32 . Memory (MB): peak = 1556.195 ; gain = 574.625
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
}Finished Timing Optimization : Time (s): cpu = 00:00:32 ; elapsed = 00:00:33 . Memory (MB): peak = 1556.195 ; gain = 574.625
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
|Finished Technology Mapping : Time (s): cpu = 00:00:32 ; elapsed = 00:00:33 . Memory (MB): peak = 1556.195 ; gain = 574.625
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
vFinished IO Insertion : Time (s): cpu = 00:00:38 ; elapsed = 00:00:39 . Memory (MB): peak = 1556.195 ; gain = 574.625
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:38 ; elapsed = 00:00:39 . Memory (MB): peak = 1556.195 ; gain = 574.625
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:38 ; elapsed = 00:00:39 . Memory (MB): peak = 1556.195 ; gain = 574.625
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:38 ; elapsed = 00:00:39 . Memory (MB): peak = 1556.195 ; gain = 574.625
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:38 ; elapsed = 00:00:39 . Memory (MB): peak = 1556.195 ; gain = 574.625
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:38 ; elapsed = 00:00:39 . Memory (MB): peak = 1556.195 ; gain = 574.625
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
 |3     |CARRY4         |     7|
h px� 
:
%s*synth2"
 |4     |LUT1           |     1|
h px� 
:
%s*synth2"
 |5     |LUT2           |    34|
h px� 
:
%s*synth2"
 |6     |LUT3           |    14|
h px� 
:
%s*synth2"
 |7     |LUT4           |    13|
h px� 
:
%s*synth2"
 |8     |LUT5           |    17|
h px� 
:
%s*synth2"
 |9     |LUT6           |    29|
h px� 
:
%s*synth2"
 |10    |FDCE           |    80|
h px� 
:
%s*synth2"
 |11    |FDPE           |     3|
h px� 
:
%s*synth2"
 |12    |FDRE           |     1|
h px� 
:
%s*synth2"
 |13    |IBUF           |    13|
h px� 
:
%s*synth2"
 |14    |OBUF           |    33|
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:38 ; elapsed = 00:00:39 . Memory (MB): peak = 1556.195 ; gain = 574.625
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
GSynthesis finished with 0 errors, 0 critical warnings and 24 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:26 ; elapsed = 00:00:36 . Memory (MB): peak = 1556.195 ; gain = 563.375
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:39 ; elapsed = 00:00:39 . Memory (MB): peak = 1556.195 ; gain = 574.625
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
00:00:00.0032

1556.1952
0.000Z17-268h px� 
S
-Analyzing %s Unisim elements for replacement
17*netlist2
7Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
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

00:00:002

00:00:002

1556.1952
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

7082d7acZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
442
472
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

00:00:452

00:00:472

1556.1952	
991.395Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0022

1556.1952
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2R
PC:/Users/worbb/Desktop/Electronics/LCSE/RS232/RS232.runs/synth_1/nexys_RS232.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2a
_report_utilization -file nexys_RS232_utilization_synth.rpt -pb nexys_RS232_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Mon Oct 14 23:30:51 2024Z17-206h px� 


End Record