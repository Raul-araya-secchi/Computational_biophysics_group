# #PCPSPIP2
# # C1
# proc LPcontactC1 { frame } {
# 	 global outputname

# 	#Open output files
# 	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat a+]
# 	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat a+]
# 	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat a+]
# 	set out4 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat a+]
# 	set out5 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat a+]
# 	set out6 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat a+]
	
# 	#Find contacts between JAK2-FERM-SH and Lipids

# 	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
# 	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
# 	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
# 	#Find contacts between PRLR-LID1 and Lipids 
	
# 	set LPC [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC"]
# 	set LPS [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS"]
# 	set LP2 [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POP2"]
	
# 	#Update variables
# 	$JPC frame  $frame 
# 	$JPS frame  $frame 
# 	$JP2 frame  $frame 
# 	$LPC frame  $frame 
#  	$LPS frame  $frame 
# 	$LP2 frame  $frame 
	
# 	#Print to file
# 	puts $out1 "$frame [$JPC num] [$JPC get resid]"
# 	puts $out2 "$frame [$JPS num] [$JPS get resid]"
# 	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
# 	puts $out4 "$frame [$LPC num] [$LPC get resid]"
# 	puts $out5 "$frame [$LPS num] [$LPS get resid]"
# 	puts $out6 "$frame [$LP2 num] [$LP2 get resid]"
	
# 	close $out1
# 	close $out2
# 	close $out3
# 	close $out4
# 	close $out5
# 	close $out6
	
# }
# #Call bigdcd
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

# #set workdir
# set wkdir "/media/storage/raul/JAK2-FERM-SH2_LID1_CG/PCPSPIP2/geomap"

# #a gro file is needed 
# set gro "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_1_init.gro"

# #call trj xtc file
# set xtc "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_1_run.xtc"
 
# set outputname "JAK2-fermsh2-LID1_PCPSPIP2_1" 

# #Open output files
# set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
# set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
# set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
# set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
# set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
# set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

# mol load gro $gro 
# bigdcd LPcontactC1 xtc $xtc
# bigdcd_wait
# close $outa
# close $outb
# close $outc
# close $outd
# close $oute
# close $outf
# mol delete all

# #C2
# proc LPcontactC2 { frame } {
# 	 global outputname

# 	#Open output files
# 	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat a+]
# 	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat a+]
# 	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat a+]
# 	set out4 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat a+]
# 	set out5 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat a+]
# 	set out6 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat a+]
	
# 	#Find contacts between JAK2-FERM-SH and Lipids

# 	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
# 	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
# 	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
# 	#Find contacts between PRLR-LID1 and Lipids 
	
# 	set LPC [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC"]
# 	set LPS [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS"]
# 	set LP2 [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POP2"]
	
# 	#Update variables
# 	$JPC frame  $frame 
# 	$JPS frame  $frame 
# 	$JP2 frame  $frame 
# 	$LPC frame  $frame 
#  	$LPS frame  $frame 
# 	$LP2 frame  $frame 
	
# 	#Print to file
# 	puts $out1 "$frame [$JPC num] [$JPC get resid]"
# 	puts $out2 "$frame [$JPS num] [$JPS get resid]"
# 	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
# 	puts $out4 "$frame [$LPC num] [$LPC get resid]"
# 	puts $out5 "$frame [$LPS num] [$LPS get resid]"
# 	puts $out6 "$frame [$LP2 num] [$LP2 get resid]"
	
# 	close $out1
# 	close $out2
# 	close $out3
# 	close $out4
# 	close $out5
# 	close $out6
	
# }
# #Call bigdcd
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

# #set workdir
# set wkdir "/media/storage/raul/JAK2-FERM-SH2_LID1_CG/PCPSPIP2/geomap"

# #a gro file is needed 
# set gro "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_2_init.gro"
    

# #call trj xtc file
# set xtc "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_2_run.xtc"
 
# set outputname "JAK2-fermsh2-LID1_PCPSPIP2_2" 

# #Open output files
# set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
# set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
# set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
# set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
# set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
# set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

# mol load gro $gro 
# bigdcd LPcontactC2 xtc $xtc
# bigdcd_wait
# close $outa
# close $outb
# close $outc
# close $outd
# close $oute
# close $outf
# mol delete all

# #C3
# proc LPcontactC3 { frame } {
# 	 global outputname

# 	#Open output files
# 	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat a+]
# 	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat a+]
# 	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat a+]
# 	set out4 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat a+]
# 	set out5 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat a+]
# 	set out6 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat a+]
	
# 	#Find contacts between JAK2-FERM-SH and Lipids

# 	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
# 	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
# 	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
# 	#Find contacts between PRLR-LID1 and Lipids 
	
# 	set LPC [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC"]
# 	set LPS [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS"]
# 	set LP2 [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POP2"]
	
# 	#Update variables
# 	$JPC frame  $frame 
# 	$JPS frame  $frame 
# 	$JP2 frame  $frame 
# 	$LPC frame  $frame 
#  	$LPS frame  $frame 
# 	$LP2 frame  $frame 
	
# 	#Print to file
# 	puts $out1 "$frame [$JPC num] [$JPC get resid]"
# 	puts $out2 "$frame [$JPS num] [$JPS get resid]"
# 	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
# 	puts $out4 "$frame [$LPC num] [$LPC get resid]"
# 	puts $out5 "$frame [$LPS num] [$LPS get resid]"
# 	puts $out6 "$frame [$LP2 num] [$LP2 get resid]"
	
# 	close $out1
# 	close $out2
# 	close $out3
# 	close $out4
# 	close $out5
# 	close $out6
	
# }
# #Call bigdcd
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

# #set workdir
# set wkdir "/media/storage/raul/JAK2-FERM-SH2_LID1_CG/PCPSPIP2/geomap"

# #a gro file is needed 
# set gro "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_3_init.gro"

# #call trj xtc file
# set xtc "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_3_run.xtc"
 
# set outputname "JAK2-fermsh2-LID1_PCPSPIP2_3" 

# #Open output files
# set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
# set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
# set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
# set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
# set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
# set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

# mol load gro $gro 
# bigdcd LPcontactC3 xtc $xtc
# bigdcd_wait
# close $outa
# close $outb
# close $outc
# close $outd
# close $oute
# close $outf
# mol delete all

# #C4
# proc LPcontactC4 { frame } {
# 	 global outputname

# 	#Open output files
# 	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat a+]
# 	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat a+]
# 	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat a+]
# 	set out4 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat a+]
# 	set out5 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat a+]
# 	set out6 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat a+]
	
# 	#Find contacts between JAK2-FERM-SH and Lipids

# 	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
# 	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
# 	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
# 	#Find contacts between PRLR-LID1 and Lipids 
	
# 	set LPC [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC"]
# 	set LPS [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS"]
# 	set LP2 [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POP2"]
	
# 	#Update variables
# 	$JPC frame  $frame 
# 	$JPS frame  $frame 
# 	$JP2 frame  $frame 
# 	$LPC frame  $frame 
#  	$LPS frame  $frame 
# 	$LP2 frame  $frame 
	
# 	#Print to file
# 	puts $out1 "$frame [$JPC num] [$JPC get resid]"
# 	puts $out2 "$frame [$JPS num] [$JPS get resid]"
# 	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
# 	puts $out4 "$frame [$LPC num] [$LPC get resid]"
# 	puts $out5 "$frame [$LPS num] [$LPS get resid]"
# 	puts $out6 "$frame [$LP2 num] [$LP2 get resid]"
	
