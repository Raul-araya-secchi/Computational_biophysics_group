## This scripts computes the contacts between protein and lipids. Produces a total numenr of contact and a resid list.

### CG simulations -- PRLR_TMD+LID1####



### PRLR_LID1 PC m3pws10 ####
# proc LPcontact3 { frame } {
#  #ALL TMD+LIDs
#  global  output_name 
 
#  set out2 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_LID1_m3_pws10/results/PLC/PLcontact_PC_$output_name.dat a+]
#  set out6 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_LID1_m3_pws10/results/PLC/PLcontact_PC_po4_$output_name.dat a+]

#  # TMD + LIDS
#  set contactPC [atomselect top "name BB and pbwithin 7 of resname POPC"]
#  set contactPC_po4 [atomselect top "name BB and pbwithin 7 of name PO4 and resname POPC"]
 
#  $contactPC frame $frame
#  $contactPC_po4 frame $frame
 
#  puts $out2 "$frame [$contactPC num] [$contactPC get resid]" 
#  puts $out6 "$frame [$contactPC_po4 num] [$contactPC_po4 get resid]" 
 
#  ########

# close $out2
# close $out6
# }

# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

# set gro "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PC/pws10/PRLR_LID1_PC_m3pws10_s6.6_PL_pbcc.gro"

# set xtc "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PC/pws10/PRLR_LID1_PC_m3pws10_11us_1ns_PL_pbcc.xtc"
                                                                                                                          
# set output_name "PRLR_LID1_PC_cg_m3pws10" 

# set out34 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_LID1_m3_pws10/results/PLC/PLcontact_PC_$output_name.dat w] 
# set out38 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_LID1_m3_pws10/results/PLC/PLcontact_PC_po4_$output_name.dat w]

# mol load gro $gro 
# bigdcd LPcontact3 xtc $xtc
# bigdcd_wait

# close $out34
# close $out38

# mol delete all

# ### PRLR_LID1-2 PC-PS-PIP2 m3pws10 (80:10:10)####

# proc LPcontact4 { frame } {
#  #ALL TMD+LIDs
#  global  output_name 
#  set out1 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3_pws10/results/PLC/PLcontact_total_$output_name.dat a+]
#  set out2 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3_pws10/results/PLC/PLcontact_PC_$output_name.dat a+]
#  set out3 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3_pws10/results/PLC/PLcontact_PS_$output_name.dat a+]
#  set out4 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3_pws10/results/PLC/PLcontact_PIP2_$output_name.dat a+]
 
#  set out5 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3_pws10/results/PLC/PLcontact_total_po4_$output_name.dat a+]
#  set out6 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3_pws10/results/PLC/PLcontact_PC_po4_$output_name.dat a+]
#  set out7 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3_pws10/results/PLC/PLcontact_PS_po4_$output_name.dat a+]
#  set out8 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3_pws10/results/PLC/PLcontact_PIP2_po4_$output_name.dat a+]
 
#  #LID1
#  set out17 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3_pws10/results/PLC/PLcontact_total_lid1_$output_name.dat a+]
#  set out18 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3_pws10/results/PLC/PLcontact_PC_lid1_$output_name.dat a+]
#  set out19 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3_pws10/results/PLC/PLcontact_PS_lid1_$output_name.dat a+]
#  set out20 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3_pws10/results/PLC/PLcontact_PIP2_lid1_$output_name.dat a+]
 
#  set out21 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3_pws10/results/PLC/PLcontact_total_lid1_po4_$output_name.dat a+]
#  set out22 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3_pws10/results/PLC/PLcontact_PC_lid1_po4_$output_name.dat a+]
#  set out23 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3_pws10/results/PLC/PLcontact_PS_lid1_po4_$output_name.dat a+]
#  set out24 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3_pws10/results/PLC/PLcontact_PIP2_lid1_po4_$output_name.dat a+]

#  # TMD + LIDS
#  set contactL [atomselect top "name BB and pbwithin 7 of resname POPC POPS POP2"]
#  set contactPC [atomselect top "name BB and pbwithin 7 of resname POPC"]
#  set contactPS [atomselect top "name BB and pbwithin 7 of resname POPS"]
#  set contactPI2 [atomselect top "name BB and pbwithin 7 of resname POP2"]
 
#  set contactL_po4 [atomselect top "name BB and pbwithin 7 of  name PO4 and resname POPC POPS POP2"]
#  set contactPC_po4 [atomselect top "name BB and pbwithin 7 of name PO4 and resname POPC"]
#  set contactPS_po4 [atomselect top "name BB and pbwithin 7 of name PO4 and resname POPS"]
#  set contactPI2_po4 [atomselect top "name BB and pbwithin 7 of name PO4 and resname POP2"]

#  #LID1 contact number only
#  set contactL_lid1 [atomselect top   "name BB and resid 32 to 97 and pbwithin 7 of resname POPC POPS POP2"]
#  set contactPC_lid1 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of resname POPC"]
#  set contactPS_lid1 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of resname POPS"]
#  set contactPI2_lid1 [atomselect top "name BB and resid 32 to 97 and pbwithin 7 of resname POP2"]
 
