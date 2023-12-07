###Measurement of Zpos of W546v-- NHE1-LID ##

###PC ###

mol new /media/4TB_HDD/raul/projects/synergy/NHE1/LID/AA/MBUF_wMEMB/PC/step6.6_equilibration_PL.gro
mol addfile /media/4TB_HDD/raul/projects/synergy/NHE1/LID/AA/MBUF_wMEMB/PC/NHE1_LIDmb_PCcbwri_PL_s7_1-9_50ps_pbcc_prot.xtc waitfor all
set out [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PC/dist/NHE1_MBUF_PC_1-9_trp-dist.dat w]

set nf [molinfo top get numframes]
set W9R [atomselect top "protein and resid 9 and noh and not name N C O CA CB"]
set W9B [atomselect top "protein and resid 9 and name CE3 CZ3 CH2 CZ2 CE2 CD2"]
set W9P [atomselect top "protein and resid 9 and name CG CD1 NE1 CE2 CD2"]
set P [atomselect top "name P and z < 70 "]
set NZ10 [atomselect top "protein and resid 10 and name NZ"]
set NZ12 [atomselect top "protein and resid 12 and name NZ"]
set CZ15 [atomselect top "protein and resid 15 and name CZ"]
set NZ18 [atomselect top "protein and resid 18 and name NZ"]
set HGPC [atomselect top "resname POPC and noh and not name C1 C2 C3 O21 O22 O31 O32 C31 to C39 C21 to C2922 O31 O32 C31 to C39 C21 to C29"]

for {set i 0} {$i <= $nf} {incr i} {
$W9R frame $i
$W9B frame $i
$W9P frame $i
$P frame $i
$NZ10 frame $i
$NZ12 frame $i
$CZ15 frame $i
$NZ18 frame $i
$HGPC frame $i

set MR [measure center $W9R weight mass]
set MB [measure center $W9B weight mass]
set MP [measure center $W9P weight mass]
set PC [measure center $P weight mass] 
set NZ10c [measure center $NZ10 weight mass]
set NZ12c [measure center $NZ12 weight mass]
set CZ15c [measure center $CZ15 weight mass]
set NZ18c [measure center $NZ18 weight mass]
set HGPCc [measure center $HGPC weight mass]

set Z [lindex $MR 2]
set ZP [lindex $PC 2]
set ZHGPC [lindex $HGPCc 2]
set diff [expr $ZP - $Z]

set dist1 [vecdist $NZ10c $MR]
set dist2 [vecdist $NZ10c $MB]
set dist3 [vecdist $NZ10c $MP]

set dist4 [vecdist $NZ12c $MR]
set dist5 [vecdist $NZ12c $MB]
set dist6 [vecdist $NZ12c $MP]

set dist7 [vecdist $CZ15c $MR]
set dist8 [vecdist $CZ15c $MB]
set dist9 [vecdist $CZ15c $MP]

set dist10 [vecdist $NZ18c $MR]
set dist11 [vecdist $NZ18c $MB]
set dist12 [vecdist $NZ18c $MP]

puts $out "$i $Z $ZP $ZHGPC $$diff $dist1 $dist2 $dist3 $dist4 $dist5 $dist6 $dist7 $dist8 $dist9 $dist10 $dist11 $dist12"
}
close $out

mol delete all 

###PCPS###

mol new /media/4TB_HDD/raul/projects/synergy/NHE1/LID/AA/MBUF_wMEMB/PCPS/step6.6_equilibration_PL.gro
mol addfile /media/4TB_HDD/raul/projects/synergy/NHE1/LID/AA/MBUF_wMEMB/PCPS/NHE1_LIDmb_PCPScbwri_PL_s7_1-9_50ps_pbcc.xtc waitfor all
set out [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PCPS/dist/NHE1_MBUF_PCPS_1-9_trp-dist.dat w]


set nf [molinfo top get numframes]
set W9R [atomselect top "protein and resid 9 and noh and not name N C O CA CB"]
set W9B [atomselect top "protein and resid 9 and name CE3 CZ3 CH2 CZ2 CE2 CD2"]
set W9P [atomselect top "protein and resid 9 and name CG CD1 NE1 CE2 CD2"]
set P [atomselect top "name P and z < 70 "]
set NZ10 [atomselect top "protein and resid 10 and name NZ"]
set NZ12 [atomselect top "protein and resid 12 and name NZ"]
set CZ15 [atomselect top "protein and resid 15 and name CZ"]
set NZ18 [atomselect top "protein and resid 18 and name NZ"]
set HGPC [atomselect top "resname POPC and noh and not name C1 C2 C3 O21 O22 O31 O32 C31 to C39 C21 to C2922 O31 O32 C31 to C39 C21 to C29"]
set HGPS [atomselect top "noh and resname POPS  and not name C1 C2 C3 O21 O22 O31 O32 C31 to C39 C21 to C2922 O31 O32 C31 to C39 C21 to C29"]

