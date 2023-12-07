package require Orient
namespace import Orient::orient

set out1 [open /Users/raul/Documents/Projects/SYNERGY/TF/MD_systems/results/angle_test/TF_TMD_PCPScgBig_m22elscf_paxis_TFC.dat w]
set out2 [open /Users/raul/Documents/Projects/SYNERGY/TF/MD_systems/results/angle_test/TF_TMD_PCPScgBig_m22elscf_paxis_TFN.dat w]


mol new /Users/raul/Documents/Projects/SYNERGY/TF/MD_systems/TF_TMD_PCPScgBig_charmm-gui/gromacs/m22elscf/step6.6_equilibration_PL.gro type gro waitfor all
mol addfile /Users/raul/Documents/Projects/SYNERGY/TF/MD_systems/TF_TMD_PCPScgBig_charmm-gui/gromacs/m22elscf/TFecdtmd_PCPScgB_elscf_250ps_2.5us.xtc type xtc waitfor all

set nf [molinfo top get numframes]

#First load reference frame (s6.6.gro)

# load traj

set protBB [atomselect top "name BB"]
set allprot [atomselect top "same resid as name BB"]
set tfc [atomselect top "resid 105 to 205 and name BB"]
set tfn [atomselect top "resid 1 to 104 and name BB"]
set TMD [atomselect top "resid 219 to 240 and name BB"]
set TMD_ref [atomselect top "resid 219 to 240 and name BB"]

for {set i 0} {$i <= $nf} {incr i} {
    #updtate selections
    $TMD frame $i
    $TMD_ref frame 0
    $tfc frame $i
    $tfn frame $i
    $allprot frame $i
    $protBB frame $i
    #First align TMD to reference frame (s6.6.gro)
    set M [measure fit $TMD $TMD_ref]
    $allprot move $M
    
    #draw principal axes of TFC and TFN

    set TFCpa [draw principalaxes $tfc]
    set TFCpa_3 [lindex $TFCpa 2]
    set TFNpa [draw principalaxes $tfn]
    set TFNpa_3 [lindex $TFNpa 2]
    
    #measure angle between vector and z-axis
    #set TFCtitl [vecdot $TFCpa_3 {0 0 1}]
    #set TFCangle [expr 57.2958*acos($ang)]
    #set TFNtilt [vecdot $TFNpa_3 {0 0 1}]
    #set TFNangle [expr 57.2958*acos($ang)]

    #measure pa_vector projections

    #get vector components
    
    set TFCpa_z [lindex $TFCpa 2]
    set TFCpa_zn [vecscale $TFCpa_z [expr 1/[veclength $TFCpa_z]]]

    if {[lindex $TFCpa_zn 0] >0 } {
		set TFCpa_znm [vecscale -1 $TFCpa_zn]} else {
		set TFCpa_znm [vecscale 1 $TFCpa_zn] }
        set projection1x [lindex $TFCpa_zn 0]	
	    set projection1y [lindex $TFCpa_zn 1] 
	    set projection1z [lindex $TFCpa_zn 2]
        set projection1xM [lindex $TFCpa_znm 0]	
	    set projection1yM [lindex $TFCpa_znm 1] 
	    set projection1zM [lindex $TFCpa_znm 2]

        puts $out1 "$i $projection1x $projection1y $projection1z $projection1xM $projection1yM $projection1zM"

    set TFNpa_z [lindex $TFNpa 2]
    set TFNpa_zn [vecscale $TFNpa_z [expr 1/[veclength $TFNpa_z]]]

    if {[lindex $TFNpa_zn 0] >0 } {
		set TFNpa_znm [vecscale -1 $TFNpa_zn]} else {
		set TFNpa_znm [vecscale 1 $TFNpa_zn] }
        set projection1x [lindex $TFNpa_zn 0]	
	    set projection1y [lindex $TFNpa_zn 1] 
	    set projection1z [lindex $TFNpa_zn 2]
        set projection1xM [lindex $TFNpa_znm 0]	
	    set projection1yM [lindex $TFNpa_znm 1] 
	    set projection1zM [lindex $TFNpa_znm 2]

        puts $out2 "$i $projection1x $projection1y $projection1z $projection1xM $projection1yM $projection1zM"
}
}
close $out1
close $out2

quit
