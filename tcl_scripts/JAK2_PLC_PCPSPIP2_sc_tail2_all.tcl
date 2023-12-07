# mol new /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/JAK_FERM_noLID_PCPSPIP2_C3_S1_PL_wrapped_F0.pdb
# mol addfile /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/JAK_FERM_noLID_PCPSPIP2_C3_S1_PL_wrapped.dcd waitfor all 

# set outputname "JAK_FERM_noLID_PCPSPIP2_C3_S1"

# set out1  [open /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/JPC_$outputname.dat w]
# set out2  [open /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/JPS_$outputname.dat w]
# set out3  [open /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/JP2_$outputname.dat w]
# set out13 [open /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/allcont_$outputname.dat w]

# 	set nfpcps [molinfo top get numframes]

# 	for {set i 0} {$i <= $nfpcps} {incr i} {
# 	    set b 0
# 		# set BB - any lip-bead contact for freq. contact time est.
#         set allcont [atomselect top "name BB and within 7 of resname POPC POPS POP2" frame $i]

# 		##Find contacts between JAK2-FERM-SH and Lipids -- HG
# 	 	set JPC [atomselect top "name BB and resid 1 to 478 and within 7 of resname POPC " frame $i]   
# 	 	set JPS [atomselect top "name BB and resid 1 to 478 and within 7 of resname POPS " frame $i]   
# 	 	set JP2 [atomselect top "name BB and resid 1 to 478 and within 7 of resname POP2 " frame $i]   	
# 	 	##Find contacts between PRLR-LID1 and Lipids --	
	 	
	
# 	    ##Print to file
		
# 		if {[$allcont num]>0 } {
#                 set b 1 
# 		}
#         puts $out13 "$b"

# 	 	puts $out1 "[$JPC get resid]"
# 	 	puts $out2 "[$JPS get resid]"
# 	 	puts $out3 "[$JP2 get resid]"
	 	
	    
# 		$JPC delete
# 		$JPS delete
# 		$JP2 delete
		
		
# 		$allcont delete 
# }	
# close $out1
# close $out2
# close $out3
# close $out13
# mol delete all

# ##############################################
# mol new /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/JAK_FERM_noLID_PCPSPIP2_C9_SX_PL_wrapped_F0.pdb
# mol addfile /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/JAK_FERM_noLID_PCPSPIP2_C9_SX_PL_wrapped.dcd waitfor all 

# set outputname "JAK_FERM_noLID_PCPSPIP2_C9_SX"

# set out1  [open /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/JPC_$outputname.dat w]
# set out2  [open /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/JPS_$outputname.dat w]
# set out3  [open /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/JP2_$outputname.dat w]
# set out13 [open /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/allcont_$outputname.dat w]

# set nfpcps [molinfo top get numframes]

# 	for {set i 0} {$i <= $nfpcps} {incr i} {
# 	    set b 0
# 		# set BB - any lip-bead contact for freq. contact time est.
#         set allcont [atomselect top "name BB and within 7 of resname POPC POPS POP2" frame $i]

# 		##Find contacts between JAK2-FERM-SH and Lipids -- 
# 	 	set JPC [atomselect top "name BB and resid 1 to 478 and within 7 of resname POPC " frame $i]   
# 	 	set JPS [atomselect top "name BB and resid 1 to 478 and within 7 of resname POPS " frame $i]   
# 	 	set JP2 [atomselect top "name BB and resid 1 to 478 and within 7 of resname POP2 " frame $i]   	
	
# 	    ##Print to file
		
# 		if {[$allcont num]>0 } {
#                 set b 1 
# 		}
        
#         puts $out13 "$b"
#         puts $out1 "[$JPC get resid]"
# 	 	puts $out2 "[$JPS get resid]"
# 	 	puts $out3 "[$JP2 get resid]"
	 	
# 		$JPC delete
# 		$JPS delete
# 		$JP2 delete
		
# 		$allcont delete 
# }	
# close $out1
# close $out2
# close $out3

# close $out13
# mol delete all

# ###################################

# mol new /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/JAK_FERM_noLID_PCPSPIP2_C11_SX_PL_wrapped_F0.pdb
# mol addfile /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/JAK_FERM_noLID_PCPSPIP2_C11_SX_PL_wrapped.dcd waitfor all 

# set outputname "JAK_FERM_noLID_PCPSPIP2_C11_SX"

