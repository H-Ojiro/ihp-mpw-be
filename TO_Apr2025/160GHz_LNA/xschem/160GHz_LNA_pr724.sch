v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 0 50 -0 {lab=RF_INPUT}
N 300 30 300 140 {lab=GND}
N 110 -0 160 -0 {lab=#net1}
N 300 -540 300 -460 {lab=VCC}
N 160 -540 160 -460 {lab=VBB1}
N 100 -540 160 -540 {lab=VBB1}
N 160 -560 160 -540 {lab=VBB1}
N 100 -480 100 -460 {lab=GND}
N 360 -480 360 -460 {lab=GND}
N 300 -540 360 -540 {lab=VCC}
N 300 -560 300 -540 {lab=VCC}
N 160 -400 160 -0 {lab=#net1}
N 300 -60 300 -30 {lab=#net2}
N 300 -60 360 -60 {lab=#net2}
N 300 -400 300 -60 {lab=#net2}
N 440 -60 460 -60 {lab=GND}
N 600 -540 600 -460 {lab=VBB1}
N 540 -540 600 -540 {lab=VBB1}
N 600 -560 600 -540 {lab=VBB1}
N 540 -480 540 -460 {lab=GND}
N 600 -60 700 -60 {lab=#net3}
N 600 -400 600 -60 {lab=#net3}
N 740 -540 740 -460 {lab=VCC}
N 800 -480 800 -460 {lab=GND}
N 740 -540 800 -540 {lab=VCC}
N 740 -560 740 -540 {lab=VCC}
N 740 -120 740 -90 {lab=#net4}
N 520 -60 600 -60 {lab=#net3}
N 160 -0 260 0 {lab=#net1}
N 300 0 340 -0 {lab=GND}
N 740 -60 780 -60 {lab=GND}
N 740 -30 740 140 {lab=GND}
N 740 -120 800 -120 {lab=#net4}
N 880 -120 900 -120 {lab=GND}
N 960 -120 1040 -120 {lab=#net5}
N 740 -400 740 -120 {lab=#net4}
N 440 -60 440 140 {lab=GND}
N 420 -60 440 -60 {lab=GND}
N 880 -120 880 140 {lab=GND}
N 860 -120 880 -120 {lab=GND}
N 1040 -540 1040 -460 {lab=VBB1}
N 980 -540 1040 -540 {lab=VBB1}
N 1040 -560 1040 -540 {lab=VBB1}
N 980 -480 980 -460 {lab=GND}
N 1180 -540 1180 -460 {lab=VCC}
N 1240 -480 1240 -460 {lab=GND}
N 1180 -540 1240 -540 {lab=VCC}
N 1180 -560 1180 -540 {lab=VCC}
N 1040 -400 1040 -120 {lab=#net5}
N 1180 -120 1220 -120 {lab=GND}
N 1180 -90 1180 140 {lab=GND}
N 1040 -120 1140 -120 {lab=#net5}
N 1480 -540 1480 -460 {lab=VBB2}
N 1420 -540 1480 -540 {lab=VBB2}
N 1480 -560 1480 -540 {lab=VBB2}
N 1420 -480 1420 -460 {lab=GND}
N 1620 -540 1620 -460 {lab=VCC}
N 1680 -480 1680 -460 {lab=GND}
N 1620 -540 1680 -540 {lab=VCC}
N 1620 -560 1620 -540 {lab=VCC}
N 1180 -180 1180 -150 {lab=#net6}
N 1620 -180 1660 -180 {lab=GND}
N 1620 -150 1620 140 {lab=GND}
N 1320 -180 1340 -180 {lab=GND}
N 1320 -180 1320 140 {lab=GND}
N 1300 -180 1320 -180 {lab=GND}
N 1180 -180 1240 -180 {lab=#net6}
N 1180 -400 1180 -180 {lab=#net6}
N 1760 -240 1780 -240 {lab=GND}
N 1760 -240 1760 140 {lab=GND}
N 1740 -240 1760 -240 {lab=GND}
N 1840 -240 1900 -240 {lab=RF_OUTPUT}
N 1480 -180 1580 -180 {lab=#net7}
N 1480 -400 1480 -180 {lab=#net7}
N 1400 -180 1480 -180 {lab=#net7}
N 1620 -240 1620 -210 {lab=#net8}
N 1620 -240 1680 -240 {lab=#net8}
N 1620 -400 1620 -240 {lab=#net8}
C {ipin.sym} 0 0 0 0 {name=p1 lab=RF_INPUT
}
C {sg13g2_pr/cap_rfcmim.sym} 80 0 3 0 {name=C1
model=cap_rfcmim
lvs_model=rfcmim
w=10.0e-6
l=15.0e-6
wfeed=6.0e-6
spiceprefix=X
lvs_format="@name @@c0 @@c1 @lvs_model w=@w l=@l wfeed=@wfeed"}
C {sg13g2_pr/npn13G2.sym} 280 0 0 0 {name=Q1
model=npn13G2
Nx=4
spiceprefix=X
lvs_format="@name @@C @@B @@E @model a=expr( @le * @we ) p=expr( ( @le + @we ) * 2 ) m=@Nx"
le=900e-9
we=70.0n}
C {local_gnd.sym} 300 140 0 0 {name=l1 lab=GND}
C {iopin.sym} -40 -260 0 0 {name=p2 lab=GND}
C {sg13g2_pr/rsil.sym} 300 -430 0 0 {name=Rc1
w=7.5e-6
l=5.0e-6
model=rsil
spiceprefix=X
b=0
m=1
lvs_format="@name @pinlist expr( 9.0e-6 / @w + 7.0 * ( (@b + 1) * @l + ( 1.081*( @w + 1.0e-8 ) + 0.18e-6 ) * @b ) / ( @w + 1.0e-8 ) / @m ) @model w=@w l=@l m=@m b=@b \\$SUB=GND"
}
C {local_vdd.sym} 160 -560 0 0 {name=l2 lab=VBB1}
C {iopin.sym} -40 -300 0 0 {name=p3 lab=VCC
}
C {local_vdd.sym} 300 -560 0 0 {name=l3 lab=VCC}
C {sg13g2_pr/rhigh.sym} 160 -430 0 0 {name=Rb1
w=1.9e-6
l=6.0e-6
model=rhigh
spiceprefix=X
b=0
m=1
lvs_format="@name @pinlist expr(1.6e-4 / @w + 1360.0 * ( (@b + 1) * @l + ( 1.081 * ( @w - 0.04e-6 ) + 0.18e-6 ) * @b ) / ( @w - 0.04e-6 ) / @m ) @model w=@w l=@l m=@m b=@b \\$SUB=GND"
}
C {iopin.sym} -40 -340 0 0 {name=p4 lab=VBB1
}
C {local_gnd.sym} 340 0 0 0 {name=l4 lab=GND}
C {sg13g2_pr/cap_cmim.sym} 100 -510 0 0 {name=CDecap1
model=cap_cmim
w=20.0e-6
l=25.0e-6
m=2
spiceprefix=X
lvs_format="@name @pinlist @model w=@w l=@l m=@m"}
C {local_gnd.sym} 100 -460 0 0 {name=l5 lab=GND}
C {sg13g2_pr/cap_cmim.sym} 360 -510 0 0 {name=CDecap2
model=cap_cmim
w=20.0e-6
l=25.0e-6
m=2
spiceprefix=X
lvs_format="@name @pinlist @model w=@w l=@l m=@m"}
C {local_gnd.sym} 360 -460 0 0 {name=l6 lab=GND}
C {sg13g2_pr/cap_rfcmim.sym} 390 -60 3 0 {name=C2
model=cap_rfcmim
lvs_model=rfcmim
w=32.0e-6
l=3.72e-6
wfeed=3.0e-6
spiceprefix=X
lvs_format="@name @@c0 @@c1 @lvs_model w=@w l=@l wfeed=@wfeed"}
C {local_gnd.sym} 80 30 0 1 {name=l7 lab=GND}
C {local_gnd.sym} 390 -30 0 1 {name=l8 lab=GND}
C {sg13g2_pr/cap_rfcmim.sym} 490 -60 3 0 {name=C3
model=cap_rfcmim
lvs_model=rfcmim
w=5.2e-6
l=2.4e-6
wfeed=3.0e-6
spiceprefix=X
lvs_format="@name @@c0 @@c1 @lvs_model w=@w l=@l wfeed=@wfeed"}
C {local_gnd.sym} 490 -30 0 1 {name=l9 lab=GND}
C {local_vdd.sym} 600 -560 0 0 {name=l10 lab=VBB1}
C {sg13g2_pr/rhigh.sym} 600 -430 0 0 {name=Rb2
w=1.9e-6
l=5.0e-6
model=rhigh
spiceprefix=X
b=0
m=1
lvs_format="@name @pinlist expr(1.6e-4 / @w + 1360.0 * ( (@b + 1) * @l + ( 1.081 * ( @w - 0.04e-6 ) + 0.18e-6 ) * @b ) / ( @w - 0.04e-6 ) / @m ) @model w=@w l=@l m=@m b=@b \\$SUB=GND"
}
C {sg13g2_pr/cap_cmim.sym} 540 -510 0 0 {name=CDecap3
model=cap_cmim
w=20.0e-6
l=25.0e-6
m=2
spiceprefix=X
lvs_format="@name @pinlist @model w=@w l=@l m=@m"}
C {local_gnd.sym} 540 -460 0 0 {name=l11 lab=GND}
C {sg13g2_pr/npn13G2.sym} 720 -60 0 0 {name=Q2
model=npn13G2
Nx=4
spiceprefix=X
lvs_format="@name @@C @@B @@E @model a=expr( @le * @we ) p=expr( ( @le + @we ) * 2 ) m=@Nx"
le=900e-9
we=70.0n}
C {sg13g2_pr/rsil.sym} 740 -430 0 0 {name=Rc2
w=7.5e-6
l=5.0e-6
model=rsil
spiceprefix=X
b=0
m=1
lvs_format="@name @pinlist expr( 9.0e-6 / @w + 7.0 * ( (@b + 1) * @l + ( 1.081*( @w + 1.0e-8 ) + 0.18e-6 ) * @b ) / ( @w + 1.0e-8 ) / @m ) @model w=@w l=@l m=@m b=@b \\$SUB=GND"
}
C {local_vdd.sym} 740 -560 0 0 {name=l12 lab=VCC}
C {sg13g2_pr/cap_cmim.sym} 800 -510 0 0 {name=CDecap4
model=cap_cmim
w=20.0e-6
l=25.0e-6
m=2
spiceprefix=X
lvs_format="@name @pinlist @model w=@w l=@l m=@m"}
C {local_gnd.sym} 800 -460 0 0 {name=l13 lab=GND}
C {local_gnd.sym} 780 -60 0 0 {name=l14 lab=GND}
C {local_gnd.sym} 740 140 0 0 {name=l15 lab=GND}
C {sg13g2_pr/cap_rfcmim.sym} 830 -120 3 0 {name=C4
model=cap_rfcmim
lvs_model=rfcmim
w=32.0e-6
l=3.72e-6
wfeed=3.0e-6
spiceprefix=X
lvs_format="@name @@c0 @@c1 @lvs_model w=@w l=@l wfeed=@wfeed"}
C {local_gnd.sym} 830 -90 0 1 {name=l16 lab=GND}
C {sg13g2_pr/cap_rfcmim.sym} 930 -120 3 0 {name=C5
model=cap_rfcmim
lvs_model=rfcmim
w=7.6e-6
l=2.5e-6
wfeed=3.0e-6
spiceprefix=X
lvs_format="@name @@c0 @@c1 @lvs_model w=@w l=@l wfeed=@wfeed"}
C {local_gnd.sym} 930 -90 0 1 {name=l17 lab=GND}
C {local_gnd.sym} 440 140 0 0 {name=l18 lab=GND}
C {local_gnd.sym} 880 140 0 0 {name=l19 lab=GND}
C {local_vdd.sym} 1040 -560 0 0 {name=l20 lab=VBB1}
C {sg13g2_pr/rhigh.sym} 1040 -430 0 0 {name=Rb3
w=1.9e-6
l=6.0e-6
model=rhigh
spiceprefix=X
b=0
m=1
lvs_format="@name @pinlist expr(1.6e-4 / @w + 1360.0 * ( (@b + 1) * @l + ( 1.081 * ( @w - 0.04e-6 ) + 0.18e-6 ) * @b ) / ( @w - 0.04e-6 ) / @m ) @model w=@w l=@l m=@m b=@b \\$SUB=GND"
}
C {sg13g2_pr/cap_cmim.sym} 980 -510 0 0 {name=CDecap5
model=cap_cmim
w=20.0e-6
l=25.0e-6
m=2
spiceprefix=X
lvs_format="@name @pinlist @model w=@w l=@l m=@m"}
C {local_gnd.sym} 980 -460 0 0 {name=l21 lab=GND}
C {sg13g2_pr/rsil.sym} 1180 -430 0 0 {name=Rc3
w=7.5e-6
l=5.0e-6
model=rsil
spiceprefix=X
b=0
m=1
lvs_format="@name @pinlist expr( 9.0e-6 / @w + 7.0 * ( (@b + 1) * @l + ( 1.081*( @w + 1.0e-8 ) + 0.18e-6 ) * @b ) / ( @w + 1.0e-8 ) / @m ) @model w=@w l=@l m=@m b=@b \\$SUB=GND"
}
C {local_vdd.sym} 1180 -560 0 0 {name=l22 lab=VCC}
C {sg13g2_pr/cap_cmim.sym} 1240 -510 0 0 {name=CDecap6
model=cap_cmim
w=20.0e-6
l=25.0e-6
m=2
spiceprefix=X
lvs_format="@name @pinlist @model w=@w l=@l m=@m"}
C {local_gnd.sym} 1240 -460 0 0 {name=l23 lab=GND}
C {sg13g2_pr/npn13G2.sym} 1160 -120 0 0 {name=Q3
model=npn13G2
Nx=2
spiceprefix=X
lvs_format="@name @@C @@B @@E @model a=expr( @le * @we ) p=expr( ( @le + @we ) * 2 ) m=@Nx"
le=900e-9
we=70.0n}
C {local_gnd.sym} 1220 -120 0 0 {name=l24 lab=GND}
C {local_gnd.sym} 1180 140 0 0 {name=l25 lab=GND}
C {local_vdd.sym} 1480 -560 0 0 {name=l26 lab=VBB2}
C {sg13g2_pr/rhigh.sym} 1480 -430 0 0 {name=Rb4
w=2.0e-6
l=6.0e-6
model=rhigh
spiceprefix=X
b=0
m=1
lvs_format="@name @pinlist expr(1.6e-4 / @w + 1360.0 * ( (@b + 1) * @l + ( 1.081 * ( @w - 0.04e-6 ) + 0.18e-6 ) * @b ) / ( @w - 0.04e-6 ) / @m ) @model w=@w l=@l m=@m b=@b \\$SUB=GND"
}
C {sg13g2_pr/cap_cmim.sym} 1420 -510 0 0 {name=CDecap7
model=cap_cmim
w=20.0e-6
l=25.0e-6
m=4
spiceprefix=X
lvs_format="@name @pinlist @model w=@w l=@l m=@m"}
C {local_gnd.sym} 1420 -460 0 0 {name=l27 lab=GND}
C {sg13g2_pr/rsil.sym} 1620 -430 0 0 {name=Rc4
w=7.5e-6
l=5.5e-6
model=rsil
spiceprefix=X
b=0
m=1
lvs_format="@name @pinlist expr( 9.0e-6 / @w + 7.0 * ( (@b + 1) * @l + ( 1.081*( @w + 1.0e-8 ) + 0.18e-6 ) * @b ) / ( @w + 1.0e-8 ) / @m ) @model w=@w l=@l m=@m b=@b \\$SUB=GND"
}
C {local_vdd.sym} 1620 -560 0 0 {name=l28 lab=VCC}
C {sg13g2_pr/cap_cmim.sym} 1680 -510 0 0 {name=CDecap8
model=cap_cmim
w=20.0e-6
l=25.0e-6
m=2
spiceprefix=X
lvs_format="@name @pinlist @model w=@w l=@l m=@m"}
C {local_gnd.sym} 1680 -460 0 0 {name=l29 lab=GND}
C {sg13g2_pr/npn13G2.sym} 1600 -180 0 0 {name=Q4
model=npn13G2
Nx=2
spiceprefix=X
lvs_format="@name @@C @@B @@E @model a=expr( @le * @we ) p=expr( ( @le + @we ) * 2 ) m=@Nx"
le=900e-9
we=70.0n}
C {local_gnd.sym} 1660 -180 0 0 {name=l30 lab=GND}
C {local_gnd.sym} 1620 140 0 0 {name=l31 lab=GND}
C {sg13g2_pr/cap_rfcmim.sym} 1270 -180 3 0 {name=C6
model=cap_rfcmim
lvs_model=rfcmim
w=32.0e-6
l=12.5e-6
wfeed=3.0e-6
spiceprefix=X
lvs_format="@name @@c0 @@c1 @lvs_model w=@w l=@l wfeed=@wfeed"}
C {sg13g2_pr/cap_rfcmim.sym} 1370 -180 3 0 {name=C7
model=cap_rfcmim
lvs_model=rfcmim
w=5.1e-6
l=2.4e-6
wfeed=3.0e-6
spiceprefix=X
lvs_format="@name @@c0 @@c1 @lvs_model w=@w l=@l wfeed=@wfeed"}
C {local_gnd.sym} 1320 140 0 0 {name=l32 lab=GND}
C {sg13g2_pr/cap_rfcmim.sym} 1710 -240 3 0 {name=C8
model=cap_rfcmim
lvs_model=rfcmim
w=32.0e-6
l=6.2e-6
wfeed=3.0e-6
spiceprefix=X
lvs_format="@name @@c0 @@c1 @lvs_model w=@w l=@l wfeed=@wfeed"}
C {sg13g2_pr/cap_rfcmim.sym} 1810 -240 3 0 {name=C9
model=cap_rfcmim
lvs_model=rfcmim
w=3.2e-6
l=2.4e-6
wfeed=3.0e-6
spiceprefix=X
lvs_format="@name @@c0 @@c1 @lvs_model w=@w l=@l wfeed=@wfeed"}
C {local_gnd.sym} 1760 140 0 0 {name=l33 lab=GND}
C {opin.sym} 1900 -240 0 0 {name=p5 lab=RF_OUTPUT}
C {iopin.sym} -40 -380 0 0 {name=p6 lab=VBB2
}
C {local_gnd.sym} 1710 -210 0 0 {name=l34 lab=GND}
C {local_gnd.sym} 1810 -210 0 0 {name=l35 lab=GND}
C {local_gnd.sym} 1370 -150 0 0 {name=l36 lab=GND}
C {local_gnd.sym} 1270 -150 0 0 {name=l37 lab=GND}
C {title.sym} 160 340 0 0 {name=T1 author="H. Ojiro"}
