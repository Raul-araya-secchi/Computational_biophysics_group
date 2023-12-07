package require Orient
namespace import Orient::orient

# #puts " - load trajectory"

# # ## CL PCPS ##
## R1
#mol new /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/CL/PCPSaa/step6.6_equilibration_PLpbcctmd.gro
#mol addfile /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/CL/PCPSaa/TFecdtmaa_wSSb_CL_PCPS_s7_1us_100ps_PLpbcctmd.xtc step 2 waitfor all
#
#set id [molinfo top]
#set num_steps [molinfo $id get numframes]
#
#set out [open  /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/forMS/angle/CL_pcps_r1_TFCx_angle_1us_200ps.dat w]
#
#set ref [atomselect top "protein and name CA" frame 0]
#
## TFC-x angle
#for {set f 0} {$f <=  $num_steps} {incr f} {
#    ## fist align all protein to frame 0 to remove trans. rot.
#    set all [atomselect top all]
#    set ref [atomselect top "protein and name CA" frame 0]
#    set sel [atomselect top "protein and name CA"]
#    $sel frame $f
#    set M [measure fit $sel $ref]
#    $all move $M
#    set protein  [atomselect top protein]
#     
#    ## define TFC
#    set tfc [atomselect top "protein and resid 107 to 207 and name CA"]
#    $tfc frame $f
#    set TFCpa [draw principalaxes $tfc]
#    set PATFCv1 [lindex $TFCpa 0]
#    set PATFCv2 [lindex $TFCpa 1]
#    set PATFCv3 [lindex $TFCpa 2]
#    set PATFCe3 [vecscale $PATFCv3 [expr 1/[veclength $PATFCv3]]]
#     if {[lindex $PATFCe3 1] >0 } {
#   	    set PATFCv3m [vecscale -1 $PATFCe3]} else {
#   		set PATFCv3m [vecscale 1 $PATFCe3] }
#   	set projection1xC [lindex $PATFCe3 0]	
#   	set projection1yC [lindex $PATFCe3 1] 
#   	set projection1zC [lindex $PATFCe3 2]
#    set projection1xMC [lindex $PATFCv3m 0]	
#  	set projection1yMC [lindex $PATFCv3m 1] 
#   	set projection1zMC [lindex $PATFCv3m 2]
#    set angx [vecdot $PATFCe3 {1 0 0}]
#    set angx2 [vecdot $PATFCv3m {1 0 0}]
#    set anglex [expr 57.2958 * acos($angx)]
#    set anglex2 [expr 57.2958 * acos($angx2)]
#    puts $out "$f $angx $anglex $anglex2 $projection1xC $projection1yC $projection1zC $projection1xMC $projection1yMC $projection1zMC"
#}
#close $out
#
#mol delete all
#
##R2
#mol new /home/raul/remote-home/remote-home/MD-sims/TF_ECD_TMD/AA/w_SSbs/CL/PCPSaa/r2_HMR/gromacs/CLpcpsAA_r2_1us_100ps_PL_pbcmctmd_s6.0.gro
#mol addfile /home/raul/remote-home/remote-home/MD-sims/TF_ECD_TMD/AA/w_SSbs/CL/PCPSaa/r2_HMR/gromacs/CLpcpsAA_r2_1us_100ps_PL_pbcmctmd.xtc step 2 waitfor all
# 
#set id [molinfo top]
#set num_steps [molinfo $id get numframes]
#
#set out [open  /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/forMS/angle/CL_pcps_r2_TFCx_angle_1us_200ps.dat w]
#
#set ref [atomselect top "protein and name CA" frame 0]
#
## TFC-x angle
#for {set f 0} {$f <=  $num_steps} {incr f} {
#    ## fist align all protein to frame 0 to remove trans. rot.
#    set all [atomselect top all]
#    set ref [atomselect top "protein and name CA" frame 0]
#    set sel [atomselect top "protein and name CA"]
#    $sel frame $f
#    set M [measure fit $sel $ref]
#    $all move $M
#    set protein  [atomselect top protein]
#     
#    ## define TFC
#    set tfc [atomselect top "protein and resid 107 to 207 and name CA"]
#    $tfc frame $f
#    set TFCpa [draw principalaxes $tfc]
#    set PATFCv1 [lindex $TFCpa 0]
#    set PATFCv2 [lindex $TFCpa 1]
#    set PATFCv3 [lindex $TFCpa 2]
#    set PATFCe3 [vecscale $PATFCv3 [expr 1/[veclength $PATFCv3]]]
#     if {[lindex $PATFCe3 1] >0 } {
#   	    set PATFCv3m [vecscale -1 $PATFCe3]} else {
#   		set PATFCv3m [vecscale 1 $PATFCe3] }
#   	set projection1xC [lindex $PATFCe3 0]	
#   	set projection1yC [lindex $PATFCe3 1] 
#   	set projection1zC [lindex $PATFCe3 2]
#    set projection1xMC [lindex $PATFCv3m 0]	
#  	set projection1yMC [lindex $PATFCv3m 1] 
#   	set projection1zMC [lindex $PATFCv3m 2]
#    set angx [vecdot $PATFCe3 {1 0 0}]
#    set angx2 [vecdot $PATFCv3m {1 0 0}]
#    set anglex [expr 57.2958 * acos($angx)]
#    set anglex2 [expr 57.2958 * acos($angx2)]
#    puts $out "$f $angx $anglex $anglex2 $projection1xC $projection1yC $projection1zC $projection1xMC $projection1yMC $projection1zMC"
#}
#close $out
#
#mol delete all
#
### R3
#mol new /home/raul/remote-home/remote-home/MD-sims/TF_ECD_TMD/AA/w_SSbs/CL/PCPSaa/r3_HMR/gromacs/CLpcpsAA_r3_1us_100ps_PL_pbcmctmd_s6.0.gro
#mol addfile /home/raul/remote-home/remote-home/MD-sims/TF_ECD_TMD/AA/w_SSbs/CL/PCPSaa/r3_HMR/gromacs/CLpcpsAA_r3_1us_100ps_PL_pbcmctmd.xtc step 2 waitfor all
#
#set id [molinfo top]
#set num_steps [molinfo $id get numframes]
#
#set out [open  /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/forMS/angle/CL_pcps_r3_TFCx_angle_1us_200ps.dat w]
#
#set ref [atomselect top "protein and name CA" frame 0]
#
## TFC-x angle
#for {set f 0} {$f <=  $num_steps} {incr f} {
#    ## fist align all protein to frame 0 to remove trans. rot.
#    set all [atomselect top all]
#    set ref [atomselect top "protein and name CA" frame 0]
#    set sel [atomselect top "protein and name CA"]
#    $sel frame $f
#    set M [measure fit $sel $ref]
#    $all move $M
#    set protein  [atomselect top protein]
#     
#    ## define TFC
#    set tfc [atomselect top "protein and resid 107 to 207 and name CA"]
#    $tfc frame $f
#    set TFCpa [draw principalaxes $tfc]
#    set PATFCv1 [lindex $TFCpa 0]
#    set PATFCv2 [lindex $TFCpa 1]
#    set PATFCv3 [lindex $TFCpa 2]
#    set PATFCe3 [vecscale $PATFCv3 [expr 1/[veclength $PATFCv3]]]
#     if {[lindex $PATFCe3 1] >0 } {
#   	    set PATFCv3m [vecscale -1 $PATFCe3]} else {
#   		set PATFCv3m [vecscale 1 $PATFCe3] }
#   	set projection1xC [lindex $PATFCe3 0]	
#   	set projection1yC [lindex $PATFCe3 1] 
#   	set projection1zC [lindex $PATFCe3 2]
#    set projection1xMC [lindex $PATFCv3m 0]	
#  	set projection1yMC [lindex $PATFCv3m 1] 
#   	set projection1zMC [lindex $PATFCv3m 2]
#    set angx [vecdot $PATFCe3 {1 0 0}]
#    set angx2 [vecdot $PATFCv3m {1 0 0}]
#    set anglex [expr 57.2958 * acos($angx)]
#    set anglex2 [expr 57.2958 * acos($angx2)]
#    puts $out "$f $angx $anglex $anglex2 $projection1xC $projection1yC $projection1zC $projection1xMC $projection1yMC $projection1zMC"
#
#}
#close $out
#
#mol delete all
#
### CLpc
#mol new /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/CL/PCaa/step6.6_equilibration_PLpbcctmd.gro
#mol addfile /home/raul/remote-home/remote-home/MD-sims/TF_ECD_TMD/AA/w_SSbs/CL/PCaa/TFectmdaa_wSS_PC_CL_s7_1_29_100ps_PLpbcctmd.xtc step 2 waitfor all
#
#set id [molinfo top]
#set num_steps [molinfo $id get numframes]
#
#set out [open  /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/forMS/angle/CL_pc_r1_TFCx_angle_1us_200ps.dat w]
#
#set ref [atomselect top "protein and name CA" frame 0]
#
## TFC-x angle
#for {set f 0} {$f <=  $num_steps} {incr f} {
#    ## fist align all protein to frame 0 to remove trans. rot.
#    set all [atomselect top all]
#    set ref [atomselect top "protein and name CA" frame 0]
#    set sel [atomselect top "protein and name CA"]
#    $sel frame $f
#    set M [measure fit $sel $ref]
#    $all move $M
#    set protein  [atomselect top protein]
#     
#    ## define TFC
#    set tfc [atomselect top "protein and resid 107 to 207 and name CA"]
#    $tfc frame $f
#    set TFCpa [draw principalaxes $tfc]
#    set PATFCv1 [lindex $TFCpa 0]
#    set PATFCv2 [lindex $TFCpa 1]
#    set PATFCv3 [lindex $TFCpa 2]
#    set PATFCe3 [vecscale $PATFCv3 [expr 1/[veclength $PATFCv3]]]
#     if {[lindex $PATFCe3 1] >0 } {
#   	    set PATFCv3m [vecscale -1 $PATFCe3]} else {
#   		set PATFCv3m [vecscale 1 $PATFCe3] }
#   	set projection1xC [lindex $PATFCe3 0]	
#   	set projection1yC [lindex $PATFCe3 1] 
#   	set projection1zC [lindex $PATFCe3 2]
#    set projection1xMC [lindex $PATFCv3m 0]	
#  	set projection1yMC [lindex $PATFCv3m 1] 
#   	set projection1zMC [lindex $PATFCv3m 2]
#    set angx [vecdot $PATFCe3 {1 0 0}]
#    set angx2 [vecdot $PATFCv3m {1 0 0}]
#    set anglex [expr 57.2958 * acos($angx)]
#    set anglex2 [expr 57.2958 * acos($angx2)]
#    puts $out "$f $angx $anglex $anglex2 $projection1xC $projection1yC $projection1zC $projection1xMC $projection1yMC $projection1zMC"
#
#}
#close $out
#
#mol delete all

