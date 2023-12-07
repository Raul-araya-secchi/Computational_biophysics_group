### Measuring angles between principal axis of helix A and B of GHR-AA dimer ###

package require Orient
namespace import Orient::orient
##5OEK##

#reference structure#
#mol new /media/4TB_HDD/raul/projects/synergy/SPTMRs/GHR/dimer/5OEK_POPC_charmm-gui/step5_assembly.xplor.psf
mol addfile /media/4TB_HDD/raul/projects/synergy/SPTMRs/GHR/dimer/5OEK_POPC_charmm-gui/step6.6_equilibration.gro

#set H1_ref [atomselect top "protein and segname PROA and resid 268 to 291"]
#set H2_ref [atomselect top "protein and segname PROB and resid 268 to 291"]
#set CA_ref [atomselect top "protein and name CA"]
#set all_ref [atomselect top all]

#set Iref [draw principalaxes $H1_ref]
#set A_ref [orient $H1_ref [lindex $I 2] {0 0 1}]
#$all_ref move $A_ref

#trajectory#
mol new /media/4TB_HDD/raul/projects/synergy/SPTMRs/GHR/dimer/GHRfl_GFP_50EKd1_POPC_charmm-gui/m3pws10/step6.6_equilibration_PL.gro
mol addfile /media/4TB_HDD/raul/projects/synergy/SPTMRs/GHR/dimer/GHRfl_GFP_50EKd1_POPC_charmm-gui/m3pws10/GHRfl_GFP_50EKd1_POPC_m3pws10_1_8_500ps_PLpbcctmd.xtc waitfor all 

set outfile [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/GHR/dimer/GHRfl_GFP_50EKd1_POPC_charmm-gui/m3pws10/results/H1_H2_angle_noalign_GHRfl_GFP_50EKd1_POPC_m3pws10_1_8_500ps.dat w]
set outfile2 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/GHR/dimer/GHRfl_GFP_50EKd1_POPC_charmm-gui/m3pws10/results/H1_H2_Zcomp_noalign_GHRfl_GFP_50EKd1_POPC_m3pws10_1_8_500ps.dat w]

set PLCpcA    [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/GHR/dimer/GHRfl_GFP_50EKd1_POPC_charmm-gui/m3pws10/results/PLCpcA_GHRfl_GFP_50EKd1_POPC_m3pws10_1_8_500ps.dat w]
set PLCpcApo4 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/GHR/dimer/GHRfl_GFP_50EKd1_POPC_charmm-gui/m3pws10/results/PLCpcApo4_GHRfl_GFP_50EKd1_POPC_m3pws10_1_8_500ps.dat w]
set PLCpcB    [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/GHR/dimer/GHRfl_GFP_50EKd1_POPC_charmm-gui/m3pws10/results/PLCpcB_GHRfl_GFP_50EKd1_POPC_m3pws10_1_8_500ps.dat w]
set PLCpcBpo4 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/GHR/dimer/GHRfl_GFP_50EKd1_POPC_charmm-gui/m3pws10/results/PLCpcBpo4_GHRfl_GFP_50EKd1_POPC_m3pws10_1_8_500ps.dat w]
set PPcAB     [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/GHR/dimer/GHRfl_GFP_50EKd1_POPC_charmm-gui/m3pws10/results/PPcAB_GHRfl_GFP_50EKd1_POPC_m3pws10_1_8_500ps.dat w]
set PPcBA     [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/GHR/dimer/GHRfl_GFP_50EKd1_POPC_charmm-gui/m3pws10/results/PPcBA_GHRfl_GFP_50EKd1_POPC_m3pws10_1_8_500ps.dat w]

set all_rg_out   [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/GHR/dimer/GHRfl_GFP_50EKd1_POPC_charmm-gui/m3pws10/results/all_Rg_GHRfl_GFP_50EKd1_POPC_m3pws10_1_8_500ps.dat w]
set ecdfl_rg_out [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/GHR/dimer/GHRfl_GFP_50EKd1_POPC_charmm-gui/m3pws10/results/ECD_Rg_GHRfl_GFP_50EKd1_POPC_m3pws10_1_8_500ps.dat w]
set icd_rg_out   [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/GHR/dimer/GHRfl_GFP_50EKd1_POPC_charmm-gui/m3pws10/results/ICD_Rg_GHRfl_GFP_50EKd1_POPC_m3pws10_1_8_500ps.dat w]

set nf [molinfo top get numframes]
#TMDs
set H1 [atomselect top "index 0 to 1933 and resid 252 to 270 and name BB"]
set H2 [atomselect top "index 1934 to 3867 and resid 252 to 270 and name BB"]
#set CA [atomselect top "protein and name CA"]
#set all [atomselect top all]

#Selections for Rg

set all   [atomselect top "same resid as name BB"] 
set all_A [atomselect top "index 0 to 1933 and same resid as name BB"] 
set all_B [atomselect top "index 1934 to 3867 and same resid as name BB"] 
#ECD
set ECDfl   [atomselect top "same resid as name BB and resid 1 to 238"] 
set ECDfl_A [atomselect top "index 0 to 1933 and same resid as name BB and resid 1 to 238"]
set ECDfl_B [atomselect top "index 1934 to 3867 and same resid as name BB and resid 1 to 238"]
#ICD -- #ICD N-ter considered as the first residue of the ICD w/o contacts with the lipids.
set ICD_gfp [atomselect top "same resid as name BB and resid 296 to 849"] 
set ICD_gfp_A [atomselect top "index 0 to 1933 and same resid as name BB and resid 296 to 846"] 
set ICD_gfp_B [atomselect top "index 1934 to 3867 and same resid as name BB and resid 296 to 846"] 

