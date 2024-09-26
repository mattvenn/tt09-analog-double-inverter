v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 60 -60 60 50 {
lab=input}
N 100 -30 100 20 {
lab=inverted}
N 100 -120 100 -90 {
lab=VDD}
N 100 80 100 110 {
lab=VSS}
N 100 50 170 50 {
lab=VSS}
N 170 50 170 110 {
lab=VSS}
N 100 110 170 110 {
lab=VSS}
N 100 -60 170 -60 {
lab=VDD}
N 170 -120 170 -60 {
lab=VDD}
N 100 -120 170 -120 {
lab=VDD}
N 20 -10 60 -10 {
lab=input}
N 220 -60 220 50 {
lab=inverted}
N 260 -30 260 20 {
lab=output}
N 260 -120 260 -90 {
lab=VDD}
N 260 80 260 110 {
lab=VSS}
N 260 50 330 50 {
lab=VSS}
N 330 50 330 110 {
lab=VSS}
N 260 110 330 110 {
lab=VSS}
N 260 -60 330 -60 {
lab=VDD}
N 330 -120 330 -60 {
lab=VDD}
N 260 -120 330 -120 {
lab=VDD}
N 100 -10 220 -10 {
lab=inverted}
N 260 -10 400 -10 {
lab=output}
C {devices/iopin.sym} -140 -60 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} -140 -30 0 0 {name=p2 lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 80 -60 0 0 {name=M1
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 80 50 0 0 {name=M2
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 100 -120 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 100 110 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 240 -60 0 0 {name=M3
L=0.15
W=20
nf=20
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 240 50 0 0 {name=M4
L=0.15
W=20
nf=20 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 260 -120 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 260 110 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 20 -10 0 0 {name=p9 lab=input
}
C {devices/opin.sym} 400 -10 0 0 {name=p5 lab=output

}
C {devices/lab_wire.sym} 220 -10 0 0 {name=p8 sig_type=std_logic lab=inverted}
