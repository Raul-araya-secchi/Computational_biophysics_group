## TF_TMD_ECD_aa PLC and prot thickness and densities -- ECD 1 to 219 every 100 ps##


##NC##

## PCPS ##

#mol new /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/NC/PCPSaa/step6.6_equilibration_PLpbcctmd.gro
#mol addfile /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/NC/PCPSaa/TFecdtmaa_wSSb_NC_PCPS_s7_1us_100ps_pbccTMD.xtc waitfor all

#set out1 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/PLCT/NC_1us_pcps_PLC_PS_100ps.dat w]
#set out2 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/PLCT/NC_1us_pcps_PLC_PC_100ps.dat w]
#set out1 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/PLCT/NC_1us_pcps_PLC_PStail_100ps.dat w]
#set out2 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/PLCT/NC_1us_pcps_PLC_PCtail_100ps.dat w]

#set out1 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/PLCT/NC_1us_pcps_PLC_PS3d5hg_100ps.dat w]
#set out2 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/PLCT/NC_1us_pcps_PLC_PC3d5hg_100ps.dat w]

#set out3 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/PLCT/NC_1us_pcps_thick_100ps.dat w]
#set nfpcps [molinfo top get numframes]

#set thicknesspcps [atomselect top "protein and noh and resid 1 to 219" ]
#set PO4pcps [atomselect top "name P"]
#set PO4pcps_ul [atomselect top "name P and z > 40" ]

#for {set i 0} {$i <= $nfpcps} {incr i} {
    #set CPPCpcps [atomselect top "protein and name CA and within 12 of (noh and resname POPC and name P)" frame $i ]
    #set CPPSpcps [atomselect top "protein and name CA and within 12 of (noh and resname POPS and name P)" frame $i]
    #set CPPCpcps [atomselect top "protein and name CA and within 12 of (noh and resname POPC and name C1 C2 C3 O21 O22 O31 O32 C31 to C39 C21 to C2922 O31 O32 C31 to C39 C21 to C29)" frame $i ]
    #set CPPSpcps [atomselect top "protein and name CA and within 12 of (noh and resname POPS and name C1 C2 C3 O21 O22 O31 O32 C31 to C39 C21 to C2922 O31 O32 C31 to C39 C21 to C29)" frame $i]    
    
#    set CPPCpcps [atomselect top "protein and within 3.5 of (noh and resname POPC and not name C1 C2 C3 O21 O22 O31 O32 C31 to C39 C21 to C2922 O31 O32 C31 to C39 C21 to C29)" frame $i ]
#    set CPPSpcps [atomselect top "protein and within 3.5 of (noh and resname POPS and not name C1 C2 C3 O21 O22 O31 O32 C31 to C39 C21 to C2922 O31 O32 C31 to C39 C21 to C29)" frame $i]    
    
#    puts $out1 "$i [$CPPSpcps num] [$CPPSpcps get resid]" 
#    puts $out2 "$i [$CPPCpcps num] [$CPPCpcps get resid]"
    #$thicknesspcps frame $i 
    #$PO4pcps frame $i
    #$PO4pcps_ul frame $i
    #set minmaxprot [measure minmax $thicknesspcps]
    #set minmaxP [measure minmax $PO4pcps]
    #set comP [measure center $PO4pcps_ul weight mass]
    #set comPz [lindex $comP 2]
    #set min [lindex $minmaxprot 0]
    #set max [lindex $minmaxprot 1]
    #set Zmin [lindex $min 2]
    #set Zmax [lindex $max 2]
    #set maxP [lindex $minmaxP 1]
    #set ZmaxP [lindex $maxP 2]
    #set diff [expr (abs ($Zmin - $Zmax))]
    #puts $out3 "$i $Zmin $Zmax $ZmaxP $comPz $diff" 

#}   
#close $out1
#close $out2
#close $out3

#mol delete all

# NC PC ##

