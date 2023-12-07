### New Protocadherins##

#EC1-2#

##4ZPS_A#
##set as reference 2mhw_EC1 (resid 1 to 103)
#mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/2whv/2whv_ref.pdb  type pdb waitfor all

#set prot0 [atomselect 0 "protein"]
#set ref1 [atomselect 0 "protein and name CA and resid 2 to 104 and not altloc B C"]
#set ref2 [atomselect 0 "protein and name CA and resid 105 to 208 and not altloc B C"]
## Load trajectory or other cdh
#mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/4ZPS_A_prot_cal.pdb type pdb waitfor all
#set sel1 [atomselect 1 "protein and name CA and resid 2 to 104 and not altloc B C"]
#set sel2 [atomselect 1 "protein and name CA and resid 105 to 208 and not altloc B C"]
#set prot [atomselect 1 "protein"]
##display update on 
#package require Orient
#namespace import Orient::orient
#set outfile [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZPSA_2whvEC1_ref.dat w];
#set outfile2 [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZPSA_2whvEC1_ref.TA.dat w];
#set nf [molinfo top get numframes]
#$prot0 frame 0
#$prot frame 0
#$ref1 frame 0
#$ref2 frame 0
#$sel1 frame 0
#$sel2 frame 0
#set IA0 [draw principalaxes $ref1]
#set IA0v1 [lindex $IA0 0]
##puts "DEBUG1 $IA0v1"
#set IA0v2 [lindex $IA0 1]
#set IA0v3 [lindex $IA0 2]
##set IA0e1 [vecscale $IA0v1 [expr 1/[veclength $IA0v1]]]
##set IA0e2 [vecscale $IA0v2 [expr 1/[veclength $IA0v2]]]
#set IA0e3 [vecscale $IA0v3 [expr 1/[veclength $IA0v3]]]
#if {[lindex $IA0e3 0] >0} {
#set IA0v3n [vecscale [expr -1*[veclength $IA0v3]] $IA0e3]
#} else {
#set IA0v3n [vecscale [veclength $IA0v3] $IA0e3]
#}
##puts "DEBUG2 $IA0e1"
#set M0 [orient $sel1 [lindex $IA0 2] {1 0 0}]
#$prot0 move $M0 
#set IB0 [draw principalaxes $ref2]
#set IB0v1 [lindex $IB0 0]
#set IB0v2 [lindex $IB0 1]
#set IB0v3 [lindex $IB0 2]
#set IB0e3 [vecscale $IB0v3 [expr 1/[veclength $IB0v3]]]
#if {[lindex $IB0e3 0] >0} {
#set IB0v3n [vecscale -1 $IB0e3]
#} else {
#set IB0v3n [vecscale 1 $IB0e3]
#}
##set a1 [expr [vecdot $IB0v3n $IA0v1]/([veclength $IB0v3]*[veclength $IA0v1])]
##set b1 [expr [vecdot $IB0v3n $IA0v2]/([veclength $IB0v3]*[veclength $IA0v2])]
##puts "DEBUG3 $a1 $b1"
##set p1 [vecadd [vecscale [expr [veclength $IB0v3]*$a1] $IA0e1] [vecscale [expr [veclength $IB0v3]*$b1] $IA0e2] ]
##puts "DEBUG4 $p1"
#for {set i 1} {$i <= $nf} {incr i} {
#	$sel1 frame $i
#	$prot frame $i
#	$sel2 frame $i
#	$prot move [measure fit $sel1 $ref1]
#	set IA [draw principalaxes $sel1]
#	#set M [orient $sel1 [lindex $IA 2] {1 0 0}]
#	#$prot move $M 
#	set IC [draw principalaxes $sel2]
#	set ICv1 [lindex $IC 0]
#	set ICv2 [lindex $IC 1]
#	set ICv3 [lindex $IC 2]
#	set ICe3 [vecscale $ICv3 [expr 1/[veclength $ICv3]]]
##	if {[lindex $ICe3 0] >0} {
##		set ICv3n [vecscale [expr -1*[veclength $ICv3]] $ICe3]
##	} else {
##		set ICv3n [vecscale [veclength $ICv3] $ICe3]
##	}
#	if {[lindex $ICe3 0] >0 } {
#		set ICv3m [vecscale -1 $ICe3]} else {
#		set ICv3m [vecscale 1 $ICe3] }
#	set tilt [expr acos([vecdot [lindex $IA 2] $ICv3]/([veclength [lindex $IA 2]]*[veclength $ICv3]))]
#	set projection1x [lindex $ICe3 0]	
#	set projection1y [lindex $ICe3 1] 
#	set projection1z [lindex $ICe3 2]
#        set projection1xM [lindex $ICv3m 0]	
#	set projection1yM [lindex $ICv3m 1] 
#	set projection1zM [lindex $ICv3m 2]
#	#puts "DEBUG5 [expr [vecdot $p1 $p2]/([veclength $p1]*[veclength $p2])]"
#	#puts $outfile "$i $IA $IC $tilt $ICv1 $ICv2 $ICv3 $ICv3n"
#	puts $outfile2 "$i $tilt $projection1x $projection1y $projection1z $projection1xM $projection1yM $projection1zM"
#}
#close $outfile
#close $outfile2
#mol delete all


##4ZPL_A#
##set as reference 2mhw_EC1 (resid 1 to 103)
#mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/2whv/2whv_ref.pdb  type pdb waitfor all

#set prot0 [atomselect 2 "protein"]
#set ref1 [atomselect 2 "protein and name CA and resid 2 to 104 and not altloc B C"]
#set ref2 [atomselect 2 "protein and name CA and resid 105 to 208 and not altloc B C"]
## Load trajectory or other cdh
#mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/4ZPL_A_prot_cal.pdb type pdb waitfor all
#set sel1 [atomselect 3 "protein and name CA and resid 2 to 104 and not altloc B C"]
#set sel2 [atomselect 3 "protein and name CA and resid 105 to 208 and not altloc B C"]
#set prot [atomselect 3 "protein"]
##display update on 
#package require Orient
#namespace import Orient::orient
#set outfile [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZPLA_2whvEC1_ref.dat w];
#set outfile2 [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZPLA_2whvEC1_ref.TA.dat w];
#set nf [molinfo top get numframes]
#$prot0 frame 0
#$prot frame 0
#$ref1 frame 0
#$ref2 frame 0
#$sel1 frame 0
#$sel2 frame 0
#set IA0 [draw principalaxes $ref1]
#set IA0v1 [lindex $IA0 0]
##puts "DEBUG1 $IA0v1"
#set IA0v2 [lindex $IA0 1]
#set IA0v3 [lindex $IA0 2]
##set IA0e1 [vecscale $IA0v1 [expr 1/[veclength $IA0v1]]]
##set IA0e2 [vecscale $IA0v2 [expr 1/[veclength $IA0v2]]]
#set IA0e3 [vecscale $IA0v3 [expr 1/[veclength $IA0v3]]]
#if {[lindex $IA0e3 0] >0} {
#set IA0v3n [vecscale [expr -1*[veclength $IA0v3]] $IA0e3]
#} else {
#set IA0v3n [vecscale [veclength $IA0v3] $IA0e3]
#}
##puts "DEBUG2 $IA0e1"
#set M0 [orient $sel1 [lindex $IA0 2] {1 0 0}]
#$prot0 move $M0 
#set IB0 [draw principalaxes $ref2]
#set IB0v1 [lindex $IB0 0]
#set IB0v2 [lindex $IB0 1]
#set IB0v3 [lindex $IB0 2]
#set IB0e3 [vecscale $IB0v3 [expr 1/[veclength $IB0v3]]]
#if {[lindex $IB0e3 0] >0} {
#set IB0v3n [vecscale -1 $IB0e3]
#} else {
#set IB0v3n [vecscale 1 $IB0e3]
#}
##set a1 [expr [vecdot $IB0v3n $IA0v1]/([veclength $IB0v3]*[veclength $IA0v1])]
##set b1 [expr [vecdot $IB0v3n $IA0v2]/([veclength $IB0v3]*[veclength $IA0v2])]
##puts "DEBUG3 $a1 $b1"
##set p1 [vecadd [vecscale [expr [veclength $IB0v3]*$a1] $IA0e1] [vecscale [expr [veclength $IB0v3]*$b1] $IA0e2] ]
##puts "DEBUG4 $p1"
#for {set i 1} {$i <= $nf} {incr i} {
#	$sel1 frame $i
#	$prot frame $i
#	$sel2 frame $i
#	$prot move [measure fit $sel1 $ref1]
#	set IA [draw principalaxes $sel1]
#	#set M [orient $sel1 [lindex $IA 2] {1 0 0}]
#	#$prot move $M 
#	set IC [draw principalaxes $sel2]
#	set ICv1 [lindex $IC 0]
#	set ICv2 [lindex $IC 1]
#	set ICv3 [lindex $IC 2]
#	set ICe3 [vecscale $ICv3 [expr 1/[veclength $ICv3]]]
##	if {[lindex $ICe3 0] >0} {
##		set ICv3n [vecscale [expr -1*[veclength $ICv3]] $ICe3]
##	} else {
##		set ICv3n [vecscale [veclength $ICv3] $ICe3]
##	}
#	if {[lindex $ICe3 0] >0 } {
#		set ICv3m [vecscale -1 $ICe3]} else {
#		set ICv3m [vecscale 1 $ICe3] }
#	set tilt [expr acos([vecdot [lindex $IA 2] $ICv3]/([veclength [lindex $IA 2]]*[veclength $ICv3]))]
#	set projection1x [lindex $ICe3 0]	
#	set projection1y [lindex $ICe3 1] 
#	set projection1z [lindex $ICe3 2]
#        set projection1xM [lindex $ICv3m 0]	
#	set projection1yM [lindex $ICv3m 1] 
#	set projection1zM [lindex $ICv3m 2]
#	#puts "DEBUG5 [expr [vecdot $p1 $p2]/([veclength $p1]*[veclength $p2])]"
#	#puts $outfile "$i $IA $IC $tilt $ICv1 $ICv2 $ICv3 $ICv3n"
#	puts $outfile2 "$i $tilt $projection1x $projection1y $projection1z $projection1xM $projection1yM $projection1zM"
#}
#close $outfile
#close $outfile2
#mol delete all

##4ZPM_A#
##set as reference 2mhw_EC1 (resid 1 to 103)
#mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/2whv/2whv_ref.pdb  type pdb waitfor all

