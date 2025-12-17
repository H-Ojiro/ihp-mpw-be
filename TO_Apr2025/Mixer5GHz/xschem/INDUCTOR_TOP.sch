v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {inductor2.sym} 840 -540 0 0 {name=L21
m=1
value=1n
footprint=1206
device=inductor2
spiceprefix=X
w=10u
s=10u
d=222u
nr_r=2}
C {title.sym} 280 -90 0 0 {name=T1 author="H. Ojiro"}
C {inductor2.sym} 840 -420 0 0 {name=L22
m=1
value=1n
footprint=1206
device=inductor2
spiceprefix=X
w=5u
s=10u
d=222u
nr_r=2}
C {inductor2.sym} 840 -310 0 0 {name=L23
m=1
value=1n
footprint=1206
device=inductor2
spiceprefix=X
w=10u
s=5u
d=222u
nr_r=2}
C {inductor2.sym} 840 -190 0 0 {name=L24
m=1
value=1n
footprint=1206
device=inductor2
spiceprefix=X
w=5u
s=5u
d=222u
nr_r=2}
C {inductor2.sym} 620 -540 0 0 {name=L31
m=1
value=1n
footprint=1206
device=inductor2
spiceprefix=X
w=10u
s=10u
d=222u
nr_r=3}
C {inductor2.sym} 620 -420 0 0 {name=L32
m=1
value=1n
footprint=1206
device=inductor2
spiceprefix=X
w=5u
s=10u
d=222u
nr_r=3}
C {inductor2.sym} 620 -310 0 0 {name=L33
m=1
value=1n
footprint=1206
device=inductor2
spiceprefix=X
w=10u
s=5u
d=222u
nr_r=3}
C {inductor2.sym} 620 -190 0 0 {name=L34
m=1
value=1n
footprint=1206
device=inductor2
spiceprefix=X
w=5u
s=5u
d=222u
nr_r=3}
C {inductor2.sym} 400 -540 0 0 {name=L41
m=1
value=1n
footprint=1206
device=inductor2
spiceprefix=X
w=10u
s=10u
d=222u
nr_r=4}
C {inductor2.sym} 400 -420 0 0 {name=L42
m=1
value=1n
footprint=1206
device=inductor2
spiceprefix=X
w=5u
s=10u
d=222u
nr_r=4}
C {inductor2.sym} 400 -310 0 0 {name=L43
m=1
value=1n
footprint=1206
device=inductor2
spiceprefix=X
w=10u
s=5u
d=222u
nr_r=4}
C {inductor2.sym} 400 -190 0 0 {name=L44
m=1
value=1n
footprint=1206
device=inductor2
spiceprefix=X
w=5u
s=5u
d=222u
a=expr(8 * 0.414 * @nr_r * (@d * @w + @nr_r * @w * @w + @w * @s * (@nr_r - 1))
nr_r=4}
C {local_gnd.sym} 430 -510 0 0 {name=l13 lab=VSUB}
C {local_gnd.sym} 430 -390 0 0 {name=l1 lab=VSUB}
C {local_gnd.sym} 430 -280 0 0 {name=l2 lab=VSUB}
C {local_gnd.sym} 430 -160 0 0 {name=l3 lab=VSUB}
C {local_gnd.sym} 650 -510 0 0 {name=l4 lab=VSUB}
C {local_gnd.sym} 650 -390 0 0 {name=l5 lab=VSUB}
C {local_gnd.sym} 650 -280 0 0 {name=l6 lab=VSUB}
C {local_gnd.sym} 650 -160 0 0 {name=l7 lab=VSUB}
C {local_gnd.sym} 870 -510 0 0 {name=l8 lab=VSUB}
C {local_gnd.sym} 870 -390 0 0 {name=l9 lab=VSUB}
C {local_gnd.sym} 870 -280 0 0 {name=l10 lab=VSUB}
C {local_gnd.sym} 870 -160 0 0 {name=l11 lab=VSUB}
C {iopin.sym} 400 -510 2 0 {name=p2 sig_type=std_logic lab=LB41}
C {iopin.sym} 400 -450 2 0 {name=p3 sig_type=std_logic lab=LA42}
C {iopin.sym} 400 -390 2 0 {name=p4 sig_type=std_logic lab=LB42}
C {iopin.sym} 400 -340 2 0 {name=p5 sig_type=std_logic lab=LA43}
C {iopin.sym} 400 -280 2 0 {name=p6 sig_type=std_logic lab=LB43}
C {iopin.sym} 400 -220 2 0 {name=p7 sig_type=std_logic lab=LA44}
C {iopin.sym} 400 -160 2 0 {name=p8 sig_type=std_logic lab=LB44}
C {iopin.sym} 400 -570 2 0 {name=p1 sig_type=std_logic lab=LA41}
C {iopin.sym} 620 -510 2 0 {name=p9 sig_type=std_logic lab=LB31}
C {iopin.sym} 620 -570 2 0 {name=p10 sig_type=std_logic lab=LA31}
C {iopin.sym} 840 -510 2 0 {name=p11 sig_type=std_logic lab=LB21}
C {iopin.sym} 840 -570 2 0 {name=p12 sig_type=std_logic lab=LA21}
C {iopin.sym} 840 -390 2 0 {name=p13 sig_type=std_logic lab=LB22}
C {iopin.sym} 840 -450 2 0 {name=p14 sig_type=std_logic lab=LA22}
C {iopin.sym} 620 -390 2 0 {name=p15 sig_type=std_logic lab=LB32}
C {iopin.sym} 620 -450 2 0 {name=p16 sig_type=std_logic lab=LA32}
C {iopin.sym} 620 -280 2 0 {name=p17 sig_type=std_logic lab=LB33}
C {iopin.sym} 620 -340 2 0 {name=p18 sig_type=std_logic lab=LA33}
C {iopin.sym} 840 -280 2 0 {name=p19 sig_type=std_logic lab=LB23}
C {iopin.sym} 840 -340 2 0 {name=p20 sig_type=std_logic lab=LA23}
C {iopin.sym} 840 -160 2 0 {name=p21 sig_type=std_logic lab=LB24}
C {iopin.sym} 840 -220 2 0 {name=p22 sig_type=std_logic lab=LA24}
C {iopin.sym} 620 -160 2 0 {name=p23 sig_type=std_logic lab=LB34}
C {iopin.sym} 620 -220 2 0 {name=p24 sig_type=std_logic lab=LA34}
C {inductor2.sym} 1020 -540 0 0 {name=L11
m=1
value=1n
footprint=1206
device=inductor2
spiceprefix=X
w=10u
s=10u
d=222u
nr_r=1
lvs_format="@spiceprefix@name @pinlist @device w=@w s=@s d=@d a=expr( 8 * 0.414 * @nr_r * ( @d * @w + @nr_r * @w * @w + @w * @s * ( @nr_r - 1 ) ) + 2 * 30u * @w ) nr=@nr_r m=@m"}
C {local_gnd.sym} 1050 -510 0 0 {name=l14 lab=VSUB}
C {iopin.sym} 1020 -510 2 0 {name=p25 sig_type=std_logic lab=LB11}
C {iopin.sym} 1020 -570 2 0 {name=p26 sig_type=std_logic lab=LA11}
C {inductor2.sym} 1020 -420 0 0 {name=L12
m=1
value=1n
footprint=1206
device=inductor2
spiceprefix=X
w=5u
s=10u
d=222u
nr_r=1
lvs_format="@spiceprefix@name @pinlist @device w=@w s=@s d=@d a=expr( 8 * 0.414 * @nr_r * ( @d * @w + @nr_r * @w * @w + @w * @s * ( @nr_r - 1 ) ) + 2 * 30u * @w ) nr=@nr_r m=@m"}
C {local_gnd.sym} 1050 -390 0 0 {name=l16 lab=VSUB}
C {iopin.sym} 1020 -390 2 0 {name=p27 sig_type=std_logic lab=LB12}
C {iopin.sym} 1020 -450 2 0 {name=p28 sig_type=std_logic lab=LA12}
