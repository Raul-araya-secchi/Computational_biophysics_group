### This computes the contacts between protein and lipids. Produces a total numenr of contact and a resid list.


### All-atom sims ###

## TMD + ICMJ ##

## PC ##
# proc LPcontact1 { frame } {
#   global contact output_name 
#   set out1 [open /Users/raul/Trajectories/SPTMRs_TMDs/AA/PRLR_ICJM/27NI_ICJM_PC_100x100x30_hexa/PL_contacts/PLcontact_$output_name.dat a+]
#   set out2 [open /Users/raul/Trajectories/SPTMRs_TMDs/AA/PRLR_ICJM/27NI_ICJM_PC_100x100x30_hexa/PL_contacts/PLcontact_icjm_$output_name.dat a+]
# 
#   set contact [atomselect top "(protein and name CA) and pbwithin 7 of resname POPC and name P"]
#   set contact_icjm [atomselect top "(protein and resid 235 to 255 and name CA) and pbwithin 7 of resname POPC and name P"]
#   $contact frame $frame
#   $contact_icjm frame $frame
#   puts $out1 "$frame: [$contact num] [$contact get resid]"
#   puts $out2 "$frame: [$contact_icjm num] [$contact_icjm get resid]"
#   
# close $out1
# close $out2
# 
# }
# 
# source /Users/raul/Documents/Projects/analysis_tools/bigdcd_v2.tcl
# 
# set pdb "/Users/raul/Trajectories/SPTMRs_TMDs/AA/PRLR_ICJM/27NI_ICJM_PC_100x100x30_hexa/27NI-ICJM_PC_hexa_step7_fr0.pdb"
# 
# set xtc "/Users/raul/Trajectories/SPTMRs_TMDs/AA/PRLR_ICJM/27NI_ICJM_PC_100x100x30_hexa/27NI-ICJM_PC_hexa_step7_1-27_20ps_pbcc.xtc"
# 
# set output_name "27NI_tmd-icjm_PC1_1-27" 
# 
# set out3 [open /Users/raul/Trajectories/SPTMRs_TMDs/AA/PRLR_ICJM/27NI_ICJM_PC_100x100x30_hexa/PL_contacts/PLcontact_$output_name.dat w]
# set out4 [open /Users/raul/Trajectories/SPTMRs_TMDs/AA/PRLR_ICJM/27NI_ICJM_PC_100x100x30_hexa/PL_contacts/PLcontact_icjm_$output_name.dat w]
# mol load pdb $pdb 
# 
# #set LPcontact [atomselect top "protein and name CA and pbwithin 7 of lipids and noh"]
# bigdcd LPcontact1 xtc $xtc
# bigdcd_wait
# close $out3
# close $out4
# mol delete all

## PC-PE-PS ##

# proc LPcontact2 { frame } {
#   global contact output_name 
#   set out1 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/AA/PRLR_ICJM_AA_PCPEPIP2/results/PLC/PLcontact_$output_name.dat a+]
#   set out2 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/AA/PRLR_ICJM_AA_PCPEPIP2/results/PLC/PLcontact_PC_$output_name.dat a+]
#   set out3 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/AA/PRLR_ICJM_AA_PCPEPIP2/results/PLC/PLcontact_PS_$output_name.dat a+]
#   set out4 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/AA/PRLR_ICJM_AA_PCPEPIP2/results/PLC/PLcontact_PE_$output_name.dat a+]
#   
# 
#   
#   set contact    [atomselect top "(protein and name CA) and pbwithin 7 of resname POPC POPE POPI and noh"]
#   set contact_PC [atomselect top "(protein and name CA) and pbwithin 7 of resname POPC and name P"]
#   set contact_PI2 [atomselect top "(protein and name CA) and pbwithin 7 of resname POPI and name P"]
#   set contact_PE [atomselect top "(protein and name CA) and pbwithin 7 of resname POPE and name P"]
#   
#   $contact frame $frame
#   $contact_PC frame $frame
#   $contact_PS frame $frame
#   $contact_PE frame $frame
#   
#   puts $out1 "$frame: [$contact num] [$contact get resid]"
#   puts $out2 "$frame: [$contact_PC num] [$contact_PC get resid]"
#   puts $out3 "$frame: [$contact_PS num] [$contact_PS get resid]"
#   puts $out4 "$frame: [$contact_PE num] [$contact_PE get resid]"
#   
# close $out1
# close $out2
# close $out3
# close $out4
# 
# }

# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl
# 
# set gro "/home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/AA/PRLR_ICJM_AA_PCPEPIP2/step6.6_equilibration_PLI.gro"
# 
# set xtc "/home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/AA/PRLR_ICJM_AA_PCPEPIP2/PRLR_ICJMaa_PCPEPIP2_1-46_20ps_PLI.xtc"
# 
# set output_name "PRLR_ICJMaa_PCPEPIP2_1-46_20ps" 
# 
#   set out9  [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/AA/PRLR_ICJM_AA_PCPEPIP2/results/PLC/PLcontact_$output_name.dat w]
#   set out10 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/AA/PRLR_ICJM_AA_PCPEPIP2/results/PLC/PLcontact_PC_$output_name.dat w]
#   set out11 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/AA/PRLR_ICJM_AA_PCPEPIP2/results/PLC/PLcontact_PS_$output_name.dat w]
#   set out12 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/AA/PRLR_ICJM_AA_PCPEPIP2/results/PLC/PLcontact_PE_$output_name.dat w]
# 
# mol load gro $gro 
# bigdcd LPcontact2 xtc $xtc
# bigdcd_wait
# close $out9
# close $out10
# close $out11
# close $out12
# 
# mol delete all
# 
# ### PC-PE-PIP2 ##
# 
  proc LPcontact2 { frame } {
  global contact output_name 
  set out1 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/AA/PRLR_ICJM_AA_PCPEPIP2/results/PLC/PLcontact_$output_name.dat a+]
  set out2 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/AA/PRLR_ICJM_AA_PCPEPIP2/results/PLC/PLcontact_PC_$output_name.dat a+]
  set out3 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/AA/PRLR_ICJM_AA_PCPEPIP2/results/PLC/PLcontact_PIP2_$output_name.dat a+]
  set out4 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/AA/PRLR_ICJM_AA_PCPEPIP2/results/PLC/PLcontact_PE_$output_name.dat a+]

#   
  set contact    [atomselect top "(protein and name CA) and pbwithin 7 of resname POPC POPS POPI and noh"]
  set contact_PC [atomselect top "(protein and name CA) and pbwithin 7 of resname POPC and name P"]
  set contact_PIP2 [atomselect top "(protein and name CA) and pbwithin 7 of resname POPI2 and name P"]
  set contact_PE [atomselect top "(protein and name CA) and pbwithin 7 of resname POPE and name P"]

  
  $contact frame $frame
  $contact_PC frame $frame
  $contact_PIP2 frame $frame
  $contact_PE frame $frame
  
  puts $out1 "$frame: [$contact num] [$contact get resid]"
  puts $out2 "$frame: [$contact_PC num] [$contact_PC get resid]"
  puts $out3 "$frame: [$contact_PIP2 num] [$contact_PIP2 get resid]"
  puts $out4 "$frame: [$contact_PE num] [$contact_PE get resid]"

close $out1
close $out2
close $out3
close $out4

}

source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

set gro "/home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/AA/PRLR_ICJM_AA_PCPEPIP2/step6.6_equilibration_PLI.gro"

set xtc "/home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/AA/PRLR_ICJM_AA_PCPEPIP2/PRLR_ICJMaa_PCPEPIP2_1-46_20ps_PLI.xtc"

set output_name "PRLR_ICJMaa_PCPEPIP2_1-46_20ps" 

  set out9  [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/AA/PRLR_ICJM_AA_PCPEPIP2/results/PLC/PLcontact_$output_name.dat w]
  set out10 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/AA/PRLR_ICJM_AA_PCPEPIP2/results/PLC/PLcontact_PC_$output_name.dat w]
  set out11 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/AA/PRLR_ICJM_AA_PCPEPIP2/results/PLC/PLcontact_PIP2_$output_name.dat w]
  set out12 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/AA/PRLR_ICJM_AA_PCPEPIP2/results/PLC/PLcontact_PE_$output_name.dat w]
# 
mol load gro $gro 
bigdcd LPcontact2 xtc $xtc
bigdcd_wait
close $out9
close $out10
close $out11
close $out12

 #### CG simulations -- PRLR_TMD+LID1-2 ####
 
 ## PRLR_TMD+LID1-2 (PC-PE-PIP2) ##
 