#set prot0 [atomselect 4 "protein"]
#set ref1 [atomselect 4 "protein and name CA and resid 2 to 104 and not altloc B C"]
#set ref2 [atomselect 4 "protein and name CA and resid 105 to 208 and not altloc B C"]
## Load trajectory or other cdh
#mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/4ZPM_A_prot_cal.pdb type pdb waitfor all
#set sel1 [atomselect 5 "protein and name CA and resid 2 to 104 and not altloc B C"]
#set sel2 [atomselect 5 "protein and name CA and resid 105 to 208 and not altloc B C"]
#set prot [atomselect 5 "protein"]
##display update on 
#package require Orient
#namespace import Orient::orient
#set outfile [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZPMA_2whvEC1_ref.dat w];
#set outfile2 [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZPMA_2whvEC1_ref.TA.dat w];
#set nf [molinfo top get numframes]
#$prot0 frame 0
#$prot frame 0
#$ref1 frame 0
#$ref2 frame 0
#$sel1 frame 0
#$sel2 frame 0
#set IA0 [draw principalaxes $ref1]
#set IA0v1 [lindex $IA0 0]
##puts "DEBUG1 $IA0v1"
#set IA0v2 [lindex $IA0 1]
#set IA0v3 [lindex $IA0 2]
##set IA0e1 [vecscale $IA0v1 [expr 1/[veclength $IA0v1]]]
##set IA0e2 [vecscale $IA0v2 [expr 1/[veclength $IA0v2]]]
#set IA0e3 [vecscale $IA0v3 [expr 1/[veclength $IA0v3]]]
#if {[lindex $IA0e3 0] >0} {
#set IA0v3n [vecscale [expr -1*[veclength $IA0v3]] $IA0e3]
#} else {
#set IA0v3n [vecscale [veclength $IA0v3] $IA0e3]
#}
##puts "DEBUG2 $IA0e1"
#set M0 [orient $sel1 [lindex $IA0 2] {1 0 0}]
#$prot0 move $M0 
#set IB0 [draw principalaxes $ref2]
#set IB0v1 [lindex $IB0 0]
#set IB0v2 [lindex $IB0 1]
#set IB0v3 [lindex $IB0 2]
#set IB0e3 [vecscale $IB0v3 [expr 1/[veclength $IB0v3]]]
#if {[lindex $IB0e3 0] >0} {
#set IB0v3n [vecscale -1 $IB0e3]
#} else {
#set IB0v3n [vecscale 1 $IB0e3]
#}
##set a1 [expr [vecdot $IB0v3n $IA0v1]/([veclength $IB0v3]*[veclength $IA0v1])]
##set b1 [expr [vecdot $IB0v3n $IA0v2]/([veclength $IB0v3]*[veclength $IA0v2])]
##puts "DEBUG3 $a1 $b1"
##set p1 [vecadd [vecscale [expr [veclength $IB0v3]*$a1] $IA0e1] [vecscale [expr [veclength $IB0v3]*$b1] $IA0e2] ]
##puts "DEBUG4 $p1"
#for {set i 1} {$i <= $nf} {incr i} {
#	$sel1 frame $i
#	$prot frame $i
#	$sel2 frame $i
#	$prot move [measure fit $sel1 $ref1]
#	set IA [draw principalaxes $sel1]
#	#set M [orient $sel1 [lindex $IA 2] {1 0 0}]
#	#$prot move $M 
#	set IC [draw principalaxes $sel2]
#	set ICv1 [lindex $IC 0]
#	set ICv2 [lindex $IC 1]
#	set ICv3 [lindex $IC 2]
#	set ICe3 [vecscale $ICv3 [expr 1/[veclength $ICv3]]]
##	if {[lindex $ICe3 0] >0} {
##		set ICv3n [vecscale [expr -1*[veclength $ICv3]] $ICe3]
##	} else {
##		set ICv3n [vecscale [veclength $ICv3] $ICe3]
##	}
#	if {[lindex $ICe3 0] >0 } {
#		set ICv3m [vecscale -1 $ICe3]} else {
#		set ICv3m [vecscale 1 $ICe3] }
#	set tilt [expr acos([vecdot [lindex $IA 2] $ICv3]/([veclength [lindex $IA 2]]*[veclength $ICv3]))]
#	set projection1x [lindex $ICe3 0]	
#	set projection1y [lindex $ICe3 1] 
#	set projection1z [lindex $ICe3 2]
#        set projection1xM [lindex $ICv3m 0]	
#	set projection1yM [lindex $ICv3m 1] 
#	set projection1zM [lindex $ICv3m 2]
#	#puts "DEBUG5 [expr [vecdot $p1 $p2]/([veclength $p1]*[veclength $p2])]"
#	#puts $outfile "$i $IA $IC $tilt $ICv1 $ICv2 $ICv3 $ICv3n"
#	puts $outfile2 "$i $tilt $projection1x $projection1y $projection1z $projection1xM $projection1yM $projection1zM"
#}
#close $outfile
#close $outfile2
#mol delete all

##4ZPN_A#
##set as reference 2mhw_EC1 (resid 1 to 103)
#mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/2whv/2whv_ref.pdb  type pdb waitfor all

#set prot0 [atomselect 6 "protein"]
#set ref1 [atomselect 6 "protein and name CA and resid 2 to 104 and not altloc B C"]
#set ref2 [atomselect 6 "protein and name CA and resid 105 to 208 and not altloc B C"]
## Load trajectory or other cdh
#mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/4ZPN_A_prot_cal.pdb type pdb waitfor all
#set sel1 [atomselect 7 "protein and name CA and resid 2 to 104 and not altloc B C"]
#set sel2 [atomselect 7 "protein and name CA and resid 105 to 208 and not altloc B C"]
#set prot [atomselect 7 "protein"]
##display update on 
#package require Orient
#namespace import Orient::orient
#set outfile [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZPNA_2whvEC1_ref.dat w];
#set outfile2 [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZPNA_2whvEC1_ref.TA.dat w];
#set nf [molinfo top get numframes]
#$prot0 frame 0
#$prot frame 0
#$ref1 frame 0
#$ref2 frame 0
#$sel1 frame 0
#$sel2 frame 0
#set IA0 [draw principalaxes $ref1]
#set IA0v1 [lindex $IA0 0]
##puts "DEBUG1 $IA0v1"
#set IA0v2 [lindex $IA0 1]
#set IA0v3 [lindex $IA0 2]
##set IA0e1 [vecscale $IA0v1 [expr 1/[veclength $IA0v1]]]
##set IA0e2 [vecscale $IA0v2 [expr 1/[veclength $IA0v2]]]
#set IA0e3 [vecscale $IA0v3 [expr 1/[veclength $IA0v3]]]
#if {[lindex $IA0e3 0] >0} {
#set IA0v3n [vecscale [expr -1*[veclength $IA0v3]] $IA0e3]
#} else {
#set IA0v3n [vecscale [veclength $IA0v3] $IA0e3]
#}
##puts "DEBUG2 $IA0e1"
#set M0 [orient $sel1 [lindex $IA0 2] {1 0 0}]
#$prot0 move $M0 
#set IB0 [draw principalaxes $ref2]
#set IB0v1 [lindex $IB0 0]
#set IB0v2 [lindex $IB0 1]
#set IB0v3 [lindex $IB0 2]
#set IB0e3 [vecscale $IB0v3 [expr 1/[veclength $IB0v3]]]
#if {[lindex $IB0e3 0] >0} {
#set IB0v3n [vecscale -1 $IB0e3]
#} else {
#set IB0v3n [vecscale 1 $IB0e3]
#}
##set a1 [expr [vecdot $IB0v3n $IA0v1]/([veclength $IB0v3]*[veclength $IA0v1])]
##set b1 [expr [vecdot $IB0v3n $IA0v2]/([veclength $IB0v3]*[veclength $IA0v2])]
##puts "DEBUG3 $a1 $b1"
##set p1 [vecadd [vecscale [expr [veclength $IB0v3]*$a1] $IA0e1] [vecscale [expr [veclength $IB0v3]*$b1] $IA0e2] ]
##puts "DEBUG4 $p1"
#for {set i 1} {$i <= $nf} {incr i} {
#	$sel1 frame $i
#	$prot frame $i
#	$sel2 frame $i
#	$prot move [measure fit $sel1 $ref1]
#	set IA [draw principalaxes $sel1]
#	#set M [orient $sel1 [lindex $IA 2] {1 0 0}]
#	#$prot move $M 
#	set IC [draw principalaxes $sel2]
#	set ICv1 [lindex $IC 0]
#	set ICv2 [lindex $IC 1]
#	set ICv3 [lindex $IC 2]
#	set ICe3 [vecscale $ICv3 [expr 1/[veclength $ICv3]]]
##	if {[lindex $ICe3 0] >0} {
##		set ICv3n [vecscale [expr -1*[veclength $ICv3]] $ICe3]
##	} else {
##		set ICv3n [vecscale [veclength $ICv3] $ICe3]
##	}
#	if {[lindex $ICe3 0] >0 } {
#		set ICv3m [vecscale -1 $ICe3]} else {
#		set ICv3m [vecscale 1 $ICe3] }
#	set tilt [expr acos([vecdot [lindex $IA 2] $ICv3]/([veclength [lindex $IA 2]]*[veclength $ICv3]))]
#	set projection1x [lindex $ICe3 0]	
#	set projection1y [lindex $ICe3 1] 
#	set projection1z [lindex $ICe3 2]
#        set projection1xM [lindex $ICv3m 0]	
#	set projection1yM [lindex $ICv3m 1] 
#	set projection1zM [lindex $ICv3m 2]
#	#puts "DEBUG5 [expr [vecdot $p1 $p2]/([veclength $p1]*[veclength $p2])]"
#	#puts $outfile "$i $IA $IC $tilt $ICv1 $ICv2 $ICv3 $ICv3n"
#	puts $outfile2 "$i $tilt $projection1x $projection1y $projection1z $projection1xM $projection1yM $projection1zM"
#}
#close $outfile
#close $outfile2
#mol delete all

##4ZPP_A#
##set as reference 2mhw_EC1 (resid 1 to 103)
#mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/2whv/2whv_ref.pdb  type pdb waitfor all

#set prot0 [atomselect 8 "protein"]
#set ref1 [atomselect 8 "protein and name CA and resid 2 to 104 and not altloc B C"]
#set ref2 [atomselect 8 "protein and name CA and resid 105 to 208 and not altloc B C"]
## Load trajectory or other cdh
#mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/4ZPP_A_prot_cal.pdb type pdb waitfor all
#set sel1 [atomselect 9 "protein and name CA and resid 2 to 104 and not altloc B C"]
#set sel2 [atomselect 9 "protein and name CA and resid 105 to 208 and not altloc B C"]
#set prot [atomselect 9 "protein"]
##display update on 
#package require Orient
#namespace import Orient::orient
#set outfile [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZPPA_2whvEC1_ref.dat w];
#set outfile2 [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZPPA_2whvEC1_ref.TA.dat w];
#set nf [molinfo top get numframes]
#$prot0 frame 0
#$prot frame 0
#$ref1 frame 0
#$ref2 frame 0
#$sel1 frame 0
#$sel2 frame 0
#set IA0 [draw principalaxes $ref1]
#set IA0v1 [lindex $IA0 0]
##puts "DEBUG1 $IA0v1"
#set IA0v2 [lindex $IA0 1]
#set IA0v3 [lindex $IA0 2]
##set IA0e1 [vecscale $IA0v1 [expr 1/[veclength $IA0v1]]]
##set IA0e2 [vecscale $IA0v2 [expr 1/[veclength $IA0v2]]]
#set IA0e3 [vecscale $IA0v3 [expr 1/[veclength $IA0v3]]]
#if {[lindex $IA0e3 0] >0} {
#set IA0v3n [vecscale [expr -1*[veclength $IA0v3]] $IA0e3]
#} else {
#set IA0v3n [vecscale [veclength $IA0v3] $IA0e3]
#}
##puts "DEBUG2 $IA0e1"
#set M0 [orient $sel1 [lindex $IA0 2] {1 0 0}]
#$prot0 move $M0 
#set IB0 [draw principalaxes $ref2]
#set IB0v1 [lindex $IB0 0]
#set IB0v2 [lindex $IB0 1]
#set IB0v3 [lindex $IB0 2]
#set IB0e3 [vecscale $IB0v3 [expr 1/[veclength $IB0v3]]]
#if {[lindex $IB0e3 0] >0} {
#set IB0v3n [vecscale -1 $IB0e3]
#} else {
#set IB0v3n [vecscale 1 $IB0e3]
#}
##set a1 [expr [vecdot $IB0v3n $IA0v1]/([veclength $IB0v3]*[veclength $IA0v1])]
##set b1 [expr [vecdot $IB0v3n $IA0v2]/([veclength $IB0v3]*[veclength $IA0v2])]
##puts "DEBUG3 $a1 $b1"
##set p1 [vecadd [vecscale [expr [veclength $IB0v3]*$a1] $IA0e1] [vecscale [expr [veclength $IB0v3]*$b1] $IA0e2] ]
##puts "DEBUG4 $p1"
#for {set i 1} {$i <= $nf} {incr i} {
#	$sel1 frame $i
#	$prot frame $i
#	$sel2 frame $i
#	$prot move [measure fit $sel1 $ref1]
#	set IA [draw principalaxes $sel1]
#	#set M [orient $sel1 [lindex $IA 2] {1 0 0}]
#	#$prot move $M 
#	set IC [draw principalaxes $sel2]
#	set ICv1 [lindex $IC 0]
#	set ICv2 [lindex $IC 1]
#	set ICv3 [lindex $IC 2]
#	set ICe3 [vecscale $ICv3 [expr 1/[veclength $ICv3]]]
##	if {[lindex $ICe3 0] >0} {
##		set ICv3n [vecscale [expr -1*[veclength $ICv3]] $ICe3]
##	} else {
##		set ICv3n [vecscale [veclength $ICv3] $ICe3]
##	}
#	if {[lindex $ICe3 0] >0 } {
#		set ICv3m [vecscale -1 $ICe3]} else {
#		set ICv3m [vecscale 1 $ICe3] }
#	set tilt [expr acos([vecdot [lindex $IA 2] $ICv3]/([veclength [lindex $IA 2]]*[veclength $ICv3]))]
#	set projection1x [lindex $ICe3 0]	
#	set projection1y [lindex $ICe3 1] 
#	set projection1z [lindex $ICe3 2]
#        set projection1xM [lindex $ICv3m 0]	
#	set projection1yM [lindex $ICv3m 1] 
#	set projection1zM [lindex $ICv3m 2]
#	#puts "DEBUG5 [expr [vecdot $p1 $p2]/([veclength $p1]*[veclength $p2])]"
#	#puts $outfile "$i $IA $IC $tilt $ICv1 $ICv2 $ICv3 $ICv3n"
#	puts $outfile2 "$i $tilt $projection1x $projection1y $projection1z $projection1xM $projection1yM $projection1zM"
#}
#close $outfile
#close $outfile2
#mol delete all

