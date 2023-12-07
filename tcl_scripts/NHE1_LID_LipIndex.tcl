## Protein / Lipid contacts NHE1-LID aa-simulations ##

## MBUF wMEMB##

 proc LPcontact2 { frame } {
 	 global outputname
 
 	#Open output files
 	set out3 [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PSindex_$outputname.dat a+]
 	
 	#Find contacts between NHE1-LID and Lipids
 
 	set JPS [atomselect top " resname POPS and name C13 and pbwithin 7 of protein and name CA"]
 	
 	#Update variables
 	$JPS frame  $frame
 	
 	#Print to file
 	
 	puts $out3 "$frame [$JPS num] [$JPS get resid]"
 
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
 set outc [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PSindex_$outputname.dat w]
 
 mol load gro $gro 
 bigdcd LPcontact2 xtc $xtc
 bigdcd_wait
 close $outc
 mol delete all
 
 proc LPcontact3 { frame } {
 	 global outputname
 
 	#Open output files

 	set out3 [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PIPindex_$outputname.dat a+]
 	
 	#Find contacts between NHE1-LID and Lipids
 
 	set JP2 [atomselect top "resname POPI2 and name C13 and pbwithin 7 of protein and name CA"]
 	
 	#Update variables
 	$JP2 frame  $frame
 	
 	#Print to file
 	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
 	
 
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
 set outc [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PIPindex_$outputname.dat w]
 
 mol load gro $gro 
 bigdcd LPcontact3 xtc $xtc
 bigdcd_wait
 close $outc
 mol delete all
 
 quit
