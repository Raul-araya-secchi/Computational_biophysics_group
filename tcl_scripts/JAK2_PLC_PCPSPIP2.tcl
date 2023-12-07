# #PCPSPIP2
# C1
proc LPcontactC1 { frame } {
	 global outputname

	#Open output files
	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPC_$outputname.dat a+]
	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPS_$outputname.dat a+]
	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JP2_$outputname.dat a+]
	
	#Find contacts between JAK2-FERM-SH and Lipids

	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
	#Update variables
	$JPC frame  $frame 
	$JPS frame  $frame 
	$JP2 frame  $frame 

	#Print to file
	puts $out1 "$frame [$JPC num] [$JPC get resid]"
	puts $out2 "$frame [$JPS num] [$JPS get resid]"
	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
	
	close $out1
	close $out2
	close $out3
	
}
#Call bigdcd
source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

#set workdir
set wkdir "/media/storage/raul/JAK2_FERM-SH2_CG/PCPSPIP2/geomap"

#a gro file is needed 
set gro "$wkdir/JAK2-fermsh2_PCPSPIP2_1_init.gro"

#call trj xtc file
set xtc "$wkdir/JAK2-fermsh2_PCPSPIP2_1_run.xtc"
 
set outputname "JAK2-fermsh2_PCPSPIP2_1" 

#Open output files
set outa [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPC_$outputname.dat w]
set outb [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPS_$outputname.dat w]
set outc [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JP2_$outputname.dat w]

mol load gro $gro 
bigdcd LPcontactC1 xtc $xtc
bigdcd_wait
close $outa
close $outb
close $outc
mol delete all

#C2
proc LPcontactC2 { frame } {
	 global outputname

	#Open output files
	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPC_$outputname.dat a+]
	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPS_$outputname.dat a+]
	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JP2_$outputname.dat a+]
	
	#Find contacts between JAK2-FERM-SH and Lipids

	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
	#Update variables
	$JPC frame  $frame 
	$JPS frame  $frame 
	$JP2 frame  $frame 

	#Print to file
	puts $out1 "$frame [$JPC num] [$JPC get resid]"
	puts $out2 "$frame [$JPS num] [$JPS get resid]"
	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
	
	close $out1
	close $out2
	close $out3
	
}
#Call bigdcd
source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

#set workdir
set wkdir "/media/storage/raul/JAK2_FERM-SH2_CG/PCPSPIP2/geomap"

#a gro file is needed 
set gro "$wkdir/JAK2-fermsh2_PCPSPIP2_2_init.gro"

#call trj xtc file
set xtc "$wkdir/JAK2-fermsh2_PCPSPIP2_2_run.xtc"
 
set outputname "JAK2-fermsh2_PCPSPIP2_2" 

#Open output files
set outa [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPC_$outputname.dat w]
set outb [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPS_$outputname.dat w]
set outc [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JP2_$outputname.dat w]

mol load gro $gro 
bigdcd LPcontactC2 xtc $xtc
bigdcd_wait
close $outa
close $outb
close $outc
mol delete all

#C3
proc LPcontactC3 { frame } {
	 global outputname

	#Open output files
	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPC_$outputname.dat a+]
	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPS_$outputname.dat a+]
	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JP2_$outputname.dat a+]
	
	#Find contacts between JAK2-FERM-SH and Lipids

	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
	#Update variables
	$JPC frame  $frame 
	$JPS frame  $frame 
	$JP2 frame  $frame 

	#Print to file
	puts $out1 "$frame [$JPC num] [$JPC get resid]"
	puts $out2 "$frame [$JPS num] [$JPS get resid]"
	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
	
	close $out1
	close $out2
	close $out3
	
}
#Call bigdcd
source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

#set workdir
set wkdir "/media/storage/raul/JAK2_FERM-SH2_CG/PCPSPIP2/geomap"

#a gro file is needed 
set gro "$wkdir/JAK2-fermsh2_PCPSPIP2_3_init.gro"

#call trj xtc file
set xtc "$wkdir/JAK2-fermsh2_PCPSPIP2_3_run.xtc"
 
set outputname "JAK2-fermsh2_PCPSPIP2_3" 

#Open output files
set outa [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPC_$outputname.dat w]
set outb [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPS_$outputname.dat w]
set outc [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JP2_$outputname.dat w]

mol load gro $gro 
bigdcd LPcontactC3 xtc $xtc
bigdcd_wait
close $outa
close $outb
close $outc
mol delete all