##4ZPQ_A#
##set as reference 2mhw_EC1 (resid 1 to 103)
#mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/2whv/2whv_ref.pdb  type pdb waitfor all

#set prot0 [atomselect 10 "protein"]
#set ref1 [atomselect 10 "protein and name CA and resid 2 to 104 and not altloc B C"]
#set ref2 [atomselect 10 "protein and name CA and resid 105 to 208 and not altloc B C"]
## Load trajectory or other cdh
#mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/4ZPQ_A_prot_cal.pdb type pdb waitfor all
#set sel1 [atomselect 11 "protein and name CA and resid 2 to 104 and not altloc B C"]
#set sel2 [atomselect 11 "protein and name CA and resid 105 to 208 and not altloc B C"]
#set prot [atomselect 11 "protein"]
##display update on 
#package require Orient
#namespace import Orient::orient
#set outfile [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZPQA_2whvEC1_ref.dat w];
#set outfile2 [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZPQA_2whvEC1_ref.TA.dat w];
#set nf [molinfo top get numframes]
#$prot0 frame 0
#$prot frame 0
#$ref1 frame 0
#$ref2 frame 0
#$sel1 frame 0
#$sel2 frame 0
#set IA0 [draw principalaxes $ref1]
#set IA0v1 [lindex $IA0 0]
##puts "DEBUG1 $IA0v1"
#set IA0v2 [lindex $IA0 1]
#set IA0v3 [lindex $IA0 2]
##set IA0e1 [vecscale $IA0v1 [expr 1/[veclength $IA0v1]]]
##set IA0e2 [vecscale $IA0v2 [expr 1/[veclength $IA0v2]]]
#set IA0e3 [vecscale $IA0v3 [expr 1/[veclength $IA0v3]]]
#if {[lindex $IA0e3 0] >0} {
#set IA0v3n [vecscale [expr -1*[veclength $IA0v3]] $IA0e3]
#} else {
#set IA0v3n [vecscale [veclength $IA0v3] $IA0e3]
#}
##puts "DEBUG2 $IA0e1"
#set M0 [orient $sel1 [lindex $IA0 2] {1 0 0}]
#$prot0 move $M0 
#set IB0 [draw principalaxes $ref2]
#set IB0v1 [lindex $IB0 0]
#set IB0v2 [lindex $IB0 1]
#set IB0v3 [lindex $IB0 2]
#set IB0e3 [vecscale $IB0v3 [expr 1/[veclength $IB0v3]]]
#if {[lindex $IB0e3 0] >0} {
#set IB0v3n [vecscale -1 $IB0e3]
#} else {
#set IB0v3n [vecscale 1 $IB0e3]
#}
##set a1 [expr [vecdot $IB0v3n $IA0v1]/([veclength $IB0v3]*[veclength $IA0v1])]
##set b1 [expr [vecdot $IB0v3n $IA0v2]/([veclength $IB0v3]*[veclength $IA0v2])]
##puts "DEBUG3 $a1 $b1"
##set p1 [vecadd [vecscale [expr [veclength $IB0v3]*$a1] $IA0e1] [vecscale [expr [veclength $IB0v3]*$b1] $IA0e2] ]
##puts "DEBUG4 $p1"
#for {set i 1} {$i <= $nf} {incr i} {
#	$sel1 frame $i
#	$prot frame $i
#	$sel2 frame $i
#	$prot move [measure fit $sel1 $ref1]
#	set IA [draw principalaxes $sel1]
#	#set M [orient $sel1 [lindex $IA 2] {1 0 0}]
#	#$prot move $M 
#	set IC [draw principalaxes $sel2]
#	set ICv1 [lindex $IC 0]
#	set ICv2 [lindex $IC 1]
#	set ICv3 [lindex $IC 2]
#	set ICe3 [vecscale $ICv3 [expr 1/[veclength $ICv3]]]
##	if {[lindex $ICe3 0] >0} {
##		set ICv3n [vecscale [expr -1*[veclength $ICv3]] $ICe3]
##	} else {
##		set ICv3n [vecscale [veclength $ICv3] $ICe3]
##	}
#	if {[lindex $ICe3 0] >0 } {
#		set ICv3m [vecscale -1 $ICe3]} else {
#		set ICv3m [vecscale 1 $ICe3] }
#	set tilt [expr acos([vecdot [lindex $IA 2] $ICv3]/([veclength [lindex $IA 2]]*[veclength $ICv3]))]
#	set projection1x [lindex $ICe3 0]	
#	set projection1y [lindex $ICe3 1] 
#	set projection1z [lindex $ICe3 2]
#        set projection1xM [lindex $ICv3m 0]	
#	set projection1yM [lindex $ICv3m 1] 
#	set projection1zM [lindex $ICv3m 2]
#	#puts "DEBUG5 [expr [vecdot $p1 $p2]/([veclength $p1]*[veclength $p2])]"
#	#puts $outfile "$i $IA $IC $tilt $ICv1 $ICv2 $ICv3 $ICv3n"
#	puts $outfile2 "$i $tilt $projection1x $projection1y $projection1z $projection1xM $projection1yM $projection1zM"
#}
#close $outfile
#close $outfile2
#mol delete all

##4ZPO_A#
##set as reference 2mhw_EC1 (resid 1 to 103)
#mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/2whv/2whv_ref.pdb  type pdb waitfor all

#set prot0 [atomselect 12 "protein"]
#set ref1 [atomselect 12 "protein and name CA and resid 2 to 104 and not altloc B C"]
#set ref2 [atomselect 12 "protein and name CA and resid 105 to 208 and not altloc B C"]
## Load trajectory or other cdh
#mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/4ZPO_A_prot_cal.pdb type pdb waitfor all
#set sel1 [atomselect 13 "protein and name CA and resid 2 to 104 and not altloc B C"]
#set sel2 [atomselect 13 "protein and name CA and resid 105 to 208 and not altloc B C"]
#set prot [atomselect 13 "protein"]
##display update on 
#package require Orient
#namespace import Orient::orient
#set outfile [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZPOA_2whvEC1_ref.dat w];
#set outfile2 [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZPOA_2whvEC1_ref.TA.dat w];
#set nf [molinfo top get numframes]
#$prot0 frame 0
#$prot frame 0
#$ref1 frame 0
#$ref2 frame 0
#$sel1 frame 0
#$sel2 frame 0
#set IA0 [draw principalaxes $ref1]
#set IA0v1 [lindex $IA0 0]
##puts "DEBUG1 $IA0v1"
#set IA0v2 [lindex $IA0 1]
#set IA0v3 [lindex $IA0 2]
##set IA0e1 [vecscale $IA0v1 [expr 1/[veclength $IA0v1]]]
##set IA0e2 [vecscale $IA0v2 [expr 1/[veclength $IA0v2]]]
#set IA0e3 [vecscale $IA0v3 [expr 1/[veclength $IA0v3]]]
#if {[lindex $IA0e3 0] >0} {
#set IA0v3n [vecscale [expr -1*[veclength $IA0v3]] $IA0e3]
#} else {
#set IA0v3n [vecscale [veclength $IA0v3] $IA0e3]
#}
##puts "DEBUG2 $IA0e1"
#set M0 [orient $sel1 [lindex $IA0 2] {1 0 0}]
#$prot0 move $M0 
#set IB0 [draw principalaxes $ref2]
#set IB0v1 [lindex $IB0 0]
#set IB0v2 [lindex $IB0 1]
#set IB0v3 [lindex $IB0 2]
#set IB0e3 [vecscale $IB0v3 [expr 1/[veclength $IB0v3]]]
#if {[lindex $IB0e3 0] >0} {
#set IB0v3n [vecscale -1 $IB0e3]
#} else {
#set IB0v3n [vecscale 1 $IB0e3]
#}
##set a1 [expr [vecdot $IB0v3n $IA0v1]/([veclength $IB0v3]*[veclength $IA0v1])]
##set b1 [expr [vecdot $IB0v3n $IA0v2]/([veclength $IB0v3]*[veclength $IA0v2])]
##puts "DEBUG3 $a1 $b1"
##set p1 [vecadd [vecscale [expr [veclength $IB0v3]*$a1] $IA0e1] [vecscale [expr [veclength $IB0v3]*$b1] $IA0e2] ]
##puts "DEBUG4 $p1"
#for {set i 1} {$i <= $nf} {incr i} {
#	$sel1 frame $i
#	$prot frame $i
#	$sel2 frame $i
#	$prot move [measure fit $sel1 $ref1]
#	set IA [draw principalaxes $sel1]
#	#set M [orient $sel1 [lindex $IA 2] {1 0 0}]
#	#$prot move $M 
#	set IC [draw principalaxes $sel2]
#	set ICv1 [lindex $IC 0]
#	set ICv2 [lindex $IC 1]
#	set ICv3 [lindex $IC 2]
#	set ICe3 [vecscale $ICv3 [expr 1/[veclength $ICv3]]]
##	if {[lindex $ICe3 0] >0} {
##		set ICv3n [vecscale [expr -1*[veclength $ICv3]] $ICe3]
##	} else {
##		set ICv3n [vecscale [veclength $ICv3] $ICe3]
##	}
#	if {[lindex $ICe3 0] >0 } {
#		set ICv3m [vecscale -1 $ICe3]} else {
#		set ICv3m [vecscale 1 $ICe3] }
#	set tilt [expr acos([vecdot [lindex $IA 2] $ICv3]/([veclength [lindex $IA 2]]*[veclength $ICv3]))]
#	set projection1x [lindex $ICe3 0]	
#	set projection1y [lindex $ICe3 1] 
#	set projection1z [lindex $ICe3 2]
#        set projection1xM [lindex $ICv3m 0]	
#	set projection1yM [lindex $ICv3m 1] 
#	set projection1zM [lindex $ICv3m 2]
#	#puts "DEBUG5 [expr [vecdot $p1 $p2]/([veclength $p1]*[veclength $p2])]"
#	#puts $outfile "$i $IA $IC $tilt $ICv1 $ICv2 $ICv3 $ICv3n"
#	puts $outfile2 "$i $tilt $projection1x $projection1y $projection1z $projection1xM $projection1yM $projection1zM"
#}
#close $outfile
#close $outfile2
#mol delete all

##4ZI8_A#
##set as reference 2mhw_EC1 (resid 1 to 103)
#mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/2whv/2whv_ref.pdb  type pdb waitfor all