#  set contactL_lid1_po4 [atomselect top   "name BB and resid 32 to 97 and pbwithin 7 of name PO4 and resname POPC POPS POP2"]
#  set contactPC_lid1_po4 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of name PO4 and resname POPC"]
#  set contactPS_lid1_po4 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of name PO4 and resname POPS"]
#  set contactPI2_lid1_po4 [atomselect top "name BB and resid 32 to 97 and pbwithin 7 of name PO4 and resname POP2"]

#  set LID1 [atomselect top "name BB and resid 32 to 97"]
#  set ICJM [atomselect top "name BB and resid 32 to 52"]
 
#  $contactL frame $frame
#  $contactPC frame $frame
#  $contactPS frame $frame
#  $contactPI2 frame $frame
 
#  $contactL_po4 frame $frame
#  $contactPC_po4 frame $frame
#  $contactPS_po4 frame $frame
#  $contactPI2_po4 frame $frame
 
#  $contactL_lid1 frame $frame
#  $contactPC_lid1 frame $frame
#  $contactPS_lid1 frame $frame
#  $contactPI2_lid1 frame $frame
 
#  $contactL_lid1_po4 frame $frame
#  $contactPC_lid1_po4 frame $frame
#  $contactPS_lid1_po4 frame $frame
#  $contactPI2_lid1_po4 frame $frame
 
#  puts $out1 "$frame [$contactL num] [$contactL get resid]"
#  puts $out2 "$frame [$contactPC num] [$contactPC get resid]" 
#  puts $out3 "$frame [$contactPS num] [$contactPS get resid]" 
#  puts $out4 "$frame [$contactPI2 num] [$contactPI2 get resid]"
 
#  puts $out5 "$frame [$contactL_po4 num] [$contactL_po4 get resid]"
#  puts $out6 "$frame [$contactPC_po4 num] [$contactPC_po4 get resid]" 
#  puts $out7 "$frame [$contactPS_po4 num] [$contactPS_po4 get resid]" 
#  puts $out8 "$frame [$contactPI2_po4 num] [$contactPI2_po4 get resid]"

#  ########
#  puts $out17 "$frame [$contactL_lid1 num]"
#  puts $out18 "$frame [$contactPC_lid1 num]" 
#  puts $out19 "$frame [$contactPS_lid1 num]" 
#  puts $out20 "$frame [$contactPI2_lid1 num]"
 
#  puts $out21 "$frame [$contactL_lid1_po4 num]"
#  puts $out22 "$frame [$contactPC_lid1_po4 num]" 
#  puts $out23 "$frame [$contactPS_lid1_po4 num]" 
#  puts $out24 "$frame [$contactPI2_lid1_po4 num]"


# close $out1
# close $out2
# close $out3
# close $out4
# close $out5
# close $out6
# close $out7
# close $out8
# close $out17
# close $out18
# close $out19
# close $out20
# close $out21
# close $out22
# close $out23
# close $out24

# }

# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

# set gro "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_811/pws10/PRLR_LID1_PCPSPIP2_811_m3pws10_s6.6_PL_pbcc.gro"

# set xtc "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_811/pws10/PRLR_LID1_PCPSPIP2_811_m3pws10_11us_1ns_PL_pbcc.xtc"
                                                                                                                          
# set output_name "PRLR_LID1_PCPSPI2_811_cgm3pws10" 

#  set out33 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3_pws10/results/PLC/PLcontact_total_$output_name.dat w]
#  set out34 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3_pws10/results/PLC/PLcontact_PC_$output_name.dat w]
#  set out35 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3_pws10/results/PLC/PLcontact_PS_$output_name.dat w]
#  set out36 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3_pws10/results/PLC/PLcontact_PIP2_$output_name.dat w]
 
#  set out37 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3_pws10/results/PLC/PLcontact_total_po4_$output_name.dat w]
#  set out38 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3_pws10/results/PLC/PLcontact_PC_po4_$output_name.dat w]
#  set out39 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3_pws10/results/PLC/PLcontact_PS_po4_$output_name.dat w]
#  set out40 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3_pws10/results/PLC/PLcontact_PIP2_po4_$output_name.dat w]
 
#  #LID1
#  set out49 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3_pws10/results/PLC/PLcontact_total_lid1_$output_name.dat w]
#  set out50 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3_pws10/results/PLC/PLcontact_PC_lid1_$output_name.dat w]
#  set out51 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3_pws10/results/PLC/PLcontact_PS_lid1_$output_name.dat w]
#  set out52 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3_pws10/results/PLC/PLcontact_PIP2_lid1_$output_name.dat w]
 
#  set out53 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3_pws10/results/PLC/PLcontact_total_lid1_po4_$output_name.dat w]
#  set out54 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3_pws10/results/PLC/PLcontact_PC_lid1_po4_$output_name.dat w]
#  set out55 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3_pws10/results/PLC/PLcontact_PS_lid1_po4_$output_name.dat w]
#  set out56 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3_pws10/results/PLC/PLcontact_PIP2_lid1_po4_$output_name.dat w]


# mol load gro $gro 
# #set LPcontact [atomselect top "protein and name CA and pbwithin 7 of lipids and noh"]
# bigdcd LPcontact4 xtc $xtc
# bigdcd_wait
# close $out33
# close $out34
# close $out35
# close $out36
# close $out37
# close $out38
# close $out39
# close $out40
# close $out49
# close $out50
# close $out51
# close $out52
# close $out53
# close $out54
# close $out55
# close $out56

# mol delete all

