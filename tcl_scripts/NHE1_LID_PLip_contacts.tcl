## Protein / Lipid contacts NHE1-LID aa-simulations ##

## MBUF wMEMB##

 proc LPcontact1 { frame } {
 	 global outputname
 
 	#Open output files
 	set out1 [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/LPC_$outputname.dat a+]
 	
 	
 	#Find contacts between NHE1-LID and Lipids
 
 	set JPC [atomselect top "protein and name CA and pbwithin 7 of resname POPC"]
 	
 	
 	#Update variables
 	$JPC frame  $frame
 	
 	
 	#Print to file
 	puts $out1 "$frame [$JPC num] [$JPC get resid]"
 	
 	
 	close $out1
 	
 	
 }
 #Call bigdcd
 source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl
 
 #set workdir
 set wkdir "/media/4TB_HDD/raul/projects/synergy/NHE1/LID/AA/MBUF_wMEMB/PC"
 
 #a gro file is needed 
 set gro "$wkdir/step6.6_equilibration_PL.gro"
                 
 #call trj xtc file
 set xtc "$wkdir/NHE1_LIDmb_PCcbwri_PL_s7_1-9_50ps_pbcc.xtc"
  
 set outputname "NHE1_LID_mbuf_PC_1-9_50ps" 
 
 #Open output files
 set outa [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/LPC_$outputname.dat w]
 
 mol load gro $gro 
 bigdcd LPcontact1 xtc $xtc
 bigdcd_wait
 close $outa
 mol delete all
 
 proc LPcontact2 { frame } {
 	 global outputname
 
 	#Open output files
 	set out1 [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/LPC_$outputname.dat a+]
 	set out3 [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/LPS_$outputname.dat a+]
 	
 	#Find contacts between NHE1-LID and Lipids
 
 	set JPC [atomselect top "protein and name CA and pbwithin 7 of resname POPC"]
 	set JPS [atomselect top "protein and name CA and pbwithin 7 of resname POPS"]
 	
 	#Update variables
 	$JPC frame  $frame
 	$JPS frame  $frame
 	
 	#Print to file
 	puts $out1 "$frame [$JPC num] [$JPC get resid]"
 	puts $out3 "$frame [$JPS num] [$JPS get resid]"
 	
 	close $out1
 	close $out3
 	
 }
 #Call bigdcd
 source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl
 
 #set workdir
 set wkdir "/media/4TB_HDD/raul/projects/synergy/NHE1/LID/AA/MBUF_wMEMB/PCPS"
 
 #a gro file is needed 
 set gro "$wkdir/step6.6_equilibration_PL.gro"
                 
 #call trj xtc file
 set xtc "$wkdir/NHE1_LIDmb_PCPScbwri_PL_s7_1-9_50ps_pbcc.xtc"
  
 set outputname "NHE1_LID_mbuf_PCPS_1-9_50ps" 
 
 #Open output files
 set outa [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/LPC_$outputname.dat w]
 set outc [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/LPS_$outputname.dat w]
 
 mol load gro $gro 
 bigdcd LPcontact2 xtc $xtc
 bigdcd_wait
 close $outa
 close $outc
 mol delete all
 
 proc LPcontact3 { frame } {
 	 global outputname
 
 	#Open output files
 	set out1 [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/LPC_$outputname.dat a+]
 	set out3 [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/LPIP_$outputname.dat a+]
 	
 	#Find contacts between NHE1-LID and Lipids
 
 	set JPC [atomselect top "protein and name CA and pbwithin 7 of resname POPC"]
 	set JP2 [atomselect top "protein and name CA and pbwithin 7 of resname POPI2"]
 	
 	#Update variables
 	$JPC frame  $frame
 	$JP2 frame  $frame
 	
 	#Print to file
 	puts $out1 "$frame [$JPC num] [$JPC get resid]"
 	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
 	
 	close $out1
 	close $out3
 	
 }
 #Call bigdcd
 source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl
 
 #set workdir
 set wkdir "/media/4TB_HDD/raul/projects/synergy/NHE1/LID/AA/MBUF_wMEMB/PCPIP2"
 
 #a gro file is needed 
 set gro "$wkdir/step6.6_equilibration_PL.gro"
                 
 #call trj xtc file
 set xtc "$wkdir/NHE1_LIDmb_PCPIP2cbwri_PLI_s7_1-8_50ps_pbcc.xtc"
  
 set outputname "NHE1_LID_mbuf_PCPIP2_1-8_50ps" 
 
 #Open output files
 set outa [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/LPC_$outputname.dat w]
 set outc [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/LPIP_$outputname.dat w]
 
 mol load gro $gro 
 bigdcd LPcontact3 xtc $xtc
 bigdcd_wait
 close $outa
 close $outc
 mol delete all
 
 quit

# Qaa wMENB#