#set prot0 [atomselect 14 "protein"]
#set ref1 [atomselect 14 "protein and name CA and resid 2 to 104 and not altloc B C"]
#set ref2 [atomselect 14 "protein and name CA and resid 105 to 208 and not altloc B C"]
## Load trajectory or other cdh
#mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/4ZI8_A_prot_cal.pdb type pdb waitfor all
#set sel1 [atomselect 15 "protein and name CA and resid 2 to 104 and not altloc B C"]
#set sel2 [atomselect 15 "protein and name CA and resid 105 to 208 and not altloc B C"]
#set prot [atomselect 15 "protein"]
##display update on 
#package require Orient
#namespace import Orient::orient
#set outfile [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZI8A_2whvEC1_ref.dat w];
#set outfile2 [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZI8A_2whvEC1_ref.TA.dat w];
#set nf [molinfo top get numframes]
#$prot0 frame 0
#$prot frame 0
#$ref1 frame 0
#$ref2 frame 0
#$sel1 frame 0
#$sel2 frame 0
#set IA0 [draw principalaxes $ref1]
#set IA0v1 [lindex $IA0 0]
##puts "DEBUG1 $IA0v1"
#set IA0v2 [lindex $IA0 1]
#set IA0v3 [lindex $IA0 2]
##set IA0e1 [vecscale $IA0v1 [expr 1/[veclength $IA0v1]]]
##set IA0e2 [vecscale $IA0v2 [expr 1/[veclength $IA0v2]]]
#set IA0e3 [vecscale $IA0v3 [expr 1/[veclength $IA0v3]]]
#if {[lindex $IA0e3 0] >0} {
#set IA0v3n [vecscale [expr -1*[veclength $IA0v3]] $IA0e3]
#} else {
#set IA0v3n [vecscale [veclength $IA0v3] $IA0e3]
#}
##puts "DEBUG2 $IA0e1"
#set M0 [orient $sel1 [lindex $IA0 2] {1 0 0}]
#$prot0 move $M0 
#set IB0 [draw principalaxes $ref2]
#set IB0v1 [lindex $IB0 0]
#set IB0v2 [lindex $IB0 1]
#set IB0v3 [lindex $IB0 2]
#set IB0e3 [vecscale $IB0v3 [expr 1/[veclength $IB0v3]]]
#if {[lindex $IB0e3 0] >0} {
#set IB0v3n [vecscale -1 $IB0e3]
#} else {
#set IB0v3n [vecscale 1 $IB0e3]
#}
##set a1 [expr [vecdot $IB0v3n $IA0v1]/([veclength $IB0v3]*[veclength $IA0v1])]
##set b1 [expr [vecdot $IB0v3n $IA0v2]/([veclength $IB0v3]*[veclength $IA0v2])]
##puts "DEBUG3 $a1 $b1"
##set p1 [vecadd [vecscale [expr [veclength $IB0v3]*$a1] $IA0e1] [vecscale [expr [veclength $IB0v3]*$b1] $IA0e2] ]
##puts "DEBUG4 $p1"
#for {set i 1} {$i <= $nf} {incr i} {
#	$sel1 frame $i
#	$prot frame $i
#	$sel2 frame $i
#	$prot move [measure fit $sel1 $ref1]
#	set IA [draw principalaxes $sel1]
#	#set M [orient $sel1 [lindex $IA 2] {1 0 0}]
#	#$prot move $M 
#	set IC [draw principalaxes $sel2]
#	set ICv1 [lindex $IC 0]
#	set ICv2 [lindex $IC 1]
#	set ICv3 [lindex $IC 2]
#	set ICe3 [vecscale $ICv3 [expr 1/[veclength $ICv3]]]
##	if {[lindex $ICe3 0] >0} {
##		set ICv3n [vecscale [expr -1*[veclength $ICv3]] $ICe3]
##	} else {
##		set ICv3n [vecscale [veclength $ICv3] $ICe3]
##	}
#	if {[lindex $ICe3 0] >0 } {
#		set ICv3m [vecscale -1 $ICe3]} else {
#		set ICv3m [vecscale 1 $ICe3] }
#	set tilt [expr acos([vecdot [lindex $IA 2] $ICv3]/([veclength [lindex $IA 2]]*[veclength $ICv3]))]
#	set projection1x [lindex $ICe3 0]	
#	set projection1y [lindex $ICe3 1] 
#	set projection1z [lindex $ICe3 2]
#        set projection1xM [lindex $ICv3m 0]	
#	set projection1yM [lindex $ICv3m 1] 
#	set projection1zM [lindex $ICv3m 2]
#	#puts "DEBUG5 [expr [vecdot $p1 $p2]/([veclength $p1]*[veclength $p2])]"
#	#puts $outfile "$i $IA $IC $tilt $ICv1 $ICv2 $ICv3 $ICv3n"
#	puts $outfile2 "$i $tilt $projection1x $projection1y $projection1z $projection1xM $projection1yM $projection1zM"
#}
#close $outfile
#close $outfile2
#mol delete all

##4ZI9_A#
##set as reference 2mhw_EC1 (resid 1 to 103)
#mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/2whv/2whv_ref.pdb  type pdb waitfor all

#set prot0 [atomselect 16 "protein"]
#set ref1 [atomselect 16 "protein and name CA and resid 2 to 104 and not altloc B C"]
#set ref2 [atomselect 16 "protein and name CA and resid 105 to 208 and not altloc B C"]
## Load trajectory or other cdh
#mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/4ZI9_A_prot_cal.pdb type pdb waitfor all
#set sel1 [atomselect 17 "protein and name CA and resid 2 to 104 and not altloc B C"]
#set sel2 [atomselect 17 "protein and name CA and resid 105 to 208 and not altloc B C"]
#set prot [atomselect 17 "protein"]
##display update on 
#package require Orient
#namespace import Orient::orient
#set outfile [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZI9_2whvEC1_ref.dat w];
#set outfile2 [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZI9_2whvEC1_ref.TA.dat w];
#set nf [molinfo top get numframes]
#$prot0 frame 0
#$prot frame 0
#$ref1 frame 0
#$ref2 frame 0
#$sel1 frame 0
#$sel2 frame 0
#set IA0 [draw principalaxes $ref1]
#set IA0v1 [lindex $IA0 0]
##puts "DEBUG1 $IA0v1"
#set IA0v2 [lindex $IA0 1]
#set IA0v3 [lindex $IA0 2]
##set IA0e1 [vecscale $IA0v1 [expr 1/[veclength $IA0v1]]]
##set IA0e2 [vecscale $IA0v2 [expr 1/[veclength $IA0v2]]]
#set IA0e3 [vecscale $IA0v3 [expr 1/[veclength $IA0v3]]]
#if {[lindex $IA0e3 0] >0} {
#set IA0v3n [vecscale [expr -1*[veclength $IA0v3]] $IA0e3]
#} else {
#set IA0v3n [vecscale [veclength $IA0v3] $IA0e3]
#}
##puts "DEBUG2 $IA0e1"
#set M0 [orient $sel1 [lindex $IA0 2] {1 0 0}]
#$prot0 move $M0 
#set IB0 [draw principalaxes $ref2]
#set IB0v1 [lindex $IB0 0]
#set IB0v2 [lindex $IB0 1]
#set IB0v3 [lindex $IB0 2]
#set IB0e3 [vecscale $IB0v3 [expr 1/[veclength $IB0v3]]]
#if {[lindex $IB0e3 0] >0} {
#set IB0v3n [vecscale -1 $IB0e3]
#} else {
#set IB0v3n [vecscale 1 $IB0e3]
#}
##set a1 [expr [vecdot $IB0v3n $IA0v1]/([veclength $IB0v3]*[veclength $IA0v1])]
##set b1 [expr [vecdot $IB0v3n $IA0v2]/([veclength $IB0v3]*[veclength $IA0v2])]
##puts "DEBUG3 $a1 $b1"
##set p1 [vecadd [vecscale [expr [veclength $IB0v3]*$a1] $IA0e1] [vecscale [expr [veclength $IB0v3]*$b1] $IA0e2] ]
##puts "DEBUG4 $p1"
#for {set i 1} {$i <= $nf} {incr i} {
#	$sel1 frame $i
#	$prot frame $i
#	$sel2 frame $i
#	$prot move [measure fit $sel1 $ref1]
#	set IA [draw principalaxes $sel1]
#	#set M [orient $sel1 [lindex $IA 2] {1 0 0}]
#	#$prot move $M 
#	set IC [draw principalaxes $sel2]
#	set ICv1 [lindex $IC 0]
#	set ICv2 [lindex $IC 1]
#	set ICv3 [lindex $IC 2]
#	set ICe3 [vecscale $ICv3 [expr 1/[veclength $ICv3]]]
##	if {[lindex $ICe3 0] >0} {
##		set ICv3n [vecscale [expr -1*[veclength $ICv3]] $ICe3]
##	} else {
##		set ICv3n [vecscale [veclength $ICv3] $ICe3]
##	}
#	if {[lindex $ICe3 0] >0 } {
#		set ICv3m [vecscale -1 $ICe3]} else {
#		set ICv3m [vecscale 1 $ICe3] }
#	set tilt [expr acos([vecdot [lindex $IA 2] $ICv3]/([veclength [lindex $IA 2]]*[veclength $ICv3]))]
#	set projection1x [lindex $ICe3 0]	
#	set projection1y [lindex $ICe3 1] 
#	set projection1z [lindex $ICe3 2]
#        set projection1xM [lindex $ICv3m 0]	
#	set projection1yM [lindex $ICv3m 1] 
#	set projection1zM [lindex $ICv3m 2]
#	#puts "DEBUG5 [expr [vecdot $p1 $p2]/([veclength $p1]*[veclength $p2])]"
#	#puts $outfile "$i $IA $IC $tilt $ICv1 $ICv2 $ICv3 $ICv3n"
#	puts $outfile2 "$i $tilt $projection1x $projection1y $projection1z $projection1xM $projection1yM $projection1zM"
#}
#close $outfile
#close $outfile2
#mol delete all

################################################################################################
#EC 2-3
#set as reference 2mhw_EC1 (resid 1 to 103)
#mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/2whv/2whv_ref.pdb  type pdb waitfor all

#set prot0 [atomselect 2 "protein"]
#set ref1 [atomselect 9 "protein and name CA and resid 7 to 107 and not altloc B C"]
#set ref2 [atomselect 2 "protein and name CA and resid 108 to 208 and not altloc B C"]
## Load trajectory or other cdh
#mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/ type pdb waitfor all

