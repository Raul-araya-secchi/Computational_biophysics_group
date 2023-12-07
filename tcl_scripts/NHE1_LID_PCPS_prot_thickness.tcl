###PCPS###

mol new /media/4TB_HDD/raul/projects/synergy/NHE1/LID/AA/MBUF_wMEMB/PCPS/step6.6_equilibration_PL.gro
mol addfile /media/4TB_HDD/raul/projects/synergy/NHE1/LID/AA/MBUF_wMEMB/PCPS/NHE1_LIDmb_PCPScbwri_s7_1-9_50ps_pbcc_prot.xtc waitfor all
set out [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PCPS/dist/NHE1_MBUF_PCPS_1-9pbcc-prot_trp-dist.dat w]


set nf [molinfo top get numframes]

set prot [atomselect top protein]

for {set i 0} {$i <= $nf} {incr i} {
$prot frame $i

set minmaxprot [measure minmax $prot]

set min [lindex $minmaxprot 0]
set max [lindex $minmaxprot 1]

set Zmin [lindex $min 2]
set Zmax [lindex $max 2]

set diff [expr (abs ($Zmin - $Zmax))]

puts $out "$i $diff"
}
close $out

mol delete all 