# proc LPcontact1 { frame } {
# 	 global outputname
# 
# 	#Open output files
# 	set out1 [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/wMEMB/results/JPC_$outputname.dat a+]
# 	
# 	
# 	#Find contacts between NHE1-LID and Lipids
# 
# 	set JPC [atomselect top "protein and name CA and pbwithin 7 of resname POPC"]
# 	
# 	
# 	#Update variables
# 	$JPC frame  $frame
# 	
# 	
# 	#Print to file
# 	puts $out1 "$frame [$JPC num] [$JPC get resid]"
# 	
# 	
# 	close $out1
# 	
# 	
# }
# #Call bigdcd
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl
# 
# #set workdir
# set wkdir "/home/raul/projects/MD-runs/synergy/NHE1/LID/AA/wMEMB/PC/C1"
# 
# #a gro file is needed 
# set gro "$wkdir/NHE1-LID_C1_PCcbwri_s6.6_PLI.gro"
#                 
# #call trj xtc file
# set xtc "$wkdir/NHE1-LID_C1_PCcbwri_1-3_50ps_PLI.xtc"
#  
# set outputname "NHE1_LID_QaaWmemb_PC_1-3_50ps" 
# 
# #Open output files
# set outa [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/wMEMB/results/JPC_$outputname.dat w]
# 
# mol load gro $gro 
# bigdcd LPcontact1 xtc $xtc
# bigdcd_wait
# close $outa
# mol delete all
# 
# proc LPcontact2 { frame } {
# 	 global outputname
# 
# 	#Open output files
# 	set out1 [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/wMEMB/results/JPC_$outputname.dat a+]
# 	set out3 [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/wMEMB/results/JPS_$outputname.dat a+]
# 	
# 	#Find contacts between NHE1-LID and Lipids
# 
# 	set JPC [atomselect top "protein and name CA and pbwithin 7 of resname POPC"]
# 	set JPS [atomselect top "protein and name CA and pbwithin 7 of resname POPS"]
# 	
# 	#Update variables
# 	$JPC frame  $frame
# 	$JPS frame  $frame
# 	
# 	#Print to file
# 	puts $out1 "$frame [$JPC num] [$JPC get resid]"
# 	puts $out3 "$frame [$JPS num] [$JPS get resid]"
# 	
# 	close $out1
# 	close $out3
# 	
# }
# #Call bigdcd
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl
# 
# #set workdir
# set wkdir "/home/raul/projects/MD-runs/synergy/NHE1/LID/AA/wMEMB/PCPS/C1"
# 
# #a gro file is needed 
# set gro "$wkdir/NHE1-LID_C1_PCPScbwri_C1_s6.6_PLI.gro"
#                 
# #call trj xtc file
# set xtc "$wkdir/NHE1-LID_C1_PCPScbwri_PLI_1-4_50ps.xtc"
#  
# set outputname "NHE1_LID_QaaWmemb_PCPS_1-4_50ps" 
# 
# #Open output files
# set outa [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/wMEMB/results/JPC_$outputname.dat w]
# set outc [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/wMEMB/results/JP2_$outputname.dat w]
# 
# mol load gro $gro 
# bigdcd LPcontact2 xtc $xtc
# bigdcd_wait
# close $outa
# close $outc
# mol delete all
#
#proc LPcontact3 { frame } {
#	 global outputname
#
#	#Open output files
#	set out1 [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/wMEMB/results/JPC_$outputname.dat a+]
#	set out3 [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/wMEMB/results/JP2_$outputname.dat a+]
#	
#	#Find contacts between NHE1-LID and Lipids
#
#	set JPC [atomselect top "protein and name CA and pbwithin 7 of resname POPC"]
#	set JP2 [atomselect top "protein and name CA and pbwithin 7 of resname POPI2"]
#	
#	#Update variables
#	$JPC frame  $frame
#	$JP2 frame  $frame
#	
#	#Print to file
#	puts $out1 "$frame [$JPC num] [$JPC get resid]"
#	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
#	
#	close $out1
#	close $out3
#	
#}
##Call bigdcd
#source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl
#
##set workdir
#set wkdir "/home/raul/projects/MD-runs/synergy/NHE1/LID/AA/wMEMB/PCPIP2/C1"
#
##a gro file is needed 
#set gro "$wkdir/NHE1-LID_C1_PCPIP2cbwri_s6.6_PLI.gro"
#                
##call trj xtc file
#set xtc "$wkdir/NHE1-LID_C1_PCPIP2cbwri_1-6_50ps_PLI.xtc"
# 
#set outputname "NHE1_LID_QaaWmemb_PCPIP2_1-6_50ps" 
#
##Open output files
#set outa [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/wMEMB/results/JPC_$outputname.dat w]
#set outc [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/wMEMB/results/JP2_$outputname.dat w]
#
#mol load gro $gro 
#
#bigdcd LPcontact3 xtc $xtc
#bigdcd_wait
#close $outa
#close $outc
#mol delete all

quit