set ICD   [atomselect top "same resid as name BB and resid 296 to 622"]
set ICD_A [atomselect top "index 0 to 1933 and same resid as name BB and resid 296 to 622"]
set ICD_B [atomselect top "index 1934 to 3867 and same resid as name BB and resid 296 to 622"]

#set I [draw principalaxes $H1]
#set A [orient $H1 [lindex $I 2] {0 0 1}]

for {set i 1} {$i <= $nf} {incr i} {
    $H1 frame $i
    $H2 frame $i
    #$all frame $i
    #set M [measure fit $CA $CA_ref]
    #$all move $M
    set I [draw principalaxes $H1]
    set J [draw principalaxes $H2]
    set VI [lindex $I 2]
    set VJ [lindex $J 2]
    set VIu [vecscale $VI [expr 1/[veclength $VI]]]
    set VJu [vecscale $VJ [expr 1/[veclength $VJ]]]
    set VIuz [lindex $VIu 2]
    set VJuz [lindex $VJu 2] 
    set vectilt [vecdot $VIu $VJu]
    set H1z [vecdot $VIu {0 0 1}]
    set H2z [vecdot $VJu {0 0 1}]
    set HHangle [expr 57.2958*acos($vectilt)]
    set H1zangle [expr 57.2958*acos($H1z)]
    set H2zangle [expr 57.2958*acos($H2z)]
    puts $outfile "$i $HHangle $H1zangle $H2zangle"
    puts $outfile2 "$i $VIuz $VJuz"
 # PLC
   set contactPC_A [atomselect top "index 0 to 1933 andname BB and pbwithin 7 of resname POPC" frame $i]
   set contactPC_po4_A [atomselect top "index 0 to 1933 and name BB and pbwithin 7 of name PO4 and resname POPC" frame $i]
   
   set contactPC_B [atomselect top "index 1934 to 3867 andname BB and pbwithin 7 of resname POPC"]
   set contactPC_po4_B [atomselect top "index 1934 to 3867 andname BB and pbwithin 7 of name PO4 and resname POPC" frame $i]
   
   set contactPP_AB [atomselect top "index 0 to 1933 and name BB and pbwithin 7 of index 1934 to 3867 and name BB" frame $i]
   set contactPP_BA [atomselect top "index 1934 to 3867 and name BB and pbwithin 7 of index 0 to 1933 and name BB" frame $i]
   
   puts $PLCpcA "$i [$contactPC_A num] [$contactPC_A get resid]" 
   puts $PLCpcApo4 "$i [$contactPC_po4_A  num] [$contactPC_po4_A  get resid]" 

   puts $PLCpcB "$i [$contactPC_B num] [$contactPC_B get resid]" 
   puts $PLCpcBpo4 "$i [$contactPC_po4_B num] [$contactPC_po4_B get resid]"
   
   puts $PPcAB "$i [$contactPP_AB num] [$contactPP_AB get resid]" 
   puts $PPcBA "$i [$contactPP_BA num] [$contactPP_BA get resid]"

 # Rg  
    $all   frame $i 
    $all_A frame $i 
    $all_B frame $i  
    set allRg   [measure rgyr $all]
    set allRg_A [measure rgyr $all_A]
    set allRg_B [measure rgyr $all_B]
    puts $all_rg_out "$i $allRg $allRg_A $allRg_B"
    #ECD
    $ECDfl   frame $i
    $ECDfl_A frame $i
    $ECDfl_B frame $i
    set ECDflRg   [measure rgyr $ECDfl]
    set ECDflRg_A [measure rgyr $ECDfl_A]
    set ECDflRg_B [measure rgyr $ECDfl_B]
    puts $ecdfl_rg_out "$i $ECDflRg $ECDflRg_A $ECDflRg_B"
    #ICD      
    $ICD_gfp   frame $i
    $ICD_gfp_A frame $i
    $ICD_gfp_B frame $i
    $ICD   frame $i
    $ICD_A frame $i
    $ICD_B frame $i
    set ICDRg   [measure rgyr $ICD]
    set ICDRg_A [measure rgyr $ICD_A]
    set ICDRg_B [measure rgyr $ICD_B]
    set ICD_gfpRg [measure rgyr $ICD_gfp]
    set ICD_gfpRg_A [measure rgyr $ICD_gfp_A]
    set ICD_gfpRg_B [measure rgyr $ICD_gfp_B]
    puts $icd_rg_out "$i $ICDRg $ICDRg_A $ICDRg_B $ICD_gfpRg $ICD_gfpRg_A $ICD_gfpRg_B"
}

close $outfile
close $outfile2
close $PLCpcA   
close $PLCpcApo4
close $PLCpcB   
close $PLCpcBpo4
close $PPcAB    
close $PPcBA    
close $all_rg_out  
close $ecdfl_rg_out
close $icd_rg_out  

mol delete all

quit