#set sel1 [atomselect 0 "protein and name CA and resid 107 to 207 and not altloc B C"]
#set sel2 [atomselect 2 "protein and name CA and resid 208 to 300 and not altloc B C"]
#set prot [atomselect 3 "protein"]
##display update on 
#package require Orient
#namespace import Orient::orient
#set outfile [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_3mvs_2whvEC1_ref.dat w];
#set outfile2 [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_3mvs_2whvEC1_ref.TA.dat w];
#set nf [molinfo top get numframes]
#$prot0 frame 0
#$prot frame 0
#$ref1 frame 0
#$ref2 frame 0
#$sel1 frame 0
#$sel2 frame 0
#set IA0 [draw principalaxes $ref1]
#set IA0v1 [lindex $IA0 0]
##puts "DEBUG1 $IA0v1"
#set IA0v2 [lindex $IA0 1]
#set IA0v3 [lindex $IA0 2]
##set IA0e1 [vecscale $IA0v1 [expr 1/[veclength $IA0v1]]]
##set IA0e2 [vecscale $IA0v2 [expr 1/[veclength $IA0v2]]]
#set IA0e3 [vecscale $IA0v3 [expr 1/[veclength $IA0v3]]]
#if {[lindex $IA0e3 0] >0} {
#set IA0v3n [vecscale [expr -1*[veclength $IA0v3]] $IA0e3]
#} else {
#set IA0v3n [vecscale [veclength $IA0v3] $IA0e3]
#}
##puts "DEBUG2 $IA0e1"
#set M0 [orient $sel1 [lindex $IA0 2] {1 0 0}]
#$prot0 move $M0 
#set IB0 [draw principalaxes $ref2]
#set IB0v1 [lindex $IB0 0]
#set IB0v2 [lindex $IB0 1]
#set IB0v3 [lindex $IB0 2]
#set IB0e3 [vecscale $IB0v3 [expr 1/[veclength $IB0v3]]]
#if {[lindex $IB0e3 0] >0} {
#set IB0v3n [vecscale -1 $IB0e3]
#} else {
#set IB0v3n [vecscale 1 $IB0e3]
#}
##set a1 [expr [vecdot $IB0v3n $IA0v1]/([veclength $IB0v3]*[veclength $IA0v1])]
##set b1 [expr [vecdot $IB0v3n $IA0v2]/([veclength $IB0v3]*[veclength $IA0v2])]
##puts "DEBUG3 $a1 $b1"
##set p1 [vecadd [vecscale [expr [veclength $IB0v3]*$a1] $IA0e1] [vecscale [expr [veclength $IB0v3]*$b1] $IA0e2] ]
##puts "DEBUG4 $p1"
#for {set i 1} {$i <= $nf} {incr i} {
#	$sel1 frame $i
#	$prot frame $i
#	$sel2 frame $i
#	$prot move [measure fit $sel1 $ref1]
#	set IA [draw principalaxes $sel1]
#	#set M [orient $sel1 [lindex $IA 2] {1 0 0}]
#	#$prot move $M 
#	set IC [draw principalaxes $sel2]
#	set ICv1 [lindex $IC 0]
#	set ICv2 [lindex $IC 1]
#	set ICv3 [lindex $IC 2]
#	set ICe3 [vecscale $ICv3 [expr 1/[veclength $ICv3]]]
##	if {[lindex $ICe3 0] >0} {
##		set ICv3n [vecscale [expr -1*[veclength $ICv3]] $ICe3]
##	} else {
##		set ICv3n [vecscale [veclength $ICv3] $ICe3]
##	}
#	if {[lindex $ICe3 0] >0 } {
#		set ICv3m [vecscale -1 $ICe3]} else {
#		set ICv3m [vecscale 1 $ICe3] }
#	set tilt [expr acos([vecdot [lindex $IA 2] $ICv3]/([veclength [lindex $IA 2]]*[veclength $ICv3]))]
#	set projection1x [lindex $ICe3 0]	
#	set projection1y [lindex $ICe3 1] 
#	set projection1z [lindex $ICe3 2]
#        set projection1xM [lindex $ICv3m 0]	
#	set projection1yM [lindex $ICv3m 1] 
#	set projection1zM [lindex $ICv3m 2]
#	#puts "DEBUG5 [expr [vecdot $p1 $p2]/([veclength $p1]*[veclength $p2])]"
#	#puts $outfile "$i $IA $IC $tilt $ICv1 $ICv2 $ICv3 $ICv3n"
#	puts $outfile2 "$i $tilt $projection1x $projection1y $projection1z $projection1xM $projection1yM $projection1zM"
#}
#close $outfile
#close $outfile2
#mol delete all

#4ZPS_A#
#set as reference 2mhw_EC1 (resid 1 to 103)
mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/2whv/2whv_ref.pdb  type pdb waitfor all

set prot0 [atomselect 0 "protein"]
set ref1 [atomselect 0 "protein and name CA and resid 7 to 107 and not altloc B C"]
set ref2 [atomselect 0 "protein and name CA and resid 108 to 208 and not altloc B C"]
# Load trajectory or other cdh
mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/4ZPS_A_prot_cal.pdb type pdb waitfor all
set sel1 [atomselect 1 "protein and name CA and resid 107 to 207 and not altloc B C"]
set sel2 [atomselect 1 "protein and name CA and resid 208 to 300 and not altloc B C"]
set prot [atomselect 1 "protein"]
#display update on 
package require Orient
namespace import Orient::orient
set outfile [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZPSA2-3_2whvEC1_ref.dat w];
set outfile2 [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZPSA2-3_2whvEC1_ref.TA.dat w];
set nf [molinfo top get numframes]
$prot0 frame 0
$prot frame 0
$ref1 frame 0
$ref2 frame 0
$sel1 frame 0
$sel2 frame 0
set IA0 [draw principalaxes $ref1]
set IA0v1 [lindex $IA0 0]
#puts "DEBUG1 $IA0v1"
set IA0v2 [lindex $IA0 1]
set IA0v3 [lindex $IA0 2]
#set IA0e1 [vecscale $IA0v1 [expr 1/[veclength $IA0v1]]]
#set IA0e2 [vecscale $IA0v2 [expr 1/[veclength $IA0v2]]]
set IA0e3 [vecscale $IA0v3 [expr 1/[veclength $IA0v3]]]
if {[lindex $IA0e3 0] >0} {
set IA0v3n [vecscale [expr -1*[veclength $IA0v3]] $IA0e3]
} else {
set IA0v3n [vecscale [veclength $IA0v3] $IA0e3]
}
#puts "DEBUG2 $IA0e1"
set M0 [orient $sel1 [lindex $IA0 2] {1 0 0}]
$prot0 move $M0 
set IB0 [draw principalaxes $ref2]
set IB0v1 [lindex $IB0 0]
set IB0v2 [lindex $IB0 1]
set IB0v3 [lindex $IB0 2]
set IB0e3 [vecscale $IB0v3 [expr 1/[veclength $IB0v3]]]
if {[lindex $IB0e3 0] >0} {
set IB0v3n [vecscale -1 $IB0e3]
} else {
set IB0v3n [vecscale 1 $IB0e3]
}
#set a1 [expr [vecdot $IB0v3n $IA0v1]/([veclength $IB0v3]*[veclength $IA0v1])]
#set b1 [expr [vecdot $IB0v3n $IA0v2]/([veclength $IB0v3]*[veclength $IA0v2])]
#puts "DEBUG3 $a1 $b1"
#set p1 [vecadd [vecscale [expr [veclength $IB0v3]*$a1] $IA0e1] [vecscale [expr [veclength $IB0v3]*$b1] $IA0e2] ]
#puts "DEBUG4 $p1"
for {set i 1} {$i <= $nf} {incr i} {
	$sel1 frame $i
	$prot frame $i
	$sel2 frame $i
	$prot move [measure fit $sel1 $ref1]
	set IA [draw principalaxes $sel1]
	#set M [orient $sel1 [lindex $IA 2] {1 0 0}]
	#$prot move $M 
	set IC [draw principalaxes $sel2]
	set ICv1 [lindex $IC 0]
	set ICv2 [lindex $IC 1]
	set ICv3 [lindex $IC 2]
	set ICe3 [vecscale $ICv3 [expr 1/[veclength $ICv3]]]
#	if {[lindex $ICe3 0] >0} {
#		set ICv3n [vecscale [expr -1*[veclength $ICv3]] $ICe3]
#	} else {
#		set ICv3n [vecscale [veclength $ICv3] $ICe3]
#	}
	if {[lindex $ICe3 0] >0 } {
		set ICv3m [vecscale -1 $ICe3]} else {
		set ICv3m [vecscale 1 $ICe3] }
	set tilt [expr acos([vecdot [lindex $IA 2] $ICv3]/([veclength [lindex $IA 2]]*[veclength $ICv3]))]
	set projection1x [lindex $ICe3 0]	
	set projection1y [lindex $ICe3 1] 
	set projection1z [lindex $ICe3 2]
        set projection1xM [lindex $ICv3m 0]	
	set projection1yM [lindex $ICv3m 1] 
	set projection1zM [lindex $ICv3m 2]
	#puts "DEBUG5 [expr [vecdot $p1 $p2]/([veclength $p1]*[veclength $p2])]"
	#puts $outfile "$i $IA $IC $tilt $ICv1 $ICv2 $ICv3 $ICv3n"
	puts $outfile2 "$i $tilt $projection1x $projection1y $projection1z $projection1xM $projection1yM $projection1zM"
}
close $outfile
close $outfile2
mol delete all


#4ZPL_A#
#set as reference 2mhw_EC1 (resid 1 to 103)
mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/2whv/2whv_ref.pdb  type pdb waitfor all

set prot0 [atomselect 2 "protein"]
set ref1 [atomselect 2 "protein and name CA and resid 7 to 107 and not altloc B C"]
set ref2 [atomselect 2 "protein and name CA and resid 108 to 208 and not altloc B C"]
# Load trajectory or other cdh
mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/4ZPL_A_prot_cal.pdb type pdb waitfor all
set sel1 [atomselect 3 "protein and name CA and resid 107 to 207 and not altloc B C"]
set sel2 [atomselect 3 "protein and name CA and resid 208 to 300 and not altloc B C"]
set prot [atomselect 3 "protein"]
#display update on 
package require Orient
namespace import Orient::orient
set outfile [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZPLA2-3_2whvEC1_ref.dat w];
set outfile2 [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZPLA2-3_2whvEC1_ref.TA.dat w];
set nf [molinfo top get numframes]
$prot0 frame 0
$prot frame 0
$ref1 frame 0
$ref2 frame 0
$sel1 frame 0
$sel2 frame 0
set IA0 [draw principalaxes $ref1]
set IA0v1 [lindex $IA0 0]
#puts "DEBUG1 $IA0v1"
set IA0v2 [lindex $IA0 1]
set IA0v3 [lindex $IA0 2]
#set IA0e1 [vecscale $IA0v1 [expr 1/[veclength $IA0v1]]]
#set IA0e2 [vecscale $IA0v2 [expr 1/[veclength $IA0v2]]]
set IA0e3 [vecscale $IA0v3 [expr 1/[veclength $IA0v3]]]
if {[lindex $IA0e3 0] >0} {
set IA0v3n [vecscale [expr -1*[veclength $IA0v3]] $IA0e3]
} else {
set IA0v3n [vecscale [veclength $IA0v3] $IA0e3]
}
#puts "DEBUG2 $IA0e1"
set M0 [orient $sel1 [lindex $IA0 2] {1 0 0}]
$prot0 move $M0 
set IB0 [draw principalaxes $ref2]
set IB0v1 [lindex $IB0 0]
set IB0v2 [lindex $IB0 1]
set IB0v3 [lindex $IB0 2]
set IB0e3 [vecscale $IB0v3 [expr 1/[veclength $IB0v3]]]
if {[lindex $IB0e3 0] >0} {
set IB0v3n [vecscale -1 $IB0e3]
} else {
set IB0v3n [vecscale 1 $IB0e3]
}
#set a1 [expr [vecdot $IB0v3n $IA0v1]/([veclength $IB0v3]*[veclength $IA0v1])]
#set b1 [expr [vecdot $IB0v3n $IA0v2]/([veclength $IB0v3]*[veclength $IA0v2])]
#puts "DEBUG3 $a1 $b1"
#set p1 [vecadd [vecscale [expr [veclength $IB0v3]*$a1] $IA0e1] [vecscale [expr [veclength $IB0v3]*$b1] $IA0e2] ]
#puts "DEBUG4 $p1"
for {set i 1} {$i <= $nf} {incr i} {
	$sel1 frame $i
	$prot frame $i
	$sel2 frame $i
	$prot move [measure fit $sel1 $ref1]
	set IA [draw principalaxes $sel1]
	#set M [orient $sel1 [lindex $IA 2] {1 0 0}]
	#$prot move $M 
	set IC [draw principalaxes $sel2]
	set ICv1 [lindex $IC 0]
	set ICv2 [lindex $IC 1]
	set ICv3 [lindex $IC 2]
	set ICe3 [vecscale $ICv3 [expr 1/[veclength $ICv3]]]
#	if {[lindex $ICe3 0] >0} {
#		set ICv3n [vecscale [expr -1*[veclength $ICv3]] $ICe3]
#	} else {
#		set ICv3n [vecscale [veclength $ICv3] $ICe3]
#	}
	if {[lindex $ICe3 0] >0 } {
		set ICv3m [vecscale -1 $ICe3]} else {
		set ICv3m [vecscale 1 $ICe3] }
	set tilt [expr acos([vecdot [lindex $IA 2] $ICv3]/([veclength [lindex $IA 2]]*[veclength $ICv3]))]
	set projection1x [lindex $ICe3 0]	
	set projection1y [lindex $ICe3 1] 
	set projection1z [lindex $ICe3 2]
        set projection1xM [lindex $ICv3m 0]	
	set projection1yM [lindex $ICv3m 1] 
	set projection1zM [lindex $ICv3m 2]
	#puts "DEBUG5 [expr [vecdot $p1 $p2]/([veclength $p1]*[veclength $p2])]"
	#puts $outfile "$i $IA $IC $tilt $ICv1 $ICv2 $ICv3 $ICv3n"
	puts $outfile2 "$i $tilt $projection1x $projection1y $projection1z $projection1xM $projection1yM $projection1zM"
}
close $outfile
close $outfile2
mol delete all

