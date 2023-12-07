#Protein Lipid contacts -- PC systems ##

proc LPcontactC1 { frame } {
	 global outputname

	##Open output files
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
set wkdir "/home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/PC/C1/system2"

#a gro file is needed 
set gro "$wkdir/JAK2-fermsh2-LID1_C1_PC500s2wbifs4.2.gro"

#call trj xtc file
set xtc "$wkdir/JAK2-fermsh2-LID1_C1_PC500s2wbifs7_1-8_500ps.xtc"
 
set outputname "PC_C1_1-8" 

##Open output files
set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

mol load gro $gro 
bigdcd LPcontactC1 xtc $xtc
bigdcd_wait
close $outa
close $outb
close $outc
close $outd
close $oute
close $outf
mol delete all

## C2 ##

proc LPcontactC2 { frame } {
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
set wkdir "/home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/PC/C2"

#a gro file is needed 
set gro "$wkdir/JAK2-ferm-sh2-LID1_C2_PC500wbfis4.2.gro"
                
#call trj xtc file
set xtc "$wkdir/JAK2-ferm-sh2-LID1_C2_PC500wbfis7_1-2_500ps.xtc"
 
set outputname "PC_C2_1-2" 

#Open output files
set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

mol load gro $gro 
bigdcd LPcontactC2 xtc $xtc
bigdcd_wait
close $outa
close $outb
close $outc
close $outd
close $oute
close $outf
mol delete all

## C3 ##

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
set wkdir "/home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/PC/C3"

#a gro file is needed 
set gro "$wkdir/JAK2-ferm-sh2-LID1_C3_PC500wbfis4.2.gro"
                
call trj xtc file
set xtc "$wkdir/JAK2-ferm-sh2-LID1_C3_PC500wbfis7_1-5_500ps.xtc"
                
set outputname "PC_C3_1-5" 

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

## C4 ##

proc LPcontactC4 { frame } {
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
set wkdir "/home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/PC/C4"

#a gro file is needed 
set gro "$wkdir/JAK2-ferm-sh2-LID1_C4_PC500wbfis4.2.gro"
                
#call trj xtc file
set xtc "$wkdir/JAK2-ferm-sh2-LID1_C4_PC500wbfis7_1_500ps.xtc"
 
set outputname "PC_C4_1" 

#Open output files
set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

mol load gro $gro 
bigdcd LPcontactC4 xtc $xtc
bigdcd_wait
close $outa
close $outb
close $outc
close $outd
close $oute
close $outf
mol delete all

## C5 ##

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
set wkdir "/home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/PC/C5"

#a gro file is needed 
set gro "$wkdir/JAK2-ferm-sh2-LID1_C5_PC500wbfis4.2.gro"
                
#call trj xtc file
set xtc "$wkdir/JAK2-ferm-sh2-LID1_C5_PC500wbfis7_1-4_500ps.xtc"
 
set outputname "PC_C5_1-4" 

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

## C6 ##
proc LPcontactC6 { frame } {
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
set wkdir "/home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/PC/C6"

#a gro file is needed 
set gro "$wkdir/JAK2-ferm-sh2-LID1_C6_PC500wbfis4.2.gro"
                
#call trj xtc file
set xtc "$wkdir/JAK2-ferm-sh2-LID1_C6_PC500wbfis7_1_500ps.xtc"
 
set outputname "PC_C6_1" 

##Open output files
set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

mol load gro $gro 
bigdcd LPcontactC6 xtc $xtc
bigdcd_wait
close $outa
close $outb
close $outc
close $outd
close $oute
close $outf
mol delete all

quit

	
	
	
	
	
	
	
	
	

	
	

	
	
	
	
	
	
	
	
	

	
	