### PRLR_LID1 PC M3 ##

# proc LPcontact3 { frame } {
#  #ALL TMD+LIDs
#  global  output_name 
#  set out2 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_LID1_m3/results/PLC/PLcontact_PC_$output_name.dat a+]
#  set out6 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_LID1_m3/results/PLC/PLcontact_PC_po4_$output_name.dat a+]
#  # TMD + LIDS
#  set contactPC [atomselect top "name BB and pbwithin 7 of resname POPC"]
#  set contactPC_po4 [atomselect top "name BB and pbwithin 7 of name PO4 and resname POPC"]
#  $contactPC frame $frame
#  $contactPC_po4 frame $frame
#  puts $out2 "$frame [$contactPC num] [$contactPC get resid]" 
#  puts $out6 "$frame [$contactPC_po4 num] [$contactPC_po4 get resid]" 
#  ########
# close $out2
# close $out6
# }
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl
# set gro "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PC/PRLR_LID1_500lipids_PC_m3cg_6.6PLpbcc.gro"
# set xtc "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PC/PRLR_LID1_500lipids_PC_m3cg_1ns_12us_PLpbcc.xtc"
                                                                                                                        
# set output_name "PRLR_LID1_PC_cg_m3" 
# set out34 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_LID1_m3/results/PLC/PLcontact_PC_$output_name.dat w] 
# set out38 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_LID1_m3/results/PLC/PLcontact_PC_po4_$output_name.dat w]
# mol load gro $gro 
# bigdcd LPcontact3 xtc $xtc
# bigdcd_wait
# close $out34
# close $out38
# mol delete all

### PCPSPIP2 955 M2 ###

# proc LPcontact4 { frame } {
#  #ALL TMD+LIDs
#  global  output_name 
#  set out1 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/results/PLC/PLcontact_total_$output_name.dat a+]
#  set out2 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/results/PLC/PLcontact_PC_$output_name.dat a+]
#  set out3 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/results/PLC/PLcontact_PS_$output_name.dat a+]
#  set out4 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/results/PLC/PLcontact_PIP2_$output_name.dat a+]
#  set out5 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/results/PLC/PLcontact_total_po4_$output_name.dat a+]
#  set out6 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/results/PLC/PLcontact_PC_po4_$output_name.dat a+]
#  set out7 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/results/PLC/PLcontact_PS_po4_$output_name.dat a+]
#  set out8 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/results/PLC/PLcontact_PIP2_po4_$output_name.dat a+]
#  #LID1results/
#  set out17 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/results/PLC/PLcontact_total_lid1_$output_name.dat a+]
#  set out18 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/results/PLC/PLcontact_PC_lid1_$output_name.dat a+]
#  set out19 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/results/PLC/PLcontact_PS_lid1_$output_name.dat a+]
#  set out20 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/results/PLC/PLcontact_PIP2_lid1_$output_name.dat a+]
#  set out21 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/results/PLC/PLcontact_total_lid1_po4_$output_name.dat a+]
#  set out22 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/results/PLC/PLcontact_PC_lid1_po4_$output_name.dat a+]
#  set out23 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/results/PLC/PLcontact_PS_lid1_po4_$output_name.dat a+]
#  set out24 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/results/PLC/PLcontact_PIP2_lid1_po4_$output_name.dat a+]
#  # TMD + LIDS
#  set contactL [atomselect top "name BB and pbwithin 7 of resname POPC POPS POP2"]
#  set contactPC [atomselect top "name BB and pbwithin 7 of resname POPC"]
#  set contactPS [atomselect top "name BB and pbwithin 7 of resname POPS"]
#  set contactPI2 [atomselect top "name BB and pbwithin 7 of resname POP2"]
#  set contactL_po4 [atomselect top "name BB and pbwithin 7 of  name PO4 and resname POPC POPS POP2"]
#  set contactPC_po4 [atomselect top "name BB and pbwithin 7 of name PO4 and resname POPC"]
#  set contactPS_po4 [atomselect top "name BB and pbwithin 7 of name PO4 and resname POPS"]
#  set contactPI2_po4 [atomselect top "name BB and pbwithin 7 of name PO4 and resname POP2"]
#  #LID1 contact number only
#  set contactL_lid1 [atomselect top   "name BB and resid 32 to 97 and pbwithin 7 of resname POPC POPS POP2"]
#  set contactPC_lid1 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of resname POPC"]
#  set contactPS_lid1 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of resname POPS"]
#  set contactPI2_lid1 [atomselect top "name BB and resid 32 to 97 and pbwithin 7 of resname POP2"]
#  set contactL_lid1_po4 [atomselect top   "name BB and resid 32 to 97 and pbwithin 7 of name PO4 and resname POPC POPS POP2"]
#  set contactPC_lid1_po4 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of name PO4 and resname POPC"]
#  set contactPS_lid1_po4 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of name PO4 and resname POPS"]
#  set contactPI2_lid1_po4 [atomselect top "name BB and resid 32 to 97 and pbwithin 7 of name PO4 and resname POP2"]
#  set LID1 [atomselect top "name BB and resid 32 to 97"]
#  set ICJM [atomselect top "name BB and resid 32 to 52"]
#  $contactL frame $frame
#  $contactPC frame $frame
#  $contactPS frame $frame
#  $contactPI2 frame $frame
#  $contactL_po4 frame $frame
#  $contactPC_po4 frame $frame
#  $contactPS_po4 frame $frame
#  $contactPI2_po4 frame $frame
#  $contactL_lid1 frame $frame
#  $contactPC_lid1 frame $frame
#  $contactPS_lid1 frame $frame
#  $contactPI2_lid1 frame $frame
#  $contactL_lid1_po4 frame $frame
#  $contactPC_lid1_po4 frame $frame
#  $contactPS_lid1_po4 frame $frame
#  $contactPI2_lid1_po4 frame $frame
#  puts $out1 "$frame [$contactL num] [$contactL get resid]"
#  puts $out2 "$frame [$contactPC num] [$contactPC get resid]" 
#  puts $out3 "$frame [$contactPS num] [$contactPS get resid]" 
#  puts $out4 "$frame [$contactPI2 num] [$contactPI2 get resid]"
#  puts $out5 "$frame [$contactL_po4 num] [$contactL_po4 get resid]"
#  puts $out6 "$frame [$contactPC_po4 num] [$contactPC_po4 get resid]" 
#  puts $out7 "$frame [$contactPS_po4 num] [$contactPS_po4 get resid]" 
#  puts $out8 "$frame [$contactPI2_po4 num] [$contactPI2_po4 get resid]"
#  ########
#  puts $out17 "$frame [$contactL_lid1 num]"
#  puts $out18 "$frame [$contactPC_lid1 num]" 
#  puts $out19 "$frame [$contactPS_lid1 num]" 
#  puts $out20 "$frame [$contactPI2_lid1 num]"
#  puts $out21 "$frame [$contactL_lid1_po4 num]"
#  puts $out22 "$frame [$contactPC_lid1_po4 num]" 
#  puts $out23 "$frame [$contactPS_lid1_po4 num]" 
#  puts $out24 "$frame [$contactPI2_lid1_po4 num]"
# close $out1
# close $out2
# close $out3
# close $out4
# close $out5
# close $out6
# close $out7
# close $out8
# close $out17
# close $out18
# close $out19
# close $out20
# close $out21
# close $out22
# close $out23
# close $out24
# }
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl
# set gro "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/gromacs/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg_s6.6PLpbcc.gro"
# set xtc "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/gromacs/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg_1ns_10us_PLpbcc.xtc"
                                                                                                                        