#4ZPM_A#
#set as reference 2mhw_EC1 (resid 1 to 103)
mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/2whv/2whv_ref.pdb  type pdb waitfor all

set prot0 [atomselect 4 "protein"]
set ref1 [atomselect 4 "protein and name CA and resid 7 to 107 and not altloc B C"]
set ref2 [atomselect 4 "protein and name CA and resid 108 to 208 and not altloc B C"]
# Load trajectory or other cdh
mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/4ZPM_A_prot_cal.pdb type pdb waitfor all
set sel1 [atomselect 5 "protein and name CA and resid 107 to 207 and not altloc B C"]
set sel2 [atomselect 5 "protein and name CA and resid 208 to 300 and not altloc B C"]
set prot [atomselect 5 "protein"]
#display update on 
package require Orient
namespace import Orient::orient
set outfile [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZPMA2-3_2whvEC1_ref.dat w];
set outfile2 [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZPMA2-3_2whvEC1_ref.TA.dat w];
set nf [molinfo top get numframes]
$prot0 frame 0
$prot frame 0
$ref1 frame 0
$ref2 frame 0
$sel1 frame 0
$sel2 frame 0
set IA0 [draw principalaxes $ref1]
set IA0v1 [lindex $IA0 0]
#puts "DEBUG1 $IA0v1"
set IA0v2 [lindex $IA0 1]
set IA0v3 [lindex $IA0 2]
#set IA0e1 [vecscale $IA0v1 [expr 1/[veclength $IA0v1]]]
#set IA0e2 [vecscale $IA0v2 [expr 1/[veclength $IA0v2]]]
set IA0e3 [vecscale $IA0v3 [expr 1/[veclength $IA0v3]]]
if {[lindex $IA0e3 0] >0} {
set IA0v3n [vecscale [expr -1*[veclength $IA0v3]] $IA0e3]
} else {
set IA0v3n [vecscale [veclength $IA0v3] $IA0e3]
}
#puts "DEBUG2 $IA0e1"
set M0 [orient $sel1 [lindex $IA0 2] {1 0 0}]
$prot0 move $M0 
set IB0 [draw principalaxes $ref2]
set IB0v1 [lindex $IB0 0]
set IB0v2 [lindex $IB0 1]
set IB0v3 [lindex $IB0 2]
set IB0e3 [vecscale $IB0v3 [expr 1/[veclength $IB0v3]]]
if {[lindex $IB0e3 0] >0} {
set IB0v3n [vecscale -1 $IB0e3]
} else {
set IB0v3n [vecscale 1 $IB0e3]
}
#set a1 [expr [vecdot $IB0v3n $IA0v1]/([veclength $IB0v3]*[veclength $IA0v1])]
#set b1 [expr [vecdot $IB0v3n $IA0v2]/([veclength $IB0v3]*[veclength $IA0v2])]
#puts "DEBUG3 $a1 $b1"
#set p1 [vecadd [vecscale [expr [veclength $IB0v3]*$a1] $IA0e1] [vecscale [expr [veclength $IB0v3]*$b1] $IA0e2] ]
#puts "DEBUG4 $p1"
for {set i 1} {$i <= $nf} {incr i} {
	$sel1 frame $i
	$prot frame $i
	$sel2 frame $i
	$prot move [measure fit $sel1 $ref1]
	set IA [draw principalaxes $sel1]
	#set M [orient $sel1 [lindex $IA 2] {1 0 0}]
	#$prot move $M 
	set IC [draw principalaxes $sel2]
	set ICv1 [lindex $IC 0]
	set ICv2 [lindex $IC 1]
	set ICv3 [lindex $IC 2]
	set ICe3 [vecscale $ICv3 [expr 1/[veclength $ICv3]]]
#	if {[lindex $ICe3 0] >0} {
#		set ICv3n [vecscale [expr -1*[veclength $ICv3]] $ICe3]
#	} else {
#		set ICv3n [vecscale [veclength $ICv3] $ICe3]
#	}
	if {[lindex $ICe3 0] >0 } {
		set ICv3m [vecscale -1 $ICe3]} else {
		set ICv3m [vecscale 1 $ICe3] }
	set tilt [expr acos([vecdot [lindex $IA 2] $ICv3]/([veclength [lindex $IA 2]]*[veclength $ICv3]))]
	set projection1x [lindex $ICe3 0]	
	set projection1y [lindex $ICe3 1] 
	set projection1z [lindex $ICe3 2]
        set projection1xM [lindex $ICv3m 0]	
	set projection1yM [lindex $ICv3m 1] 
	set projection1zM [lindex $ICv3m 2]
	#puts "DEBUG5 [expr [vecdot $p1 $p2]/([veclength $p1]*[veclength $p2])]"
	#puts $outfile "$i $IA $IC $tilt $ICv1 $ICv2 $ICv3 $ICv3n"
	puts $outfile2 "$i $tilt $projection1x $projection1y $projection1z $projection1xM $projection1yM $projection1zM"
}
close $outfile
close $outfile2
mol delete all

#4ZPN_A#
#set as reference 2mhw_EC1 (resid 1 to 103)
mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/2whv/2whv_ref.pdb  type pdb waitfor all

set prot0 [atomselect 6 "protein"]
set ref1 [atomselect 6 "protein and name CA and resid 7 to 107 and not altloc B C"]
set ref2 [atomselect 6 "protein and name CA and resid 108 to 208 and not altloc B C"]
# Load trajectory or other cdh
mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/4ZPN_A_prot_cal.pdb type pdb waitfor all
set sel1 [atomselect 7 "protein and name CA and resid 107 to 207 and not altloc B C"]
set sel2 [atomselect 7 "protein and name CA and resid 208 to 300 and not altloc B C"]
set prot [atomselect 7 "protein"]
#display update on 
package require Orient
namespace import Orient::orient
set outfile [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZPNA2-3_2whvEC1_ref.dat w];
set outfile2 [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZPNA2-3_2whvEC1_ref.TA.dat w];
set nf [molinfo top get numframes]
$prot0 frame 0
$prot frame 0
$ref1 frame 0
$ref2 frame 0
$sel1 frame 0
$sel2 frame 0
set IA0 [draw principalaxes $ref1]
set IA0v1 [lindex $IA0 0]
#puts "DEBUG1 $IA0v1"
set IA0v2 [lindex $IA0 1]
set IA0v3 [lindex $IA0 2]
#set IA0e1 [vecscale $IA0v1 [expr 1/[veclength $IA0v1]]]
#set IA0e2 [vecscale $IA0v2 [expr 1/[veclength $IA0v2]]]
set IA0e3 [vecscale $IA0v3 [expr 1/[veclength $IA0v3]]]
if {[lindex $IA0e3 0] >0} {
set IA0v3n [vecscale [expr -1*[veclength $IA0v3]] $IA0e3]
} else {
set IA0v3n [vecscale [veclength $IA0v3] $IA0e3]
}
#puts "DEBUG2 $IA0e1"
set M0 [orient $sel1 [lindex $IA0 2] {1 0 0}]
$prot0 move $M0 
set IB0 [draw principalaxes $ref2]
set IB0v1 [lindex $IB0 0]
set IB0v2 [lindex $IB0 1]
set IB0v3 [lindex $IB0 2]
set IB0e3 [vecscale $IB0v3 [expr 1/[veclength $IB0v3]]]
if {[lindex $IB0e3 0] >0} {
set IB0v3n [vecscale -1 $IB0e3]
} else {
set IB0v3n [vecscale 1 $IB0e3]
}
#set a1 [expr [vecdot $IB0v3n $IA0v1]/([veclength $IB0v3]*[veclength $IA0v1])]
#set b1 [expr [vecdot $IB0v3n $IA0v2]/([veclength $IB0v3]*[veclength $IA0v2])]
#puts "DEBUG3 $a1 $b1"
#set p1 [vecadd [vecscale [expr [veclength $IB0v3]*$a1] $IA0e1] [vecscale [expr [veclength $IB0v3]*$b1] $IA0e2] ]
#puts "DEBUG4 $p1"
for {set i 1} {$i <= $nf} {incr i} {
	$sel1 frame $i
	$prot frame $i
	$sel2 frame $i
	$prot move [measure fit $sel1 $ref1]
	set IA [draw principalaxes $sel1]
	#set M [orient $sel1 [lindex $IA 2] {1 0 0}]
	#$prot move $M 
	set IC [draw principalaxes $sel2]
	set ICv1 [lindex $IC 0]
	set ICv2 [lindex $IC 1]
	set ICv3 [lindex $IC 2]
	set ICe3 [vecscale $ICv3 [expr 1/[veclength $ICv3]]]
#	if {[lindex $ICe3 0] >0} {
#		set ICv3n [vecscale [expr -1*[veclength $ICv3]] $ICe3]
#	} else {
#		set ICv3n [vecscale [veclength $ICv3] $ICe3]
#	}
	if {[lindex $ICe3 0] >0 } {
		set ICv3m [vecscale -1 $ICe3]} else {
		set ICv3m [vecscale 1 $ICe3] }
	set tilt [expr acos([vecdot [lindex $IA 2] $ICv3]/([veclength [lindex $IA 2]]*[veclength $ICv3]))]
	set projection1x [lindex $ICe3 0]	
	set projection1y [lindex $ICe3 1] 
	set projection1z [lindex $ICe3 2]
        set projection1xM [lindex $ICv3m 0]	
	set projection1yM [lindex $ICv3m 1] 
	set projection1zM [lindex $ICv3m 2]
	#puts "DEBUG5 [expr [vecdot $p1 $p2]/([veclength $p1]*[veclength $p2])]"
	#puts $outfile "$i $IA $IC $tilt $ICv1 $ICv2 $ICv3 $ICv3n"
	puts $outfile2 "$i $tilt $projection1x $projection1y $projection1z $projection1xM $projection1yM $projection1zM"
}
close $outfile
close $outfile2
mol delete all

#4ZPP_A#
#set as reference 2mhw_EC1 (resid 1 to 103)
mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/2whv/2whv_ref.pdb  type pdb waitfor all