#C5
proc LPcontactC5 { frame } {
	 global outputname

	#Open output files
	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPC_$outputname.dat a+]
	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPS_$outputname.dat a+]
	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JP2_$outputname.dat a+]
	
	#Find contacts between JAK2-FERM-SH and Lipids

	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
	#Update variables
	$JPC frame  $frame 
	$JPS frame  $frame 
	$JP2 frame  $frame 

	#Print to file
	puts $out1 "$frame [$JPC num] [$JPC get resid]"
	puts $out2 "$frame [$JPS num] [$JPS get resid]"
	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
	
	close $out1
	close $out2
	close $out3
	
}
#Call bigdcd
source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

#set workdir
set wkdir "/media/storage/raul/JAK2_FERM-SH2_CG/PCPSPIP2/geomap"

#a gro file is needed 
set gro "$wkdir/JAK2-fermsh2_PCPSPIP2_5_init.gro"

#call trj xtc file
set xtc "$wkdir/JAK2-fermsh2_PCPSPIP2_5_run.xtc"
 
set outputname "JAK2-fermsh2_PCPSPIP2_5" 

#Open output files
set outa [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPC_$outputname.dat w]
set outb [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPS_$outputname.dat w]
set outc [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JP2_$outputname.dat w]

mol load gro $gro 
bigdcd LPcontactC5 xtc $xtc
bigdcd_wait
close $outa
close $outb
close $outc
mol delete all

#C6
proc LPcontactC6 { frame } {
	 global outputname

	#Open output files
	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPC_$outputname.dat a+]
	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPS_$outputname.dat a+]
	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JP2_$outputname.dat a+]
	
	#Find contacts between JAK2-FERM-SH and Lipids

	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
	#Update variables
	$JPC frame  $frame 
	$JPS frame  $frame 
	$JP2 frame  $frame 

	#Print to file
	puts $out1 "$frame [$JPC num] [$JPC get resid]"
	puts $out2 "$frame [$JPS num] [$JPS get resid]"
	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
	
	close $out1
	close $out2
	close $out3
	
}
#Call bigdcd
source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

#set workdir
set wkdir "/media/storage/raul/JAK2_FERM-SH2_CG/PCPSPIP2/geomap"

#a gro file is needed 
set gro "$wkdir/JAK2-fermsh2_PCPSPIP2_6_init.gro"

#call trj xtc file
set xtc "$wkdir/JAK2-fermsh2_PCPSPIP2_6_run.xtc"
 
set outputname "JAK2-fermsh2_PCPSPIP2_6" 

#Open output files
set outa [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPC_$outputname.dat w]
set outb [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPS_$outputname.dat w]
set outc [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JP2_$outputname.dat w]

mol load gro $gro 
bigdcd LPcontactC6 xtc $xtc
bigdcd_wait
close $outa
close $outb
close $outc
mol delete all

#C7
proc LPcontactC7 { frame } {
	 global outputname

	#Open output files
	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPC_$outputname.dat a+]
	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPS_$outputname.dat a+]
	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JP2_$outputname.dat a+]
	
	#Find contacts between JAK2-FERM-SH and Lipids

	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
	#Update variables
	$JPC frame  $frame 
	$JPS frame  $frame 
	$JP2 frame  $frame 

	#Print to file
	puts $out1 "$frame [$JPC num] [$JPC get resid]"
	puts $out2 "$frame [$JPS num] [$JPS get resid]"
	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
	
	close $out1
	close $out2
	close $out3
	
}
#Call bigdcd
source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

#set workdir
set wkdir "/media/storage/raul/JAK2_FERM-SH2_CG/PCPSPIP2/geomap"

#a gro file is needed 
set gro "$wkdir/JAK2-fermsh2_PCPSPIP2_7_init.gro"

#call trj xtc file
set xtc "$wkdir/JAK2-fermsh2_PCPSPIP2_7_run.xtc"
 
set outputname "JAK2-fermsh2_PCPSPIP2_7" 

#Open output files
set outa [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPC_$outputname.dat w]
set outb [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPS_$outputname.dat w]
set outc [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JP2_$outputname.dat w]

mol load gro $gro 
bigdcd LPcontactC7 xtc $xtc
bigdcd_wait
close $outa
close $outb
close $outc
mol delete all

#C8
proc LPcontactC8 { frame } {
	 global outputname

	#Open output files
	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPC_$outputname.dat a+]
	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPS_$outputname.dat a+]
	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JP2_$outputname.dat a+]
	
	#Find contacts between JAK2-FERM-SH and Lipids

	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
	#Update variables
	$JPC frame  $frame 
	$JPS frame  $frame 
	$JP2 frame  $frame 

	#Print to file
	puts $out1 "$frame [$JPC num] [$JPC get resid]"
	puts $out2 "$frame [$JPS num] [$JPS get resid]"
	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
	
	close $out1
	close $out2
	close $out3
	
}
#Call bigdcd
source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

#set workdir
set wkdir "/media/storage/raul/JAK2_FERM-SH2_CG/PCPSPIP2/geomap"

