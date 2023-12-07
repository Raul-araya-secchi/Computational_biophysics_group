### Measuring TMD-z angle (redo to check) GHRfl_GFP monomer m3pws10 sim ###

package require Orient
namespace import Orient::orient


#trajectory#
mol new /home/raul/projects/GHR_FL/GHR_ECDfl_TMD_ICDfl_GFP_composite/CGm3/step6.6_equilibration_PLpbc.gro
mol addfile /home/raul/projects/GHR_FL/GHR_ECDfl_TMD_ICDfl_GFP_composite/CGm3/GHRfl_GFP_m3b32_1_30_500ps_PL_comp_tmd_popc.xtc step 2 waitfor all 

set outfile [open /home/raul/projects/GHR_FL/GHR_ECDfl_TMD_ICDfl_GFP_composite/CGm3/GHRfl_GFPmon_TMDz_21us1ns.dat w]

set nf [molinfo top get numframes]

set H1 [atomselect top "name BB and resid 250 to 273"]

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

quit
