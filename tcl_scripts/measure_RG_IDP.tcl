


set out1 [open /home/raul/projects/MD-runs/synergy/IDPsM3/GHR_ICD/noDihedral/results/GHRicd_m3pws5_noDihed_md20_Rg.dat w]
set out2 [open /home/raul/projects/MD-runs/synergy/IDPsM3/GHR_ICD/noDihedral/results/GHRicd_m3pws6_noDihed_md20_Rg.dat w]
set out3 [open /home/raul/projects/MD-runs/synergy/IDPsM3/GHR_ICD/noDihedral/results/GHRicd_m3pws7_noDihed_md20_Rg.dat w]
set out4 [open /home/raul/projects/MD-runs/synergy/IDPsM3/GHR_ICD/noDihedral/results/GHRicd_m3pws10_noDihed_md20_Rg.dat w]
set out5 [open /home/raul/projects/MD-runs/synergy/IDPsM3/GHR_ICD/noDihedral/results/GHRicd_m3nopws_noDihed_md20_Rg.dat w]

set nf1 [molinfo 1 get numframes]
set all1 [atomselect 1 all]

for {set i 0} {$i <= $nf1} {incr i} {
$all1 frame $i
set rg1 [measure rgyr $all1]
puts $out1 "$i $rg1"
}

close $out1

set nf2 [molinfo 2 get numframes]
set all2 [atomselect 2 all]

for {set i 0} {$i <= $nf2} {incr i} {
$all2 frame $i
set rg2 [measure rgyr $all2]
puts $out2 "$i $rg2"
}

close $out2

set nf3 [molinfo 3 get numframes]
set all3 [atomselect 3 all]

for {set i 0} {$i <= $nf3} {incr i} {
$all3 frame $i
set rg3 [measure rgyr $all3]
puts $out3 "$i $rg3"
}

close $out3

set nf4 [molinfo 4 get numframes]
set all4 [atomselect 4 all]

for {set i 0} {$i <= $nf4} {incr i} {
$all4 frame $i
set rg4 [measure rgyr $all4]
puts $out4 "$i $rg4"
}

close $out4

set nf5 [molinfo 5 get numframes]
set all5 [atomselect 5 all]

for {set i 0} {$i <= $nf5} {incr i} {
$all5 frame $i
set rg5 [measure rgyr $all5]
puts $out5 "$i $rg5"
}

close $out5