# set output_name "PRLR_LID1_PCPSPI2_955_cgm2" 
#  set out33 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/results/PLC/PLcontact_total_$output_name.dat w]
#  set out34 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/results/PLC/PLcontact_PC_$output_name.dat w]
#  set out35 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/results/PLC/PLcontact_PS_$output_name.dat w]
#  set out36 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/results/PLC/PLcontact_PIP2_$output_name.dat w]
#  set out37 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/results/PLC/PLcontact_total_po4_$output_name.dat w]
#  set out38 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/results/PLC/PLcontact_PC_po4_$output_name.dat w]
#  set out39 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/results/PLC/PLcontact_PS_po4_$output_name.dat w]
#  set out40 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/results/PLC/PLcontact_PIP2_po4_$output_name.dat w]
#  #LID1
#  set out49 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/results/PLC/PLcontact_total_lid1_$output_name.dat w]
#  set out50 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/results/PLC/PLcontact_PC_lid1_$output_name.dat w]
#  set out51 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/results/PLC/PLcontact_PS_lid1_$output_name.dat w]
#  set out52 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/results/PLC/PLcontact_PIP2_lid1_$output_name.dat w]
#  set out53 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/results/PLC/PLcontact_total_lid1_po4_$output_name.dat w]
#  set out54 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/results/PLC/PLcontact_PC_lid1_po4_$output_name.dat w]
#  set out55 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/results/PLC/PLcontact_PS_lid1_po4_$output_name.dat w]
#  set out56 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/results/PLC/PLcontact_PIP2_lid1_po4_$output_name.dat w]
# mol load gro $gro 
# #set LPcontact [atomselect top "protein and name CA and pbwithin 7 of lipids and noh"]
# bigdcd LPcontact4 xtc $xtc
# bigdcd_wait
# close $out33
# close $out34
# close $out35
# close $out36
# close $out37
# close $out38
# close $out39
# close $out40
# close $out49
# close $out50
# close $out51
# close $out52
# close $out53
# close $out54
# close $out55
# close $out56
# mol delete all

### PCPSPIP2 811 M3 ###

