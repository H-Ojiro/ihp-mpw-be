v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {inductor2.sym} 840 -540 0 0 {name=L11
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
C {title.sym} 280 -90 0 0 {name=T1 author="H. Ojiro"}
C {local_gnd.sym} 870 -510 0 0 {name=l8 lab=VSUB}
C {iopin.sym} 840 -510 2 0 {name=p11 sig_type=std_logic lab=LB11}
C {iopin.sym} 840 -570 2 0 {name=p12 sig_type=std_logic lab=LA11}