#a gro file is needed 
set gro "$wkdir/JAK2-fermsh2_PCPSPIP2_8_init.gro"

#call trj xtc file
set xtc "$wkdir/JAK2-fermsh2_PCPSPIP2_8_run.xtc"
 
set outputname "JAK2-fermsh2_PCPSPIP2_8" 

#Open output files
set outa [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPC_$outputname.dat w]
set outb [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPS_$outputname.dat w]
set outc [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JP2_$outputname.dat w]

mol load gro $gro 
bigdcd LPcontactC8 xtc $xtc
bigdcd_wait
close $outa
close $outb
close $outc
mol delete all

#C9
proc LPcontactC9 { frame } {
	 global outputname

	#Open output files
	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPC_$outputname.dat a+]
	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPS_$outputname.dat a+]
	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JP2_$outputname.dat a+]
	
	#Find contacts between JAK2-FERM-SH and Lipids

	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
	#Update variables
	$JPC frame  $frame 
	$JPS frame  $frame 
	$JP2 frame  $frame 

	#Print to file
	puts $out1 "$frame [$JPC num] [$JPC get resid]"
	puts $out2 "$frame [$JPS num] [$JPS get resid]"
	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
	
	close $out1
	close $out2
	close $out3
	
}
#Call bigdcd
source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

#set workdir
set wkdir "/media/storage/raul/JAK2_FERM-SH2_CG/PCPSPIP2/geomap"

#a gro file is needed 
set gro "$wkdir/JAK2-fermsh2_PCPSPIP2_9_init.gro"

#call trj xtc file
set xtc "$wkdir/JAK2-fermsh2_PCPSPIP2_9_run.xtc"
 
set outputname "JAK2-fermsh2_PCPSPIP2_9" 

#Open output files
set outa [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPC_$outputname.dat w]
set outb [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPS_$outputname.dat w]
set outc [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JP2_$outputname.dat w]

mol load gro $gro 
bigdcd LPcontactC9 xtc $xtc
bigdcd_wait
close $outa
close $outb
close $outc
mol delete all

#C11
proc LPcontactC11 { frame } {
	 global outputname

	#Open output files
	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPC_$outputname.dat a+]
	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPS_$outputname.dat a+]
	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JP2_$outputname.dat a+]
	
	#Find contacts between JAK2-FERM-SH and Lipids

	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
	#Update variables
	$JPC frame  $frame 
	$JPS frame  $frame 
	$JP2 frame  $frame 

	#Print to file
	puts $out1 "$frame [$JPC num] [$JPC get resid]"
	puts $out2 "$frame [$JPS num] [$JPS get resid]"
	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
	
	close $out1
	close $out2
	close $out3
	
}
#Call bigdcd
source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

#set workdir
set wkdir "/media/storage/raul/JAK2_FERM-SH2_CG/PCPSPIP2/geomap"

#a gro file is needed 
set gro "$wkdir/JAK2-fermsh2_PCPSPIP2_11_init.gro"

#call trj xtc file
set xtc "$wkdir/JAK2-fermsh2_PCPSPIP2_11_run.xtc"
 
set outputname "JAK2-fermsh2_PCPSPIP2_11" 

#Open output files
set outa [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPC_$outputname.dat w]
set outb [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPS_$outputname.dat w]
set outc [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JP2_$outputname.dat w]

mol load gro $gro 
bigdcd LPcontactC11 xtc $xtc
bigdcd_wait
close $outa
close $outb
close $outc
mol delete all

#C12
proc LPcontactC12 { frame } {
	 global outputname

	#Open output files
	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPC_$outputname.dat a+]
	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPS_$outputname.dat a+]
	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JP2_$outputname.dat a+]
	
	#Find contacts between JAK2-FERM-SH and Lipids

	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
	#Update variables
	$JPC frame  $frame 
	$JPS frame  $frame 
	$JP2 frame  $frame 

	#Print to file
	puts $out1 "$frame [$JPC num] [$JPC get resid]"
	puts $out2 "$frame [$JPS num] [$JPS get resid]"
	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
	
	close $out1
	close $out2
	close $out3
	
}
#Call bigdcd
source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

#set workdir
set wkdir "/media/storage/raul/JAK2_FERM-SH2_CG/PCPSPIP2/geomap"

#a gro file is needed 
set gro "$wkdir/JAK2-fermsh2_PCPSPIP2_12_init.gro"

#call trj xtc file
set xtc "$wkdir/JAK2-fermsh2_PCPSPIP2_12_run.xtc"
 
set outputname "JAK2-fermsh2_PCPSPIP2_12" 

#Open output files
set outa [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPC_$outputname.dat w]
set outb [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPS_$outputname.dat w]
set outc [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JP2_$outputname.dat w]

