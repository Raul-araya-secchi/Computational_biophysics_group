
package require Orient
namespace import Orient::orient


#trajectory#
## R1
# mol new     step6.6_equilibration_PLpbcc.gro
# mol addfile TFecdtmaa_wSSb_CL_PCPS_s7_1us_100ps_pbcmcp_PL_wof200ns_fitXY.xtc step 2 waitfor all
# 
# set outfile [open TMDtilt_R1_200ps.dat w]
# 
# set nf [molinfo top get numframes]
# 
# set H1 [atomselect top "protein and name CA and resid 218 to 242"]
# 
# for {set i 1} {$i <= $nf} {incr i} {
    # $H1 frame $i
# 
    # set I [draw principalaxes $H1]
    # set VI [lindex $I 2]
    # set VIu [vecscale $VI [expr 1/[veclength $VI]]]
    # set VIuz [lindex $VIu 2]
    # set H1z [vecdot $VIu {0 0 1}]
    # set H1zangle [expr 57.2958*acos($H1z)]
    # puts $outfile "$i $VIuz $H1zangle"
# }
# close $outfile

#R2

# mol new     CLpcpsAA_r2_1us_100ps_PL_pbcmctmd_s6.0.gro
# mol addfile CLpcpsAA_r2_1us_100ps_PL_pbcmctmd_fitXY.xtc first 1999 step 2 waitfor all

# set outfile [open TMDtilt_R2_200ps.dat w]

# set nf [molinfo top get numframes]

# set H1 [atomselect top "protein and name CA and resid 218 to 242"]

# for {set i 1} {$i <= $nf} {incr i} {
#     $H1 frame $i

#     set I [draw principalaxes $H1]
#     set VI [lindex $I 2]
#     set VIu [vecscale $VI [expr 1/[veclength $VI]]]
#     set VIuz [lindex $VIu 2]
#     set H1z [vecdot $VIu {0 0 1}]
#     set H1zangle [expr 57.2958*acos($H1z)]
#     puts $outfile "$i $VIuz $H1zangle"
# }
# close $outfile
# mol delete all

# #R3
# mol new     CLpcpsAA_r2_1us_100ps_PL_pbcmctmd_s6.0.gro
# mol addfile CLpcpsAA_r3_1us_100ps_PL_pbcmctmd_fitXY.xtc first 1999 step 2 waitfor all

# set outfile [open TMDtilt_R3_200ps.dat w]

# set nf [molinfo top get numframes]

# set H1 [atomselect top "protein and name CA and resid 218 to 242"]

# for {set i 1} {$i <= $nf} {incr i} {
#     $H1 frame $i

#     set I [draw principalaxes $H1]
#     set VI [lindex $I 2]
#     set VIu [vecscale $VI [expr 1/[veclength $VI]]]
#     set VIuz [lindex $VIu 2]
#     set H1z [vecdot $VIu {0 0 1}]
#     set H1zangle [expr 57.2958*acos($H1z)]
#     puts $outfile "$i $VIuz $H1zangle"
# }
# close $outfile
# mol delete all

# #PC
# mol new     PC_step6.6_equilibration_PLpbcctmd.gro
# mol addfile TF_PC_1us_fitXY_100ps_PL.xtc first 1999 step 2 waitfor all

# set outfile [open TMDtilt_PC_200ps.dat w]

# set nf [molinfo top get numframes]

# set H1 [atomselect top "protein and name CA and resid 218 to 242"]

# for {set i 1} {$i <= $nf} {incr i} {
#     $H1 frame $i

#     set I [draw principalaxes $H1]
#     set VI [lindex $I 2]
#     set VIu [vecscale $VI [expr 1/[veclength $VI]]]
#     set VIuz [lindex $VIu 2]
#     set H1z [vecdot $VIu {0 0 1}]
#     set H1zangle [expr 57.2958*acos($H1z)]
#     puts $outfile "$i $VIuz $H1zangle"
# }
# close $outfile
# mol delete all

#TFF7
mol new /Users/capitank/Dropbox/USS_Lab/Investigacion/TF_paper_redo/TF_F7/FVIIac_HL_TFCLs6.6_CGU_SBopm_PCPS_charmm-gui/gromacs/s6.6_pli_pbcnj.gro
mol addfile /Users/capitank/Dropbox/USS_Lab/Investigacion/TF_paper_redo/TF_F7/FVIIac_HL_TFCLs6.6_CGU_SBopm_PCPS_charmm-gui/gromacs/TFF7_pcps_HMR_1us_100ps_pbcm_pbcatm_pbcnj_fitXY_prot_PL.xtc first 1999 step 2 waitfor all

set outfile [open TMDtilt_TFF7new_200ps.dat w]

set nf [molinfo top get numframes]

set H1 [atomselect top "protein and index 6816 to 10671 and name CA and resid 218 to 242"]

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