# proc LPcontact5 { frame } {
#  #ALL TMD+LIDs
#  global  output_name 
#  set out1 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3/results/PLC/PLcontact_total_$output_name.dat a+]
#  set out2 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3/results/PLC/PLcontact_PC_$output_name.dat a+]
#  set out3 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3/results/PLC/PLcontact_PS_$output_name.dat a+]
#  set out4 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3/results/PLC/PLcontact_PIP2_$output_name.dat a+]
#  set out5 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3/results/PLC/PLcontact_total_po4_$output_name.dat a+]
#  set out6 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3/results/PLC/PLcontact_PC_po4_$output_name.dat a+]
#  set out7 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3/results/PLC/PLcontact_PS_po4_$output_name.dat a+]
#  set out8 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3/results/PLC/PLcontact_PIP2_po4_$output_name.dat a+]
#  #LID1
#  set out17 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3/results/PLC/PLcontact_total_lid1_$output_name.dat a+]
#  set out18 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3/results/PLC/PLcontact_PC_lid1_$output_name.dat a+]
#  set out19 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3/results/PLC/PLcontact_PS_lid1_$output_name.dat a+]
#  set out20 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3/results/PLC/PLcontact_PIP2_lid1_$output_name.dat a+]
#  set out21 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3/results/PLC/PLcontact_total_lid1_po4_$output_name.dat a+]
#  set out22 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3/results/PLC/PLcontact_PC_lid1_po4_$output_name.dat a+]
#  set out23 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3/results/PLC/PLcontact_PS_lid1_po4_$output_name.dat a+]
#  set out24 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3/results/PLC/PLcontact_PIP2_lid1_po4_$output_name.dat a+]
#  # TMD + LIDS
#  set contactL [atomselect top "name BB and pbwithin 7 of resname POPC POPS POP2"]
#  set contactPC [atomselect top "name BB and pbwithin 7 of resname POPC"]
#  set contactPS [atomselect top "name BB and pbwithin 7 of resname POPS"]
#  set contactPI2 [atomselect top "name BB and pbwithin 7 of resname POP2"]
#  set contactL_po4 [atomselect top "name BB and pbwithin 7 of  name PO4 and resname POPC POPS POP2"]
#  set contactPC_po4 [atomselect top "name BB and pbwithin 7 of name PO4 and resname POPC"]
#  set contactPS_po4 [atomselect top "name BB and pbwithin 7 of name PO4 and resname POPS"]
#  set contactPI2_po4 [atomselect top "name BB and pbwithin 7 of name PO4 and resname POP2"]
#  #LID1 contact number only
#  set contactL_lid1 [atomselect top   "name BB and resid 32 to 97 and pbwithin 7 of resname POPC POPS POP2"]
#  set contactPC_lid1 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of resname POPC"]
#  set contactPS_lid1 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of resname POPS"]
#  set contactPI2_lid1 [atomselect top "name BB and resid 32 to 97 and pbwithin 7 of resname POP2"]
#  set contactL_lid1_po4 [atomselect top   "name BB and resid 32 to 97 and pbwithin 7 of name PO4 and resname POPC POPS POP2"]
#  set contactPC_lid1_po4 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of name PO4 and resname POPC"]
#  set contactPS_lid1_po4 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of name PO4 and resname POPS"]
#  set contactPI2_lid1_po4 [atomselect top "name BB and resid 32 to 97 and pbwithin 7 of name PO4 and resname POP2"]
#  set LID1 [atomselect top "name BB and resid 32 to 97"]
#  set ICJM [atomselect top "name BB and resid 32 to 52"]
#  $contactL frame $frame
#  $contactPC frame $frame
#  $contactPS frame $frame
#  $contactPI2 frame $frame
#  $contactL_po4 frame $frame
#  $contactPC_po4 frame $frame
#  $contactPS_po4 frame $frame
#  $contactPI2_po4 frame $frame
#  $contactL_lid1 frame $frame
#  $contactPC_lid1 frame $frame
#  $contactPS_lid1 frame $frame
#  $contactPI2_lid1 frame $frame
#  $contactL_lid1_po4 frame $frame
#  $contactPC_lid1_po4 frame $frame
#  $contactPS_lid1_po4 frame $frame
#  $contactPI2_lid1_po4 frame $frame
#  puts $out1 "$frame [$contactL num] [$contactL get resid]"
#  puts $out2 "$frame [$contactPC num] [$contactPC get resid]" 
#  puts $out3 "$frame [$contactPS num] [$contactPS get resid]" 
#  puts $out4 "$frame [$contactPI2 num] [$contactPI2 get resid]"
#  puts $out5 "$frame [$contactL_po4 num] [$contactL_po4 get resid]"
#  puts $out6 "$frame [$contactPC_po4 num] [$contactPC_po4 get resid]" 
#  puts $out7 "$frame [$contactPS_po4 num] [$contactPS_po4 get resid]" 
#  puts $out8 "$frame [$contactPI2_po4 num] [$contactPI2_po4 get resid]"
#  ########
#  puts $out17 "$frame [$contactL_lid1 num]"
#  puts $out18 "$frame [$contactPC_lid1 num]" 
#  puts $out19 "$frame [$contactPS_lid1 num]" 
#  puts $out20 "$frame [$contactPI2_lid1 num]"
#  puts $out21 "$frame [$contactL_lid1_po4 num]"
#  puts $out22 "$frame [$contactPC_lid1_po4 num]" 
#  puts $out23 "$frame [$contactPS_lid1_po4 num]" 
#  puts $out24 "$frame [$contactPI2_lid1_po4 num]"
# close $out1
# close $out2
# close $out3
# close $out4
# close $out5
# close $out6
# close $out7
# close $out8
# close $out17
# close $out18
# close $out19
# close $out20
# close $out21
# close $out22
# close $out23
# close $out24
# }
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl
# set gro "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_811/PRLR_LID1_PCPSPIP2_811_m3_s6.6PLpbcc.gro"
# set xtc "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_811/PRLR_LID1_PCPSPIP2_811_m3_1ns_3usPLpbcc.xtc"
                                                                                                                        