##TF-F7pcps
mol new s6.6_pli_pbcnj.gro
mol addfile TFF7_pcps_HMR_1us_100ps_pbcm_pbcatm_pbcnj_fitXY_prot_PL.xtc first 3434 step 1 waitfor all

set id [molinfo top]
set num_steps [molinfo $id get numframes]

set out [open  new_TFFpcps_prod_TFCx_angle_200ps_fix.dat w]

set ref [atomselect top "protein and name CA" frame 0]

# TFC-x angle
for {set f 0} {$f <=  $num_steps} {incr f} {
    ## fist align all protein to frame 0 to remove trans. rot.
    set all [atomselect top all]
    set ref [atomselect top "protein and name CA" frame 0]
    set sel [atomselect top "protein and name CA"]
    $sel frame $f
    set M [measure fit $sel $ref]
    $all move $M
    set protein  [atomselect top protein]
     
    ## define TFC
    set tfc [atomselect top "protein and index 6816 to 10671 and resid 107 to 207 and name CA"]
    $tfc frame $f
    set TFCpa [draw principalaxes $tfc]
    set PATFCv1 [lindex $TFCpa 0]
    set PATFCv2 [lindex $TFCpa 1]
    set PATFCv3 [lindex $TFCpa 2]
    set PATFCe3 [vecscale $PATFCv3 [expr 1/[veclength $PATFCv3]]]
    if {[lindex $PATFCe3 1] >0 } {
   	    set PATFCv3m [vecscale -1 $PATFCe3]} else {
   		set PATFCv3m [vecscale 1 $PATFCe3] }
   	set projection1xC [lindex $PATFCe3 0]	
   	set projection1yC [lindex $PATFCe3 1] 
   	set projection1zC [lindex $PATFCe3 2]
    set projection1xMC [lindex $PATFCv3m 0]	
  	set projection1yMC [lindex $PATFCv3m 1] 
   	set projection1zMC [lindex $PATFCv3m 2]
    set angx [vecdot $PATFCe3 {1 0 0}]
    set angx2 [vecdot $PATFCv3m {1 0 0}]
    set anglex [expr 57.2958 * acos($angx)]
    set anglex2 [expr 57.2958 * acos($angx2)]
    puts $out "$f $angx $anglex $anglex2 $projection1xC $projection1yC $projection1zC $projection1xMC $projection1yMC $projection1zMC"

} 
close $out
mol delete all
quit