# proc LPcontact { frame } {
#   #ALL TMD+LIDs
#   global  output_name 
#   set out1 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_total_$output_name.dat a+]
#   set out2 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PC_$output_name.dat a+]
#   set out3 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PE_$output_name.dat a+]
#   set out4 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PIP2_$output_name.dat a+]
#   
#   set out5 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_total_po4_$output_name.dat a+]
#   set out6 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PC_po4_$output_name.dat a+]
#   set out7 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PE_po4_$output_name.dat a+]
#   set out8 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PIP2_po4_$output_name.dat a+]
#   
#   # LID1-2
# 
#   set out9  [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_total_lids_$output_name.dat a+]
#   set out10 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PC_lids_$output_name.dat a+]
#   set out11 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PE_lids_$output_name.dat a+]
#   set out12 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PIP2_lids_$output_name.dat a+]
#   
#   set out13 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_total_lids_po4_$output_name.dat a+]
#   set out14 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PC_lids_po4_$output_name.dat a+]
#   set out15 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PE_lids_po4_$output_name.dat a+]
#   set out16 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PIP2_lids_po4_$output_name.dat a+]
#   
#   #LID1
#   set out17 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_total_lid1_$output_name.dat a+]
#   set out18 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PC_lid1_$output_name.dat a+]
#   set out19 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PE_lid1_$output_name.dat a+]
#   set out20 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PIP2_lid1_$output_name.dat a+]
#   
#   set out21 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_total_lid1_po4_$output_name.dat a+]
#   set out22 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PC_lid1_po4_$output_name.dat a+]
#   set out23 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PE_lid1_po4_$output_name.dat a+]
#   set out24 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PIP2_lid1_po4_$output_name.dat a+]
#   
#   #LID2
#   set out25 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_total_lid2_$output_name.dat a+]
#   set out26 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PC_lid2_$output_name.dat a+]
#   set out27 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PE_lid2_$output_name.dat a+]
#   set out28 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PIP2_lid2_$output_name.dat a+]
#   
#   set out29 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_total_lid2_po4_$output_name.dat a+]
#   set out30 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PC_lid2_po4_$output_name.dat a+]
#   set out31 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PE_lid2_po4_$output_name.dat a+]
#   set out32 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PIP2_lid2_po4_$output_name.dat a+]
#   
#   #set outA  [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/zpos_LLpo4_$output_name.dat a+] 
#   set outB [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/zpos_LID1_$output_name.dat a+]
#   set outC [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/zpos_LID2_$output_name.dat a+]
#   set outD [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/zpos_ICJM_$output_name.dat a+]
#   
#   # TMD + LIDS
#   set contactL [atomselect top "name BB and pbwithin 7 of resname POPC POPE POP2"]
#   set contactPC [atomselect top "name BB and pbwithin 7 of resname POPC"]
#   set contactPE [atomselect top "name BB and pbwithin 7 of resname POPE"]
#   set contactPI2 [atomselect top "name BB and pbwithin 7 of resname POP2"]
#   
#   set contactL_po4 [atomselect top "name BB and pbwithin 7 of  name PO4 and resname POPC POPE POP2"]
#   set contactPC_po4 [atomselect top "name BB and pbwithin 7 of name PO4 and resname POPC"]
#   set contactPE_po4 [atomselect top "name BB and pbwithin 7 of name PO4 and resname POPE"]
#   set contactPI2_po4 [atomselect top "name BB and pbwithin 7 of name PO4 and resname POP2"]
#   
#   # LID1-2
#   set contactL_lid [atomselect top   "name BB and resid 32 to 180 and pbwithin 7 of resname POPC POPE POP2"]
#   set contactPC_lid [atomselect top  "name BB and resid 32 to 180 and pbwithin 7 of resname POPC"]
#   set contactPE_lid [atomselect top  "name BB and resid 32 to 180 and pbwithin 7 of resname POPE"]
#   set contactPI2_lid [atomselect top "name BB and resid 32 to 180 and pbwithin 7 of resname POP2"]
#   
#   set contactL_lid_po4 [atomselect top   "name BB and resid 32 to 180 and pbwithin 7 of name PO4 and resname POPC POPE POP2"]
#   set contactPC_lid_po4 [atomselect top  "name BB and resid 32 to 180 and pbwithin 7 of name PO4 and resname POPC"]
#   set contactPE_lid_po4 [atomselect top  "name BB and resid 32 to 180 and pbwithin 7 of name PO4 and resname POPE"]
#   set contactPI2_lid_po4 [atomselect top "name BB and resid 32 to 180 and pbwithin 7 of name PO4 and resname POP2"]
#   
#   #LID1 contact number only
#   set contactL_lid1 [atomselect top   "name BB and resid 32 to 97 and pbwithin 7 of resname POPC POPE POP2"]
#   set contactPC_lid1 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of resname POPC"]
#   set contactPE_lid1 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of resname POPE"]
#   set contactPI2_lid1 [atomselect top "name BB and resid 32 to 97 and pbwithin 7 of resname POP2"]
#   
#   set contactL_lid1_po4 [atomselect top   "name BB and resid 32 to 97 and pbwithin 7 of name PO4 and resname POPC POPE POP2"]
#   set contactPC_lid1_po4 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of name PO4 and resname POPC"]
#   set contactPE_lid1_po4 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of name PO4 and resname POPE"]
#   set contactPI2_lid1_po4 [atomselect top "name BB and resid 32 to 97 and pbwithin 7 of name PO4 and resname POP2"]
#   
#   #LID2 contact number only
#   set contactL_lid2 [atomselect top   "name BB and resid 147 to 180 and pbwithin 7 of resname POPC POPE POP2"]
#   set contactPC_lid2 [atomselect top  "name BB and resid 147 to 180 and pbwithin 7 of resname POPC"]
#   set contactPE_lid2 [atomselect top  "name BB and resid 147 to 180 and pbwithin 7 of resname POPE"]
#   set contactPI2_lid2 [atomselect top "name BB and resid 147 to 180 and pbwithin 7 of resname POP2"]
#   
#   set contactL_lid2_po4 [atomselect top   "name BB and resid 147 to 180 and pbwithin 7 of name PO4 and resname POPC POPE POP2"]
#   set contactPC_lid2_po4 [atomselect top  "name BB and resid 147 to 180 and pbwithin 7 of name PO4 and resname POPC"]
#   set contactPE_lid2_po4 [atomselect top  "name BB and resid 147 to 180 and pbwithin 7 of name PO4 and resname POPE"]
#   set contactPI2_lid2_po4 [atomselect top "name BB and resid 147 to 180 and pbwithin 7 of name PO4 and resname POP2"]
#   
#   # Z position
#   
#   set po4 [atomselect top "name PO4 and z < 0"]
#   #set po4_com [measure center $po4 weight mass]
#   
#   set LID1 [atomselect top "name BB and resid 32 to 97"]
#   set LID2 [atomselect top "name BB and resid 147 to 180"]
#   set ICJM [atomselect top "name BB and resid 32 to 52"]
#   
#   set LID1_com [measure center $LID1 weight mass]
#   set LID2_com [measure center $LID2 weight mass]
#   set ICJM_com [measure center $ICJM weight mass]
#   
#   $contactL frame $frame
#   $contactPC frame $frame
#   $contactPE frame $frame
#   $contactPI2 frame $frame
#   
#   $contactL_po4 frame $frame
#   $contactPC_po4 frame $frame
#   $contactPE_po4 frame $frame
#   $contactPI2_po4 frame $frame
#   
#   $contactL_lid frame $frame
#   $contactPC_lid frame $frame
#   $contactPE_lid frame $frame
#   $contactPI2_lid frame $frame
#   
#   $contactL_lid_po4 frame $frame
#   $contactPC_lid_po4 frame $frame
#   $contactPE_lid_po4 frame $frame
#   $contactPI2_lid_po4 frame $frame
#   
#   $contactL_lid1 frame $frame
#   $contactPC_lid1 frame $frame
#   $contactPE_lid1 frame $frame
#   $contactPI2_lid1 frame $frame
#   
#   $contactL_lid1_po4 frame $frame
#   $contactPC_lid1_po4 frame $frame
#   $contactPE_lid1_po4 frame $frame
#   $contactPI2_lid1_po4 frame $frame
#   
#   $contactL_lid2 frame $frame
#   $contactPC_lid2 frame $frame
#   $contactPE_lid2 frame $frame
#   $contactPI2_lid2 frame $frame
#   
#   $contactL_lid2_po4 frame $frame
#   $contactPC_lid2_po4 frame $frame
#   $contactPE_lid2_po4 frame $frame
#   $contactPI2_lid2_po4 frame $frame
#   
#  # $po4      frame $frame
#   $LID1     frame $frame
#   $LID2     frame $frame
#   $ICJM     frame $frame
#   
#   set LID1_com [measure center $LID1 weight mass]
#   set LID2_com [measure center $LID2 weight mass]
#   set ICJM_com [measure center $ICJM weight mass]
#   
#   puts $out1 "$frame [$contactL num] [$contactL get resid]"
#   puts $out2 "$frame [$contactPC num] [$contactPC get resid]" 
#   puts $out3 "$frame [$contactPE num] [$contactPE get resid]" 
#   puts $out4 "$frame [$contactPI2 num] [$contactPI2 get resid]"
#   
#   puts $out5 "$frame [$contactL_po4 num] [$contactL_po4 get resid]"
#   puts $out6 "$frame [$contactPC_po4 num] [$contactPC_po4 get resid]" 
#   puts $out7 "$frame [$contactPE_po4 num] [$contactPE_po4 get resid]" 
#   puts $out8 "$frame [$contactPI2_po4 num] [$contactPI2_po4 get resid]"
#   
#   ########
#   puts $out9  "$frame [$contactL_lid num] [$contactL_lid get resid]"
#   puts $out10 "$frame [$contactPC_lid num] [$contactPC_lid get resid]" 
#   puts $out11 "$frame [$contactPE_lid num] [$contactPE_lid get resid]" 
#   puts $out12 "$frame [$contactPI2_lid num] [$contactPI2_lid get resid]"
#   
#   puts $out13 "$frame [$contactL_lid_po4 num] [$contactL_lid_po4 get resid]"
#   puts $out14 "$frame [$contactPC_lid_po4 num] [$contactPC_lid_po4 get resid]" 
#   puts $out15 "$frame [$contactPE_lid_po4 num] [$contactPE_lid_po4 get resid]" 
#   puts $out16 "$frame [$contactPI2_lid_po4 num] [$contactPI2_lid_po4 get resid]"
# 
#   ########
#   puts $out17 "$frame [$contactL_lid1 num]"
#   puts $out18 "$frame [$contactPC_lid1 num]" 
#   puts $out19 "$frame [$contactPE_lid1 num]" 
#   puts $out20 "$frame [$contactPI2_lid1 num]"
#   
#   puts $out21 "$frame [$contactL_lid1_po4 num]"
#   puts $out22 "$frame [$contactPC_lid1_po4 num]" 
#   puts $out23 "$frame [$contactPE_lid1_po4 num]" 
#   puts $out24 "$frame [$contactPI2_lid1_po4 num]"
#   
#   ########
#   puts $out25 "$frame [$contactL_lid2_po4 num]"
#   puts $out26 "$frame [$contactPC_lid2_po4 num]" 
#   puts $out27 "$frame [$contactPE_lid2_po4 num]" 
#   puts $out28 "$frame [$contactPI2_lid2_po4 num]"
#   
#   puts $out29 "$frame [$contactL_lid2_po4 num]"
#   puts $out30 "$frame [$contactPC_lid2_po4 num]" 
#   puts $out31 "$frame [$contactPE_lid2_po4 num]" 
#   puts $out32 "$frame [$contactPI2_lid2_po4 num]"
#   
#   #puts $outA "$frame $po4_com"  
#   puts $outB "$frame $LID1_com" 
#   puts $outC "$frame $LID2_com" 
#   puts $outD "$frame $ICJM_com" 
# 
# close $out1
# close $out2
# close $out3
# close $out4
# close $out5
# close $out6
# close $out7
# close $out8
# close $out9
# close $out10
# close $out11
# close $out12
# close $out13
# close $out14
# close $out15
# close $out16
# close $out17
# close $out18
# close $out19
# close $out20
# close $out21
# close $out22
# close $out23
# close $out24
# close $out25
# close $out26
# close $out27
# close $out28
# close $out29
# close $out30
# close $out31
# close $out32
# #close $outA
# close $outB
# close $outC
# close $outD
# }
# 
# source /Users/raul/Documents/Projects/analysis_tools/bigdcd_v2.tcl
# 
# set psf "/Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/step5_assembly.xplor_ext.psf"
# 
# set xtc "/Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PRLR_LID1_2_PCPEPIP2_s7_1-29_20nspbcc.xtc"
#                                                                                                                            
# set output_name "PRLR+LID1-2_1-29_PCPEPI2_cg" 
# 
#   set out33 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_total_$output_name.dat w]
#   set out34 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PC_$output_name.dat w]
#   set out35 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PE_$output_name.dat w]
#   set out36 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PIP2_$output_name.dat w]
#   
#   set out37 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_total_po4_$output_name.dat w]
#   set out38 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PC_po4_$output_name.dat w]
#   set out39 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PE_po4_$output_name.dat w]
#   set out40 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PIP2_po4_$output_name.dat w]
#   
#   # LID1-2
# 
#   set out41 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_total_lids_$output_name.dat w]
#   set out42 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PC_lids_$output_name.dat w]
#   set out43 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PE_lids_$output_name.dat w]
#   set out44 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PIP2_lids_$output_name.dat w]
#   
#   set out45 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_total_lids_po4_$output_name.dat w]
#   set out46 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PC_lids_po4_$output_name.dat w]
#   set out47 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PE_lids_po4_$output_name.dat w]
#   set out48 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PIP2_lids_po4_$output_name.dat w]
#   
#   #LID1
#   set out49 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_total_lid1_$output_name.dat w]
#   set out50 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PC_lid1_$output_name.dat w]
#   set out51 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PE_lid1_$output_name.dat w]
#   set out52 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PIP2_lid1_$output_name.dat w]
#   
#   set out53 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_total_lid1_po4_$output_name.dat w]
#   set out54 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PC_lid1_po4_$output_name.dat w]
#   set out55 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PE_lid1_po4_$output_name.dat w]
#   set out56 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PIP2_lid1_po4_$output_name.dat w]
#   
#   #LID2
#   set out57 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_total_lid2_$output_name.dat w]
#   set out58 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PC_lid2_$output_name.dat w]
#   set out59 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PE_lid2_$output_name.dat w]
#   set out60 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PIP2_lid2_$output_name.dat w]
#   
#   set out61 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_total_lid2_po4_$output_name.dat w]
#   set out62 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PC_lid2_po4_$output_name.dat w]
#   set out63 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PE_lid2_po4_$output_name.dat w]
#   set out64 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/PLcontact_PIP2_lid2_po4_$output_name.dat w]
#   
#   #z position of Lower leaflet PO4 and z-position of venter of mass of ICKM and LID1 and LID2.
#   #set out65 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/zpos_LLpo4_$output_name.dat w] 
#   set out66 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/zpos_LID1_$output_name.dat w]
#   set out67 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/zpos_LID2_$output_name.dat w]
#   set out68 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/PL_contacts/zpos_ICJM_$output_name.dat w]
#   
# mol load psf $psf 
# #set LPcontact [atomselect top "protein and name CA and pbwithin 7 of lipids and noh"]
# bigdcd LPcontact xtc $xtc
# bigdcd_wait
# close $out33
# close $out34
# close $out35
# close $out36
# close $out37
# close $out38
# close $out39
# close $out40
# close $out41
# close $out42
# close $out43
# close $out44
# close $out45
# close $out46
# close $out47
# close $out48
# close $out49
# close $out50
# close $out51
# close $out52
# close $out53
# close $out54
# close $out55
# close $out56
# close $out57
# close $out58
# close $out59
# close $out60
# close $out61
# close $out62
# close $out63
# close $out64
# #close $out65
# close $out66
# close $out67
# close $out68
# mol delete all
# 
#  ## PRLR_TMD+LID1-2 (PC) ##
#  
#  proc LPcontact1 { frame } {
#    #ALL TMD+LIDs
#    global  output_name 
#    
#    #ALL TMD+LIDs
#    set out1 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_LID1-2_martini/PL_contacts/PLcontact_PC_$output_name.dat a+]
#    set out2 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_LID1-2_martini/PL_contacts/PLcontact_PC_po4_$output_name.dat a+]
#    
#    # LID1-2
#    set out3 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_LID1-2_martini/PL_contacts/PLcontact_PC_lids_$output_name.dat a+]
#    set out4 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_LID1-2_martini/PL_contacts/PLcontact_PC_lids_po4_$output_name.dat a+]
#    
#    #LID1 contact number only
#    set out5 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_LID1-2_martini/PL_contacts/PLcontact_PC_lids1_$output_name.dat a+]
#    set out6 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_LID1-2_martini/PL_contacts/PLcontact_PC_lids1_po4_$output_name.dat a+]
#    
#    #LID2 contact number only
#    set out7 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_LID1-2_martini/PL_contacts/PLcontact_PC_lids2_$output_name.dat a+]
#    set out8 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_LID1-2_martini/PL_contacts/PLcontact_PC_lids2_po4_$output_name.dat a+]
#    
#    #set outA  [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_LID1-2_martini/PL_contacts/zpos_LLpo4_$output_name.dat a+] 
#    set outB [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_LID1-2_martini/PL_contacts/zpos_LID1_$output_name.dat a+]
#    set outC [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_LID1-2_martini/PL_contacts/zpos_LID2_$output_name.dat a+]
#    set outD [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_LID1-2_martini/PL_contacts/zpos_ICJM_$output_name.dat a+]
#    
#    #ALL TMD+LIDs
#    set contactPC [atomselect top "name BB and pbwithin 7 of resname POPC"]
#    set contactPC_po4 [atomselect top "name BB and pbwithin 7 of name PO4 and resname POPC"]
#    
#    # LID1-2
#    set contactPC_lid [atomselect top  "name BB and resid 32 to 180 and pbwithin 7 of resname POPC"]
#    set contactPC_lid_po4 [atomselect top  "name BB and resid 32 to 180 and pbwithin 7 of name PO4 and resname POPC"]
#    
#    #LID1 contact number only
#    set contactPC_lid1 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of resname POPC"]
#    set contactPC_lid1_po4 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of name PO4 and resname POPC"]
# 
#    #LID2 contact number only
#    set contactPC_lid2 [atomselect top  "name BB and resid 147 to 180 and pbwithin 7 of resname POPC"]
#    set contactPC_lid2_po4 [atomselect top  "name BB and resid 147 to 180 and pbwithin 7 of name PO4 and resname POPC"]
# 
#    #set po4 [atomselect top "name PO4 and z <0"]
#    #set po4_com [measure center $po4 weight mass]
#   
#    set LID1 [atomselect top "name BB and resid 32 to 97"]
#    set LID2 [atomselect top "name BB and resid 147 to 180"]
#    set ICJM [atomselect top "name BB and resid 32 to 52"]
#   
#    set LID1_com [measure center $LID1 weight mass]
#    set LID2_com [measure center $LID2 weight mass]
#    set ICJM_com [measure center $ICJM weight mass]
# # 
#    $contactPC frame $frame
#    $contactPC_lid frame $frame
#    $contactPC_lid1 frame $frame
#    $contactPC_lid2 frame $frame
#    
#    $contactPC_po4 frame $frame
#    $contactPC_lid_po4 frame $frame
#    $contactPC_lid1_po4 frame $frame
#    $contactPC_lid2_po4 frame $frame
# 
#   # $po4      frame $frame
#    $LID1     frame $frame
#    $LID2     frame $frame
#    $ICJM     frame $frame
#    #$po4_com  frame $frame
#    
#    set LID1_com [measure center $LID1 weight mass]
#    set LID2_com [measure center $LID2 weight mass]
#    set ICJM_com [measure center $ICJM weight mass]
#    
#    puts $out1 "$frame [$contactPC num] [$contactPC get resid]" 
#    puts $out2 "$frame [$contactPC_po4 num] [$contactPC_po4 get resid]" 
#    
#    puts $out3 "$frame [$contactPC_lid num] [$contactPC_lid get resid]" 
#    puts $out4 "$frame [$contactPC_lid_po4 num] [$contactPC_lid_po4 get resid]" 
#    
#    puts $out5 "$frame [$contactPC_lid1 num]" 
#    puts $out6 "$frame [$contactPC_lid1_po4 num]"
#    
#    puts $out7 "$frame [$contactPC_lid2 num]" 
#    puts $out8 "$frame [$contactPC_lid2_po4 num]"
#    
#    #puts $outA "$frame $po4_com"  
#    puts $outB "$frame $LID1_com" 
#    puts $outC "$frame $LID2_com" 
#    puts $outD "$frame $ICJM_com"
# 
# 
# close $out1
# close $out2
# close $out3
# close $out4
# close $out5
# close $out6
# close $out7
# close $out8
# #close $outA
# close $outB
# close $outC
# close $outD
#  }
#  
#  source /Users/raul/Documents/Projects/analysis_tools/bigdcd_v2.tcl
#  
#  set psf "/Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_LID1-2_martini/step5_assembly.xplor_ext.psf"
#  																								
#  set xtc "/Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_LID1-2_martini/PRLR_LID1_2_PC_s7_1-28_20ns_pbcc.xtc"
# 
#  set output_name "PRLR+LID1-2_1-28_PC_cg" 
#  
# #ALL TMD+LIDs
#    set out9  [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_LID1-2_martini/PL_contacts/PLcontact_PC_$output_name.dat w]
#    set out10 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_LID1-2_martini/PL_contacts/PLcontact_PC_po4_$output_name.dat w]
#    
#    # LID1-2
#    set out11 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_LID1-2_martini/PL_contacts/PLcontact_PC_lids_$output_name.dat w]
#    set out12 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_LID1-2_martini/PL_contacts/PLcontact_PC_lids_po4_$output_name.dat w]
#    
#    #LID1 contact number only
#    set out13 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_LID1-2_martini/PL_contacts/PLcontact_PC_lids1_$output_name.dat w]
#    set out14 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_LID1-2_martini/PL_contacts/PLcontact_PC_lids1_po4_$output_name.dat w]
#    
#    #LID2 contact number only
#    set out15 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_LID1-2_martini/PL_contacts/PLcontact_PC_lids2_$output_name.dat w]
#    set out16 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_LID1-2_martini/PL_contacts/PLcontact_PC_lids2_po4_$output_name.dat w]
# 
#  #z position of Lower leaflet PO4 and z-position of venter of mass of ICKM and LID1 and LID2.
#    #set out65 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_LID1-2_martini/PL_contacts/zpos_LLpo4_$output_name.dat w] 
#    set out66 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_LID1-2_martini/PL_contacts/zpos_LID1_$output_name.dat w]
#    set out67 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_LID1-2_martini/PL_contacts/zpos_LID2_$output_name.dat w]
#    set out68 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_LID1-2_martini/PL_contacts/zpos_ICJM_$output_name.dat w]
# # 
# mol load psf $psf 
# bigdcd LPcontact1 xtc $xtc
# bigdcd_wait
# close $out9
# close $out10
# close $out11
# close $out12
# close $out13
# close $out14
# close $out15
# close $out16
# #close $out65
# close $out66
# close $out67
# close $out68
# mol delete all
#  
#  #### PC-PS #####
#  
#  proc LPcontact { frame } {
#   #ALL TMD+LIDs
#   global  output_name 
#   set out1 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_total_$output_name.dat a+]
#   set out2 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_PC_$output_name.dat a+]
#   set out3 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_PS_$output_name.dat a+]
#   
#   
#   set out5 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_total_po4_$output_name.dat a+]
#   set out6 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_PC_po4_$output_name.dat a+]
#   set out7 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_PS_po4_$output_name.dat a+]
#   
#   # LID1-2
# 
#   set out9  [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_total_lids_$output_name.dat a+]
#   set out10 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_PC_lids_$output_name.dat a+]
#   set out11 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_PS_lids_$output_name.dat a+]
#   
#   set out13 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_total_lids_po4_$output_name.dat a+]
#   set out14 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_PC_lids_po4_$output_name.dat a+]
#   set out15 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_PS_lids_po4_$output_name.dat a+]
#   
#   #LID1
#   set out17 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_total_lid1_$output_name.dat a+]
#   set out18 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_PC_lid1_$output_name.dat a+]
#   set out19 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_PS_lid1_$output_name.dat a+]
#   
#   set out21 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_total_lid1_po4_$output_name.dat a+]
#   set out22 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_PC_lid1_po4_$output_name.dat a+]
#   set out23 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_PS_lid1_po4_$output_name.dat a+]
#   
#   #LID2
#   set out25 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_total_lid2_$output_name.dat a+]
#   set out26 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_PC_lid2_$output_name.dat a+]
#   set out27 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_PS_lid2_$output_name.dat a+]
#   
#   set out29 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_total_lid2_po4_$output_name.dat a+]
#   set out30 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_PC_lid2_po4_$output_name.dat a+]
#   set out31 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_PS_lid2_po4_$output_name.dat a+]
#   
#   #set outA  [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_LID1-2_martini/PL_contacts/zpos_LLpo4_$output_name.dat a+] 
#   set outB [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_LID1-2_martini/PL_contacts/zpos_LID1_$output_name.dat a+]
#   set outC [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_LID1-2_martini/PL_contacts/zpos_LID2_$output_name.dat a+]
#   set outD [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_LID1-2_martini/PL_contacts/zpos_ICJM_$output_name.dat a+]
#   
#   # TMD + LIDS
#   set contactL [atomselect top "name BB and pbwithin 7 of resname POPC POPS "]
#   set contactPC [atomselect top "name BB and pbwithin 7 of resname POPC"]
#   set contactPS [atomselect top "name BB and pbwithin 7 of resname POPS"]
#   
#   set contactL_po4 [atomselect top "name BB and pbwithin 7 of  name PO4 and resname POPC POPS POP2"]
#   set contactPC_po4 [atomselect top "name BB and pbwithin 7 of name PO4 and resname POPC"]
#   set contactPS_po4 [atomselect top "name BB and pbwithin 7 of name PO4 and resname POPS"]
#   
#   # LID1-2
#   set contactL_lid [atomselect top   "name BB and resid 32 to 180 and pbwithin 7 of resname POPC POPS "]
#   set contactPC_lid [atomselect top  "name BB and resid 32 to 180 and pbwithin 7 of resname POPC"]
#   set contactPS_lid [atomselect top  "name BB and resid 32 to 180 and pbwithin 7 of resname POPS"]
#   
#   set contactL_lid_po4 [atomselect top   "name BB and resid 32 to 180 and pbwithin 7 of name PO4 and resname POPC POPS "]
#   set contactPC_lid_po4 [atomselect top  "name BB and resid 32 to 180 and pbwithin 7 of name PO4 and resname POPC"]
#   set contactPS_lid_po4 [atomselect top  "name BB and resid 32 to 180 and pbwithin 7 of name PO4 and resname POPS"]
#   
#   #LID1 contact number only
#   set contactL_lid1 [atomselect top   "name BB and resid 32 to 97 and pbwithin 7 of resname POPC POPS "]
#   set contactPC_lid1 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of resname POPC"]
#   set contactPS_lid1 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of resname POPS"]
#   
#   set contactL_lid1_po4 [atomselect top   "name BB and resid 32 to 97 and pbwithin 7 of name PO4 and resname POPC POPS "]
#   set contactPC_lid1_po4 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of name PO4 and resname POPC"]
#   set contactPS_lid1_po4 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of name PO4 and resname POPS"]
#   
#   #LID2 contact number only
#   set contactL_lid2 [atomselect top   "name BB and resid 147 to 180 and pbwithin 7 of resname POPC POPS "]
#   set contactPC_lid2 [atomselect top  "name BB and resid 147 to 180 and pbwithin 7 of resname POPC"]
#   set contactPS_lid2 [atomselect top  "name BB and resid 147 to 180 and pbwithin 7 of resname POPS"]
#   
#   set contactL_lid2_po4 [atomselect top   "name BB and resid 147 to 180 and pbwithin 7 of name PO4 and resname POPC POPS "]
#   set contactPC_lid2_po4 [atomselect top  "name BB and resid 147 to 180 and pbwithin 7 of name PO4 and resname POPC"]
#   set contactPS_lid2_po4 [atomselect top  "name BB and resid 147 to 180 and pbwithin 7 of name PO4 and resname POPS"]
#   
#   #set po4 [atomselect top "name PO4 and z <0"]
#   #set po4_com [measure center $po4 weight mass]
#   set LID1 [atomselect top "name BB and resid 32 to 97"]
#   set LID2 [atomselect top "name BB and resid 147 to 180"]
#   set ICJM [atomselect top "name BB and resid 32 to 52"]
#   
#   
#   
#   $contactL frame $frame
#   $contactPC frame $frame
#   $contactPS frame $frame
#   
#   $contactL_po4 frame $frame
#   $contactPC_po4 frame $frame
#   $contactPS_po4 frame $frame
#   
#   $contactL_lid frame $frame
#   $contactPC_lid frame $frame
#   $contactPS_lid frame $frame
#   
#   $contactL_lid_po4 frame $frame
#   $contactPC_lid_po4 frame $frame
#   $contactPS_lid_po4 frame $frame
#   
#   $contactL_lid1 frame $frame
#   $contactPC_lid1 frame $frame
#   $contactPS_lid1 frame $frame
#   
#   $contactL_lid1_po4 frame $frame
#   $contactPC_lid1_po4 frame $frame
#   $contactPS_lid1_po4 frame $frame
#   
#   $contactL_lid2 frame $frame
#   $contactPC_lid2 frame $frame
#   $contactPS_lid2 frame $frame
#   
#   $contactL_lid2_po4 frame $frame
#   $contactPC_lid2_po4 frame $frame
#   $contactPS_lid2_po4 frame $frame
# 
#  # $po4      frame $frame
#   $LID1     frame $frame
#   $LID2     frame $frame
#   $ICJM     frame $frame
#   #$po4_com  frame $frame
#   
#   set LID1_com [measure center $LID1 weight mass]
#   set LID2_com [measure center $LID2 weight mass]
#   set ICJM_com [measure center $ICJM weight mass]
#   
#   puts $out1 "$frame [$contactL num] [$contactL get resid]"
#   puts $out2 "$frame [$contactPC num] [$contactPC get resid]" 
#   puts $out3 "$frame [$contactPS num] [$contactPS get resid]" 
#   
#   puts $out5 "$frame [$contactL_po4 num] [$contactL_po4 get resid]"
#   puts $out6 "$frame [$contactPC_po4 num] [$contactPC_po4 get resid]" 
#   puts $out7 "$frame [$contactPS_po4 num] [$contactPS_po4 get resid]" 
#   
#   ########
#   puts $out9  "$frame [$contactL_lid num] [$contactL_lid get resid]"
#   puts $out10 "$frame [$contactPC_lid num] [$contactPC_lid get resid]" 
#   puts $out11 "$frame [$contactPS_lid num] [$contactPS_lid get resid]" 
#   
#   puts $out13 "$frame [$contactL_lid_po4 num] [$contactL_lid_po4 get resid]"
#   puts $out14 "$frame [$contactPC_lid_po4 num] [$contactPC_lid_po4 get resid]" 
#   puts $out15 "$frame [$contactPS_lid_po4 num] [$contactPS_lid_po4 get resid]" 
#   
#   ########
#   puts $out17 "$frame [$contactL_lid1 num]"
#   puts $out18 "$frame [$contactPC_lid1 num]" 
#   puts $out19 "$frame [$contactPS_lid1 num]" 
#   
#   puts $out21 "$frame [$contactL_lid1_po4 num]"
#   puts $out22 "$frame [$contactPC_lid1_po4 num]" 
#   puts $out23 "$frame [$contactPS_lid1_po4 num]" 
#  
#   ########
#   puts $out25 "$frame [$contactL_lid2_po4 num]"
#   puts $out26 "$frame [$contactPC_lid2_po4 num]" 
#   puts $out27 "$frame [$contactPS_lid2_po4 num]" 
#   
#   puts $out29 "$frame [$contactL_lid2_po4 num]"
#   puts $out30 "$frame [$contactPC_lid2_po4 num]" 
#   puts $out31 "$frame [$contactPS_lid2_po4 num]" 
#   
#   #puts $outA "$frame $po4_com"  
#   puts $outB "$frame $LID1_com" 
#   puts $outC "$frame $LID2_com" 
#   puts $outD "$frame $ICJM_com"
#   
# close $out1
# close $out2
# close $out3
# 
# close $out5
# close $out6
# close $out7
# 
# close $out9
# close $out10
# close $out11
# 
# close $out13
# close $out14
# close $out15
# 
# close $out17
# close $out18
# close $out19
# 
# close $out21
# close $out22
# close $out23
# 
# close $out25
# close $out26
# close $out27
# 
# close $out29
# close $out30
# close $out31
# 
# #close $outA
# close $outB
# close $outC
# close $outD
# }
# 
# source /Users/raul/Documents/Projects/analysis_tools/bigdcd_v2.tcl
# 
# set psf "/Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/step5_assembly.xplor_ext.psf"
# 
# set xtc "/Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PRLR_LID1-2_PCPS_1-5_20nspbcc.xtc"
#                                                                                                                            
# set output_name "PRLR+LID1-2_1-5_PCPS_cg" 
# 
#   set out33 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_total_$output_name.dat w]
#   set out34 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_PC_$output_name.dat w]
#   set out35 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_PS_$output_name.dat w]
#  
#   
#   set out37 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_total_po4_$output_name.dat w]
#   set out38 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_PC_po4_$output_name.dat w]
#   set out39 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_PS_po4_$output_name.dat w]
#   
#   
#   # LID1-2
# 
#   set out41 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_total_lids_$output_name.dat w]
#   set out42 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_PC_lids_$output_name.dat w]
#   set out43 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_PS_lids_$output_name.dat w]
#   
#   
#   set out45 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_total_lids_po4_$output_name.dat w]
#   set out46 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_PC_lids_po4_$output_name.dat w]
#   set out47 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_PS_lids_po4_$output_name.dat w]
#   
#   
#   #LID1
#   set out49 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_total_lid1_$output_name.dat w]
#   set out50 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_PC_lid1_$output_name.dat w]
#   set out51 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_PS_lid1_$output_name.dat w]
#   
#  
#   set out53 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_total_lid1_po4_$output_name.dat w]
#   set out54 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_PC_lid1_po4_$output_name.dat w]
#   set out55 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_PS_lid1_po4_$output_name.dat w]
#  
#   
#   #LID2
#   set out57 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_total_lid2_$output_name.dat w]
#   set out58 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_PC_lid2_$output_name.dat w]
#   set out59 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_PS_lid2_$output_name.dat w]
#  
#   set out61 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_total_lid2_po4_$output_name.dat w]
#   set out62 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_PC_lid2_po4_$output_name.dat w]
#   set out63 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/PLcontact_PS_lid2_po4_$output_name.dat w]
#   
#   #z position of Lower leaflet PO4 and z-position of venter of mass of ICKM and LID1 and LID2.
#   #set out65 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/zpos_LLpo4_$output_name.dat w] 
#   set out66 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/zpos_LID1_$output_name.dat w]
#   set out67 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/zpos_LID2_$output_name.dat w]
#   set out68 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_LID1-2_martini/PL_contacts/zpos_ICJM_$output_name.dat w]
# 
# 
# mol load psf $psf 
# #set LPcontact [atomselect top "protein and name CA and pbwithin 7 of lipids and noh"]
# bigdcd LPcontact xtc $xtc
# bigdcd_wait
# close $out33
# close $out34
# close $out35
# close $out37
# close $out38
# close $out39
# close $out41
# close $out42
# close $out43
# close $out45
# close $out46
# close $out47
# close $out49
# close $out50
# close $out51
# close $out53
# close $out54
# close $out55
# close $out57
# close $out58
# close $out59
# close $out61
# close $out62
# close $out63
# #close $out65   
# close $out66
# close $out67
# close $out68
# 
# mol delete all
#  
#  ### PRLR_LID1-2 PC-PS-PIP2 ####
#  proc LPcontact { frame } {
#   #ALL TMD+LIDs
#   global  output_name 
#   set out1 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_total_$output_name.dat a+]
#   set out2 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PC_$output_name.dat a+]
#   set out3 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PS_$output_name.dat a+]
#   set out4 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PIP2_$output_name.dat a+]
#   
#   set out5 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_total_po4_$output_name.dat a+]
#   set out6 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PC_po4_$output_name.dat a+]
#   set out7 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PS_po4_$output_name.dat a+]
#   set out8 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PIP2_po4_$output_name.dat a+]
#   
#   # LID1-2
# 
#   set out9  [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_total_lids_$output_name.dat a+]
#   set out10 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PC_lids_$output_name.dat a+]
#   set out11 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PS_lids_$output_name.dat a+]
#   set out12 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PIP2_lids_$output_name.dat a+]
#   
#   set out13 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_total_lids_po4_$output_name.dat a+]
#   set out14 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PC_lids_po4_$output_name.dat a+]
#   set out15 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PS_lids_po4_$output_name.dat a+]
#   set out16 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PIP2_lids_po4_$output_name.dat a+]
#   
#   #LID1
#   set out17 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_total_lid1_$output_name.dat a+]
#   set out18 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PC_lid1_$output_name.dat a+]
#   set out19 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PS_lid1_$output_name.dat a+]
#   set out20 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PIP2_lid1_$output_name.dat a+]
#   
#   set out21 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_total_lid1_po4_$output_name.dat a+]
#   set out22 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PC_lid1_po4_$output_name.dat a+]
#   set out23 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PS_lid1_po4_$output_name.dat a+]
#   set out24 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PIP2_lid1_po4_$output_name.dat a+]
#   
#   #LID2
#   set out25 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_total_lid2_$output_name.dat a+]
#   set out26 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PC_lid2_$output_name.dat a+]
#   set out27 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PS_lid2_$output_name.dat a+]
#   set out28 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PIP2_lid2_$output_name.dat a+]
#   
#   set out29 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_total_lid2_po4_$output_name.dat a+]
#   set out30 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PC_lid2_po4_$output_name.dat a+]
#   set out31 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PS_lid2_po4_$output_name.dat a+]
#   set out32 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PIP2_lid2_po4_$output_name.dat a+]
#   
#   #set outA  [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/zpos_LLpo4_$output_name.dat a+] 
#   set outB [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/zpos_LID1_$output_name.dat a+]
#   set outC [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/zpos_LID2_$output_name.dat a+]
#   set outD [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/zpos_ICJM_$output_name.dat a+]
# 
# 
#   # TMD + LIDS
#   set contactL [atomselect top "name BB and pbwithin 7 of resname POPC POPS POP2"]
#   set contactPC [atomselect top "name BB and pbwithin 7 of resname POPC"]
#   set contactPS [atomselect top "name BB and pbwithin 7 of resname POPS"]
#   set contactPI2 [atomselect top "name BB and pbwithin 7 of resname POP2"]
#   
#   set contactL_po4 [atomselect top "name BB and pbwithin 7 of  name PO4 and resname POPC POPS POP2"]
#   set contactPC_po4 [atomselect top "name BB and pbwithin 7 of name PO4 and resname POPC"]
#   set contactPS_po4 [atomselect top "name BB and pbwithin 7 of name PO4 and resname POPS"]
#   set contactPI2_po4 [atomselect top "name BB and pbwithin 7 of name PO4 and resname POP2"]
#   
#   # LID1-2
#   set contactL_lid [atomselect top   "name BB and resid 32 to 180 and pbwithin 7 of resname POPC POPS POP2"]
#   set contactPC_lid [atomselect top  "name BB and resid 32 to 180 and pbwithin 7 of resname POPC"]
#   set contactPS_lid [atomselect top  "name BB and resid 32 to 180 and pbwithin 7 of resname POPS"]
#   set contactPI2_lid [atomselect top "name BB and resid 32 to 180 and pbwithin 7 of resname POP2"]
#   
#   set contactL_lid_po4 [atomselect top   "name BB and resid 32 to 180 and pbwithin 7 of name PO4 and resname POPC POPS POP2"]
#   set contactPC_lid_po4 [atomselect top  "name BB and resid 32 to 180 and pbwithin 7 of name PO4 and resname POPC"]
#   set contactPS_lid_po4 [atomselect top  "name BB and resid 32 to 180 and pbwithin 7 of name PO4 and resname POPS"]
#   set contactPI2_lid_po4 [atomselect top "name BB and resid 32 to 180 and pbwithin 7 of name PO4 and resname POP2"]
#   
#   #LID1 contact number only
#   set contactL_lid1 [atomselect top   "name BB and resid 32 to 97 and pbwithin 7 of resname POPC POPS POP2"]
#   set contactPC_lid1 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of resname POPC"]
#   set contactPS_lid1 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of resname POPS"]
#   set contactPI2_lid1 [atomselect top "name BB and resid 32 to 97 and pbwithin 7 of resname POP2"]
#   
#   set contactL_lid1_po4 [atomselect top   "name BB and resid 32 to 97 and pbwithin 7 of name PO4 and resname POPC POPS POP2"]
#   set contactPC_lid1_po4 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of name PO4 and resname POPC"]
#   set contactPS_lid1_po4 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of name PO4 and resname POPS"]
#   set contactPI2_lid1_po4 [atomselect top "name BB and resid 32 to 97 and pbwithin 7 of name PO4 and resname POP2"]
#   
#   #LID2 contact number only
#   set contactL_lid2 [atomselect top   "name BB and resid 147 to 180 and pbwithin 7 of resname POPC POPS POP2"]
#   set contactPC_lid2 [atomselect top  "name BB and resid 147 to 180 and pbwithin 7 of resname POPC"]
#   set contactPS_lid2 [atomselect top  "name BB and resid 147 to 180 and pbwithin 7 of resname POPS"]
#   set contactPI2_lid2 [atomselect top "name BB and resid 147 to 180 and pbwithin 7 of resname POP2"]
#   
#   set contactL_lid2_po4 [atomselect top   "name BB and resid 147 to 180 and pbwithin 7 of name PO4 and resname POPC POPS POP2"]
#   set contactPC_lid2_po4 [atomselect top  "name BB and resid 147 to 180 and pbwithin 7 of name PO4 and resname POPC"]
#   set contactPS_lid2_po4 [atomselect top  "name BB and resid 147 to 180 and pbwithin 7 of name PO4 and resname POPS"]
#   set contactPI2_lid2_po4 [atomselect top "name BB and resid 147 to 180 and pbwithin 7 of name PO4 and resname POP2"]
#   
#   #set po4 [atomselect top "name PO4 and z <0"]
#   ##set po4_com [measure center $po4 weight mass]
# 
#   set LID1 [atomselect top "name BB and resid 32 to 97"]
#   set LID2 [atomselect top "name BB and resid 147 to 180"]
#   set ICJM [atomselect top "name BB and resid 32 to 52"]
#   
#   $contactL frame $frame
#   $contactPC frame $frame
#   $contactPS frame $frame
#   $contactPI2 frame $frame
#   
#   $contactL_po4 frame $frame
#   $contactPC_po4 frame $frame
#   $contactPS_po4 frame $frame
#   $contactPI2_po4 frame $frame
#   
#   $contactL_lid frame $frame
#   $contactPC_lid frame $frame
#   $contactPS_lid frame $frame
#   $contactPI2_lid frame $frame
#   
#   $contactL_lid_po4 frame $frame
#   $contactPC_lid_po4 frame $frame
#   $contactPS_lid_po4 frame $frame
#   $contactPI2_lid_po4 frame $frame
#   
#   $contactL_lid1 frame $frame
#   $contactPC_lid1 frame $frame
#   $contactPS_lid1 frame $frame
#   $contactPI2_lid1 frame $frame
#   
#   $contactL_lid1_po4 frame $frame
#   $contactPC_lid1_po4 frame $frame
#   $contactPS_lid1_po4 frame $frame
#   $contactPI2_lid1_po4 frame $frame
#   
#   $contactL_lid2 frame $frame
#   $contactPC_lid2 frame $frame
#   $contactPS_lid2 frame $frame
#   $contactPI2_lid2 frame $frame
#   
#   $contactL_lid2_po4 frame $frame
#   $contactPC_lid2_po4 frame $frame
#   $contactPS_lid2_po4 frame $frame
#   $contactPI2_lid2_po4 frame $frame
#   
#  # $po4      frame $frame
#   $LID1     frame $frame
#   $LID2     frame $frame
#   $ICJM     frame $frame
#   #$po4_com  frame $frame
#   
#   set LID1_com [measure center $LID1 weight mass]
#   set LID2_com [measure center $LID2 weight mass]
#   set ICJM_com [measure center $ICJM weight mass]
#   
#   puts $out1 "$frame [$contactL num] [$contactL get resid]"
#   puts $out2 "$frame [$contactPC num] [$contactPC get resid]" 
#   puts $out3 "$frame [$contactPS num] [$contactPS get resid]" 
#   puts $out4 "$frame [$contactPI2 num] [$contactPI2 get resid]"
#   
#   puts $out5 "$frame [$contactL_po4 num] [$contactL_po4 get resid]"
#   puts $out6 "$frame [$contactPC_po4 num] [$contactPC_po4 get resid]" 
#   puts $out7 "$frame [$contactPS_po4 num] [$contactPS_po4 get resid]" 
#   puts $out8 "$frame [$contactPI2_po4 num] [$contactPI2_po4 get resid]"
#   
#   ########
#   puts $out9  "$frame [$contactL_lid num] [$contactL_lid get resid]"
#   puts $out10 "$frame [$contactPC_lid num] [$contactPC_lid get resid]" 
#   puts $out11 "$frame [$contactPS_lid num] [$contactPS_lid get resid]" 
#   puts $out12 "$frame [$contactPI2_lid num] [$contactPI2_lid get resid]"
#   
#   puts $out13 "$frame [$contactL_lid_po4 num] [$contactL_lid_po4 get resid]"
#   puts $out14 "$frame [$contactPC_lid_po4 num] [$contactPC_lid_po4 get resid]" 
#   puts $out15 "$frame [$contactPS_lid_po4 num] [$contactPS_lid_po4 get resid]" 
#   puts $out16 "$frame [$contactPI2_lid_po4 num] [$contactPI2_lid_po4 get resid]"
# 
#   ########
#   puts $out17 "$frame [$contactL_lid1 num]"
#   puts $out18 "$frame [$contactPC_lid1 num]" 
#   puts $out19 "$frame [$contactPS_lid1 num]" 
#   puts $out20 "$frame [$contactPI2_lid1 num]"
#   
#   puts $out21 "$frame [$contactL_lid1_po4 num]"
#   puts $out22 "$frame [$contactPC_lid1_po4 num]" 
#   puts $out23 "$frame [$contactPS_lid1_po4 num]" 
#   puts $out24 "$frame [$contactPI2_lid1_po4 num]"
#   
#   ########
#   puts $out25 "$frame [$contactL_lid2_po4 num]"
#   puts $out26 "$frame [$contactPC_lid2_po4 num]" 
#   puts $out27 "$frame [$contactPS_lid2_po4 num]" 
#   puts $out28 "$frame [$contactPI2_lid2_po4 num]"
#   
#   puts $out29 "$frame [$contactL_lid2_po4 num]"
#   puts $out30 "$frame [$contactPC_lid2_po4 num]" 
#   puts $out31 "$frame [$contactPS_lid2_po4 num]" 
#   puts $out32 "$frame [$contactPI2_lid2_po4 num]"
#   
#   #puts $outA "$frame $po4_com"  
#   puts $outB "$frame $LID1_com" 
#   puts $outC "$frame $LID2_com" 
#   puts $outD "$frame $ICJM_com"
# 
# close $out1
# close $out2
# close $out3
# close $out4
# close $out5
# close $out6
# close $out7
# close $out8
# close $out9
# close $out10
# close $out11
# close $out12
# close $out13
# close $out14
# close $out15
# close $out16
# close $out17
# close $out18
# close $out19
# close $out20
# close $out21
# close $out22
# close $out23
# close $out24
# close $out25
# close $out26
# close $out27
# close $out28
# close $out29
# close $out30
# close $out31
# close $out32
# #close $outA
# close $outB
# close $outC
# close $outD
# 
# }
# 
# source /Users/raul/Documents/Projects/analysis_tools/bigdcd_v2.tcl
# 
# set psf "/Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/step5_assembly.xplor_ext.psf"
# 
# set xtc "/Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PRLR_LID1-2_PCPSPIP2_1-4_20nspbcc.xtc"
#                                                                                                                            
# set output_name "PRLR+LID1-2_1-4_PCPSPI2_cg" 
# 
#   set out33 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_total_$output_name.dat w]
#   set out34 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PC_$output_name.dat w]
#   set out35 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PS_$output_name.dat w]
#   set out36 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PIP2_$output_name.dat w]
#   
#   set out37 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_total_po4_$output_name.dat w]
#   set out38 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PC_po4_$output_name.dat w]
#   set out39 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PS_po4_$output_name.dat w]
#   set out40 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PIP2_po4_$output_name.dat w]
#   
#   # LID1-2
# 
#   set out41 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_total_lids_$output_name.dat w]
#   set out42 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PC_lids_$output_name.dat w]
#   set out43 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PS_lids_$output_name.dat w]
#   set out44 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PIP2_lids_$output_name.dat w]
#   
#   set out45 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_total_lids_po4_$output_name.dat w]
#   set out46 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PC_lids_po4_$output_name.dat w]
#   set out47 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PS_lids_po4_$output_name.dat w]
#   set out48 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PIP2_lids_po4_$output_name.dat w]
#   
#   #LID1
#   set out49 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_total_lid1_$output_name.dat w]
#   set out50 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PC_lid1_$output_name.dat w]
#   set out51 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PS_lid1_$output_name.dat w]
#   set out52 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PIP2_lid1_$output_name.dat w]
#   
#   set out53 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_total_lid1_po4_$output_name.dat w]
#   set out54 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PC_lid1_po4_$output_name.dat w]
#   set out55 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PS_lid1_po4_$output_name.dat w]
#   set out56 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PIP2_lid1_po4_$output_name.dat w]
#   
#   #LID2
#   set out57 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_total_lid2_$output_name.dat w]
#   set out58 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PC_lid2_$output_name.dat w]
#   set out59 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PS_lid2_$output_name.dat w]
#   set out60 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PIP2_lid2_$output_name.dat w]
#   
#   set out61 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_total_lid2_po4_$output_name.dat w]
#   set out62 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PC_lid2_po4_$output_name.dat w]
#   set out63 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PS_lid2_po4_$output_name.dat w]
#   set out64 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/PLcontact_PIP2_lid2_po4_$output_name.dat w]
#   
#   #set out65 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/zpos_LLpo4_$output_name.dat w] 
#   set out66 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/zpos_LID1_$output_name.dat w]
#   set out67 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/zpos_LID2_$output_name.dat w]
#   set out68 [open /Users/raul/Trajectories/SPTMRs_TMDs/CG/PRLR_bCG/PRLR_1000lipids_POPC_POPS_PIP2_LID1-2_martini/PL_contacts/zpos_ICJM_$output_name.dat w]
# 
# 
# mol load psf $psf 
# #set LPcontact [atomselect top "protein and name CA and pbwithin 7 of lipids and noh"]
# bigdcd LPcontact xtc $xtc
# bigdcd_wait
# close $out33
# close $out34
# close $out35
# close $out36
# close $out37
# close $out38
# close $out39
# close $out40
# close $out41
# close $out42
# close $out43
# close $out44
# close $out45
# close $out46
# close $out47
# close $out48
# close $out49
# close $out50
# close $out51
# close $out52
# close $out53
# close $out54
# close $out55
# close $out56
# close $out57
# close $out58
# close $out59
# close $out60
# close $out61
# close $out62
# close $out63
# close $out64
# #close $out65   
# close $out66
# close $out67
# close $out68
# 
# mol delete all
 