# set output_name "PRLR_LID1_PCPSPI2_955_cgm2" 
#  set out33 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3/results/PLC/PLcontact_total_$output_name.dat w]
#  set out34 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3/results/PLC/PLcontact_PC_$output_name.dat w]
#  set out35 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3/results/PLC/PLcontact_PS_$output_name.dat w]
#  set out36 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3/results/PLC/PLcontact_PIP2_$output_name.dat w]
#  set out37 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3/results/PLC/PLcontact_total_po4_$output_name.dat w]
#  set out38 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3/results/PLC/PLcontact_PC_po4_$output_name.dat w]
#  set out39 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3/results/PLC/PLcontact_PS_po4_$output_name.dat w]
#  set out40 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3/results/PLC/PLcontact_PIP2_po4_$output_name.dat w]
#  #LID1
#  set out49 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3/results/PLC/PLcontact_total_lid1_$output_name.dat w]
#  set out50 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3/results/PLC/PLcontact_PC_lid1_$output_name.dat w]
#  set out51 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3/results/PLC/PLcontact_PS_lid1_$output_name.dat w]
#  set out52 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3/results/PLC/PLcontact_PIP2_lid1_$output_name.dat w]
#  set out53 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3/results/PLC/PLcontact_total_lid1_po4_$output_name.dat w]
#  set out54 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3/results/PLC/PLcontact_PC_lid1_po4_$output_name.dat w]
#  set out55 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3/results/PLC/PLcontact_PS_lid1_po4_$output_name.dat w]
#  set out56 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/M3/PRLR_500lipids_POPC_POPS_PIP2_m3/results/PLC/PLcontact_PIP2_lid1_po4_$output_name.dat w]
# mol load gro $gro 
# bigdcd LPcontact5 xtc $xtc
# bigdcd_wait
# close $out33
# close $out34
# close $out35
# close $out36
# close $out37
# close $out38
# close $out39
# close $out40
# close $out49
# close $out50
# close $out51
# close $out52
# close $out53
# close $out54
# close $out55
# close $out56
# mol delete all

### PRLR_LID1 PCPS m3pws10 (70:30) ####

 proc LPcontact10 { frame } {
  #ALL TMD+LIDs
  global  output_name 
  set out1 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPS/pws10/results/PLC/PLcontact_total_$output_name.dat a+]
  set out2 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPS/pws10/results/PLC/PLcontact_PC_$output_name.dat a+]
  set out3 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPS/pws10/results/PLC/PLcontact_PS_$output_name.dat a+]
  
  set out5 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPS/pws10/results/PLC/PLcontact_total_po4_$output_name.dat a+]
  set out6 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPS/pws10/results/PLC/PLcontact_PC_po4_$output_name.dat a+]
  set out7 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPS/pws10/results/PLC/PLcontact_PS_po4_$output_name.dat a+]

  set out17 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPS/pws10/results/PLC/PLcontact_total_lid1_$output_name.dat a+]
  set out18 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPS/pws10/results/PLC/PLcontact_PC_lid1_$output_name.dat a+]
  set out19 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPS/pws10/results/PLC/PLcontact_PS_lid1_$output_name.dat a+]

  set out21 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPS/pws10/results/PLC/PLcontact_total_lid1_po4_$output_name.dat a+ ]
  set out22 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPS/pws10/results/PLC/PLcontact_PC_lid1_po4_$output_name.dat a+ ]
  set out23 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPS/pws10/results/PLC/PLcontact_PS_lid1_po4_$output_name.dat a+ ]
#   

  # TMD + LIDS
  set contactL [atomselect top "name BB and pbwithin 7 of resname POPC POPS "]
  set contactPC [atomselect top "name BB and pbwithin 7 of resname POPC"]
  set contactPS [atomselect top "name BB and pbwithin 7 of resname POPS"]
  
  set contactL_po4 [atomselect top "name BB and pbwithin 7 of  name PO4 and resname POPC POPS POP2"]
  set contactPC_po4 [atomselect top "name BB and pbwithin 7 of name PO4 and resname POPC"]
  set contactPS_po4 [atomselect top "name BB and pbwithin 7 of name PO4 and resname POPS"]

  #LID1 contact number only
  set contactL_lid1 [atomselect top   "name BB and resid 32 to 97 and pbwithin 7 of resname POPC POPS "]
  set contactPC_lid1 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of resname POPC"]
  set contactPS_lid1 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of resname POPS"]
  
  set contactL_lid1_po4 [atomselect top   "name BB and resid 32 to 97 and pbwithin 7 of name PO4 and resname POPC POPS "]
  set contactPC_lid1_po4 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of name PO4 and resname POPC"]
  set contactPS_lid1_po4 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of name PO4 and resname POPS"]
  
  $contactL frame $frame
  $contactPC frame $frame
  $contactPS frame $frame
  
  $contactL_po4 frame $frame
  $contactPC_po4 frame $frame
  $contactPS_po4 frame $frame

  $contactL_lid1 frame $frame
  $contactPC_lid1 frame $frame
  $contactPS_lid1 frame $frame
  
  $contactL_lid1_po4 frame $frame
  $contactPC_lid1_po4 frame $frame
  $contactPS_lid1_po4 frame $frame

  puts $out1 "$frame [$contactL num] [$contactL get resid]"
  puts $out2 "$frame [$contactPC num] [$contactPC get resid]" 
  puts $out3 "$frame [$contactPS num] [$contactPS get resid]" 
  
  puts $out5 "$frame [$contactL_po4 num] [$contactL_po4 get resid]"
  puts $out6 "$frame [$contactPC_po4 num] [$contactPC_po4 get resid]" 
  puts $out7 "$frame [$contactPS_po4 num] [$contactPS_po4 get resid]" 
  
  ########
  puts $out17 "$frame [$contactL_lid1 num]"
  puts $out18 "$frame [$contactPC_lid1 num]" 
  puts $out19 "$frame [$contactPS_lid1 num]" 
  
  puts $out21 "$frame [$contactL_lid1_po4 num]"
  puts $out22 "$frame [$contactPC_lid1_po4 num]" 
  puts $out23 "$frame [$contactPS_lid1_po4 num]" 
  
 close $out1
 close $out2
 close $out3
 close $out5
 close $out6
 close $out7
 close $out17
 close $out18
 close $out19
 close $out21
 close $out22
 close $out23
}

