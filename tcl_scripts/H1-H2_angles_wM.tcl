# Measurement of H1-H2 angle for NHE1-LID with membranes ##
package require Orient
namespace import Orient::orient
## All-atom ##

#PCPIP2#
set outfile [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/Hangle_RMSD_NHE1_LID_mbuf_PCPIP2_1-8pbccp_50ps.dat w]

set wkdir "/media/4TB_HDD/raul/projects/synergy/NHE1/LID/AA/MBUF_wMEMB/PCPIP2"
set gro "$wkdir/step6.6_equilibration_PL.gro"
set xtc "$wkdir/NHE1_LIDmb_PCPIP2cbwri_PLI_s7_1-8_50ps_pbcc_prot.xtc"

mol new $gro

set H1_ref [atomselect top "protein and resid 3 to 27"]
set H2_ref [atomselect top "protein and resid 34 to 54"]
set CA_ref [atomselect top "protein and name CA"]
set all_ref [atomselect top all]

mol new $gro
mol addfile $xtc step 1 waitfor all

set nf [molinfo top get numframes]

set H1 [atomselect top "protein and resid 3 to 27"]
set H2 [atomselect top "protein and resid 34 to 54"]
set CA [atomselect top "protein and name CA"]
set all [atomselect top all]

#set Iref [draw principalaxes $H1_ref]
#set A_ref [orient $H1_ref [lindex $I 2] {0 0 1}]
#$all_ref move $A_ref

#set I [draw principalaxes $H1]
#set A [orient $H1 [lindex $I 2] {0 0 1}]

for {set i 0} {$i <= $nf} {incr i} {
   $H1 frame $i
   $H2 frame $i
   $all frame $i
   $CA frame $i
   set M [measure fit $CA $CA_ref]
   $all move $M
   set R [measure rmsd $CA $CA_ref]
   set I [draw principalaxes $H1]
   set J [draw principalaxes $H2]
   set VI [lindex $I 2]
   set VJ [lindex $J 2]
   set VIn [vecscale $VI [expr 1/[veclength $VI]]]
   set VJn [vecscale $VJ [expr 1/[veclength $VJ]]]
   set vectilt [vecdot $VIn $VJn]
#    if {$vectilt < 0.5 } {
# 		set V1z2m [expr 1 - $vectilt]} else {
# 		set V1z2m [expr 1 *  $vectilt] }
   set angle [expr 57.2958*acos($V1z2m)]
   puts $outfile "$i $angle $R"
}
close $outfile

mol delete all

#PCPS#

set outfile [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/Hangle_rmsd_NHE1_LID_mbuf_PCPS_1-9pbccp_50ps.dat w]

set wkdir "/media/4TB_HDD/raul/projects/synergy/NHE1/LID/AA/MBUF_wMEMB/PCPS"
set gro "$wkdir/step6.6_equilibration_PL.gro"
set xtc "$wkdir/NHE1_LIDmb_PCPScbwri_s7_1-9_50ps_pbcc_prot.xtc"

mol new $gro

set H1_ref [atomselect top "protein and resid 3 to 27"]
set H2_ref [atomselect top "protein and resid 34 to 54"]
set CA_ref [atomselect top "protein and name CA"]
set all_ref [atomselect top all]

mol new $gro
mol addfile $xtc step 1 waitfor all

set nf [molinfo top get numframes]
 
set H1 [atomselect top "protein and resid 3 to 27"]
set H2 [atomselect top "protein and resid 34 to 54"]
set CA [atomselect top "protein and name CA"]
set all [atomselect top all]

#set Iref [draw principalaxes $H1_ref]
#set A_ref [orient $H1_ref [lindex $I 2] {0 0 1}]
#$all_ref move $A_ref

set I [draw principalaxes $H1]
set A [orient $H1 [lindex $I 2] {0 0 1}]

for {set i 0} {$i <= $nf} {incr i} {
   $H1 frame $i
   $H2 frame $i
   $all frame $i
   $CA frame $i
   set M [measure fit $CA $CA_ref]
   $all move $M
   set R [measure rmsd $CA $CA_ref]
   set I [draw principalaxes $H1]
   set J [draw principalaxes $H2]
   set VI [lindex $I 2]
   set VJ [lindex $J 2]
   set VIn [vecscale $VI [expr 1/[veclength $VI]]]
   set VJn [vecscale $VJ [expr 1/[veclength $VJ]]]
   set vectilt [vecdot $VIn $VJn]
#    if {$vectilt < 0.5 } {
# 		set V1z2m [expr 1 - $vectilt]} else {
# 		set V1z2m [expr 1 *  $vectilt] }
   set angle [expr 57.2958*acos($V1z2m)]
   puts $outfile "$i $angle $R"
}
close $outfile

mol delete all

#PC#
set outfile [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/Hangle_rmsd_NHE1_LID_mbuf_PC_1-9pbccp_50ps.dat w]

set wkdir "/media/4TB_HDD/raul/projects/synergy/NHE1/LID/AA/MBUF_wMEMB/PC"
set gro "$wkdir/step6.6_equilibration_PL.gro"
set xtc "$wkdir/NHE1_LIDmb_PCcbwri_PL_s7_1-9_50ps_pbcc_prot.xtc"

mol new $gro

set H1_ref [atomselect top "protein and resid 3 to 27"]
set H2_ref [atomselect top "protein and resid 34 to 54"]
set CA_ref [atomselect top "protein and name CA"]
set all_ref [atomselect top all]

mol new $gro
mol addfile $xtc step 1 waitfor all

set nf [molinfo top get numframes]

set H1 [atomselect top "protein and resid 3 to 27"]
set H2 [atomselect top "protein and resid 34 to 54"]
set CA [atomselect top "protein and name CA"]
set all [atomselect top all]

#set Iref [draw principalaxes $H1_ref]
#set A_ref [orient $H1_ref [lindex $I 2] {0 0 1}]
#$all_ref move $A_ref

#set I [draw principalaxes $H1]
#set A [orient $H1 [lindex $I 2] {0 0 1}]

for {set i 0} {$i <= $nf} {incr i} {
   $H1 frame $i
   $H2 frame $i
   $all frame $i
   $CA frame $i
   set M [measure fit $CA $CA_ref]
   $all move $M
   set R [measure rmsd $CA $CA_ref]
   set I [draw principalaxes $H1]
   set J [draw principalaxes $H2]
   set VI [lindex $I 2]
   set VJ [lindex $J 2]
   set VIn [vecscale $VI [expr 1/[veclength $VI]]]
   set VJn [vecscale $VJ [expr 1/[veclength $VJ]]]
   set vectilt [vecdot $VIn $VJn]
#    if {$vectilt < 0.5 } {
# 		set V1z2m [expr 1 - $vectilt]} else {
# 		set V1z2m [expr 1 *  $vectilt] }
   set angle [expr 57.2958*acos($V1z2m)]
   puts $outfile "$i $angle $R"
}
close $outfile

mol delete all