set prot0 [atomselect 8 "protein"]
set ref1 [atomselect 8 "protein and name CA and resid 7 to 107 and not altloc B C"]
set ref2 [atomselect 8 "protein and name CA and resid 108 to 208 and not altloc B C"]
# Load trajectory or other cdh
mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/4ZPP_A_prot_cal.pdb type pdb waitfor all
set sel1 [atomselect 9 "protein and name CA and resid 107 to 207 and not altloc B C"]
set sel2 [atomselect 9 "protein and name CA and resid 208 to 300 and not altloc B C"]
set prot [atomselect 9 "protein"]
#display update on 
package require Orient
namespace import Orient::orient
set outfile [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZPPA2-3_2whvEC1_ref.dat w];
set outfile2 [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZPPA2-3_2whvEC1_ref.TA.dat w];
set nf [molinfo top get numframes]
$prot0 frame 0
$prot frame 0
$ref1 frame 0
$ref2 frame 0
$sel1 frame 0
$sel2 frame 0
set IA0 [draw principalaxes $ref1]
set IA0v1 [lindex $IA0 0]
#puts "DEBUG1 $IA0v1"
set IA0v2 [lindex $IA0 1]
set IA0v3 [lindex $IA0 2]
#set IA0e1 [vecscale $IA0v1 [expr 1/[veclength $IA0v1]]]
#set IA0e2 [vecscale $IA0v2 [expr 1/[veclength $IA0v2]]]
set IA0e3 [vecscale $IA0v3 [expr 1/[veclength $IA0v3]]]
if {[lindex $IA0e3 0] >0} {
set IA0v3n [vecscale [expr -1*[veclength $IA0v3]] $IA0e3]
} else {
set IA0v3n [vecscale [veclength $IA0v3] $IA0e3]
}
#puts "DEBUG2 $IA0e1"
set M0 [orient $sel1 [lindex $IA0 2] {1 0 0}]
$prot0 move $M0 
set IB0 [draw principalaxes $ref2]
set IB0v1 [lindex $IB0 0]
set IB0v2 [lindex $IB0 1]
set IB0v3 [lindex $IB0 2]
set IB0e3 [vecscale $IB0v3 [expr 1/[veclength $IB0v3]]]
if {[lindex $IB0e3 0] >0} {
set IB0v3n [vecscale -1 $IB0e3]
} else {
set IB0v3n [vecscale 1 $IB0e3]
}
#set a1 [expr [vecdot $IB0v3n $IA0v1]/([veclength $IB0v3]*[veclength $IA0v1])]
#set b1 [expr [vecdot $IB0v3n $IA0v2]/([veclength $IB0v3]*[veclength $IA0v2])]
#puts "DEBUG3 $a1 $b1"
#set p1 [vecadd [vecscale [expr [veclength $IB0v3]*$a1] $IA0e1] [vecscale [expr [veclength $IB0v3]*$b1] $IA0e2] ]
#puts "DEBUG4 $p1"
for {set i 1} {$i <= $nf} {incr i} {
	$sel1 frame $i
	$prot frame $i
	$sel2 frame $i
	$prot move [measure fit $sel1 $ref1]
	set IA [draw principalaxes $sel1]
	#set M [orient $sel1 [lindex $IA 2] {1 0 0}]
	#$prot move $M 
	set IC [draw principalaxes $sel2]
	set ICv1 [lindex $IC 0]
	set ICv2 [lindex $IC 1]
	set ICv3 [lindex $IC 2]
	set ICe3 [vecscale $ICv3 [expr 1/[veclength $ICv3]]]
#	if {[lindex $ICe3 0] >0} {
#		set ICv3n [vecscale [expr -1*[veclength $ICv3]] $ICe3]
#	} else {
#		set ICv3n [vecscale [veclength $ICv3] $ICe3]
#	}
	if {[lindex $ICe3 0] >0 } {
		set ICv3m [vecscale -1 $ICe3]} else {
		set ICv3m [vecscale 1 $ICe3] }
	set tilt [expr acos([vecdot [lindex $IA 2] $ICv3]/([veclength [lindex $IA 2]]*[veclength $ICv3]))]
	set projection1x [lindex $ICe3 0]	
	set projection1y [lindex $ICe3 1] 
	set projection1z [lindex $ICe3 2]
        set projection1xM [lindex $ICv3m 0]	
	set projection1yM [lindex $ICv3m 1] 
	set projection1zM [lindex $ICv3m 2]
	#puts "DEBUG5 [expr [vecdot $p1 $p2]/([veclength $p1]*[veclength $p2])]"
	#puts $outfile "$i $IA $IC $tilt $ICv1 $ICv2 $ICv3 $ICv3n"
	puts $outfile2 "$i $tilt $projection1x $projection1y $projection1z $projection1xM $projection1yM $projection1zM"
}
close $outfile
close $outfile2
mol delete all

#4ZPQ_A#
#set as reference 2mhw_EC1 (resid 1 to 103)
mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/2whv/2whv_ref.pdb  type pdb waitfor all

set prot0 [atomselect 10 "protein"]
set ref1 [atomselect 10 "protein and name CA and resid 7 to 107 and not altloc B C"]
set ref2 [atomselect 10 "protein and name CA and resid 108 to 208 and not altloc B C"]
# Load trajectory or other cdh
mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/4ZPQ_A_prot_cal.pdb type pdb waitfor all
set sel1 [atomselect 11 "protein and name CA and resid 107 to 207 and not altloc B C"]
set sel2 [atomselect 11 "protein and name CA and resid 208 to 300 and not altloc B C"]
set prot [atomselect 11 "protein"]
#display update on 
package require Orient
namespace import Orient::orient
set outfile [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZPQA2-3_2whvEC1_ref.dat w];
set outfile2 [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZPQA2-3_2whvEC1_ref.TA.dat w];
set nf [molinfo top get numframes]
$prot0 frame 0
$prot frame 0
$ref1 frame 0
$ref2 frame 0
$sel1 frame 0
$sel2 frame 0
set IA0 [draw principalaxes $ref1]
set IA0v1 [lindex $IA0 0]
#puts "DEBUG1 $IA0v1"
set IA0v2 [lindex $IA0 1]
set IA0v3 [lindex $IA0 2]
#set IA0e1 [vecscale $IA0v1 [expr 1/[veclength $IA0v1]]]
#set IA0e2 [vecscale $IA0v2 [expr 1/[veclength $IA0v2]]]
set IA0e3 [vecscale $IA0v3 [expr 1/[veclength $IA0v3]]]
if {[lindex $IA0e3 0] >0} {
set IA0v3n [vecscale [expr -1*[veclength $IA0v3]] $IA0e3]
} else {
set IA0v3n [vecscale [veclength $IA0v3] $IA0e3]
}
#puts "DEBUG2 $IA0e1"
set M0 [orient $sel1 [lindex $IA0 2] {1 0 0}]
$prot0 move $M0 
set IB0 [draw principalaxes $ref2]
set IB0v1 [lindex $IB0 0]
set IB0v2 [lindex $IB0 1]
set IB0v3 [lindex $IB0 2]
set IB0e3 [vecscale $IB0v3 [expr 1/[veclength $IB0v3]]]
if {[lindex $IB0e3 0] >0} {
set IB0v3n [vecscale -1 $IB0e3]
} else {
set IB0v3n [vecscale 1 $IB0e3]
}
#set a1 [expr [vecdot $IB0v3n $IA0v1]/([veclength $IB0v3]*[veclength $IA0v1])]
#set b1 [expr [vecdot $IB0v3n $IA0v2]/([veclength $IB0v3]*[veclength $IA0v2])]
#puts "DEBUG3 $a1 $b1"
#set p1 [vecadd [vecscale [expr [veclength $IB0v3]*$a1] $IA0e1] [vecscale [expr [veclength $IB0v3]*$b1] $IA0e2] ]
#puts "DEBUG4 $p1"
for {set i 1} {$i <= $nf} {incr i} {
	$sel1 frame $i
	$prot frame $i
	$sel2 frame $i
	$prot move [measure fit $sel1 $ref1]
	set IA [draw principalaxes $sel1]
	#set M [orient $sel1 [lindex $IA 2] {1 0 0}]
	#$prot move $M 
	set IC [draw principalaxes $sel2]
	set ICv1 [lindex $IC 0]
	set ICv2 [lindex $IC 1]
	set ICv3 [lindex $IC 2]
	set ICe3 [vecscale $ICv3 [expr 1/[veclength $ICv3]]]
#	if {[lindex $ICe3 0] >0} {
#		set ICv3n [vecscale [expr -1*[veclength $ICv3]] $ICe3]
#	} else {
#		set ICv3n [vecscale [veclength $ICv3] $ICe3]
#	}
	if {[lindex $ICe3 0] >0 } {
		set ICv3m [vecscale -1 $ICe3]} else {
		set ICv3m [vecscale 1 $ICe3] }
	set tilt [expr acos([vecdot [lindex $IA 2] $ICv3]/([veclength [lindex $IA 2]]*[veclength $ICv3]))]
	set projection1x [lindex $ICe3 0]	
	set projection1y [lindex $ICe3 1] 
	set projection1z [lindex $ICe3 2]
        set projection1xM [lindex $ICv3m 0]	
	set projection1yM [lindex $ICv3m 1] 
	set projection1zM [lindex $ICv3m 2]
	#puts "DEBUG5 [expr [vecdot $p1 $p2]/([veclength $p1]*[veclength $p2])]"
	#puts $outfile "$i $IA $IC $tilt $ICv1 $ICv2 $ICv3 $ICv3n"
	puts $outfile2 "$i $tilt $projection1x $projection1y $projection1z $projection1xM $projection1yM $projection1zM"
}
close $outfile
close $outfile2
mol delete all

#4ZPO_A#
#set as reference 2mhw_EC1 (resid 1 to 103)
mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/2whv/2whv_ref.pdb  type pdb waitfor all

set prot0 [atomselect 12 "protein"]
set ref1 [atomselect 12 "protein and name CA and resid 7 to 107 and not altloc B C"]
set ref2 [atomselect 12 "protein and name CA and resid 108 to 208 and not altloc B C"]
# Load trajectory or other cdh
mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/4ZPO_A_prot_cal.pdb type pdb waitfor all
set sel1 [atomselect 13 "protein and name CA and resid 107 to 207 and not altloc B C"]
set sel2 [atomselect 13 "protein and name CA and resid 208 to 300 and not altloc B C"]
set prot [atomselect 13 "protein"]
#display update on 
package require Orient
namespace import Orient::orient
set outfile [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZPOA2-3_2whvEC1_ref.dat w];
set outfile2 [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZPOA2-3_2whvEC1_ref.TA.dat w];
set nf [molinfo top get numframes]
$prot0 frame 0
$prot frame 0
$ref1 frame 0
$ref2 frame 0
$sel1 frame 0
$sel2 frame 0
set IA0 [draw principalaxes $ref1]
set IA0v1 [lindex $IA0 0]
#puts "DEBUG1 $IA0v1"
set IA0v2 [lindex $IA0 1]
set IA0v3 [lindex $IA0 2]
#set IA0e1 [vecscale $IA0v1 [expr 1/[veclength $IA0v1]]]
#set IA0e2 [vecscale $IA0v2 [expr 1/[veclength $IA0v2]]]
set IA0e3 [vecscale $IA0v3 [expr 1/[veclength $IA0v3]]]
if {[lindex $IA0e3 0] >0} {
set IA0v3n [vecscale [expr -1*[veclength $IA0v3]] $IA0e3]
} else {
set IA0v3n [vecscale [veclength $IA0v3] $IA0e3]
}
#puts "DEBUG2 $IA0e1"
set M0 [orient $sel1 [lindex $IA0 2] {1 0 0}]
$prot0 move $M0 
set IB0 [draw principalaxes $ref2]
set IB0v1 [lindex $IB0 0]
set IB0v2 [lindex $IB0 1]
set IB0v3 [lindex $IB0 2]
set IB0e3 [vecscale $IB0v3 [expr 1/[veclength $IB0v3]]]
if {[lindex $IB0e3 0] >0} {
set IB0v3n [vecscale -1 $IB0e3]
} else {
set IB0v3n [vecscale 1 $IB0e3]
}
#set a1 [expr [vecdot $IB0v3n $IA0v1]/([veclength $IB0v3]*[veclength $IA0v1])]
#set b1 [expr [vecdot $IB0v3n $IA0v2]/([veclength $IB0v3]*[veclength $IA0v2])]
#puts "DEBUG3 $a1 $b1"
#set p1 [vecadd [vecscale [expr [veclength $IB0v3]*$a1] $IA0e1] [vecscale [expr [veclength $IB0v3]*$b1] $IA0e2] ]
#puts "DEBUG4 $p1"
for {set i 1} {$i <= $nf} {incr i} {
	$sel1 frame $i
	$prot frame $i
	$sel2 frame $i
	$prot move [measure fit $sel1 $ref1]
	set IA [draw principalaxes $sel1]
	#set M [orient $sel1 [lindex $IA 2] {1 0 0}]
	#$prot move $M 
	set IC [draw principalaxes $sel2]
	set ICv1 [lindex $IC 0]
	set ICv2 [lindex $IC 1]
	set ICv3 [lindex $IC 2]
	set ICe3 [vecscale $ICv3 [expr 1/[veclength $ICv3]]]
#	if {[lindex $ICe3 0] >0} {
#		set ICv3n [vecscale [expr -1*[veclength $ICv3]] $ICe3]
#	} else {
#		set ICv3n [vecscale [veclength $ICv3] $ICe3]
#	}
	if {[lindex $ICe3 0] >0 } {
		set ICv3m [vecscale -1 $ICe3]} else {
		set ICv3m [vecscale 1 $ICe3] }
	set tilt [expr acos([vecdot [lindex $IA 2] $ICv3]/([veclength [lindex $IA 2]]*[veclength $ICv3]))]
	set projection1x [lindex $ICe3 0]	
	set projection1y [lindex $ICe3 1] 
	set projection1z [lindex $ICe3 2]
        set projection1xM [lindex $ICv3m 0]	
	set projection1yM [lindex $ICv3m 1] 
	set projection1zM [lindex $ICv3m 2]
	#puts "DEBUG5 [expr [vecdot $p1 $p2]/([veclength $p1]*[veclength $p2])]"
	#puts $outfile "$i $IA $IC $tilt $ICv1 $ICv2 $ICv3 $ICv3n"
	puts $outfile2 "$i $tilt $projection1x $projection1y $projection1z $projection1xM $projection1yM $projection1zM"
}
close $outfile
close $outfile2
mol delete all