source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

set gro "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPS/pws10/PRLR_LID1_PCPS_m3pws10_s6.6_PLpbcctmd.gro"

set xtc "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPS/pws10/PRLR_LID1_PCPS_m3pws10_10us_1ns_PLpbcctmd.xtc"
                                                                                                                           
set output_name "PRLR_LID1-2_PCPS_cgm3pws10_10us" 

set out33 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPS/pws10/results/PLC/PLcontact_total_$output_name.dat w]
set out34 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPS/pws10/results/PLC/PLcontact_PC_$output_name.dat w]
set out35 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPS/pws10/results/PLC/PLcontact_PS_$output_name.dat w]

set out37 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPS/pws10/results/PLC/PLcontact_total_po4_$output_name.dat w]
set out38 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPS/pws10/results/PLC/PLcontact_PC_po4_$output_name.dat w]
set out39 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPS/pws10/results/PLC/PLcontact_PS_po4_$output_name.dat w]
#LID1
set out49 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPS/pws10/results/PLC/PLcontact_total_lid1_$output_name.dat w]
set out50 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPS/pws10/results/PLC/PLcontact_PC_lid1_$output_name.dat w]
set out51 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPS/pws10/results/PLC/PLcontact_PS_lid1_$output_name.dat w]

set out53 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPS/pws10/results/PLC/PLcontact_total_lid1_po4_$output_name.dat w]
set out54 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPS/pws10/results/PLC/PLcontact_PC_lid1_po4_$output_name.dat w]
set out55 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPS/pws10/results/PLC/PLcontact_PS_lid1_po4_$output_name.dat w]

mol load gro $gro
bigdcd LPcontact10 xtc $xtc
bigdcd_wait
close $out33
close $out34
close $out35
close $out37
close $out38
close $out39
close $out49
close $out50
close $out51
close $out53
close $out54
close $out55
mol delete all

### PRLR_LID1 PC-PS-PIP2 m3pws10 (90:5:5)####