mol load gro $gro 
bigdcd LPcontactC12 xtc $xtc
bigdcd_wait
close $outa
close $outb
close $outc
mol delete all

#C13
proc LPcontactC13 { frame } {
	 global outputname

	#Open output files
	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPC_$outputname.dat a+]
	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPS_$outputname.dat a+]
	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JP2_$outputname.dat a+]
	
	#Find contacts between JAK2-FERM-SH and Lipids

	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
	#Update variables
	$JPC frame  $frame 
	$JPS frame  $frame 
	$JP2 frame  $frame 

	#Print to file
	puts $out1 "$frame [$JPC num] [$JPC get resid]"
	puts $out2 "$frame [$JPS num] [$JPS get resid]"
	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
	
	close $out1
	close $out2
	close $out3
	
}
#Call bigdcd
source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

#set workdir
set wkdir "/media/storage/raul/JAK2_FERM-SH2_CG/PCPSPIP2/geomap"

#a gro file is needed 
set gro "$wkdir/JAK2-fermsh2_PCPSPIP2_13_init.gro"

#call trj xtc file
set xtc "$wkdir/JAK2-fermsh2_PCPSPIP2_13_run.xtc"
 
set outputname "JAK2-fermsh2_PCPSPIP2_13" 

#Open output files
set outa [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPC_$outputname.dat w]
set outb [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPS_$outputname.dat w]
set outc [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JP2_$outputname.dat w]

mol load gro $gro 
bigdcd LPcontactC13 xtc $xtc
bigdcd_wait
close $outa
close $outb
close $outc
mol delete all

#C14
proc LPcontactC14 { frame } {
	 global outputname

	#Open output files
	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPC_$outputname.dat a+]
	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPS_$outputname.dat a+]
	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JP2_$outputname.dat a+]
	
	#Find contacts between JAK2-FERM-SH and Lipids

	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
	#Update variables
	$JPC frame  $frame 
	$JPS frame  $frame 
	$JP2 frame  $frame 

	#Print to file
	puts $out1 "$frame [$JPC num] [$JPC get resid]"
	puts $out2 "$frame [$JPS num] [$JPS get resid]"
	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
	
	close $out1
	close $out2
	close $out3
	
}
#Call bigdcd
source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

#set workdir
set wkdir "/media/storage/raul/JAK2_FERM-SH2_CG/PCPSPIP2/geomap"

#a gro file is needed 
set gro "$wkdir/JAK2-fermsh2_PCPSPIP2_14_init.gro"

#call trj xtc file
set xtc "$wkdir/JAK2-fermsh2_PCPSPIP2_14_run.xtc"
 
set outputname "JAK2-fermsh2_PCPSPIP2_14" 

#Open output files
set outa [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPC_$outputname.dat w]
set outb [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPS_$outputname.dat w]
set outc [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JP2_$outputname.dat w]

mol load gro $gro 
bigdcd LPcontactC1 xtc $xtc
bigdcd_wait
close $outa
close $outb
close $outc
mol delete all

#C15
proc LPcontactC15 { frame } {
	 global outputname

	#Open output files
	set out1 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPC_$outputname.dat a+]
	set out2 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPS_$outputname.dat a+]
	set out3 [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JP2_$outputname.dat a+]
	
	#Find contacts between JAK2-FERM-SH and Lipids

	set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC"]
	set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS"]
	set JP2 [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2"]
	
	#Update variables
	$JPC frame  $frame 
	$JPS frame  $frame 
	$JP2 frame  $frame 

	#Print to file
	puts $out1 "$frame [$JPC num] [$JPC get resid]"
	puts $out2 "$frame [$JPS num] [$JPS get resid]"
	puts $out3 "$frame [$JP2 num] [$JP2 get resid]"
	
	close $out1
	close $out2
	close $out3
	
}
#Call bigdcd
source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

#set workdir
set wkdir "/media/storage/raul/JAK2_FERM-SH2_CG/PCPSPIP2/geomap"

#a gro file is needed 
set gro "$wkdir/JAK2-fermsh2_PCPSPIP2_15_init.gro"

#call trj xtc file
set xtc "$wkdir/JAK2-fermsh2_PCPSPIP2_15_run.xtc"
 
set outputname "JAK2-fermsh2_PCPSPIP2_15" 

#Open output files
set outa [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPC_$outputname.dat w]
set outb [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JPS_$outputname.dat w]
set outc [open /home/raul/projects/MD-runs/synergy/JAK2_FERM-SH2_CG/PCPSPIP2/results/LPC/JP2_$outputname.dat w]

mol load gro $gro 
bigdcd LPcontactC1 xtc $xtc
bigdcd_wait
close $outa
close $outb
close $outc
mol delete all

quit 