# 	close $out1
# 	close $out2
# 	close $out3
# 	close $out4
# 	close $out5
# 	close $out6
	
# }
# #Call bigdcd
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

# #set workdir
# set wkdir "/media/storage/raul/JAK2-FERM-SH2_LID1_CG/PCPSPIP2/geomap"

# #a gro file is needed 
# set gro "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_4_init.gro"

# #call trj xtc file
# set xtc "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_4_run.xtc"
 
# set outputname "JAK2-fermsh2-LID1_PCPSPIP2_4" 

# #Open output files
# set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
# set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
# set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
# set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
# set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
# set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

# mol load gro $gro 
# bigdcd LPcontactC4 xtc $xtc
# bigdcd_wait
# close $outa
# close $outb
# close $outc
# close $outd
# close $oute
# close $outf
# mol delete all

# #C5
# proc LPcontactC5 { frame } {
# 	 global outputname

# 	#Open output files
# 	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat a+]
# 	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat a+]
# 	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat a+]
# 	set out4 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat a+]
# 	set out5 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat a+]
# 	set out6 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat a+]
	
# 	#Find contacts between JAK2-FERM-SH and Lipids

# 	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
# 	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
# 	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
# 	#Find contacts between PRLR-LID1 and Lipids 
	
# 	set LPC [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC"]
# 	set LPS [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS"]
# 	set LP2 [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POP2"]
	
# 	#Update variables
# 	$JPC frame  $frame 
# 	$JPS frame  $frame 
# 	$JP2 frame  $frame 
# 	$LPC frame  $frame 
#  	$LPS frame  $frame 
# 	$LP2 frame  $frame 
	
# 	#Print to file
# 	puts $out1 "$frame [$JPC num] [$JPC get resid]"
# 	puts $out2 "$frame [$JPS num] [$JPS get resid]"
# 	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
# 	puts $out4 "$frame [$LPC num] [$LPC get resid]"
# 	puts $out5 "$frame [$LPS num] [$LPS get resid]"
# 	puts $out6 "$frame [$LP2 num] [$LP2 get resid]"
	
# 	close $out1
# 	close $out2
# 	close $out3
# 	close $out4
# 	close $out5
# 	close $out6
	
# }
# #Call bigdcd
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

# #set workdir
# set wkdir "/media/storage/raul/JAK2-FERM-SH2_LID1_CG/PCPSPIP2/geomap"

# #a gro file is needed 
# set gro "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_5_init.gro"

# #call trj xtc file
# set xtc "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_5_run.xtc"
 
# set outputname "JAK2-fermsh2-LID1_PCPSPIP2_5" 

# #Open output files
# set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
# set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
# set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
# set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
# set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
# set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

# mol load gro $gro 
# bigdcd LPcontactC5 xtc $xtc
# bigdcd_wait
# close $outa
# close $outb
# close $outc
# close $outd
# close $oute
# close $outf
# mol delete all

# #C6
# proc LPcontactC6 { frame } {
# 	 global outputname

# 	#Open output files
# 	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat a+]
# 	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat a+]
# 	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat a+]
# 	set out4 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat a+]
# 	set out5 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat a+]
# 	set out6 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat a+]
	
# 	#Find contacts between JAK2-FERM-SH and Lipids

# 	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
# 	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
# 	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
# 	#Find contacts between PRLR-LID1 and Lipids 
	
# 	set LPC [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC"]
# 	set LPS [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS"]
# 	set LP2 [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POP2"]
	
# 	#Update variables
# 	$JPC frame  $frame 
# 	$JPS frame  $frame 
# 	$JP2 frame  $frame 
# 	$LPC frame  $frame 
#  	$LPS frame  $frame 
# 	$LP2 frame  $frame 
	
# 	#Print to file
# 	puts $out1 "$frame [$JPC num] [$JPC get resid]"
# 	puts $out2 "$frame [$JPS num] [$JPS get resid]"
# 	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
# 	puts $out4 "$frame [$LPC num] [$LPC get resid]"
# 	puts $out5 "$frame [$LPS num] [$LPS get resid]"
# 	puts $out6 "$frame [$LP2 num] [$LP2 get resid]"
	
# 	close $out1
# 	close $out2
# 	close $out3
# 	close $out4
# 	close $out5
# 	close $out6
	
# }
# #Call bigdcd
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

# #set workdir
# set wkdir "/media/storage/raul/JAK2-FERM-SH2_LID1_CG/PCPSPIP2/geomap"

# #a gro file is needed 
# set gro "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_6_init.gro"

# #call trj xtc file
# set xtc "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_6_run.xtc"
 
# set outputname "JAK2-fermsh2-LID1_PCPSPIP2_6" 

# #Open output files
# set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
# set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
# set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
# set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
# set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
# set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

# mol load gro $gro 
# bigdcd LPcontactC6 xtc $xtc
# bigdcd_wait
# close $outa
# close $outb
# close $outc
# close $outd
# close $oute
# close $outf
# mol delete all

# #C7
# proc LPcontactC7 { frame } {
# 	 global outputname

# 	#Open output files
# 	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat a+]
# 	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat a+]
# 	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat a+]
# 	set out4 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat a+]
# 	set out5 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat a+]
# 	set out6 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat a+]
	
# 	#Find contacts between JAK2-FERM-SH and Lipids

# 	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
# 	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
# 	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
# 	#Find contacts between PRLR-LID1 and Lipids 
	
# 	set LPC [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC"]
# 	set LPS [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS"]
# 	set LP2 [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POP2"]
	
# 	#Update variables
# 	$JPC frame  $frame 
# 	$JPS frame  $frame 
# 	$JP2 frame  $frame 
# 	$LPC frame  $frame 
#  	$LPS frame  $frame 
# 	$LP2 frame  $frame 
	
# 	#Print to file
# 	puts $out1 "$frame [$JPC num] [$JPC get resid]"
# 	puts $out2 "$frame [$JPS num] [$JPS get resid]"
# 	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
# 	puts $out4 "$frame [$LPC num] [$LPC get resid]"
# 	puts $out5 "$frame [$LPS num] [$LPS get resid]"
# 	puts $out6 "$frame [$LP2 num] [$LP2 get resid]"
	
# 	close $out1
# 	close $out2
# 	close $out3
# 	close $out4
# 	close $out5
# 	close $out6
	
# }
# #Call bigdcd
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

# #set workdir
# set wkdir "/media/storage/raul/JAK2-FERM-SH2_LID1_CG/PCPSPIP2/geomap"

# #a gro file is needed 
# set gro "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_7_init.gro"

# #call trj xtc file
# set xtc "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_7_run.xtc"
 
# set outputname "JAK2-fermsh2-LID1_PCPSPIP2_7" 

# #Open output files
# set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
# set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
# set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
# set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
# set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
# set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

# mol load gro $gro 
# bigdcd LPcontactC7 xtc $xtc
# bigdcd_wait
# close $outa
# close $outb
# close $outc
# close $outd
# close $oute
# close $outf
# mol delete all

# #C8
# proc LPcontactC8 { frame } {
# 	 global outputname

# 	#Open output files
# 	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat a+]
# 	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat a+]
# 	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat a+]
# 	set out4 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat a+]
# 	set out5 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat a+]
# 	set out6 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat a+]
	
# 	#Find contacts between JAK2-FERM-SH and Lipids

# 	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
# 	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
# 	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
# 	#Find contacts between PRLR-LID1 and Lipids 
	
# 	set LPC [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC"]
# 	set LPS [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS"]
# 	set LP2 [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POP2"]
	