#mol new /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/NC/PCaa/step6.6_equilibration_PLpbccmtd.gro
#mol addfile /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/NC/PCaa/TFectmdaa_wSS_PC_NC_s7_1us_100ps_PLpbcctmd.xtc waitfor all
#                                                                             
#set out4 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/PLCT/NC_1us_pc_PLC_PC_100ps.dat w]
#set out5 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/PLCT/NC_1us_pc_thick_100ps.dat w]
#
#set nfpc [molinfo top get numframes] 
#
##set CPPCpc [atomselect top "protein and name CA and within 12 of (noh and resname POPC and name P)" ]
#set thicknesspc [atomselect top "protein and noh and resid 1 to 219" ]
#set PO4pc [atomselect top "name P"]
#set PO4pc_ul [atomselect top "name P and z > 40" ]
#
#for {set i 0} {$i <= $nfpc} {incr i} {
#    set CPPCpc [atomselect top "protein and name CA and within 12 of (noh and resname POPC and name P)" frame $i ]
#    puts $out4 "$i [$CPPCpc num] [$CPPCpc get resid]" 
#    $thicknesspc frame $i 
#    $PO4pc frame $i
#    $PO4pc_ul frame $i
#    set minmaxprot [measure minmax $thicknesspc]
#    set minmaxP [measure minmax $PO4pc]
#    set comP [measure center $PO4pc_ul weight mass]
#    set comPz [lindex $comP 2]
#    set min [lindex $minmaxprot 0]
#    set max [lindex $minmaxprot 1]
#    set Zmin [lindex $min 2]
#    set Zmax [lindex $max 2]
#    set maxP [lindex $minmaxP 1]
#    set ZmaxP [lindex $maxP 2]
#    set diff [expr (abs ($Zmin - $Zmax))]
#    puts $out5 "$i $Zmin $Zmax $ZmaxP $comPz $diff" 
#
#}   
#close $out4
#close $out5
#
#mol delete all

# CL ##

#PCPS #
#mol new /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/CL/PCPSaa/step6.6_equilibration_PLpbcctmd.gro
#mol addfile /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/CL/PCPSaa/TFecdtmaa_wSSb_CL_PCPS_s7_1us_100ps_PLpbcctmd.xtc waitfor all
#
##set out1 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/PLCT/CL_1us_pcps_PLC_PS_100ps.dat w]
##set out2 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/PLCT/CL_1us_pcps_PLC_PC_100ps.dat w]
##set out1 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/PLCT/CL_1us_pcps_PLC_PStail_100ps.dat w]
##set out2 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/PLCT/CL_1us_pcps_PLC_PCtail_100ps.dat w]
#
#set out1 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/PLCT/CL_1us_pcps_PLC_PS_3d5hg_100ps.dat w]
#set out2 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/PLCT/CL_1us_pcps_PLC_PC_3d5hg_100ps.dat w]
#
##set out3 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/PLCT/NC_1us_pcps_thick_100ps.dat w]
#set nfpcps [molinfo top get numframes]
#
##set thicknesspcps [atomselect top "protein and noh and resid 1 to 219" ]
##set PO4pcps [atomselect top "name P"]
##set PO4pcps_ul [atomselect top "name P and z > 40" ]
#
#for {set i 0} {$i <= $nfpcps} {incr i} {
#    #set CPPCpcps [atomselect top "protein and name CA and within 12 of (noh and resname POPC and name P)" frame $i ]
#    #set CPPSpcps [atomselect top "protein and name CA and within 12 of (noh and resname POPS and name P)" frame $i]
#    #set CPPCpcps [atomselect top "protein and name CA and within 12 of (noh and resname POPC and name C1 C2 C3 O21 O22 O31 O32 C31 to C39 C21 to C2922 O31 O32 C31 to C39 C21 to C29)" frame $i ]
#    #set CPPSpcps [atomselect top "protein and name CA and within 12 of (noh and resname POPS and name C1 C2 C3 O21 O22 O31 O32 C31 to C39 C21 to C2922 O31 O32 C31 to C39 C21 to C29)" frame $i]    
#    
#    set CPPCpcps [atomselect top "protein and within 3.5 of (noh and resname POPC and not name C1 C2 C3 O21 O22 O31 O32 C31 to C39 C21 to C2922 O31 O32 C31 to C39 C21 to C29)" frame $i ]
#    set CPPSpcps [atomselect top "protein and within 3.5 of (noh and resname POPS and not name C1 C2 C3 O21 O22 O31 O32 C31 to C39 C21 to C2922 O31 O32 C31 to C39 C21 to C29)" frame $i]    
#    
#    puts $out1 "$i [$CPPSpcps num] [$CPPSpcps get resid]" 
#    puts $out2 "$i [$CPPCpcps num] [$CPPCpcps get resid]"
#    #$thicknesspcps frame $i 
#    #$PO4pcps frame $i
#    #$PO4pcps_ul frame $i
#    #set minmaxprot [measure minmax $thicknesspcps]
#    #set minmaxP [measure minmax $PO4pcps]
#    #set comP [measure center $PO4pcps_ul weight mass]
#    #set comPz [lindex $comP 2]
#    #set min [lindex $minmaxprot 0]
#    #set max [lindex $minmaxprot 1]
#    #set Zmin [lindex $min 2]
#    #set Zmax [lindex $max 2]
#    #set maxP [lindex $minmaxP 1]
#    #set ZmaxP [lindex $maxP 2]
#    #set diff [expr (abs ($Zmin - $Zmax))]
#    #puts $out3 "$i $Zmin $Zmax $ZmaxP $comPz $diff" 
#
#}   
#close $out1
#close $out2
##close $out3
#
#mol delete all


