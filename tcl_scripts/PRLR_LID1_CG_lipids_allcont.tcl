set gro "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_811/pws10/r2/step6.6_equilibration_m3pw10_PLTMD.gro"
set xtc "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_811/pws10/r2/PRLR_LID1_PCPSPIP2_811_m3pws10_r2_10us_1ns_PLpbcctmd.xtc"
set output_name "PRLR_LID1_PCPSPI2_811_cgm3pws10_r2" 
set out13 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/PLC/Aug2020/allcont_$output_name.dat w]

mol new $gro
mol addfile $xtc waitfor all

set nfpcps [molinfo top get numframes]

for {set i 0} {$i <= $nfpcps} {incr i} {
    set b 0
	# set BB - any lip-bead contact for freq. contact time est.
    set allcont [atomselect top "name BB and pbwithin 7 of resname POPC POPS POP2"]
    $allcont frame  $i 
    if {[$allcont num]>0 } {
            set b 1 
	}
    puts $out13 "$b"
    $allcont delete
}
close $out13
mol delete all 

set gro "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/PRLR_LID1_PCPSPIP2_955_s6.6_m3pws10_PLpbcctmd.gro"
set xtc "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/PRLR_LID1_PCPSPIP2_955_1ns_10us_m3pws10_PLpbcctmd.xtc"
set output_name "PRLR_LID1_PCPSPI2_955_cgm3pws10_10us" 
set out13 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/PLC/Aug2020/allcont_$output_name.dat w]

mol new $gro
mol addfile $xtc waitfor all

set nfpcps [molinfo top get numframes]

for {set i 0} {$i <= $nfpcps} {incr i} {
    set b 0
	# set BB - any lip-bead contact for freq. contact time est.
    set allcont [atomselect top "name BB and pbwithin 7 of resname POPC POPS POP2"]
    $allcont frame  $i 
    if {[$allcont num]>0 } {
            set b 1 
	}
    puts $out13 "$b"
    $allcont delete 
}
close $out13
mol delete all 

set gro "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPS/pws10/PRLR_LID1_PCPS_m3pws10_s6.6_PLpbcctmd.gro"
set xtc "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPS/pws10/PRLR_LID1_PCPS_m3pws10_10us_1ns_PLpbcctmd.xtc"                                                                                                                          
set output_name "PRLR_LID1_PCPS_cgm3pws10_10us" 
set out13 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/PLC/Aug2020/allcont_$output_name.dat w]

mol new $gro
mol addfile $xtc waitfor all

set nfpcps [molinfo top get numframes]

for {set i 0} {$i <= $nfpcps} {incr i} {
    set b 0
	# set BB - any lip-bead contact for freq. contact time est.
    set allcont [atomselect top "name BB and pbwithin 7 of resname POPC POPS POP2"]
    $allcont frame  $i 
    if {[$allcont num]>0 } {
            set b 1 
	}
    puts $out13 "$b"
    $allcont delete 
}   
close $out13
mol delete all 

set gro "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PC/pws10/PRLR_LID1_PC_m3pws10_s6.6_PL_pbcc.gro"
set xtc "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PC/pws10/PRLR_LID1_PC_m3pws10_11us_1ns_PL_pbcc.xtc"                                                                                                                          
set output_name "PRLR_LID1_PC_cg_m3pws10" 
set out13 [open /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/PLC/Aug2020/allcont_$output_name.dat w]

mol new $gro
mol addfile $xtc waitfor all

set nfpcps [molinfo top get numframes]

	for {set i 0} {$i <= $nfpcps} {incr i} {
	    set b 0
		# set BB - any lip-bead contact for freq. contact time est.
        set allcont [atomselect top "name BB and pbwithin 7 of resname POPC POPS POP2"]
        $allcont frame  $i 
        if {[$allcont num]>0 } {
                set b 1 
		}
        puts $out13 "$b"
        $allcont delete 
    }
close $out13
mol delete all 

quit