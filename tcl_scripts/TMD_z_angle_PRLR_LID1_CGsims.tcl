### Measuring TMD-z angle PRLR_TMD_LID1 sims ###

package require Orient
namespace import Orient::orient

### M3 pws10 ###

## 801010 ##

#trajectory#
mol new /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_811/pws10/r2/step6.6_equilibration_m3pw10_PLTMD.gro
mol addfile /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_811/pws10/r2/PRLR_LID1_PCPSPIP2_811_m3pws10_r2_10us_1ns_PLpbcctmd.xtc waitfor all 

set outfile [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/TMD_angle/PRLR_LID1_PCPSPI2_811_cgm3pws10_r2_10us1ns_TMDzangle.dat w]

set nf [molinfo top get numframes]

set H1 [atomselect top "name BB and resid 8 to 30"]

for {set i 1} {$i <= $nf} {incr i} {
    $H1 frame $i
    
    set I [draw principalaxes $H1]
    set VI [lindex $I 2]
    set VIu [vecscale $VI [expr 1/[veclength $VI]]]
    set VIuz [lindex $VIu 2]
    set H1z [vecdot $VIu {0 0 1}]
    set H1zangle [expr 57.2958*acos($H1z)]
    puts $outfile "$i $VIuz $H1zangle"
}
close $outfile
mol delete all

## 9055 ##

mol new /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/PRLR_LID1_PCPSPIP2_955_s6.6_m3pws10_PLpbcctmd.gro
mol addfile /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/PRLR_LID1_PCPSPIP2_955_1ns_10us_m3pws10_PLpbcctmd.xtc waitfor all 

set outfile [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/TMD_angle/PRLR_LID1_PCPSPI2_955_cgm3pws10_10us1ns_TMDzangle.dat w]

set nf [molinfo top get numframes]

set H1 [atomselect top "name BB and resid 8 to 30"]

for {set i 1} {$i <= $nf} {incr i} {
    $H1 frame $i
    
    set I [draw principalaxes $H1]
    set VI [lindex $I 2]
    set VIu [vecscale $VI [expr 1/[veclength $VI]]]
    set VIuz [lindex $VIu 2]
    set H1z [vecdot $VIu {0 0 1}]
    set H1zangle [expr 57.2958*acos($H1z)]
    puts $outfile "$i $VIuz $H1zangle"
}
close $outfile
mol delete all

## PCPS ##

mol new /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPS/pws10/PRLR_LID1_PCPS_m3pws10_s6.6_PLpbcctmd.gro
mol addfile /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPS/pws10/PRLR_LID1_PCPS_m3pws10_10us_1ns_PLpbcctmd.xtc waitfor all 

set outfile [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/TMD_angle/PRLR_LID1-2_PCPS_cgm3pws10_10us1ns_TMDzangle.dat w]

set nf [molinfo top get numframes]

set H1 [atomselect top "name BB and resid 8 to 30"]

for {set i 1} {$i <= $nf} {incr i} {
    $H1 frame $i
    
    set I [draw principalaxes $H1]
    set VI [lindex $I 2]
    set VIu [vecscale $VI [expr 1/[veclength $VI]]]
    set VIuz [lindex $VIu 2]
    set H1z [vecdot $VIu {0 0 1}]
    set H1zangle [expr 57.2958*acos($H1z)]
    puts $outfile "$i $VIuz $H1zangle"
}
close $outfile
mol delete all

quit
