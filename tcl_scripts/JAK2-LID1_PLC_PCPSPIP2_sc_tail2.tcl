set wkdir "/media/storage/raul/JAK2-FERM-SH2_LID1_CG/PCPSPIP2/geomap"

for {set a 1} {$a <= 16} {incr a} {
	#a gro file is needed 
	set gro "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_${a}_init.gro"
 	#call trj xtc file
	set xtc "$wkdir/JAK2-fermsh2-LID1_PCPSPIP2_${a}_run.xtc"
	set outputname "JAK2-fermsh2-LID1_PCPSPIP2_$a" 

	mol new $gro
	mol addfile $xtc waitfor all

	#set out1 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPChg_$outputname.dat w]
	#set out2 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPShg_$outputname.dat w]
	#set out3 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2hg_$outputname.dat w]
	#set out4 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPChg_$outputname.dat w]
	#set out5 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPShg_$outputname.dat w]
	#set out6 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2hg_$outputname.dat w]

	#set out7 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPCtail_$outputname.dat w]
	#set out8 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JPStail_$outputname.dat w]
	#set out9 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/JP2tail_$outputname.dat w]
	#set out10 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPCtail_$outputname.dat w]
	#set out11 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LPStail_$outputname.dat w]
	#set out12 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/LP2tail_$outputname.dat w]
	set out13 [open /home/raul/projects/MD-runs/synergy/JAK2-FERM-SH2_LID1/results/LPC/allcont_$outputname.dat w]

	set nfpcps [molinfo top get numframes]

	for {set i 0} {$i <= $nfpcps} {incr i} {
	    set b 0
		# set BB - any lip-bead contact for freq. contact time est.
        set allcont [atomselect top "name BB and pbwithin 7 of resname POPC POPS POP2"]

		##Find contacts between JAK2-FERM-SH and Lipids -- HG
	 	# set JPChg [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC and not name PO4 GL1 GL2 C1A D2A C3A C4A C1B C2B C3B C4B"]   
	 	# set JPShg [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS and not name  PO4 GL1 GL2 C1A D2A C3A C4A C1B C2B C3B C4B"]   
	 	# set JP2hg [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2 and not name PO4 GL1 GL2 C1A D2A C3A C4A C1B C2B C3B C4B"]   	
	 	##Find contacts between PRLR-LID1 and Lipids --hg	
	 	#set LPChg [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC and not name PO4 GL1 GL2 C1A D2A C3A C4A C1B C2B C3B C4B"] 
	 	#set LPShg [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS and not name  PO4 GL1 GL2 C1A D2A C3A C4A C1B C2B C3B C4B"]
	 	#set LP2hg [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POP2 and not name PO4 GL1 GL2 C1A D2A C3A C4A C1B C2B C3B C4B"] 	
	
	    ##Find contacts between JAK2-FERM-SH and Lipids -- tails
	 	#set JPCt [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPC and name C1A D2A C3A C4A C1B C2B C3B C4B"]  
	 	#set JPSt [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POPS and name C1A D2A C3A C4A C1B C2B C3B C4B"]   
	 	#set JP2t [atomselect top "name BB and resid 1 to 478 and pbwithin 7 of resname POP2 and name C1A D2A C3A C4A C1B C2B C3B C4B"]  	
	 	##Find contacts between PRLR-LID1 and Lipids -- tails
	 	#set LPCt [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPC and name C1A D2A C3A C4A C1B C2B C3B C4B"]
	 	#set LPSt [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POPS and name C1A D2A C3A C4A C1B C2B C3B C4B"]
	 	#set LP2t [atomselect top "name BB and resid 479 to 528 and pbwithin 7 of resname POP2 and name C1A D2A C3A C4A C1B C2B C3B C4B"]	
	
	    ##Update variables
	 	$allcont frame  $i 
		#$JPChg frame  $i 
	 	#$JPShg frame  $i 
	 	#$JP2hg frame  $i 
	 	#$LPChg frame  $i 
	  	#$LPShg frame  $i 
	 	#$LP2hg frame  $i
	    #$JPCt frame  $i
	    #$JPSt frame  $i
	    #$JP2t frame  $i
	    #$LPCt frame  $i
	    #$LPSt frame  $i
	    #$LP2t frame  $i 	
	
	    ##Print to file
		
		if {[$allcont num]>0 } {
                set b 1 
		}
        puts $out13 "$b"

	 	#puts $out1 "[$JPChg get resid]"
	 	#puts $out2 "[$JPShg get resid]"
	 	#puts $out3 "[$JP2hg get resid]"
	 	#puts $out4 "[$LPChg get resid]"
	 	#puts $out5 "[$LPShg get resid]"
	 	#puts $out6 "[$LP2hg get resid]"	
	    #puts $out7 "[$JPCt get resid]"
	 	#puts $out8 "[$JPSt get resid]"
	 	#puts $out9 "[$JP2t get resid]"
	 	#puts $out10 "[$LPCt get resid]"
	 	#puts $out11 "[$LPSt get resid]"
	 	#puts $out12 "[$LP2t get resid]"	 
		
		#$JPChg delete
		#$JPShg delete
		#$JP2hg delete
		#$LPChg delete
		#$LPShg delete
		#$LP2hg delete
		#$JPCt delete
		#$JPSt delete
		#$JP2t delete
		#$LPCt delete
		#$LPSt delete
		#$LP2t delete
		$allcont delete 
	}	
	#close $out1
	#close $out2
	#close $out3
	#close $out4
	#close $out5
	#close $out6	
	#close $out7 
	#close $out8 
	#close $out9 
	#close $out10
	#close $out11
	#close $out12
	close $out13

	mol delete all
}
quit