# 	#Update variables
# 	$JPC frame  $frame 
# 	$JPS frame  $frame 
# 	$JP2 frame  $frame 
# 	$LPC frame  $frame 
#  	$LPS frame  $frame 
# 	$LP2 frame  $frame 
	
# 	#Print to file
# 	puts $out1 "$frame [$JPC num] [$JPC get resid]"
# 	puts $out2 "$frame [$JPS num] [$JPS get resid]"
# 	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
# 	puts $out4 "$frame [$LPC num] [$LPC get resid]"
# 	puts $out5 "$frame [$LPS num] [$LPS get resid]"
# 	puts $out6 "$frame [$LP2 num] [$LP2 get resid]"
	
# 	close $out1
# 	close $out2
# 	close $out3
# 	close $out4
# 	close $out5
# 	close $out6
	
# }
# #Call bigdcd
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

# #set workdir
# set wkdir "/media/storage/raul/JAK2-FERM-SH2_LID1_CG/PCPSPIP2/geomap"
		   
# #a gro file is needed 
# set gro "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_8_init.gro"

# #call trj xtc file
# set xtc "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_8_run.xtc"
 
# set outputname "JAK2-fermsh2-LID1_PCPSPIP2_8" 

# #Open output files
# set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
# set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
# set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
# set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
# set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
# set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

# mol load gro $gro 
# bigdcd LPcontactC8 xtc $xtc
# bigdcd_wait
# close $outa
# close $outb
# close $outc
# close $outd
# close $oute
# close $outf
# mol delete all

#C9

# proc LPcontactC8 { frame } {
# 	 global outputname

# 	#Open output files
# 	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat a+]
# 	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat a+]
# 	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat a+]
# 	set out4 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat a+]
# 	set out5 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat a+]
# 	set out6 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat a+]
	
# 	#Find contacts between JAK2-FERM-SH and Lipids

# 	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
# 	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
# 	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
# 	#Find contacts between PRLR-LID1 and Lipids 
	
# 	set LPC [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC"]
# 	set LPS [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS"]
# 	set LP2 [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POP2"]
	
# 	#Update variables
# 	$JPC frame  $frame 
# 	$JPS frame  $frame 
# 	$JP2 frame  $frame 
# 	$LPC frame  $frame 
#  	$LPS frame  $frame 
# 	$LP2 frame  $frame 
	
# 	#Print to file
# 	puts $out1 "$frame [$JPC num] [$JPC get resid]"
# 	puts $out2 "$frame [$JPS num] [$JPS get resid]"
# 	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
# 	puts $out4 "$frame [$LPC num] [$LPC get resid]"
# 	puts $out5 "$frame [$LPS num] [$LPS get resid]"
# 	puts $out6 "$frame [$LP2 num] [$LP2 get resid]"
	
# 	close $out1
# 	close $out2
# 	close $out3
# 	close $out4
# 	close $out5
# 	close $out6
	
# }
# #Call bigdcd
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

# #set workdir
# set wkdir "/media/storage/raul/JAK2-FERM-SH2_LID1_CG/PCPSPIP2/geomap"
		   
# #a gro file is needed 
# set gro "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_9_init.gro"

# #call trj xtc file
# set xtc "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_9_run.xtc"
 
# set outputname "JAK2-fermsh2-LID1_PCPSPIP2_9" 

# #Open output files
# set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
# set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
# set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
# set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
# set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
# set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

# mol load gro $gro 
# bigdcd LPcontactC8 xtc $xtc
# bigdcd_wait
# close $outa
# close $outb
# close $outc
# close $outd
# close $oute
# close $outf
# mol delete all

# #C10

# proc LPcontactC8 { frame } {
# 	 global outputname

# 	#Open output files
# 	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat a+]
# 	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat a+]
# 	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat a+]
# 	set out4 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat a+]
# 	set out5 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat a+]
# 	set out6 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat a+]
	
# 	#Find contacts between JAK2-FERM-SH and Lipids

# 	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
# 	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
# 	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
# 	#Find contacts between PRLR-LID1 and Lipids 
	
# 	set LPC [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC"]
# 	set LPS [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS"]
# 	set LP2 [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POP2"]
	
# 	#Update variables
# 	$JPC frame  $frame 
# 	$JPS frame  $frame 
# 	$JP2 frame  $frame 
# 	$LPC frame  $frame 
#  	$LPS frame  $frame 
# 	$LP2 frame  $frame 
	
# 	#Print to file
# 	puts $out1 "$frame [$JPC num] [$JPC get resid]"
# 	puts $out2 "$frame [$JPS num] [$JPS get resid]"
# 	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
# 	puts $out4 "$frame [$LPC num] [$LPC get resid]"
# 	puts $out5 "$frame [$LPS num] [$LPS get resid]"
# 	puts $out6 "$frame [$LP2 num] [$LP2 get resid]"
	
# 	close $out1
# 	close $out2
# 	close $out3
# 	close $out4
# 	close $out5
# 	close $out6
	
# }
# #Call bigdcd
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

# #set workdir
# set wkdir "/media/storage/raul/JAK2-FERM-SH2_LID1_CG/PCPSPIP2/geomap"
		   
# #a gro file is needed 
# set gro "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_10_init.gro"

# #call trj xtc file
# set xtc "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_10_run.xtc"
 
# set outputname "JAK2-fermsh2-LID1_PCPSPIP2_10" 

# #Open output files
# set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
# set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
# set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
# set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
# set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
# set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

# mol load gro $gro 
# bigdcd LPcontactC8 xtc $xtc
# bigdcd_wait
# close $outa
# close $outb
# close $outc
# close $outd
# close $oute
# close $outf
# mol delete all

# #C11

# proc LPcontactC8 { frame } {
# 	 global outputname

# 	#Open output files
# 	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat a+]
# 	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat a+]
# 	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat a+]
# 	set out4 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat a+]
# 	set out5 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat a+]
# 	set out6 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat a+]
	
# 	#Find contacts between JAK2-FERM-SH and Lipids

# 	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
# 	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
# 	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
# 	#Find contacts between PRLR-LID1 and Lipids 
	
# 	set LPC [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC"]
# 	set LPS [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS"]
# 	set LP2 [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POP2"]
	
# 	#Update variables
# 	$JPC frame  $frame 
# 	$JPS frame  $frame 
# 	$JP2 frame  $frame 
# 	$LPC frame  $frame 
#  	$LPS frame  $frame 
# 	$LP2 frame  $frame 
	
# 	#Print to file
# 	puts $out1 "$frame [$JPC num] [$JPC get resid]"
# 	puts $out2 "$frame [$JPS num] [$JPS get resid]"
# 	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
# 	puts $out4 "$frame [$LPC num] [$LPC get resid]"
# 	puts $out5 "$frame [$LPS num] [$LPS get resid]"
# 	puts $out6 "$frame [$LP2 num] [$LP2 get resid]"
	
# 	close $out1
# 	close $out2
# 	close $out3
# 	close $out4
# 	close $out5
# 	close $out6
	
# }
# #Call bigdcd
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

# #set workdir
# set wkdir "/media/storage/raul/JAK2-FERM-SH2_LID1_CG/PCPSPIP2/geomap"
		   
# #a gro file is needed 
# set gro "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_11_init.gro"

# #call trj xtc file
# set xtc "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_11_run.xtc"
 
# set outputname "JAK2-fermsh2-LID1_PCPSPIP2_11" 

# #Open output files
# set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
# set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
# set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
# set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
# set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
# set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

