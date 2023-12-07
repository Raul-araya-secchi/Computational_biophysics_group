 proc LPcontact1 { frame } {
   #ALL TMD+LIDs
   global  output_name 
   
   #ALL TMD+LIDs
   set out1 [open /home/raul/projects/GHR_FL/GHR_ECDfl_TMD_ICDfl_GFP_composite/CGm3/PLcontact_PC_$output_name.dat a+]
   set out2 [open /home/raul/projects/GHR_FL/GHR_ECDfl_TMD_ICDfl_GFP_composite/CGm3/PLcontact_PC_po4_$output_name.dat a+]
   set out3 [open /home/raul/projects/GHR_FL/GHR_ECDfl_TMD_ICDfl_GFP_composite/CGm3/Rg_$output_name.dat a+]
   
   #ALL TMD+LIDs
   set contactPC [atomselect top "name BB and pbwithin 7 of resname POPC"]
   set contactPC_po4 [atomselect top "name BB and pbwithin 7 of name PO4 and resname POPC"]
   set all     [atomselect top "same resid as name BB"] 
   set ECDfl   [atomselect top "same resid as name BB and resid 1 to 238"] 
   set ICD_gfp [atomselect top "same resid as name BB and resid 296 to 849"] 
   #ICD N-ter considered as the first residue of the ICD w/o contacts with the lipids.
   set ICD     [atomselect top "same resid as name BB and resid 296 to 621"] 

   $contactPC frame $frame
   $contactPC_po4 frame $frame
   $all frame $frame
   $ECDfl frame $frame
   $ICD frame $frame
   $ICD_gfp frame $frame

   set allRg     [measure rgyr $all]
   set ECDflRg   [measure rgyr $ECDfl]
   set ICDRg     [measure rgyr $ICD]
   set ICD_gfpRg [measure rgyr $ICD_gfp]

   puts $out1 "$frame [$contactPC num] [$contactPC get resid]" 
   puts $out2 "$frame [$contactPC_po4 num] [$contactPC_po4 get resid]" 
   puts $out3 "$frame $allRg $ECDflRg $ICDRg $ICD_gfpRg "

close $out1
close $out2
close $out3
 }
 
 source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl
 
 set gro "/home/raul/projects/GHR_FL/GHR_ECDfl_TMD_ICDfl_GFP_composite/CGm3/GHRfl_GFP_m3b32_s6.6_PL.gro"
 																								
 set xtc "/home/raul/projects/GHR_FL/GHR_ECDfl_TMD_ICDfl_GFP_composite/CGm3/GHRfl_GFP_m3b32_1_20_500ps_PLpbcc.xtc"

 set output_name "GHRfl_GFP_m3b32" 
 
#ALL TMD+LIDs
   set out4 [open /home/raul/projects/GHR_FL/GHR_ECDfl_TMD_ICDfl_GFP_composite/CGm3/PLcontact_PC_$output_name.dat w]
   set out5 [open /home/raul/projects/GHR_FL/GHR_ECDfl_TMD_ICDfl_GFP_composite/CGm3/PLcontact_PC_po4_$output_name.dat w]
   set out6 [open /home/raul/projects/GHR_FL/GHR_ECDfl_TMD_ICDfl_GFP_composite/CGm3/Rg_$output_name.dat w]
# 
mol load gro $gro 
bigdcd LPcontact1 xtc $xtc
bigdcd_wait
close $out4
close $out5
close $out6

mol delete all
quit