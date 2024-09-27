v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1060 -150 1860 250 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out
pin_out
in"
color="4 7 10"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1070 290 1870 690 {flags=graph
y1=-0.00071
y2=0.0015
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=i(vmeas)
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N 520 -10 590 -10 {
lab=#net1}
N 520 10 590 10 {
lab=VSS}
N 150 -10 220 -10 {
lab=in}
N 520 30 650 30 {
lab=out}
N 650 30 710 30 {
lab=out}
N 770 30 780 30 {
lab=pin_out}
N 780 30 780 70 {
lab=pin_out}
N 780 30 870 30 {
lab=pin_out}
N 590 -100 590 -70 {
lab=#net1}
N 590 -70 590 -10 {
lab=#net1}
C {devices/launcher.sym} -90 60 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/code.sym} -360 -10 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {double_inverter.sym} 370 10 0 0 {name=x1}
C {devices/vsource.sym} -230 -140 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} -140 -140 0 0 {name=V2 value=0 savecurrent=false}
C {devices/lab_wire.sym} -230 -170 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -140 -170 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -230 -110 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -140 -110 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 590 -160 2 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 590 10 2 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 650 30 2 0 {name=p6 sig_type=std_logic lab=out}
C {devices/res.sym} 740 30 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 780 100 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 780 130 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 870 30 2 0 {name=p7 sig_type=std_logic lab=pin_out}
C {devices/simulator_commands_shown.sym} -100 220 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.options savecurrents
vin in 0 pulse 0 1.8 5n 1n 1n 50n 100n

.control
save all
tran 100p 200n

write testbench.raw

.endc
"}
C {devices/ipin.sym} 150 -10 0 0 {name=p8 lab=in}
C {devices/ammeter.sym} 590 -130 0 0 {name=Vmeas savecurrent=true}
