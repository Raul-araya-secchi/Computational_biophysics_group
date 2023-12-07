mol new /home/raul/projects/PRLR_MS_2022/PRLR_JAK2_CGm22_PCPS/JAK2-fermsh2-LID1_PCPS_1_run_PL_wrapped_F0.pdb
mol addfile /home/raul/projects/PRLR_MS_2022/PRLR_JAK2_CGm22_PCPS/JAK2-fermsh2-LID1_PCPS_1_run_PL_wrapped.dcd waitfor all 

set outputname "JAK2-fermsh2-LID1_PCPS_C1"
set out1 [open /home/raul/projects/PRLR_MS_2022/PRLR_JAK2_CGm22_PCPS/JPChg_$outputname.dat w]
set out2 [open /home/raul/projects/PRLR_MS_2022/PRLR_JAK2_CGm22_PCPS/JPShg_$outputname.dat w]
set out4 [open /home/raul/projects/PRLR_MS_2022/PRLR_JAK2_CGm22_PCPS/LPChg_$outputname.dat w]
set out5 [open /home/raul/projects/PRLR_MS_2022/PRLR_JAK2_CGm22_PCPS/LPShg_$outputname.dat w]
set out7 [open /home/raul/projects/PRLR_MS_2022/PRLR_JAK2_CGm22_PCPS/JPCtail_$outputname.dat w]
set out8 [open /home/raul/projects/PRLR_MS_2022/PRLR_JAK2_CGm22_PCPS/JPStail_$outputname.dat w]
set out10 [open /home/raul/projects/PRLR_MS_2022/PRLR_JAK2_CGm22_PCPS/LPCtail_$outputname.dat w]
set out11 [open /home/raul/projects/PRLR_MS_2022/PRLR_JAK2_CGm22_PCPS/LPStail_$outputname.dat w]
set out13 [open /home/raul/projects/PRLR_MS_2022/PRLR_JAK2_CGm22_PCPS/allcont_$outputname.dat w]

set nfpcps [molinfo top get numframes]

for {set i 0} {$i <= $nfpcps} {incr i} {
	set b 0
	# set BB - any lip-bead contact for freq. contact time est.
    set allcont [atomselect top "name BB and within 7 of resname POPC POPS" frame $i]
	##Find contacts between JAK2-FERM-SH and Lipids -- HG
	set JPChg [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC and not name PO4 GL1 GL2 C1A D2A C3A C4A C1B C2B C3B C4B" frame $i]   
	set JPShg [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS and not name  PO4 GL1 GL2 C1A D2A C3A C4A C1B C2B C3B C4B" frame $i]   
	##Find contacts between PRLR-LID1 and Lipids --hg	
	set LPChg [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC and not name PO4 GL1 GL2 C1A D2A C3A C4A C1B C2B C3B C4B" frame $i] 
	set LPShg [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS and not name  PO4 GL1 GL2 C1A D2A C3A C4A C1B C2B C3B C4B" frame $i]

	##Find contacts between JAK2-FERM-SH and Lipids -- tails
	set JPCt [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC and name C1A D2A C3A C4A C1B C2B C3B C4B" frame $i]  
	set JPSt [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS and name C1A D2A C3A C4A C1B C2B C3B C4B" frame $i]   
	##Find contacts between PRLR-LID1 and Lipids -- tails
	set LPCt [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC and name C1A D2A C3A C4A C1B C2B C3B C4B" frame $i]
	set LPSt [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS and name C1A D2A C3A C4A C1B C2B C3B C4B" frame $i]

	##Print to file
	
	if {[$allcont num]>0 } {
            set b 1 
	}
    puts $out13 "$i $b"
	puts $out1 "[$JPChg get resid]"
	puts $out2 "[$JPShg get resid]"
	
	puts $out4 "[$LPChg get resid]"
	puts $out5 "[$LPShg get resid]"
	
	puts $out7 "[$JPCt get resid]"
	puts $out8 "[$JPSt get resid]"
	
	puts $out10 "[$LPCt get resid]"
	puts $out11 "[$LPSt get resid]"
	
	$JPChg delete
	$JPShg delete
	$LPChg delete
	$LPShg delete
	$JPCt delete
	$JPSt delete
	$LPCt delete
	$LPSt delete
	$allcont delete 
}	
close $out1
close $out2

close $out4
close $out5

close $out7 
close $out8 

close $out10
close $out11

close $out13

set out14 [open /home/raul/projects/PRLR_MS_2022/PRLR_JAK2_CGm22_PCPS/JPC_$outputname.dat a+]
set out24 [open /home/raul/projects/PRLR_MS_2022/PRLR_JAK2_CGm22_PCPS/JPS_$outputname.dat a+]
set out44 [open /home/raul/projects/PRLR_MS_2022/PRLR_JAK2_CGm22_PCPS/LPC_$outputname.dat a+]
set out54 [open /home/raul/projects/PRLR_MS_2022/PRLR_JAK2_CGm22_PCPS/LPS_$outputname.dat a+]
	
# 	#Find contacts between JAK2-FERM-SH and Lipids
for {set i 0} {$i <= $nfpcps} {incr i} {
    set JPC [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC" frame $i]
    set JPS [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS" frame $i]
    
    #Find contacts between PRLR-LID1 and Lipids 
    set LPC [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC" frame $i]
    set LPS [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS" frame $i]
    
    #Print to file
    puts $out14 "[$JPC get resid]"
    puts $out24 "[$JPS get resid]"
    puts $out44 "[$LPC get resid]"
    puts $out54 "[$LPS get resid]"
    
    $JPC delete
    $JPS delete   
    $LPC delete
    $LPS delete

}
close $out14
close $out24
close $out44
close $out54
mol delete all
quit