## CL - PC ##

# mol new /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/CL/PCaa/step6.6_equilibration_PLpbcctmd.gro
# mol addfile /home/raul/remote-home/remote-home/MD-sims/TF_ECD_TMD/AA/w_SSbs/CL/PCaa/TFectmdaa_wSS_PC_CL_s7_1_29_100ps_PLpbcctmd.xtc waitfor all
                                                                             
# set out4 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/PLCT/CL_1us_pc_PLC_PC_100ps.dat w]
# set out5 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/PLCT/CL_1us_pc_thick_100ps.dat w]

# set nfpc [molinfo top get numframes] 

# #set CPPCpc [atomselect top "protein and name CA and within 12 of (noh and resname POPC and name P)" ]
# set thicknesspc [atomselect top "protein and noh and resid 1 to 219" ]
# set PO4pc [atomselect top "name P"]
# set PO4pc_ul [atomselect top "name P and z > 40" ]

# for {set i 0} {$i <= $nfpc} {incr i} {
#     set CPPCpc [atomselect top "protein and name CA and within 12 of (noh and resname POPC and name P)" frame $i ]
#     puts $out4 "$i [$CPPCpc num] [$CPPCpc get resid]" 
#     $thicknesspc frame $i 
#     $PO4pc frame $i
#     $PO4pc_ul frame $i
#     set minmaxprot [measure minmax $thicknesspc]
#     set minmaxP [measure minmax $PO4pc]
#     set comP [measure center $PO4pc_ul weight mass]
#     set comPz [lindex $comP 2]
#     set min [lindex $minmaxprot 0]
#     set max [lindex $minmaxprot 1]
#     set Zmin [lindex $min 2]
#     set Zmax [lindex $max 2]
#     set maxP [lindex $minmaxP 1]
#     set ZmaxP [lindex $maxP 2]
#     set diff [expr (abs ($Zmin - $Zmax))]
#     puts $out5 "$i $Zmin $Zmax $ZmaxP $comPz $diff" 

# }   
# close $out4
# close $out5

# mol delete all


##FVIIa-TF PCPS ##

mol new     /home/raul/projects/MD-runs/synergy/FVIIac_TFCLinit_glyc_PCPS/gromacs/step6.6_equilibration_PLS.gro
mol addfile /media/4TB_HDD/raul/projects/synergy/FVIIac_TFCLinit_glyc_PCPS/FVIIac_TFCLinit_glyc_PCPS_s7_1_6_100ps_pbcwcp_PLS_pbcw_clust_cent_m.xtc  waitfor all

#TF
#set out1 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/FVIIac_TFCLinit_glyc_PCPS/PLC/pcps_TFPLC_PS_100ps_s71_6.dat w]
#set out2 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/FVIIac_TFCLinit_glyc_PCPS/PLC/pcps_TFPLC_PC_100ps_s71_6.dat w]