#4ZI8_A#
#set as reference 2mhw_EC1 (resid 1 to 103)
mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/2whv/2whv_ref.pdb  type pdb waitfor all

set prot0 [atomselect 14 "protein"]
set ref1 [atomselect 14 "protein and name CA and resid 7 to 107 and not altloc B C"]
set ref2 [atomselect 14 "protein and name CA and resid 108 to 208 and not altloc B C"]
# Load trajectory or other cdh
mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/4ZI8_A_prot_cal.pdb type pdb waitfor all
set sel1 [atomselect 15 "protein and name CA and resid 107 to 207 and not altloc B C"]
set sel2 [atomselect 15 "protein and name CA and resid 208 to 300 and not altloc B C"]
set prot [atomselect 15 "protein"]
#display update on 
package require Orient
namespace import Orient::orient
set outfile [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZI8A2-3_2whvEC1_ref.dat w];
set outfile2 [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZI8A2-3_2whvEC1_ref.TA.dat w];
set nf [molinfo top get numframes]
$prot0 frame 0
$prot frame 0
$ref1 frame 0
$ref2 frame 0
$sel1 frame 0
$sel2 frame 0
set IA0 [draw principalaxes $ref1]
set IA0v1 [lindex $IA0 0]
#puts "DEBUG1 $IA0v1"
set IA0v2 [lindex $IA0 1]
set IA0v3 [lindex $IA0 2]
#set IA0e1 [vecscale $IA0v1 [expr 1/[veclength $IA0v1]]]
#set IA0e2 [vecscale $IA0v2 [expr 1/[veclength $IA0v2]]]
set IA0e3 [vecscale $IA0v3 [expr 1/[veclength $IA0v3]]]
if {[lindex $IA0e3 0] >0} {
set IA0v3n [vecscale [expr -1*[veclength $IA0v3]] $IA0e3]
} else {
set IA0v3n [vecscale [veclength $IA0v3] $IA0e3]
}
#puts "DEBUG2 $IA0e1"
set M0 [orient $sel1 [lindex $IA0 2] {1 0 0}]
$prot0 move $M0 
set IB0 [draw principalaxes $ref2]
set IB0v1 [lindex $IB0 0]
set IB0v2 [lindex $IB0 1]
set IB0v3 [lindex $IB0 2]
set IB0e3 [vecscale $IB0v3 [expr 1/[veclength $IB0v3]]]
if {[lindex $IB0e3 0] >0} {
set IB0v3n [vecscale -1 $IB0e3]
} else {
set IB0v3n [vecscale 1 $IB0e3]
}
#set a1 [expr [vecdot $IB0v3n $IA0v1]/([veclength $IB0v3]*[veclength $IA0v1])]
#set b1 [expr [vecdot $IB0v3n $IA0v2]/([veclength $IB0v3]*[veclength $IA0v2])]
#puts "DEBUG3 $a1 $b1"
#set p1 [vecadd [vecscale [expr [veclength $IB0v3]*$a1] $IA0e1] [vecscale [expr [veclength $IB0v3]*$b1] $IA0e2] ]
#puts "DEBUG4 $p1"
for {set i 1} {$i <= $nf} {incr i} {
	$sel1 frame $i
	$prot frame $i
	$sel2 frame $i
	$prot move [measure fit $sel1 $ref1]
	set IA [draw principalaxes $sel1]
	#set M [orient $sel1 [lindex $IA 2] {1 0 0}]
	#$prot move $M 
	set IC [draw principalaxes $sel2]
	set ICv1 [lindex $IC 0]
	set ICv2 [lindex $IC 1]
	set ICv3 [lindex $IC 2]
	set ICe3 [vecscale $ICv3 [expr 1/[veclength $ICv3]]]
#	if {[lindex $ICe3 0] >0} {
#		set ICv3n [vecscale [expr -1*[veclength $ICv3]] $ICe3]
#	} else {
#		set ICv3n [vecscale [veclength $ICv3] $ICe3]
#	}
	if {[lindex $ICe3 0] >0 } {
		set ICv3m [vecscale -1 $ICe3]} else {
		set ICv3m [vecscale 1 $ICe3] }
	set tilt [expr acos([vecdot [lindex $IA 2] $ICv3]/([veclength [lindex $IA 2]]*[veclength $ICv3]))]
	set projection1x [lindex $ICe3 0]	
	set projection1y [lindex $ICe3 1] 
	set projection1z [lindex $ICe3 2]
        set projection1xM [lindex $ICv3m 0]	
	set projection1yM [lindex $ICv3m 1] 
	set projection1zM [lindex $ICv3m 2]
	#puts "DEBUG5 [expr [vecdot $p1 $p2]/([veclength $p1]*[veclength $p2])]"
	#puts $outfile "$i $IA $IC $tilt $ICv1 $ICv2 $ICv3 $ICv3n"
	puts $outfile2 "$i $tilt $projection1x $projection1y $projection1z $projection1xM $projection1yM $projection1zM"
}
close $outfile
close $outfile2
mol delete all

#4ZI9_A#
#set as reference 2mhw_EC1 (resid 1 to 103)
mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/2whv/2whv_ref.pdb  type pdb waitfor all

set prot0 [atomselect 16 "protein"]
set ref1 [atomselect 16 "protein and name CA and resid 7 to 107 and not altloc B C"]
set ref2 [atomselect 16 "protein and name CA and resid 108 to 208 and not altloc B C"]
# Load trajectory or other cdh
mol new /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/struct_comp/4ZI9_A_prot_cal.pdb type pdb waitfor all
set sel1 [atomselect 17 "protein and name CA and resid 107 to 207 and not altloc B C"]
set sel2 [atomselect 17 "protein and name CA and resid 208 to 300 and not altloc B C"]
set prot [atomselect 17 "protein"]
#display update on 
package require Orient
namespace import Orient::orient
set outfile [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZI92-3_2whvEC1_ref.dat w];
set outfile2 [open /export/home/arayasecchi.1/labhome3/projects/results/hspcdh15_EC810_MD/dats/tilt/paxes_4ZI92-3_2whvEC1_ref.TA.dat w];
set nf [molinfo top get numframes]
$prot0 frame 0
$prot frame 0
$ref1 frame 0
$ref2 frame 0
$sel1 frame 0
$sel2 frame 0
set IA0 [draw principalaxes $ref1]
set IA0v1 [lindex $IA0 0]
#puts "DEBUG1 $IA0v1"
set IA0v2 [lindex $IA0 1]
set IA0v3 [lindex $IA0 2]
#set IA0e1 [vecscale $IA0v1 [expr 1/[veclength $IA0v1]]]
#set IA0e2 [vecscale $IA0v2 [expr 1/[veclength $IA0v2]]]
set IA0e3 [vecscale $IA0v3 [expr 1/[veclength $IA0v3]]]
if {[lindex $IA0e3 0] >0} {
set IA0v3n [vecscale [expr -1*[veclength $IA0v3]] $IA0e3]
} else {
set IA0v3n [vecscale [veclength $IA0v3] $IA0e3]
}
#puts "DEBUG2 $IA0e1"
set M0 [orient $sel1 [lindex $IA0 2] {1 0 0}]
$prot0 move $M0 
set IB0 [draw principalaxes $ref2]
set IB0v1 [lindex $IB0 0]
set IB0v2 [lindex $IB0 1]
set IB0v3 [lindex $IB0 2]
set IB0e3 [vecscale $IB0v3 [expr 1/[veclength $IB0v3]]]
if {[lindex $IB0e3 0] >0} {
set IB0v3n [vecscale -1 $IB0e3]
} else {
set IB0v3n [vecscale 1 $IB0e3]
}
#set a1 [expr [vecdot $IB0v3n $IA0v1]/([veclength $IB0v3]*[veclength $IA0v1])]
#set b1 [expr [vecdot $IB0v3n $IA0v2]/([veclength $IB0v3]*[veclength $IA0v2])]
#puts "DEBUG3 $a1 $b1"
#set p1 [vecadd [vecscale [expr [veclength $IB0v3]*$a1] $IA0e1] [vecscale [expr [veclength $IB0v3]*$b1] $IA0e2] ]
#puts "DEBUG4 $p1"
for {set i 1} {$i <= $nf} {incr i} {
	$sel1 frame $i
	$prot frame $i
	$sel2 frame $i
	$prot move [measure fit $sel1 $ref1]
	set IA [draw principalaxes $sel1]
	#set M [orient $sel1 [lindex $IA 2] {1 0 0}]
	#$prot move $M 
	set IC [draw principalaxes $sel2]
	set ICv1 [lindex $IC 0]
	set ICv2 [lindex $IC 1]
	set ICv3 [lindex $IC 2]
	set ICe3 [vecscale $ICv3 [expr 1/[veclength $ICv3]]]
#	if {[lindex $ICe3 0] >0} {
#		set ICv3n [vecscale [expr -1*[veclength $ICv3]] $ICe3]
#	} else {
#		set ICv3n [vecscale [veclength $ICv3] $ICe3]
#	}
	if {[lindex $ICe3 0] >0 } {
		set ICv3m [vecscale -1 $ICe3]} else {
		set ICv3m [vecscale 1 $ICe3] }
	set tilt [expr acos([vecdot [lindex $IA 2] $ICv3]/([veclength [lindex $IA 2]]*[veclength $ICv3]))]
	set projection1x [lindex $ICe3 0]	
	set projection1y [lindex $ICe3 1] 
	set projection1z [lindex $ICe3 2]
        set projection1xM [lindex $ICv3m 0]	
	set projection1yM [lindex $ICv3m 1] 
	set projection1zM [lindex $ICv3m 2]
	#puts "DEBUG5 [expr [vecdot $p1 $p2]/([veclength $p1]*[veclength $p2])]"
	#puts $outfile "$i $IA $IC $tilt $ICv1 $ICv2 $ICv3 $ICv3n"
	puts $outfile2 "$i $tilt $projection1x $projection1y $projection1z $projection1xM $projection1yM $projection1zM"
}
close $outfile
close $outfile2
mol delete all