proc LPcontact5 { frame } {
 #ALL TMD+LIDs
 global  output_name 
 set out1 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/results/PLC/PLcontact_total_$output_name.dat a+]
 set out2 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/results/PLC/PLcontact_PC_$output_name.dat a+]
 set out3 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/results/PLC/PLcontact_PS_$output_name.dat a+]
 set out4 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/results/PLC/PLcontact_PIP2_$output_name.dat a+]
 set out5 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/results/PLC/PLcontact_total_po4_$output_name.dat a+]
 set out6 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/results/PLC/PLcontact_PC_po4_$output_name.dat a+]
 set out7 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/results/PLC/PLcontact_PS_po4_$output_name.dat a+]
 set out8 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/results/PLC/PLcontact_PIP2_po4_$output_name.dat a+]
 #LID1
 set out17 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/results/PLC/PLcontact_total_lid1_$output_name.dat a+]
 set out18 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/results/PLC/PLcontact_PC_lid1_$output_name.dat a+]
 set out19 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/results/PLC/PLcontact_PS_lid1_$output_name.dat a+]
 set out20 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/results/PLC/PLcontact_PIP2_lid1_$output_name.dat a+]
 set out21 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/results/PLC/PLcontact_total_lid1_po4_$output_name.dat a+]
 set out22 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/results/PLC/PLcontact_PC_lid1_po4_$output_name.dat a+]
 set out23 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/results/PLC/PLcontact_PS_lid1_po4_$output_name.dat a+]
 set out24 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/results/PLC/PLcontact_PIP2_lid1_po4_$output_name.dat a+]
 # TMD + LIDS
 set contactL [atomselect top "name BB and pbwithin 7 of resname POPC POPS POP2"]
 set contactPC [atomselect top "name BB and pbwithin 7 of resname POPC"]
 set contactPS [atomselect top "name BB and pbwithin 7 of resname POPS"]
 set contactPI2 [atomselect top "name BB and pbwithin 7 of resname POP2"]
 set contactL_po4 [atomselect top "name BB and pbwithin 7 of  name PO4 and resname POPC POPS POP2"]
 set contactPC_po4 [atomselect top "name BB and pbwithin 7 of name PO4 and resname POPC"]
 set contactPS_po4 [atomselect top "name BB and pbwithin 7 of name PO4 and resname POPS"]
 set contactPI2_po4 [atomselect top "name BB and pbwithin 7 of name PO4 and resname POP2"]
 #LID1 contact number only
 set contactL_lid1 [atomselect top   "name BB and resid 32 to 97 and pbwithin 7 of resname POPC POPS POP2"]
 set contactPC_lid1 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of resname POPC"]
 set contactPS_lid1 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of resname POPS"]
 set contactPI2_lid1 [atomselect top "name BB and resid 32 to 97 and pbwithin 7 of resname POP2"]
 set contactL_lid1_po4 [atomselect top   "name BB and resid 32 to 97 and pbwithin 7 of name PO4 and resname POPC POPS POP2"]
 set contactPC_lid1_po4 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of name PO4 and resname POPC"]
 set contactPS_lid1_po4 [atomselect top  "name BB and resid 32 to 97 and pbwithin 7 of name PO4 and resname POPS"]
 set contactPI2_lid1_po4 [atomselect top "name BB and resid 32 to 97 and pbwithin 7 of name PO4 and resname POP2"]
 set LID1 [atomselect top "name BB and resid 32 to 97"]
 set ICJM [atomselect top "name BB and resid 32 to 52"]
 $contactL frame $frame
 $contactPC frame $frame
 $contactPS frame $frame
 $contactPI2 frame $frame
 $contactL_po4 frame $frame
 $contactPC_po4 frame $frame
 $contactPS_po4 frame $frame
 $contactPI2_po4 frame $frame
 $contactL_lid1 frame $frame
 $contactPC_lid1 frame $frame
 $contactPS_lid1 frame $frame
 $contactPI2_lid1 frame $frame
 $contactL_lid1_po4 frame $frame
 $contactPC_lid1_po4 frame $frame
 $contactPS_lid1_po4 frame $frame
 $contactPI2_lid1_po4 frame $frame
 puts $out1 "$frame [$contactL num] [$contactL get resid]"
 puts $out2 "$frame [$contactPC num] [$contactPC get resid]" 
 puts $out3 "$frame [$contactPS num] [$contactPS get resid]" 
 puts $out4 "$frame [$contactPI2 num] [$contactPI2 get resid]"
 puts $out5 "$frame [$contactL_po4 num] [$contactL_po4 get resid]"
 puts $out6 "$frame [$contactPC_po4 num] [$contactPC_po4 get resid]" 
 puts $out7 "$frame [$contactPS_po4 num] [$contactPS_po4 get resid]" 
 puts $out8 "$frame [$contactPI2_po4 num] [$contactPI2_po4 get resid]"
 ########
 puts $out17 "$frame [$contactL_lid1 num]"
 puts $out18 "$frame [$contactPC_lid1 num]" 
 puts $out19 "$frame [$contactPS_lid1 num]" 
 puts $out20 "$frame [$contactPI2_lid1 num]"
 puts $out21 "$frame [$contactL_lid1_po4 num]"
 puts $out22 "$frame [$contactPC_lid1_po4 num]" 
 puts $out23 "$frame [$contactPS_lid1_po4 num]" 
 puts $out24 "$frame [$contactPI2_lid1_po4 num]"
close $out1
close $out2
close $out3
close $out4
close $out5
close $out6
close $out7
close $out8
close $out17
close $out18
close $out19
close $out20
close $out21
close $out22
close $out23
close $out24
}
source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl
set gro "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/PRLR_LID1_PCPSPIP2_955_s6.6_m3pws10_PLpbcctmd.gro"
set xtc "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/PRLR_LID1_PCPSPIP2_955_1ns_10us_m3pws10_PLpbcctmd.xtc"
                                                                                                                      
set output_name "PRLR_LID1_PCPSPI2_955_cgm3pws10_10us" 
 set out33 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/results/PLC/PLcontact_total_$output_name.dat w]
 set out34 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/results/PLC/PLcontact_PC_$output_name.dat w]
 set out35 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/results/PLC/PLcontact_PS_$output_name.dat w]
 set out36 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/results/PLC/PLcontact_PIP2_$output_name.dat w]
 set out37 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/results/PLC/PLcontact_total_po4_$output_name.dat w]
 set out38 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/results/PLC/PLcontact_PC_po4_$output_name.dat w]
 set out39 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/results/PLC/PLcontact_PS_po4_$output_name.dat w]
 set out40 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/results/PLC/PLcontact_PIP2_po4_$output_name.dat w]
 #LID1
 set out49 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/results/PLC/PLcontact_total_lid1_$output_name.dat w]
 set out50 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/results/PLC/PLcontact_PC_lid1_$output_name.dat w]
 set out51 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/results/PLC/PLcontact_PS_lid1_$output_name.dat w]
 set out52 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/results/PLC/PLcontact_PIP2_lid1_$output_name.dat w]
 set out53 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/results/PLC/PLcontact_total_lid1_po4_$output_name.dat w]
 set out54 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/results/PLC/PLcontact_PC_lid1_po4_$output_name.dat w]
 set out55 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/results/PLC/PLcontact_PS_lid1_po4_$output_name.dat w]
 set out56 [open /media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/results/PLC/PLcontact_PIP2_lid1_po4_$output_name.dat w]
mol load gro $gro 
bigdcd LPcontact5 xtc $xtc
bigdcd_wait
close $out33
close $out34
close $out35
close $out36
close $out37
close $out38
close $out39
close $out40
close $out49
close $out50
close $out51
close $out52
close $out53
close $out54
close $out55
close $out56
mol delete all


quit