#FVIIa
#set out3 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/FVIIac_TFCLinit_glyc_PCPS/PLC/pcps_F7PLC_PS_100ps_s71_6.dat w]
#set out4 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/FVIIac_TFCLinit_glyc_PCPS/PLC/pcps_F7PLC_PC_100ps_s71_6.dat w]

## TF-FVIIa P_P #

#set out6 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/FVIIac_TFCLinit_glyc_PCPS/PLC/pcps_TF_F7_PP_100ps_s71_6.dat w]
#set out7 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/FVIIac_TFCLinit_glyc_PCPS/PLC/pcps_F7_TF_PP_100ps_s71_6.dat w]
set out8 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/FVIIac_TFCLinit_glyc_PCPS/PLC/pcps_F7_ASdist_100ps_s71_6.dat w]

#set out5 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/FVIIac_TFCLinit_glyc_PCPS/PLC/pcps_thick_100ps_s71_6.dat w]

#set thicknesspcps [atomselect top "protein and noh and resid 1 to 219" ]
#set PO4pcps [atomselect top "name P"]
#set PO4pcps_ul [atomselect top "name P and z > 40" ]

set nf [molinfo top get numframes] 

for {set i 0} {$i <= $nf} {incr i} {
    # #TF-plc
    set TFPSpcps [atomselect top "(protein and index 6816 to 10671 and name CA) and pbwithin 12 of (noh and resname POPS and name P)" frame $i]
    set TFPCpcps [atomselect top "(protein and index 6816 to 10671 and name CA) and pbwithin 12 of (noh and resname POPC and name P)" frame $i]
    #puts $out1 "$i [$TFPSpcps num] [$TFPSpcps get resid]" 
    #puts $out2 "$i [$TFPCpcps num] [$TFPCpcps get resid]"
    
    # #F7-plc
    set F7PSpcps [atomselect top "(index 0 to 6234 and protein and name CA) and pbwithin 12 of (noh and resname POPS and name P)" frame $i]
    set F7PCpcps [atomselect top "(index 0 to 6234 and protein and name CA) and pbwithin 12 of (noh and resname POPC and name P)" frame $i]
    #puts $out3 "$i [$F7PSpcps num] [$F7PSpcps get resid]" 
    #puts $out4 "$i [$F7PCpcps num] [$F7PCpcps get resid]"
    
    # ##TF-F7 pp
    set TFF7pp [atomselect top "(index 6816 to 10671 and protein and name CA) and pbwithin 12 of (index 0 to 6234 and protein and name CA)" frame $i]
    #puts $out6 "$i [$TFF7pp num] [$TFF7pp get resid]" 
    ##F7-TF pp
    set F7TFpp [atomselect top "(index 0 to 6234 and protein and name CA) and pbwithin 12 of (index 6816 to 10671 and protein and name CA)" frame $i] 
    #puts $out7 "$i [$F7TFpp num] [$F7TFpp get resid]" 
    
    $TFPSpcps delete
    $TFPCpcps delete
    $F7PSpcps delete
    $F7PCpcps delete
    $TFF7pp delete
    $F7TFpp delete

    #F7 -- active site
    set AS [atomselect top "noh and same residue as index 2893 3662 5244"]
    $AS frame $i
    set AS_c [measure center $AS weight mass]
    set AS_cz [lindex $AS_c 2]
    set lip [atomselect top "name P and z < 80"]
    $lip frame $i
    set lip_c [measure center $lip weight mass]
    set lip_cz [lindex $lip_c 2]
    set vd_AS_lip [vecdist $AS_c $lip_c]
    set dist_c_AS_lip [expr (abs ($AS_cz - $lip_cz))]
    puts $out8 "$i $AS_cz $lip_cz  $vd_AS_lip $dist_c_AS_lip"

    $AS delete
    $lip delete
    

}   
#close $out1
#close $out2
#close $out3
#close $out4
#close $out6
#close $out7
close $out8

mol delete all

quit


