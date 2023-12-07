# 
# proc LPcontact { frame } {
# 	 global outputname
# 
# 	#Open output files
# 	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat a+]
# 	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat a+]
# 	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat a+]
# 	set out4 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat a+]
# 	set out5 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat a+]
# 	set out6 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat a+]
# 	
# 	#Find contacts between JAK2-FERM-SH and Lipids
# 
# 	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
# 	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
# 	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
# 	
# 	#Find contacts between PRLR-LID1 and Lipids 
# 	
# 	set LPC [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC"]
# 	set LPS [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS"]
# 	set LP2 [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POP2"]
# 	
# 	#Update variables
# 	$JPC frame  $frame 
# 	$JPS frame  $frame 
# 	$JP2 frame  $frame 
# 	$LPC frame  $frame 
#  	$LPS frame  $frame 
# 	$LP2 frame  $frame 
# 	
# 	#Print to file
# 	puts $out1 "$frame [$JPC num] [$JPC get resid]"
# 	puts $out2 "$frame [$JPS num] [$JPS get resid]"
# 	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
# 	puts $out4 "$frame [$LPC num] [$LPC get resid]"
# 	puts $out5 "$frame [$LPS num] [$LPS get resid]"
# 	puts $out6 "$frame [$LP2 num] [$LP2 get resid]"
# 	
# 	close $out1
# 	close $out2
# 	close $out3
# 	close $out4
# 	close $out5
# 	close $out6
# 	
# }
# #Call bigdcd
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl
# 
# #set workdir
# set wkdir "/home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/PCPSPIP2/C1"
# 
# #a gro file is needed 
# set gro "$wkdir/JAK2-fermsh2-LID1_C1_PCPSPIP2500wbifs4.2.gro"
# 
# #call trj xtc file
# set xtc "$wkdir/JAK2-fermsh2-LID1_C1_PCPSPIP2500wbifs7_5us_1ns.xtc"
#  
# set outputname "PCPSPIP2_C1" 
# 
# #Open output files
# set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
# set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
# set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
# set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
# set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
# set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]
# 
# mol load gro $gro 
# bigdcd LPcontact xtc $xtc
# bigdcd_wait
# close $outa
# close $outb
# close $outc
# close $outd
# close $oute
# close $outf
# mol delete all

proc LPcontactC3 { frame } {
	 global outputname

	#Open output files
	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat a+]
	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat a+]
	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat a+]
	set out4 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat a+]
	set out5 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat a+]
	set out6 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat a+]
	
	#Find contacts between JAK2-FERM-SH and Lipids

	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
	#Find contacts between PRLR-LID1 and Lipids 
	
	set LPC [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC"]
	set LPS [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS"]
	set LP2 [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POP2"]
	
	#Update variables
	$JPC frame  $frame 
	$JPS frame  $frame 
	$JP2 frame  $frame 
	$LPC frame  $frame 
 	$LPS frame  $frame 
	$LP2 frame  $frame 
	
	#Print to file
	puts $out1 "$frame [$JPC num] [$JPC get resid]"
	puts $out2 "$frame [$JPS num] [$JPS get resid]"
	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
	puts $out4 "$frame [$LPC num] [$LPC get resid]"
	puts $out5 "$frame [$LPS num] [$LPS get resid]"
	puts $out6 "$frame [$LP2 num] [$LP2 get resid]"
	
	close $out1
	close $out2
	close $out3
	close $out4
	close $out5
	close $out6
	
}
#Call bigdcd
source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

#set workdir
set wkdir "/home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/PCPSPIP2/C3"

#a gro file is needed 
set gro "$wkdir/JAK2-fermsh2-LID1_C3_PCPSPIP2500wbfis4.2.gro"
                
#call trj xtc file
set xtc "$wkdir/JAK2-fermsh2-LID1_C3_PCPSPIP2500wbfis7.xtc"
                
set outputname "PCPSPIP2_C3" 

#Open output files
set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

mol load gro $gro 
bigdcd LPcontactC3 xtc $xtc
bigdcd_wait
close $outa
close $outb
close $outc
close $outd
close $oute
close $outf

mol delete all

proc LPcontactC5 { frame } {
	 global outputname

	#Open output files
	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat a+]
	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat a+]
	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat a+]
	set out4 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat a+]
	set out5 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat a+]
	set out6 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat a+]
	
	#Find contacts between JAK2-FERM-SH and Lipids

	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
	#Find contacts between PRLR-LID1 and Lipids 
	
	set LPC [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC"]
	set LPS [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS"]
	set LP2 [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POP2"]
	
	#Update variables
	$JPC frame  $frame 
	$JPS frame  $frame 
	$JP2 frame  $frame 
	$LPC frame  $frame 
 	$LPS frame  $frame 
	$LP2 frame  $frame 
	
	#Print to file
	puts $out1 "$frame [$JPC num] [$JPC get resid]"
	puts $out2 "$frame [$JPS num] [$JPS get resid]"
	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
	puts $out4 "$frame [$LPC num] [$LPC get resid]"
	puts $out5 "$frame [$LPS num] [$LPS get resid]"
	puts $out6 "$frame [$LP2 num] [$LP2 get resid]"
	
	close $out1
	close $out2
	close $out3
	close $out4
	close $out5
	close $out6
	
}
#Call bigdcd
source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

#set workdir
set wkdir "/home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/PCPSPIP2/C3"

#a gro file is needed 
set gro "$wkdir/JAK2-fermsh2-LID1_C3_PCPSPIP2500wbfis4.2.gro"
                
#call trj xtc file
set xtc "$wkdir/JAK2-fermsh2-LID1_C3_PCPSPIP2500wbfis7.xtc"
 
set outputname "PCPSPIP2_C3" 

#Open output files
set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

mol load gro $gro 
bigdcd LPcontactC5 xtc $xtc
bigdcd_wait
close $outa
close $outb
close $outc
close $outd
close $oute
close $outf
mol delete all

quit

	
	
	
	
	
	
	
	
	

	
	

	
	
	
	
	
	
	
	
	

	
	