# set out1  [open /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/JPC_$outputname.dat w]
# set out2  [open /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/JPS_$outputname.dat w]
# set out3  [open /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/JP2_$outputname.dat w]
# set out13 [open /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/allcont_$outputname.dat w]

# 	set nfpcps [molinfo top get numframes]

# 	for {set i 0} {$i <= $nfpcps} {incr i} {
# 	    set b 0
# 		# set BB - any lip-bead contact for freq. contact time est.
#         set allcont [atomselect top "name BB and within 7 of resname POPC POPS POP2" frame $i]

# 		##Find contacts between JAK2-FERM-SH and Lipids -- HG
# 	 	set JPC [atomselect top "name BB and resid 1 to 478 and within 7 of resname POPC " frame $i]   
# 	 	set JPS [atomselect top "name BB and resid 1 to 478 and within 7 of resname POPS " frame $i]   
# 	 	set JP2 [atomselect top "name BB and resid 1 to 478 and within 7 of resname POP2 " frame $i]   	
# 	 	##Find contacts between PRLR-LID1 and Lipids --	
# 	 	set LPC [atomselect top "name BB and resid 479 to 528 and within 7 of resname POPC " frame $i] 
# 	 	set LPS [atomselect top "name BB and resid 479 to 528 and within 7 of resname POPS " frame $i]
# 	 	set LP2 [atomselect top "name BB and resid 479 to 528 and within 7 of resname POP2 " frame $i] 	
	
# 	    ##Print to file
		
# 		if {[$allcont num]>0 } {
#                 set b 1 
# 		}
#         puts $out13 "$b"

# 	 	puts $out1 "[$JPC get resid]"
# 	 	puts $out2 "[$JPS get resid]"
# 	 	puts $out3 "[$JP2 get resid]"
	 	
# 		$JPC delete
# 		$JPS delete
# 		$JP2 delete
		
# 		$allcont delete 
# 	}	
# close $out1
# close $out2
# close $out3
# close $out13
# mol delete all


## C9 and C1

## C9
###################################3

# mol new /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/C9/JAK_FERM_noLID_PCPSPIP2_C9_S2plus_PL_wrapped_F0.pdb
# mol addfile /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/C9/JAK_FERM_noLID_PCPSPIP2_C9_S2plus_PL_wrapped.dcd waitfor all 

# set outputname "JAK_FERM_noLID_PCPSPIP2_C9_S2_plus"

# set out1  [open /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/JPC_$outputname.dat w]
# set out2  [open /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/JPS_$outputname.dat w]
# set out3  [open /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/JP2_$outputname.dat w]
# set out13 [open /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/allcont_$outputname.dat w]

# 	set nfpcps [molinfo top get numframes]

# 	for {set i 0} {$i <= $nfpcps} {incr i} {
# 	    set b 0
# 		# set BB - any lip-bead contact for freq. contact time est.
#         set allcont [atomselect top "name BB and within 7 of resname POPC POPS POP2" frame $i]

# 		##Find contacts between JAK2-FERM-SH and Lipids -- HG
# 	 	set JPC [atomselect top "name BB and resid 1 to 478 and within 7 of resname POPC " frame $i]   
# 	 	set JPS [atomselect top "name BB and resid 1 to 478 and within 7 of resname POPS " frame $i]   
# 	 	set JP2 [atomselect top "name BB and resid 1 to 478 and within 7 of resname POP2 " frame $i]   	
# 	 	##Find contacts between PRLR-LID1 and Lipids --	
# 	 	set LPC [atomselect top "name BB and resid 479 to 528 and within 7 of resname POPC " frame $i] 
# 	 	set LPS [atomselect top "name BB and resid 479 to 528 and within 7 of resname POPS " frame $i]
# 	 	set LP2 [atomselect top "name BB and resid 479 to 528 and within 7 of resname POP2 " frame $i] 	
	
# 	    ##Print to file
		
# 		if {[$allcont num]>0 } {
#                 set b 1 
# 		}
#         puts $out13 "$b"

# 	 	puts $out1 "[$JPC get resid]"
# 	 	puts $out2 "[$JPS get resid]"
# 	 	puts $out3 "[$JP2 get resid]"
	 	
# 		$JPC delete
# 		$JPS delete
# 		$JP2 delete
		
# 		$allcont delete 
# 	}	
# close $out1
# close $out2
# close $out3
# close $out13
# mol delete all

## C1
###################################3

# mol new /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/JAK_FERM_noLID_PCPSPIP2_C1_S2_PL_wrapped_F0.pdb
# mol addfile /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/JAK_FERM_noLID_PCPSPIP2_C1_S2_PL_wrapped.dcd waitfor all 