# ### CG 500 lipids ###
# ## PRLR_TMD+LID1 (PC-PS-PIP2) ##

# proc LPcontact2 { frame } {
#   #ALL TMD+LIDs
#   global  output_name 
#   set out1 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_500lipids_POPC_POPS_PIP2_LID1_martini/results/PLC/PLcontact_total_$output_name.dat a+]
#   set out2 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_500lipids_POPC_POPS_PIP2_LID1_martini/results/PLC/PLcontact_total_po4_$output_name.dat a+]
#   set out3 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_500lipids_POPC_POPS_PIP2_LID1_martini/results/PLC/PLcontact_PC_$output_name.dat    a+]
#   set out4 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_500lipids_POPC_POPS_PIP2_LID1_martini/results/PLC/PLcontact_PC_po4_$output_name.dat    a+]
#   set out5 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_500lipids_POPC_POPS_PIP2_LID1_martini/results/PLC/PLcontact_PS_$output_name.dat    a+]
#   set out6 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_500lipids_POPC_POPS_PIP2_LID1_martini/results/PLC/PLcontact_PS_po4_$output_name.dat    a+]
#   set out7 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_500lipids_POPC_POPS_PIP2_LID1_martini/results/PLC/PLcontact_PIP2_$output_name.dat  a+]
#   set out8 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_500lipids_POPC_POPS_PIP2_LID1_martini/results/PLC/PLcontact_PIP2_po4_$output_name.dat  a+]
#   
#   ########
#   set contactL [atomselect top "name BB and pbwithin 7 of resname POPC POPS POP2"]
#   set contactL_po4 [atomselect top "name BB and pbwithin 7 of name PO4 and resname POPC POPS POP2"]
#   
#   set contactPC [atomselect top "name BB and pbwithin 7 of resname POPC"]
#   set contactPC_po4 [atomselect top "name BB and pbwithin 7 of name PO4 and resname POPC"]
#   
#   set contactPS [atomselect top "name BB and pbwithin 7 of resname POPS"]
#   set contactPS_po4 [atomselect top "name BB and pbwithin 7 of name PO4 and resname POPS"]
#   
#   set contactPI2 [atomselect top "name BB and pbwithin 7 of resname POP2"]
#   set contactPI2_po4 [atomselect top "name BB and pbwithin 7 of name PO4 and resname POP2"]
#   
# 
#   
#   $contactL frame $frame
#   $contactL_po4 frame $frame
#   
#   $contactPC frame $frame
#   $contactPC_po4 frame $frame
#   
#   $contactPS frame $frame
#   $contactPS_po4 frame $frame
#   
#   $contactPI2 frame $frame
#   $contactPI2_po4 frame $frame
#   
# 
#   
#   puts $out1 "$frame [$contactL num] [$contactL get resid]"
#   puts $out2 "$frame [$contactL_po4 num] [$contactL_po4 get resid]"
#   
#   puts $out3 "$frame [$contactPC num] [$contactPC get resid]" 
#   puts $out4 "$frame [$contactPC_po4 num] [$contactPC_po4 get resid]" 
#   
#   puts $out5 "$frame [$contactPS num] [$contactPS get resid]" 
#   puts $out6 "$frame [$contactPS_po4 num] [$contactPS_po4 get resid]" 
#   
#   puts $out7 "$frame [$contactPI2 num] [$contactPI2 get resid]"
#   puts $out8 "$frame [$contactPI2_po4 num] [$contactPI2_po4 get resid]"
#   
#   
# 
# close $out1
# close $out2
# close $out3
# close $out4
# close $out5
# close $out6
# close $out7
# close $out8
# 
# }
# 
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl
# 
# set psf "/home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_500lipids_POPC_POPS_PIP2_LID1_martini/psf/step5_assembly.xplor_ext.psf"
# 
# set xtc "/home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_500lipids_POPC_POPS_PIP2_LID1_martini/trjs/PRLR_LID1_PCPSPIP2_1-28_1ns.xtc"
# 
# set output_name "PRLR_LID1_PCPSPIP2_CG_1-28_1ns" 
# 
#   set out17 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_500lipids_POPC_POPS_PIP2_LID1_martini/results/PLC/PLcontact_total_$output_name.dat w]
#   set out18 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_500lipids_POPC_POPS_PIP2_LID1_martini/results/PLC/PLcontact_total_po4_$output_name.dat w]
#   set out19 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_500lipids_POPC_POPS_PIP2_LID1_martini/results/PLC/PLcontact_PC_$output_name.dat    w]
#   set out20 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_500lipids_POPC_POPS_PIP2_LID1_martini/results/PLC/PLcontact_PC_po4_$output_name.dat    w]
#   set out21 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_500lipids_POPC_POPS_PIP2_LID1_martini/results/PLC/PLcontact_PS_$output_name.dat   w]
#   set out22 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_500lipids_POPC_POPS_PIP2_LID1_martini/results/PLC/PLcontact_PS_po4_$output_name.dat   w]
#   set out23 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_500lipids_POPC_POPS_PIP2_LID1_martini/results/PLC/PLcontact_PIP2_$output_name.dat  w]
#   set out24 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_500lipids_POPC_POPS_PIP2_LID1_martini/results/PLC/PLcontact_PIP2_po4_$output_name.dat  w]
#  
# mol load psf $psf 
# #set LPcontact [atomselect top "protein and name CA and pbwithin 7 of lipids and noh"]
# bigdcd LPcontact2 xtc $xtc
# bigdcd_wait
# close $out17
# close $out18
# close $out19
# close $out20
# close $out21
# close $out22
# close $out23
# close $out24
# 
# mol delete all
#  
#  ## PRLR_TMD+LID1 (PC)
#  
 proc LPcontact3 { frame } {
   
   global  output_name 
   
   #ALL TMD+LIDs
   set out1 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_500lipids_POPC_LID1_martini/results/PLcontact_PC_$output_name.dat a+]
   set out2 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_500lipids_POPC_LID1_martini/results/PLcontact_PC_po4_$output_name.dat a+]

   set contactPC [atomselect top "name BB and pbwithin 7 of resname POPC"]
   set contactPC_po4 [atomselect top "name BB and pbwithin 7 of name PO4 and resname POPC"]
   
   $contactPC frame $frame
   $contactPC_po4 frame $frame
   
   $contactPC_lid frame $frame
   $contactPC_lid_po4 frame $frame
   
   puts $out1 "$frame [$contactPC num] [$contactPC get resid]" 
   puts $out2 "$frame [$contactPC_po4 num] [$contactPC_po4 get resid]" 
   
   puts $out3 "$frame [$contactPC_lid num] [$contactPC_lid get resid]" 
   puts $out4 "$frame [$contactPC_lid_po4 num] [$contactPC_lid_po4 get resid]" 

close $out1
close $out2


 }
 
 source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl
 
 set psf "/home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_500lipids_POPC_LID1_martini/step5_assembly.xplor_ext.psf"
 
 set xtc "/home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_500lipids_POPC_LID1_martini/PRLR_LID1_PC_1-19_1ns.xtc"
 
 set output_name "PRLR+LID1_1-19_PC_1ns_cg" 
 #ALL TMD+LIDs
   set out5 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_500lipids_POPC_LID1_martini/results/PLcontact_PC_$output_name.dat w]
   set out6 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_500lipids_POPC_LID1_martini/results/PLcontact_PC_po4_$output_name.dat w]


 mol load psf $psf 
 #set LPcontact [atomselect top "protein and name CA and pbwithin 7 of lipids and noh"]
 bigdcd LPcontact3 xtc $xtc
 bigdcd_wait
 
 close $out5
 close $out6

 mol delete all
 
 quit