# mol load gro $gro 
# bigdcd LPcontactC8 xtc $xtc
# bigdcd_wait
# close $outa
# close $outb
# close $outc
# close $outd
# close $oute
# close $outf
# mol delete all

#C12

proc LPcontactC8 { frame } {
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
set wkdir "/media/storage/raul/JAK2-FERM-SH2_LID1_CG/PCPSPIP2/geomap"
		   
#a gro file is needed 
set gro "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_12_init.gro"

#call trj xtc file
set xtc "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_12_run.xtc"
 
set outputname "JAK2-fermsh2-LID1_PCPSPIP2_12" 

#Open output files
set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

mol load gro $gro 
bigdcd LPcontactC8 xtc $xtc
bigdcd_wait
close $outa
close $outb
close $outc
close $outd
close $oute
close $outf
mol delete all

#C13
proc LPcontactC8 { frame } {
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
set wkdir "/media/storage/raul/JAK2-FERM-SH2_LID1_CG/PCPSPIP2/geomap"
		   
#a gro file is needed 
set gro "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_13_init.gro"

#call trj xtc file
set xtc "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_13_run.xtc"
 
set outputname "JAK2-fermsh2-LID1_PCPSPIP2_13" 

#Open output files
set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

mol load gro $gro 
bigdcd LPcontactC8 xtc $xtc
bigdcd_wait
close $outa
close $outb
close $outc
close $outd
close $oute
close $outf
mol delete all

#C14
proc LPcontactC8 { frame } {
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
set wkdir "/media/storage/raul/JAK2-FERM-SH2_LID1_CG/PCPSPIP2/geomap"
		   
#a gro file is needed 
set gro "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_14_init.gro"

#call trj xtc file
set xtc "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_14_run.xtc"
 
set outputname "JAK2-fermsh2-LID1_PCPSPIP2_14" 

#Open output files
set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

mol load gro $gro 
bigdcd LPcontactC8 xtc $xtc
bigdcd_wait
close $outa
close $outb
close $outc
close $outd
close $oute
close $outf
mol delete all

#C15
proc LPcontactC8 { frame } {
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
set wkdir "/media/storage/raul/JAK2-FERM-SH2_LID1_CG/PCPSPIP2/geomap"
		   
#a gro file is needed 
set gro "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_15_init.gro"

#call trj xtc file
set xtc "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_15_run.xtc"
 
set outputname "JAK2-fermsh2-LID1_PCPSPIP2_15" 

#Open output files
set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

mol load gro $gro 
bigdcd LPcontactC8 xtc $xtc
bigdcd_wait
close $outa
close $outb
close $outc
close $outd
close $oute
close $outf
mol delete all

#C16
proc LPcontactC8 { frame } {
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
set wkdir "/media/storage/raul/JAK2-FERM-SH2_LID1_CG/PCPSPIP2/geomap"
		   
#a gro file is needed 
set gro "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_16_init.gro"

#call trj xtc file
set xtc "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_16_run.xtc"
 
set outputname "JAK2-fermsh2-LID1_PCPSPIP2_16" 

#Open output files
set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

mol load gro $gro 
bigdcd LPcontactC8 xtc $xtc
bigdcd_wait
close $outa
close $outb
close $outc
close $outd
close $oute
close $outf
mol delete all

#PCPS
# C1
# proc LPcontactC1 { frame } {
# 	 global outputname

# 	#Open output files
# 	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat a+]
# 	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat a+]
# 	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat a+]
# 	set out4 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat a+]
# 	set out5 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat a+]
# 	set out6 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat a+]
	
# 	#Find contacts between JAK2-FERM-SH and Lipids

# 	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
# 	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
# 	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
# 	#Find contacts between PRLR-LID1 and Lipids 
	
# 	set LPC [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC"]
# 	set LPS [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS"]
# 	set LP2 [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POP2"]
	
# 	#Update variables
# 	$JPC frame  $frame 
# 	$JPS frame  $frame 
# 	$JP2 frame  $frame 
# 	$LPC frame  $frame 
#  	$LPS frame  $frame 
# 	$LP2 frame  $frame 
	
# 	#Print to file
# 	puts $out1 "$frame [$JPC num] [$JPC get resid]"
# 	puts $out2 "$frame [$JPS num] [$JPS get resid]"
# 	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
# 	puts $out4 "$frame [$LPC num] [$LPC get resid]"
# 	puts $out5 "$frame [$LPS num] [$LPS get resid]"
# 	puts $out6 "$frame [$LP2 num] [$LP2 get resid]"
	
# 	close $out1
# 	close $out2
# 	close $out3
# 	close $out4
# 	close $out5
# 	close $out6
	
# }
# #Call bigdcd
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

# #set workdir
# set wkdir "/media/storage/raul/JAK2-FERM-SH2_LID1_CG/PCPS/trjs"

# #a gro file is needed 
# set gro "$wkdir/JAK2-fermsh2-LID1_PCPS_1_init.gro"

# #call trj xtc file
# set xtc "$wkdir/JAK2-fermsh2-LID1_PCPS_1_run.xtc"
 
# set outputname "JAK2-fermsh2-LID1_PCPS_1" 

# #Open output files
# set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
# set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
# set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
# set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
# set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
# set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

# mol load gro $gro 
# bigdcd LPcontactC1 xtc $xtc
# bigdcd_wait
# close $outa
# close $outb
# close $outc
# close $outd
# close $oute
# close $outf
# mol delete all

#C2
# proc LPcontactC2 { frame } {
# 	 global outputname

# 	#Open output files
# 	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat a+]
# 	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat a+]
# 	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat a+]
# 	set out4 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat a+]
# 	set out5 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat a+]
# 	set out6 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat a+]
	
# 	#Find contacts between JAK2-FERM-SH and Lipids

# 	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
# 	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
# 	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
# 	#Find contacts between PRLR-LID1 and Lipids 
	
# 	set LPC [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC"]
# 	set LPS [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS"]
# 	set LP2 [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POP2"]
	
# 	#Update variables
# 	$JPC frame  $frame 
# 	$JPS frame  $frame 
# 	$JP2 frame  $frame 
# 	$LPC frame  $frame 
#  	$LPS frame  $frame 
# 	$LP2 frame  $frame 
	
# 	#Print to file
# 	puts $out1 "$frame [$JPC num] [$JPC get resid]"
# 	puts $out2 "$frame [$JPS num] [$JPS get resid]"
# 	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
# 	puts $out4 "$frame [$LPC num] [$LPC get resid]"
# 	puts $out5 "$frame [$LPS num] [$LPS get resid]"
# 	puts $out6 "$frame [$LP2 num] [$LP2 get resid]"
	
# 	close $out1
# 	close $out2
# 	close $out3
# 	close $out4
# 	close $out5
# 	close $out6
	
# }
# #Call bigdcd
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

# #set workdir
# set wkdir "/media/storage/raul/JAK2-FERM-SH2_LID1_CG/PCPS/trjs"

# #a gro file is needed 
# set gro "$wkdir/JAK2-fermsh2-LID1_PCPS_2_init.gro"

# #call trj xtc file
# set xtc "$wkdir/JAK2-fermsh2-LID1_PCPS_2_run.xtc"
 
# set outputname "JAK2-fermsh2-LID1_PCPS_2" 

# #Open output files
# set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
# set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
# set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
# set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
# set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
# set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

# mol load gro $gro 
# bigdcd LPcontactC2 xtc $xtc
# bigdcd_wait
# close $outa
# close $outb
# close $outc
# close $outd
# close $oute
# close $outf
# mol delete all

#C3
# proc LPcontactC3 { frame } {
# 	 global outputname

# 	#Open output files
# 	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat a+]
# 	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat a+]
# 	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat a+]
# 	set out4 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat a+]
# 	set out5 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat a+]
# 	set out6 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat a+]
	
# 	#Find contacts between JAK2-FERM-SH and Lipids

# 	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
# 	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
# 	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
# 	#Find contacts between PRLR-LID1 and Lipids 
	
# 	set LPC [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC"]
# 	set LPS [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS"]
# 	set LP2 [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POP2"]
	
# 	#Update variables
# 	$JPC frame  $frame 
# 	$JPS frame  $frame 
# 	$JP2 frame  $frame 
# 	$LPC frame  $frame 
#  	$LPS frame  $frame 
# 	$LP2 frame  $frame 
	
# 	#Print to file
# 	puts $out1 "$frame [$JPC num] [$JPC get resid]"
# 	puts $out2 "$frame [$JPS num] [$JPS get resid]"
# 	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
# 	puts $out4 "$frame [$LPC num] [$LPC get resid]"
# 	puts $out5 "$frame [$LPS num] [$LPS get resid]"
# 	puts $out6 "$frame [$LP2 num] [$LP2 get resid]"
	
# 	close $out1
# 	close $out2
# 	close $out3
# 	close $out4
# 	close $out5
# 	close $out6
	
# }
# #Call bigdcd
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

# #set workdir
# set wkdir "/media/storage/raul/JAK2-FERM-SH2_LID1_CG/PCPS/trjs"

# #a gro file is needed 
# set gro "$wkdir/JAK2-fermsh2-LID1_PCPS_3_init.gro"

# #call trj xtc file
# set xtc "$wkdir/JAK2-fermsh2-LID1_PCPS_3_run.xtc"
 
# set outputname "JAK2-fermsh2-LID1_PCPS_3" 

# #Open output files
# set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
# set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
# set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
# set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
# set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
# set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

# mol load gro $gro 
# bigdcd LPcontactC3 xtc $xtc
# bigdcd_wait
# close $outa
# close $outb
# close $outc
# close $outd
# close $oute
# close $outf
# mol delete all

# #C4
# proc LPcontactC4 { frame } {
# 	 global outputname

# 	#Open output files
# 	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat a+]
# 	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat a+]
# 	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat a+]
# 	set out4 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat a+]
# 	set out5 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat a+]
# 	set out6 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat a+]
	
# 	#Find contacts between JAK2-FERM-SH and Lipids

# 	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
# 	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
# 	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
# 	#Find contacts between PRLR-LID1 and Lipids 
	
# 	set LPC [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC"]
# 	set LPS [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS"]
# 	set LP2 [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POP2"]
	
# 	#Update variables
# 	$JPC frame  $frame 
# 	$JPS frame  $frame 
# 	$JP2 frame  $frame 
# 	$LPC frame  $frame 
#  	$LPS frame  $frame 
# 	$LP2 frame  $frame 
	
# 	#Print to file
# 	puts $out1 "$frame [$JPC num] [$JPC get resid]"
# 	puts $out2 "$frame [$JPS num] [$JPS get resid]"
# 	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
# 	puts $out4 "$frame [$LPC num] [$LPC get resid]"
# 	puts $out5 "$frame [$LPS num] [$LPS get resid]"
# 	puts $out6 "$frame [$LP2 num] [$LP2 get resid]"
	
# 	close $out1
# 	close $out2
# 	close $out3
# 	close $out4
# 	close $out5
# 	close $out6
	
# }
# #Call bigdcd
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

# #set workdir
# set wkdir "/media/storage/raul/JAK2-FERM-SH2_LID1_CG/PCPS/trjs"

# #a gro file is needed 
# set gro "$wkdir/JAK2-fermsh2-LID1_PCPS_4_init.gro"

# #call trj xtc file
# set xtc "$wkdir/JAK2-fermsh2-LID1_PCPS_4_run.xtc"
 
# set outputname "JAK2-fermsh2-LID1_PCPS_4" 

# #Open output files
# set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
# set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
# set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
# set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
# set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
# set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

# mol load gro $gro 
# bigdcd LPcontactC4 xtc $xtc
# bigdcd_wait
# close $outa
# close $outb
# close $outc
# close $outd
# close $oute
# close $outf
# mol delete all

# #C5
# proc LPcontactC5 { frame } {
# 	 global outputname

# 	#Open output files
# 	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat a+]
# 	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat a+]
# 	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat a+]
# 	set out4 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat a+]
# 	set out5 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat a+]
# 	set out6 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat a+]
	
# 	#Find contacts between JAK2-FERM-SH and Lipids

# 	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
# 	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
# 	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
# 	#Find contacts between PRLR-LID1 and Lipids 
	
# 	set LPC [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC"]
# 	set LPS [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS"]
# 	set LP2 [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POP2"]
	
# 	#Update variables
# 	$JPC frame  $frame 
# 	$JPS frame  $frame 
# 	$JP2 frame  $frame 
# 	$LPC frame  $frame 
#  	$LPS frame  $frame 
# 	$LP2 frame  $frame 
	
# 	#Print to file
# 	puts $out1 "$frame [$JPC num] [$JPC get resid]"
# 	puts $out2 "$frame [$JPS num] [$JPS get resid]"
# 	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
# 	puts $out4 "$frame [$LPC num] [$LPC get resid]"
# 	puts $out5 "$frame [$LPS num] [$LPS get resid]"
# 	puts $out6 "$frame [$LP2 num] [$LP2 get resid]"
	
# 	close $out1
# 	close $out2
# 	close $out3
# 	close $out4
# 	close $out5
# 	close $out6
	
# }
# #Call bigdcd
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

# #set workdir
# set wkdir "/media/storage/raul/JAK2-FERM-SH2_LID1_CG/PCPS/trjs"

# #a gro file is needed 
# set gro "$wkdir/JAK2-fermsh2-LID1_PCPS_5_init.gro"

# #call trj xtc file
# set xtc "$wkdir/JAK2-fermsh2-LID1_PCPS_5_run.xtc"
 
# set outputname "JAK2-fermsh2-LID1_PCPS_5" 

# #Open output files
# set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
# set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
# set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
# set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
# set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
# set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

# mol load gro $gro 
# bigdcd LPcontactC5 xtc $xtc
# bigdcd_wait
# close $outa
# close $outb
# close $outc
# close $outd
# close $oute
# close $outf
# mol delete all

# #C6
# proc LPcontactC6 { frame } {
# 	 global outputname

# 	#Open output files
# 	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat a+]
# 	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat a+]
# 	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat a+]
# 	set out4 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat a+]
# 	set out5 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat a+]
# 	set out6 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat a+]
	
# 	#Find contacts between JAK2-FERM-SH and Lipids

# 	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
# 	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
# 	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
# 	#Find contacts between PRLR-LID1 and Lipids 
	
# 	set LPC [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC"]
# 	set LPS [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS"]
# 	set LP2 [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POP2"]
	
# 	#Update variables
# 	$JPC frame  $frame 
# 	$JPS frame  $frame 
# 	$JP2 frame  $frame 
# 	$LPC frame  $frame 
#  	$LPS frame  $frame 
# 	$LP2 frame  $frame 
	
# 	#Print to file
# 	puts $out1 "$frame [$JPC num] [$JPC get resid]"
# 	puts $out2 "$frame [$JPS num] [$JPS get resid]"
# 	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
# 	puts $out4 "$frame [$LPC num] [$LPC get resid]"
# 	puts $out5 "$frame [$LPS num] [$LPS get resid]"
# 	puts $out6 "$frame [$LP2 num] [$LP2 get resid]"
	
# 	close $out1
# 	close $out2
# 	close $out3
# 	close $out4
# 	close $out5
# 	close $out6
	
# }
# #Call bigdcd
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

# #set workdir
# set wkdir "/media/storage/raul/JAK2-FERM-SH2_LID1_CG/PCPS/trjs"

# #a gro file is needed 
# set gro "$wkdir/JAK2-fermsh2-LID1_PCPS_6_init.gro"

# #call trj xtc file
# set xtc "$wkdir/JAK2-fermsh2-LID1_PCPS_6_run.xtc"
 
# set outputname "JAK2-fermsh2-LID1_PCPS_6" 

# #Open output files
# set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
# set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
# set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
# set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
# set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
# set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

# mol load gro $gro 
# bigdcd LPcontactC6 xtc $xtc
# bigdcd_wait
# close $outa
# close $outb
# close $outc
# close $outd
# close $oute
# close $outf
# mol delete all

# #C7
# proc LPcontactC7 { frame } {
# 	 global outputname

# 	#Open output files
# 	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat a+]
# 	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat a+]
# 	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat a+]
# 	set out4 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat a+]
# 	set out5 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat a+]
# 	set out6 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat a+]
	
# 	#Find contacts between JAK2-FERM-SH and Lipids

# 	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
# 	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
# 	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
# 	#Find contacts between PRLR-LID1 and Lipids 
	
# 	set LPC [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC"]
# 	set LPS [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS"]
# 	set LP2 [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POP2"]
	
# 	#Update variables
# 	$JPC frame  $frame 
# 	$JPS frame  $frame 
# 	$JP2 frame  $frame 
# 	$LPC frame  $frame 
#  	$LPS frame  $frame 
# 	$LP2 frame  $frame 
	
# 	#Print to file
# 	puts $out1 "$frame [$JPC num] [$JPC get resid]"
# 	puts $out2 "$frame [$JPS num] [$JPS get resid]"
# 	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
# 	puts $out4 "$frame [$LPC num] [$LPC get resid]"
# 	puts $out5 "$frame [$LPS num] [$LPS get resid]"
# 	puts $out6 "$frame [$LP2 num] [$LP2 get resid]"
	
# 	close $out1
# 	close $out2
# 	close $out3
# 	close $out4
# 	close $out5
# 	close $out6
	
# }
# #Call bigdcd
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

# #set workdir
# set wkdir "/media/storage/raul/JAK2-FERM-SH2_LID1_CG/PCPS/trjs"

# #a gro file is needed 
# set gro "$wkdir/JAK2-fermsh2-LID1_PCPS_7_init.gro"

# #call trj xtc file
# set xtc "$wkdir/JAK2-fermsh2-LID1_PCPS_7_run.xtc"
 
# set outputname "JAK2-fermsh2-LID1_PCPS_7" 

# #Open output files
# set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
# set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
# set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
# set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
# set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
# set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

# mol load gro $gro 
# bigdcd LPcontactC7 xtc $xtc
# bigdcd_wait
# close $outa
# close $outb
# close $outc
# close $outd
# close $oute
# close $outf
# mol delete all

# #C8
# proc LPcontactC8 { frame } {
# 	 global outputname

# 	#Open output files
# 	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat a+]
# 	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat a+]
# 	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat a+]
# 	set out4 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat a+]
# 	set out5 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat a+]
# 	set out6 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat a+]
	
# 	#Find contacts between JAK2-FERM-SH and Lipids

# 	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
# 	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
# 	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
# 	#Find contacts between PRLR-LID1 and Lipids 
	
# 	set LPC [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC"]
# 	set LPS [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS"]
# 	set LP2 [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POP2"]
	
# 	#Update variables
# 	$JPC frame  $frame 
# 	$JPS frame  $frame 
# 	$JP2 frame  $frame 
# 	$LPC frame  $frame 
#  	$LPS frame  $frame 
# 	$LP2 frame  $frame 
	
# 	#Print to file
# 	puts $out1 "$frame [$JPC num] [$JPC get resid]"
# 	puts $out2 "$frame [$JPS num] [$JPS get resid]"
# 	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
# 	puts $out4 "$frame [$LPC num] [$LPC get resid]"
# 	puts $out5 "$frame [$LPS num] [$LPS get resid]"
# 	puts $out6 "$frame [$LP2 num] [$LP2 get resid]"
	
# 	close $out1
# 	close $out2
# 	close $out3
# 	close $out4
# 	close $out5
# 	close $out6
	
# }
# #Call bigdcd
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

# #set workdir
# set wkdir "/media/storage/raul/JAK2-FERM-SH2_LID1_CG/PCPS/trjs"

# #a gro file is needed 
# set gro "$wkdir/JAK2-fermsh2-LID1_PCPS_8_init.gro"

# #call trj xtc file
# set xtc "$wkdir/JAK2-fermsh2-LID1_PCPS_8_run.xtc"
 
# set outputname "JAK2-fermsh2-LID1_PCPS_8" 

# #Open output files
# set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
# set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
# set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
# set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
# set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
# set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

# mol load gro $gro 
# bigdcd LPcontactC8 xtc $xtc
# bigdcd_wait
# close $outa
# close $outb
# close $outc
# close $outd
# close $oute
# close $outf
# mol delete all

#PC

# C1
# proc LPcontactC1 { frame } {
# 	 global outputname

# 	#Open output files
# 	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat a+]
# 	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat a+]
# 	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat a+]
# 	set out4 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat a+]
# 	set out5 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat a+]
# 	set out6 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat a+]
	
# 	#Find contacts between JAK2-FERM-SH and Lipids

# 	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
# 	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
# 	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
# 	#Find contacts between PRLR-LID1 and Lipids 
	
# 	set LPC [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC"]
# 	set LPS [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS"]
# 	set LP2 [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POP2"]
	
# 	#Update variables
# 	$JPC frame  $frame 
# 	$JPS frame  $frame 
# 	$JP2 frame  $frame 
# 	$LPC frame  $frame 
#  	$LPS frame  $frame 
# 	$LP2 frame  $frame 
	
# 	#Print to file
# 	puts $out1 "$frame [$JPC num] [$JPC get resid]"
# 	puts $out2 "$frame [$JPS num] [$JPS get resid]"
# 	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
# 	puts $out4 "$frame [$LPC num] [$LPC get resid]"
# 	puts $out5 "$frame [$LPS num] [$LPS get resid]"
# 	puts $out6 "$frame [$LP2 num] [$LP2 get resid]"
	
# 	close $out1
# 	close $out2
# 	close $out3
# 	close $out4
# 	close $out5
# 	close $out6
	
# }
# #Call bigdcd
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

# #set workdir
# set wkdir "/media/storage/raul/JAK2-FERM-SH2_LID1_CG/PC/trjs"

# #a gro file is needed 
# set gro "$wkdir/JAK2-fermsh2-LID1_PC_1_init.gro"

# #call trj xtc file
# set xtc "$wkdir/JAK2-fermsh2-LID1_PC_1_run.xtc"
 
# set outputname "JAK2-fermsh2-LID1_PC_1" 

# #Open output files
# set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
# set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
# set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
# set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
# set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
# set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

# mol load gro $gro 
# bigdcd LPcontactC1 xtc $xtc
# bigdcd_wait
# close $outa
# close $outb
# close $outc
# close $outd
# close $oute
# close $outf
# mol delete all

# #C2
# proc LPcontactC2 { frame } {
# 	 global outputname

# 	#Open output files
# 	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat a+]
# 	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat a+]
# 	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat a+]
# 	set out4 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat a+]
# 	set out5 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat a+]
# 	set out6 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat a+]
	
# 	#Find contacts between JAK2-FERM-SH and Lipids

# 	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
# 	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
# 	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
# 	#Find contacts between PRLR-LID1 and Lipids 
	
# 	set LPC [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC"]
# 	set LPS [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS"]
# 	set LP2 [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POP2"]
	
# 	#Update variables
# 	$JPC frame  $frame 
# 	$JPS frame  $frame 
# 	$JP2 frame  $frame 
# 	$LPC frame  $frame 
#  	$LPS frame  $frame 
# 	$LP2 frame  $frame 
	
# 	#Print to file
# 	puts $out1 "$frame [$JPC num] [$JPC get resid]"
# 	puts $out2 "$frame [$JPS num] [$JPS get resid]"
# 	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
# 	puts $out4 "$frame [$LPC num] [$LPC get resid]"
# 	puts $out5 "$frame [$LPS num] [$LPS get resid]"
# 	puts $out6 "$frame [$LP2 num] [$LP2 get resid]"
	
# 	close $out1
# 	close $out2
# 	close $out3
# 	close $out4
# 	close $out5
# 	close $out6
	
# }
# #Call bigdcd
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

# #set workdir
# set wkdir "/media/storage/raul/JAK2-FERM-SH2_LID1_CG/PC/trjs"

# #a gro file is needed 
# set gro "$wkdir/JAK2-fermsh2-LID1_PC_2_init.gro"

# #call trj xtc file
# set xtc "$wkdir/JAK2-fermsh2-LID1_PC_2_run.xtc"
 
# set outputname "JAK2-fermsh2-LID1_PC_2" 

# #Open output files
# set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
# set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
# set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
# set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
# set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
# set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

# mol load gro $gro 
# bigdcd LPcontactC2 xtc $xtc
# bigdcd_wait
# close $outa
# close $outb
# close $outc
# close $outd
# close $oute
# close $outf
# mol delete all

# #C3
# proc LPcontactC3 { frame } {
# 	 global outputname

# 	#Open output files
# 	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat a+]
# 	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat a+]
# 	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat a+]
# 	set out4 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat a+]
# 	set out5 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat a+]
# 	set out6 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat a+]
	
# 	#Find contacts between JAK2-FERM-SH and Lipids

# 	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
# 	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
# 	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
# 	#Find contacts between PRLR-LID1 and Lipids 
	
# 	set LPC [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC"]
# 	set LPS [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS"]
# 	set LP2 [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POP2"]
	
# 	#Update variables
# 	$JPC frame  $frame 
# 	$JPS frame  $frame 
# 	$JP2 frame  $frame 
# 	$LPC frame  $frame 
#  	$LPS frame  $frame 
# 	$LP2 frame  $frame 
	
# 	#Print to file
# 	puts $out1 "$frame [$JPC num] [$JPC get resid]"
# 	puts $out2 "$frame [$JPS num] [$JPS get resid]"
# 	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
# 	puts $out4 "$frame [$LPC num] [$LPC get resid]"
# 	puts $out5 "$frame [$LPS num] [$LPS get resid]"
# 	puts $out6 "$frame [$LP2 num] [$LP2 get resid]"
	
# 	close $out1
# 	close $out2
# 	close $out3
# 	close $out4
# 	close $out5
# 	close $out6
	
# }
# #Call bigdcd
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

# #set workdir
# set wkdir "/media/storage/raul/JAK2-FERM-SH2_LID1_CG/PC/trjs"

# #a gro file is needed 
# set gro "$wkdir/JAK2-fermsh2-LID1_PC_3_init.gro"

# #call trj xtc file
# set xtc "$wkdir/JAK2-fermsh2-LID1_PC_3_run.xtc"
 
# set outputname "JAK2-fermsh2-LID1_PC_3" 

# #Open output files
# set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
# set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
# set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
# set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
# set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
# set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

# mol load gro $gro 
# bigdcd LPcontactC3 xtc $xtc
# bigdcd_wait
# close $outa
# close $outb
# close $outc
# close $outd
# close $oute
# close $outf
# mol delete all

# #C4
# proc LPcontactC4 { frame } {
# 	 global outputname

# 	#Open output files
# 	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat a+]
# 	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat a+]
# 	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat a+]
# 	set out4 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat a+]
# 	set out5 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat a+]
# 	set out6 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat a+]
	
# 	#Find contacts between JAK2-FERM-SH and Lipids

# 	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
# 	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
# 	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
# 	#Find contacts between PRLR-LID1 and Lipids 
	
# 	set LPC [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC"]
# 	set LPS [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS"]
# 	set LP2 [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POP2"]
	
# 	#Update variables
# 	$JPC frame  $frame 
# 	$JPS frame  $frame 
# 	$JP2 frame  $frame 
# 	$LPC frame  $frame 
#  	$LPS frame  $frame 
# 	$LP2 frame  $frame 
	
# 	#Print to file
# 	puts $out1 "$frame [$JPC num] [$JPC get resid]"
# 	puts $out2 "$frame [$JPS num] [$JPS get resid]"
# 	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
# 	puts $out4 "$frame [$LPC num] [$LPC get resid]"
# 	puts $out5 "$frame [$LPS num] [$LPS get resid]"
# 	puts $out6 "$frame [$LP2 num] [$LP2 get resid]"
	
# 	close $out1
# 	close $out2
# 	close $out3
# 	close $out4
# 	close $out5
# 	close $out6
	
# }
# #Call bigdcd
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

# #set workdir
# set wkdir "/media/storage/raul/JAK2-FERM-SH2_LID1_CG/PC/trjs"

# #a gro file is needed 
# set gro "$wkdir/JAK2-fermsh2-LID1_PC_4_init.gro"

# #call trj xtc file
# set xtc "$wkdir/JAK2-fermsh2-LID1_PC_4_run.xtc"
 
# set outputname "JAK2-fermsh2-LID1_PC_4" 

# #Open output files
# set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
# set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
# set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
# set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
# set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
# set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

# mol load gro $gro 
# bigdcd LPcontactC4 xtc $xtc
# bigdcd_wait
# close $outa
# close $outb
# close $outc
# close $outd
# close $oute
# close $outf
# mol delete all

# #C5
# proc LPcontactC5 { frame } {
# 	 global outputname

# 	#Open output files
# 	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat a+]
# 	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat a+]
# 	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat a+]
# 	set out4 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat a+]
# 	set out5 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat a+]
# 	set out6 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat a+]
	
# 	#Find contacts between JAK2-FERM-SH and Lipids

# 	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
# 	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
# 	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
# 	#Find contacts between PRLR-LID1 and Lipids 
	
# 	set LPC [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC"]
# 	set LPS [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS"]
# 	set LP2 [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POP2"]
	
# 	#Update variables
# 	$JPC frame  $frame 
# 	$JPS frame  $frame 
# 	$JP2 frame  $frame 
# 	$LPC frame  $frame 
#  	$LPS frame  $frame 
# 	$LP2 frame  $frame 
	
# 	#Print to file
# 	puts $out1 "$frame [$JPC num] [$JPC get resid]"
# 	puts $out2 "$frame [$JPS num] [$JPS get resid]"
# 	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
# 	puts $out4 "$frame [$LPC num] [$LPC get resid]"
# 	puts $out5 "$frame [$LPS num] [$LPS get resid]"
# 	puts $out6 "$frame [$LP2 num] [$LP2 get resid]"
	
# 	close $out1
# 	close $out2
# 	close $out3
# 	close $out4
# 	close $out5
# 	close $out6
	
# }
# #Call bigdcd
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

# #set workdir
# set wkdir "/media/storage/raul/JAK2-FERM-SH2_LID1_CG/PC/trjs"

# #a gro file is needed 
# set gro "$wkdir/JAK2-fermsh2-LID1_PC_5_init.gro"

# #call trj xtc file
# set xtc "$wkdir/JAK2-fermsh2-LID1_PC_5_run.xtc"
 
# set outputname "JAK2-fermsh2-LID1_PC_5" 

# #Open output files
# set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
# set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
# set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
# set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
# set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
# set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

# mol load gro $gro 
# bigdcd LPcontactC5 xtc $xtc
# bigdcd_wait
# close $outa
# close $outb
# close $outc
# close $outd
# close $oute
# close $outf
# mol delete all

# #C6
# proc LPcontactC6 { frame } {
# 	 global outputname

# 	#Open output files
# 	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat a+]
# 	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat a+]
# 	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat a+]
# 	set out4 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat a+]
# 	set out5 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat a+]
# 	set out6 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat a+]
	
# 	#Find contacts between JAK2-FERM-SH and Lipids

# 	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
# 	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
# 	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
# 	#Find contacts between PRLR-LID1 and Lipids 
	
# 	set LPC [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC"]
# 	set LPS [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS"]
# 	set LP2 [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POP2"]
	
# 	#Update variables
# 	$JPC frame  $frame 
# 	$JPS frame  $frame 
# 	$JP2 frame  $frame 
# 	$LPC frame  $frame 
#  	$LPS frame  $frame 
# 	$LP2 frame  $frame 
	
# 	#Print to file
# 	puts $out1 "$frame [$JPC num] [$JPC get resid]"
# 	puts $out2 "$frame [$JPS num] [$JPS get resid]"
# 	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
# 	puts $out4 "$frame [$LPC num] [$LPC get resid]"
# 	puts $out5 "$frame [$LPS num] [$LPS get resid]"
# 	puts $out6 "$frame [$LP2 num] [$LP2 get resid]"
	
# 	close $out1
# 	close $out2
# 	close $out3
# 	close $out4
# 	close $out5
# 	close $out6
	
# }
# #Call bigdcd
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

# #set workdir
# set wkdir "/media/storage/raul/JAK2-FERM-SH2_LID1_CG/PC/trjs"

# #a gro file is needed 
# set gro "$wkdir/JAK2-fermsh2-LID1_PC_6_init.gro"

# #call trj xtc file
# set xtc "$wkdir/JAK2-fermsh2-LID1_PC_6_run.xtc"
 
# set outputname "JAK2-fermsh2-LID1_PC_6" 

# #Open output files
# set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
# set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
# set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
# set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
# set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
# set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

# mol load gro $gro 
# bigdcd LPcontactC6 xtc $xtc
# bigdcd_wait
# close $outa
# close $outb
# close $outc
# close $outd
# close $oute
# close $outf
# mol delete all

# #C7
# proc LPcontactC7 { frame } {
# 	 global outputname

# 	#Open output files
# 	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat a+]
# 	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat a+]
# 	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat a+]
# 	set out4 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat a+]
# 	set out5 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat a+]
# 	set out6 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat a+]
	
# 	#Find contacts between JAK2-FERM-SH and Lipids

# 	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
# 	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
# 	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
# 	#Find contacts between PRLR-LID1 and Lipids 
	
# 	set LPC [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC"]
# 	set LPS [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS"]
# 	set LP2 [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POP2"]
	
# 	#Update variables
# 	$JPC frame  $frame 
# 	$JPS frame  $frame 
# 	$JP2 frame  $frame 
# 	$LPC frame  $frame 
#  	$LPS frame  $frame 
# 	$LP2 frame  $frame 
	
# 	#Print to file
# 	puts $out1 "$frame [$JPC num] [$JPC get resid]"
# 	puts $out2 "$frame [$JPS num] [$JPS get resid]"
# 	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
# 	puts $out4 "$frame [$LPC num] [$LPC get resid]"
# 	puts $out5 "$frame [$LPS num] [$LPS get resid]"
# 	puts $out6 "$frame [$LP2 num] [$LP2 get resid]"
	
# 	close $out1
# 	close $out2
# 	close $out3
# 	close $out4
# 	close $out5
# 	close $out6
	
# }
# #Call bigdcd
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

# #set workdir
# set wkdir "/media/storage/raul/JAK2-FERM-SH2_LID1_CG/PC/trjs"

# #a gro file is needed 
# set gro "$wkdir/JAK2-fermsh2-LID1_PC_7_init.gro"

# #call trj xtc file
# set xtc "$wkdir/JAK2-fermsh2-LID1_PC_7_run.xtc"
 
# set outputname "JAK2-fermsh2-LID1_PC_7" 

# #Open output files
# set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
# set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
# set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
# set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
# set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
# set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

# mol load gro $gro 
# bigdcd LPcontactC7 xtc $xtc
# bigdcd_wait
# close $outa
# close $outb
# close $outc
# close $outd
# close $oute
# close $outf
# mol delete all

# #C8
# proc LPcontactC8 { frame } {
# 	 global outputname

# 	#Open output files
# 	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat a+]
# 	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat a+]
# 	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat a+]
# 	set out4 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat a+]
# 	set out5 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat a+]
# 	set out6 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat a+]
	
# 	#Find contacts between JAK2-FERM-SH and Lipids

# 	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
# 	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
# 	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
# 	#Find contacts between PRLR-LID1 and Lipids 
	
# 	set LPC [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC"]
# 	set LPS [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS"]
# 	set LP2 [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POP2"]
	
# 	#Update variables
# 	$JPC frame  $frame 
# 	$JPS frame  $frame 
# 	$JP2 frame  $frame 
# 	$LPC frame  $frame 
#  	$LPS frame  $frame 
# 	$LP2 frame  $frame 
	
# 	#Print to file
# 	puts $out1 "$frame [$JPC num] [$JPC get resid]"
# 	puts $out2 "$frame [$JPS num] [$JPS get resid]"
# 	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
# 	puts $out4 "$frame [$LPC num] [$LPC get resid]"
# 	puts $out5 "$frame [$LPS num] [$LPS get resid]"
# 	puts $out6 "$frame [$LP2 num] [$LP2 get resid]"
	
# 	close $out1
# 	close $out2
# 	close $out3
# 	close $out4
# 	close $out5
# 	close $out6
	
# }
# #Call bigdcd
# source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

# #set workdir
# set wkdir "/media/storage/raul/JAK2-FERM-SH2_LID1_CG/PC/trjs"

# #a gro file is needed 
# set gro "$wkdir/JAK2-fermsh2-LID1_PC_8_init.gro"

# #call trj xtc file
# set xtc "$wkdir/JAK2-fermsh2-LID1_PC_8_run.xtc"
 
# set outputname "JAK2-fermsh2-LID1_PC_8" 

# #Open output files
# set outa [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPC_$outputname.dat w]
# set outb [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPS_$outputname.dat w]
# set outc [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2_$outputname.dat w]
# set outd [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPC_$outputname.dat w]
# set oute [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPS_$outputname.dat w]
# set outf [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2_$outputname.dat w]

# mol load gro $gro 
# bigdcd LPcontactC8 xtc $xtc
# bigdcd_wait
# close $outa
# close $outb
# close $outc
# close $outd
# close $oute
# close $outf
# mol delete all

quit