# set outputname "JAK_FERM_noLID_PCPSPIP2_C1_S2"

# set out1  [open /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/JPC_$outputname.dat w]
# set out2  [open /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/JPS_$outputname.dat w]
# set out3  [open /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/JP2_$outputname.dat w]
# set out13 [open /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/allcont_$outputname.dat w]

# 	set nfpcps [molinfo top get numframes]

# 	for {set i 0} {$i <= $nfpcps} {incr i} {
# 	    set b 0
# 		# set BB - any lip-bead contact for freq. contact time est.
#         set allcont [atomselect top "name BB and within 7 of resname POPC POPS POP2" frame $i]

# 		##Find contacts between JAK2-FERM-SH and Lipids -- HG
# 	 	set JPC [atomselect top "name BB and resid 1 to 478 and within 7 of resname POPC " frame $i]   
# 	 	set JPS [atomselect top "name BB and resid 1 to 478 and within 7 of resname POPS " frame $i]   
# 	 	set JP2 [atomselect top "name BB and resid 1 to 478 and within 7 of resname POP2 " frame $i]   	
# 	 	##Find contacts between PRLR-LID1 and Lipids --	
# 	 	set LPC [atomselect top "name BB and resid 479 to 528 and within 7 of resname POPC " frame $i] 
# 	 	set LPS [atomselect top "name BB and resid 479 to 528 and within 7 of resname POPS " frame $i]
# 	 	set LP2 [atomselect top "name BB and resid 479 to 528 and within 7 of resname POP2 " frame $i] 	
	
# 	    ##Print to file
		
# 		if {[$allcont num]>0 } {
#                 set b 1 
# 		}
#         puts $out13 "$b"

# 	 	puts $out1 "[$JPC get resid]"
# 	 	puts $out2 "[$JPS get resid]"
# 	 	puts $out3 "[$JP2 get resid]"
	 	
# 		$JPC delete
# 		$JPS delete
# 		$JP2 delete
		
# 		$allcont delete 
# 	}	
# close $out1
# close $out2
# close $out3
# close $out13
# mol delete all

#C6 ##
########################
mol new /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/C6/JAK2-fermsh2_C6_PCPSPIP2wbfi_run_wrap_F0_PL.pdb
mol addfile /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/C6/JAK2-fermsh2_C6_PCPSPIP2wbfi_run_wrap_PL.dcd waitfor all 

set outputname "JAK_FERM_noLID_PCPSPIP2_C6_S3"

set out1  [open /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/JPC_$outputname.dat w]
set out2  [open /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/JPS_$outputname.dat w]
set out3  [open /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/JP2_$outputname.dat w]
set out13 [open /home/raul/projects/PRLR_MS_2022/JAK2_CGM2_PCPSPIP2/allcont_$outputname.dat w]

	set nfpcps [molinfo top get numframes]

	for {set i 0} {$i <= $nfpcps} {incr i} {
	    set b 0
		# set BB - any lip-bead contact for freq. contact time est.
        set allcont [atomselect top "name BB and within 7 of resname POPC POPS POP2" frame $i]

		##Find contacts between JAK2-FERM-SH and Lipids -- HG
	 	set JPC [atomselect top "name BB and resid 1 to 478 and within 7 of resname POPC " frame $i]   
	 	set JPS [atomselect top "name BB and resid 1 to 478 and within 7 of resname POPS " frame $i]   
	 	set JP2 [atomselect top "name BB and resid 1 to 478 and within 7 of resname POP2 " frame $i]   	
	 	##Find contacts between PRLR-LID1 and Lipids --	
	 	set LPC [atomselect top "name BB and resid 479 to 528 and within 7 of resname POPC " frame $i] 
	 	set LPS [atomselect top "name BB and resid 479 to 528 and within 7 of resname POPS " frame $i]
	 	set LP2 [atomselect top "name BB and resid 479 to 528 and within 7 of resname POP2 " frame $i] 	
	
	    ##Print to file
		
		if {[$allcont num]>0 } {
                set b 1 
		}
        puts $out13 "$b"

	 	puts $out1 "[$JPC get resid]"
	 	puts $out2 "[$JPS get resid]"
	 	puts $out3 "[$JP2 get resid]"
	 	
		$JPC delete
		$JPS delete
		$JP2 delete
		
		$allcont delete 
	}	
close $out1
close $out2
close $out3
close $out13
mol delete all

quit