for {set i 0} {$i <= $nf} {incr i} {
$W9R frame $i
$W9B frame $i
$W9P frame $i
$P frame $i
$NZ10 frame $i
$NZ12 frame $i
$CZ15 frame $i
$NZ18 frame $i
$HGPC frame $i
$HGPS frame $i


set MR [measure center $W9R weight mass]
set MB [measure center $W9B weight mass]
set MP [measure center $W9P weight mass]
set PC [measure center $P weight mass] 
set NZ10c [measure center $NZ10 weight mass]
set NZ12c [measure center $NZ12 weight mass]
set CZ15c [measure center $CZ15 weight mass]
set NZ18c [measure center $NZ18 weight mass]
set HGPCc [measure center $HGPC weight mass]
set HGPSc [measure center $HGPS weight mass]

set Z [lindex $MR 2]
set ZP [lindex $PC 2]
set diff [expr $ZP - $Z]
set ZHGPC [lindex $HGPCc 2]
set ZHGPS [lindex $HGPSc 2] 

set dist1 [vecdist $NZ10c $MR]
set dist2 [vecdist $NZ10c $MB]
set dist3 [vecdist $NZ10c $MP]

set dist4 [vecdist $NZ12c $MR]
set dist5 [vecdist $NZ12c $MB]
set dist6 [vecdist $NZ12c $MP]

set dist7 [vecdist $CZ15c $MR]
set dist8 [vecdist $CZ15c $MB]
set dist9 [vecdist $CZ15c $MP]

set dist10 [vecdist $NZ18c $MR]
set dist11 [vecdist $NZ18c $MB]
set dist12 [vecdist $NZ18c $MP]

puts $out "$i $Z $ZP $ZHGPC $ZHGPS $diff $dist1 $dist2 $dist3 $dist4 $dist5 $dist6 $dist7 $dist8 $dist9 $dist10 $dist11 $dist12"
}
close $out

mol delete all 

###PCPIP2###

mol new /media/4TB_HDD/raul/projects/synergy/NHE1/LID/AA/MBUF_wMEMB/PCPIP2/step6.6_equilibration_PL.gro
mol addfile /media/4TB_HDD/raul/projects/synergy/NHE1/LID/AA/MBUF_wMEMB/PCPIP2/NHE1_LIDmb_PCPIP2cbwri_PLI_s7_1-8_50ps_pbcc_prot.xtc waitfor all

set out [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PCPIP2/dist/NHE1_MBUF_PCPIP2_1-8pbcc-prot_trp-dist.dat w]

set nf [molinfo top get numframes]
set W9R [atomselect top "protein and resid 9 and noh and not name N C O CA CB"]
set W9B [atomselect top "protein and resid 9 and name CE3 CZ3 CH2 CZ2 CE2 CD2"]
set W9P [atomselect top "protein and resid 9 and name CG CD1 NE1 CE2 CD2"]
set P [atomselect top "name P and z < 70 "]
set NZ10 [atomselect top "protein and resid 10 and name NZ"]
set NZ12 [atomselect top "protein and resid 12 and name NZ"]
set CZ15 [atomselect top "protein and resid 15 and name CZ"]
set NZ18 [atomselect top "protein and resid 18 and name NZ"]
set HGPC [atomselect top "resname POPC and noh and not name C1 C2 C3 O21 O22 O31 O32 C31 to C39 C21 to C2922 O31 O32 C31 to C39 C21 to C29"]
set HGPIP2 [atomselect top "noh and resname POPI2 and not name C1 C2 C3 O21 O22 O31 O32 C31 to C39 C21 to C2922 O31 O32 C31 to C39 C21 to C29"]

for {set i 0} {$i <= $nf} {incr i} {
$W9R frame $i
$W9B frame $i
$W9P frame $i
$P frame $i
$NZ10 frame $i
$NZ12 frame $i
$CZ15 frame $i
$NZ18 frame $i
$HGPC frame $i
$HGPIP2 frame $i

set MR [measure center $W9R weight mass]
set MB [measure center $W9B weight mass]
set MP [measure center $W9P weight mass]
set PC [measure center $P weight mass] 
set NZ10c [measure center $NZ10 weight mass]
set NZ12c [measure center $NZ12 weight mass]
set CZ15c [measure center $CZ15 weight mass]
set NZ18c [measure center $NZ18 weight mass]
set HGPCc [measure center $HGPC weight mass]
set HGPIP2c [measure center $HGPIP2 weight mass]


set Z [lindex $MR 2]
set ZP [lindex $PC 2]
set diff [expr $ZP - $Z]
set ZHGPC [lindex $HGPCc 2]
set ZHGPIP2 [lindex $HGPIP2c 2] 

set dist1 [vecdist $NZ10c $MR]
set dist2 [vecdist $NZ10c $MB]
set dist3 [vecdist $NZ10c $MP]

set dist4 [vecdist $NZ12c $MR]
set dist5 [vecdist $NZ12c $MB]
set dist6 [vecdist $NZ12c $MP]

set dist7 [vecdist $CZ15c $MR]
set dist8 [vecdist $CZ15c $MB]
set dist9 [vecdist $CZ15c $MP]

set dist10 [vecdist $NZ18c $MR]
set dist11 [vecdist $NZ18c $MB]
set dist12 [vecdist $NZ18c $MP]

puts $out "$i $Z $ZP $HGPCc $HGPIP2c $diff $dist1 $dist2 $dist3 $dist4 $dist5 $dist6 $dist7 $dist8 $dist9 $dist10 $dist11 $dist12"
}
close $out

mol delete all 

puts "Done!"