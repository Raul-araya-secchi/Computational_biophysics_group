# ########################################################
# ##  Measure tilt/twist/skew for two adjacent domains  ##
# ##  Author: Avinash Jaiganesh
# ##  Modified for trajectories by Raul Araya-Secchi    ##
# ##  Date: 11/7/2016 -- 01/31/2017                     ##
# ##  Version:1.1                                       ##
# ########################################################

# ## R1
# mol new     step6.6_equilibration_PLpbcc.gro
# mol addfile TFecdtmaa_wSSb_CL_PCPS_s7_1us_100ps_pbcmcp_PL_wof200ns_fitXY.xtc step 2 waitfor all
# set prot [atomselect top "protein and resid 1 to 242"]
# set prot_CA [atomselect top "protein and resid 1 to 242 and name CA"]
# set ref_TMD [atomselect top "protein and name CA and resid 218 to 242"] ;#TMD
# set aln1ca [atomselect top "protein protein and resid 218 to 242 and name CA"] ;#TMDref
# set aln1 [atomselect top "protein protein and resid 218 to 242"] ;#TMD
# #set ref2 [atomselect top "protein and name CA and resid 1 to 217"] ;#ECDs
# set ref2 [atomselect top "protein and name CA and resid 107 to 210"] ;#TFC
# set ref1 [atomselect top "protein and name CA and resid 218 to 242"] ;#TMD
# set outfile [open TF_TFC_TMD_titl_skew_R1_wof200ns_200ps.dat w]

# ########################################################
# package require Orient
# namespace import Orient::orient
# set nf [molinfo top get numframes]
# #Center the protein COM on the origin and then align the PAs of the TMD to XYZ respectivelly.
# $prot frame 0
# $ref_TMD frame 0
# $prot moveby [vecscale [measure center $prot weight mass] -1]
# set I [draw principalaxes $ref_TMD]
# set A [orient $ref_TMD [lindex $I 0] {1 0 0}]
# $prot move $A
# set I [draw principalaxes $ref_TMD]
# set A [orient $ref_TMD [lindex $I 1] {0 1 0}]
# $prot move $A
# set I [draw principalaxes $ref_TMD]
# set A [orient $ref_TMD [lindex $I 2] {0 0 1}]
# $prot move $A
# set I [draw principalaxes $ref_TMD]

# for {set i 0} {$i <= $nf} {incr i} {

# #Align the protein such that the TMD is  parallell to the Z axis.#
# 	$aln1 frame $i
#     $ref1 frame $i
# 	$ref2 frame $i
# 	$prot frame $i
#     $ref_TMD frame 0
# 	set M [measure fit $ref1 $ref_TMD]
#     $prot move $M
# 	set I [draw principalaxes $ref1]
# 	#The following is to obtain unit vectors of each principalaxis for selection "ref1: V1xcap, V1ycap and V1zcap"#
#     set V1 [draw principalaxes $ref1]
#     set V1x [lindex $V1 0]
# 	set V1y [lindex $V1 1]
# 	set V1z [lindex $V1 2]
#  	#if {[lindex $V1x 0] <0 } {
#  	#set V1x [vecscale -1 [lindex $V1 0]]} else {
# 	#set V1x [vecscale 1 [lindex $V1 0]]}
# 	#if {[lindex $V1y 1] <0} {
#  	#set V1y [vecscale -1 [lindex $V1 1]]} else {
# 	#set V1y [vecscale 1 [lindex $V1 1]]}
# 	#if {[lindex $V1z 2] <0} {
#  	#set V1z [vecscale -1 [lindex $V1 2]]} else {
#  	#set V1z [vecscale 1 [lindex $V1 2]]}
#  	#puts "debug: V1x= $V1x V1y= $V1y V1z= $V1z"
#  	#The following is to obtain unit vectors of each principalaxis for selection "ref2: V2xcap, V2ycap and V2zcap#
# 	set V2 [draw principalaxes $ref2]
# 	set V2x [lindex $V2 0]
# 	set V2y [lindex $V2 1]
# 	set V2z [lindex $V2 2]
#  	#if {[lindex $V2x 0] <0} {
#  	#set V2x [vecscale -1 [lindex $V2 0]]} else {
# 	#set V2x [vecscale 1 [lindex $V2 0]]}
# 	#if {[lindex $V2y 0] >0} {
#  	#set V2y [vecscale -1 [lindex $V2 1]]} else {
# 	#set V2y [vecscale 1 [lindex $V2 1]]}
#  	if {[lindex $V2z 2] <0} {
#  	set V2z [vecscale -1 [lindex $V2 2]]} else {
#  	set V2z [vecscale 1 [lindex $V2 2]]}
#  	#puts "debug: V2x= $V2x V2y= $V2y V2z= $V2z"
# 	 #following is to calculate tilt#
# 	#calculate angles in degrees by multiplying acos by 57.2958#
# 	#set vectilt [vecdot $V1z $V2z]
# 	set vectilt [vecdot {0 0 1} $V2z]
#     set tilt [expr 57.2958*acos($vectilt)]
#  	#puts "debug: vectilt= $vectilt; tilt= $tilt"
# 	#following is to calculate skew#
# 	set pV2z "[lindex $V2z 0] [lindex $V2z 1] 0"
# 	set pV2zn [vecscale $pV2z [expr 1/[veclength $pV2z]]]
# 	set skew [expr 57.2958*acos([vecdot $V1x $pV2zn]/([veclength $V1x]*[veclength $pV2zn]))]
# 	#if {$skew > 90} {
#  	#set skew [expr 180-(57.2958*acos([vecdot $V1x $pV2zn]/([veclength $V1x]*[veclength $pV2zn])))]} else {
# 	#set skew [expr 57.2958*acos([vecdot $V1x $pV2zn]/([veclength $V1x]*[veclength $pV2zn]))]}
# 	#puts "debug: Pv2z= $pV2z; pV2zn= $pV2zn; skew= $skew"
# 	#following is to calculate twist#
# 	#set VZcross [veccross $V2z $V1z]
# 	set VZcross [veccross $V2z {0 0 1}]
# 	set VZcrossn [vecscale $VZcross [expr 1/[veclength $VZcross]]]
# 	#puts "debug: VZcross= $VZcross VZcrosscap= $VZcrosscap vectwist1= $vectwist1 vectwist2= $vectwist2"
# 	set twist1 [expr 57.2958*acos([vecdot $V1x $VZcrossn]/([veclength $V1x]*[veclength $VZcrossn]))]
# 	set twist2 [expr 57.2958*acos([vecdot $V2x $VZcrossn]/([veclength $V2x]*[veclength $VZcrossn]))]
# 	set twista [expr $twist2 + $twist1]
#     set twistb [expr $twist2 - $twist1]
# 	#if {$twista < 180} {
#  	#set twista [expr 360-($twist2 + $twist1)]} else {
# 	#set twista [expr $twist2 + $twist1]}
#  	#output into file: Projection in X,Y; tilt angle (degrees), skew angle (degrees), twist angle (degrees)#
# 	puts $outfile "$i pZ= $pV2z tilt= $tilt skew= $skew twist1 = $twista twist2 = $twistb"
# 	#puts "debug $V2z pZ = $pV2z;	tilt= $tilt;skew= $skew;twist = $twista $twistb; twist1= $twist1; twist2= $twist2"
# 	}
# close $outfile
# mol delete all

# ## R2
# mol new     CLpcpsAA_r2_1us_100ps_PL_pbcmctmd_s6.0.gro
# mol addfile CLpcpsAA_r2_1us_100ps_PL_pbcmctmd_fitXY.xtc first 1999 step 2 waitfor all

# set prot [atomselect top "protein and resid 1 to 242"]
# set prot_CA [atomselect top "protein and resid 1 to 242 and name CA"]
# set ref_TMD [atomselect top "protein and name CA and resid 218 to 242"] ;#TMD
# set aln1ca [atomselect top "protein protein and resid 218 to 242 and name CA"] ;#TMDref
# set aln1 [atomselect top "protein protein and resid 218 to 242"] ;#TMD
# #set ref2 [atomselect top "protein and name CA and resid 1 to 217"] ;#ECDs
# set ref2 [atomselect top "protein and name CA and resid 107 to 210"] ;#TFC
# set ref1 [atomselect top "protein and name CA and resid 218 to 242"] ;#TMD
# set outfile [open TF_TFC_TMD_titl_skew_R2wof200ns_200ps.dat w]

# ########################################################
# package require Orient
# namespace import Orient::orient
# set nf [molinfo top get numframes]
# #Center the protein COM on the origin and then align the PAs of the TMD to XYZ respectivelly.
# $prot frame 0
# $ref_TMD frame 0
# $prot moveby [vecscale [measure center $prot weight mass] -1]
# set I [draw principalaxes $ref_TMD]
# set A [orient $ref_TMD [lindex $I 0] {1 0 0}]
# $prot move $A
# set I [draw principalaxes $ref_TMD]
# set A [orient $ref_TMD [lindex $I 1] {0 1 0}]
# $prot move $A
# set A [orient $ref_TMD [lindex $I 2] {0 0 1}]
# $prot move $A
# set I [draw principalaxes $ref_TMD]

# for {set i 0} {$i <= $nf} {incr i} {

# $aln1 frame $i
#     $ref1 frame $i
# 	$ref2 frame $i
# 	$prot frame $i
#     $ref_TMD frame 0
# 	set M [measure fit $ref1 $ref_TMD]
#     $prot move $M
# 	set I [draw principalaxes $ref1]
# 	#The following is to obtain unit vectors of each principalaxis for selection "ref1: V1xcap, V1ycap and V1zcap"#
#     set V1 [draw principalaxes $ref1]
#     set V1x [lindex $V1 0]
# 	set V1y [lindex $V1 1]
# 	set V1z [lindex $V1 2]
#  	#if {[lindex $V1x 0] <0 } {
#  	#set V1x [vecscale -1 [lindex $V1 0]]} else {
# 	#set V1x [vecscale 1 [lindex $V1 0]]}
# 	#if {[lindex $V1y 1] <0} {
#  	#set V1y [vecscale -1 [lindex $V1 1]]} else {
# 	#set V1y [vecscale 1 [lindex $V1 1]]}
# 	#if {[lindex $V1z 2] <0} {
#  	#set V1z [vecscale -1 [lindex $V1 2]]} else {
#  	#set V1z [vecscale 1 [lindex $V1 2]]}
#  	#puts "debug: V1x= $V1x V1y= $V1y V1z= $V1z"
#  	#The following is to obtain unit vectors of each principalaxis for selection "ref2: V2xcap, V2ycap and V2zcap#
# 	set V2 [draw principalaxes $ref2]
# 	set V2x [lindex $V2 0]
# 	set V2y [lindex $V2 1]
# 	set V2z [lindex $V2 2]
#  	#if {[lindex $V2x 0] <0} {
#  	#set V2x [vecscale -1 [lindex $V2 0]]} else {
# 	#set V2x [vecscale 1 [lindex $V2 0]]}
# 	#if {[lindex $V2y 0] >0} {
#  	#set V2y [vecscale -1 [lindex $V2 1]]} else {
# 	#set V2y [vecscale 1 [lindex $V2 1]]}
#  	if {[lindex $V2z 2] <0} {
#  	set V2z [vecscale -1 [lindex $V2 2]]} else {
#  	set V2z [vecscale 1 [lindex $V2 2]]}
#  	#puts "debug: V2x= $V2x V2y= $V2y V2z= $V2z"
# 	 #following is to calculate tilt#
# 	#calculate angles in degrees by multiplying acos by 57.2958#
# 	#set vectilt [vecdot $V1z $V2z]
# 	set vectilt [vecdot {0 0 1} $V2z]
#     set tilt [expr 57.2958*acos($vectilt)]
#  	#puts "debug: vectilt= $vectilt; tilt= $tilt"
# 	#following is to calculate skew#
# 	set pV2z "[lindex $V2z 0] [lindex $V2z 1] 0"
# 	set pV2zn [vecscale $pV2z [expr 1/[veclength $pV2z]]]
# 	set skew [expr 57.2958*acos([vecdot $V1x $pV2zn]/([veclength $V1x]*[veclength $pV2zn]))]
# 	#if {$skew > 90} {
#  	#set skew [expr 180-(57.2958*acos([vecdot $V1x $pV2zn]/([veclength $V1x]*[veclength $pV2zn])))]} else {
# 	#set skew [expr 57.2958*acos([vecdot $V1x $pV2zn]/([veclength $V1x]*[veclength $pV2zn]))]}
# 	#puts "debug: Pv2z= $pV2z; pV2zn= $pV2zn; skew= $skew"
# 	#following is to calculate twist#
# 	#set VZcross [veccross $V2z $V1z]
# 	set VZcross [veccross $V2z {0 0 1}]
# 	set VZcrossn [vecscale $VZcross [expr 1/[veclength $VZcross]]]
# 	#puts "debug: VZcross= $VZcross VZcrosscap= $VZcrosscap vectwist1= $vectwist1 vectwist2= $vectwist2"
# 	set twist1 [expr 57.2958*acos([vecdot $V1x $VZcrossn]/([veclength $V1x]*[veclength $VZcrossn]))]
# 	set twist2 [expr 57.2958*acos([vecdot $V2x $VZcrossn]/([veclength $V2x]*[veclength $VZcrossn]))]
# 	set twista [expr $twist2 + $twist1]
#     set twistb [expr $twist2 - $twist1]
# 	#if {$twista < 180} {
#  	#set twista [expr 360-($twist2 + $twist1)]} else {
# 	#set twista [expr $twist2 + $twist1]}
#  	#output into file: Projection in X,Y; tilt angle (degrees), skew angle (degrees), twist angle (degrees)#
# 	puts $outfile "$i pZ= $pV2z tilt= $tilt skew= $skew twist1 = $twista twist2 = $twistb"
# 	#puts "debug $V2z pZ = $pV2z;	tilt= $tilt;skew= $skew;twist = $twista $twistb; twist1= $twist1; twist2= $twist2"
# 	}
# close $outfile
# mol delete all

# ## R3
# mol new     CLpcpsAA_r2_1us_100ps_PL_pbcmctmd_s6.0.gro
# mol addfile CLpcpsAA_r3_1us_100ps_PL_pbcmctmd_fitXY.xtc first 1999 step 2 waitfor all

# set prot [atomselect top "protein and resid 1 to 242"]
# set prot_CA [atomselect top "protein and resid 1 to 242 and name CA"]
# set ref_TMD [atomselect top "protein and name CA and resid 218 to 242"] ;#TMD
# set aln1ca [atomselect top "protein protein and resid 218 to 242 and name CA"] ;#TMDref
# set aln1 [atomselect top "protein protein and resid 218 to 242"] ;#TMD
# #set ref2 [atomselect top "protein and name CA and resid 1 to 217"] ;#ECDs
# set ref2 [atomselect top "protein and name CA and resid 107 to 210"] ;#TFC
# set ref1 [atomselect top "protein and name CA and resid 218 to 242"] ;#TMD
# set outfile [open TF_TFC_TMD_titl_skew_R3_wof200ns_200ps.dat w]
# ########################################################
# package require Orient
# namespace import Orient::orient
# set nf [molinfo top get numframes]
# #Center the protein COM on the origin and then align the PAs of the TMD to XYZ respectivelly.
# $prot frame 0
# $ref_TMD frame 0
# $prot moveby [vecscale [measure center $prot weight mass] -1]
# set I [draw principalaxes $ref_TMD]
# set A [orient $ref_TMD [lindex $I 0] {1 0 0}]
# $prot move $A
# set I [draw principalaxes $ref_TMD]
# set A [orient $ref_TMD [lindex $I 1] {0 1 0}]
# $prot move $A
# set A [orient $ref_TMD [lindex $I 2] {0 0 1}]
# $prot move $A
# set I [draw principalaxes $ref_TMD]

# for {set i 0} {$i <= $nf} {incr i} {

# #Align the protein such that the TMD is  parallell to the Z axis.#
# 	$aln1 frame $i
#     $ref1 frame $i
# 	$ref2 frame $i
# 	$prot frame $i
#     $ref_TMD frame 0
# 	set M [measure fit $ref1 $ref_TMD]
#     $prot move $M
# 	set I [draw principalaxes $ref1]
# 	#The following is to obtain unit vectors of each principalaxis for selection "ref1: V1xcap, V1ycap and V1zcap"#
#     set V1 [draw principalaxes $ref1]
#     set V1x [lindex $V1 0]
# 	set V1y [lindex $V1 1]
# 	set V1z [lindex $V1 2]
#  	#if {[lindex $V1x 0] <0 } {
#  	#set V1x [vecscale -1 [lindex $V1 0]]} else {
# 	#set V1x [vecscale 1 [lindex $V1 0]]}
# 	#if {[lindex $V1y 1] <0} {
#  	#set V1y [vecscale -1 [lindex $V1 1]]} else {
# 	#set V1y [vecscale 1 [lindex $V1 1]]}
# 	#if {[lindex $V1z 2] <0} {
#  	#set V1z [vecscale -1 [lindex $V1 2]]} else {
#  	#set V1z [vecscale 1 [lindex $V1 2]]}
#  	#puts "debug: V1x= $V1x V1y= $V1y V1z= $V1z"
#  	#The following is to obtain unit vectors of each principalaxis for selection "ref2: V2xcap, V2ycap and V2zcap#
# 	set V2 [draw principalaxes $ref2]
# 	set V2x [lindex $V2 0]
# 	set V2y [lindex $V2 1]
# 	set V2z [lindex $V2 2]
#  	#if {[lindex $V2x 0] >0} {
#  	#set V2x [vecscale -1 [lindex $V2 0]]} else {
# 	#set V2x [vecscale 1 [lindex $V2 0]]}
# 	#if {[lindex $V2y 0] >0} {
#  	#set V2y [vecscale -1 [lindex $V2 1]]} else {
# 	#set V2y [vecscale 1 [lindex $V2 1]]}
#  	if {[lindex $V2z 2] < 0} {
#  	set V2z [vecscale -1 [lindex $V2 2]]} else {
#  	set V2z [vecscale 1 [lindex $V2 2]]}
#  	#puts "debug: V2x= $V2x V2y= $V2y V2z= $V2z"
# 	 #following is to calculate tilt#
# 	#calculate angles in degrees by multiplying acos by 57.2958#
# 	set vectilt [vecdot {0 0 1} $V2z]
#     set tilt [expr 57.2958*acos($vectilt)]
#  	#puts "debug: vectilt= $vectilt; tilt= $tilt"
# 	#following is to calculate skew#
# 	set pV2z "[lindex $V2z 0] [lindex $V2z 1] 0"
# 	set pV2zn [vecscale $pV2z [expr 1/[veclength $pV2z]]]
# 	set skew [expr 57.2958*acos([vecdot $V1x $pV2zn]/([veclength $V1x]*[veclength $pV2zn]))]
# 	#if {$skew > 90} {
#  	#set skew [expr 180-(57.2958*acos([vecdot $V1x $pV2zn]/([veclength $V1x]*[veclength $pV2zn])))]} else {
# 	#set skew [expr 57.2958*acos([vecdot $V1x $pV2zn]/([veclength $V1x]*[veclength $pV2zn]))]}
# 	#puts "debug: Pv2z= $pV2z; pV2zn= $pV2zn; skew= $skew"
# 	#following is to calculate twist#
# 	set VZcross [veccross $V2z $V1z]
# 	set VZcrossn [vecscale $VZcross [expr 1/[veclength $VZcross]]]
# 	#puts "debug: VZcross= $VZcross VZcrosscap= $VZcrosscap vectwist1= $vectwist1 vectwist2= $vectwist2"
# 	set twist1 [expr 57.2958*acos([vecdot $V1x $VZcrossn]/([veclength $V1x]*[veclength $VZcrossn]))]
# 	set twist2 [expr 57.2958*acos([vecdot $V2x $VZcrossn]/([veclength $V2x]*[veclength $VZcrossn]))]
# 	set twista [expr $twist2 + $twist1]
#     set twistb [expr $twist2 - $twist1]
# 	#if {$twista < 180} {
#  	#set twista [expr 360-($twist2 + $twist1)]} else {
# 	#set twista [expr $twist2 + $twist1]}
#  	#output into file: Projection in X,Y; tilt angle (degrees), skew angle (degrees), twist angle (degrees)#
# 	puts $outfile "$i pZ= $pV2z tilt= $tilt skew= $skew twist1 = $twista twist2 = $twistb"
# 	puts "debug $V2z pZ = $pV2z;	tilt= $tilt;skew= $skew;twist = $twista $twistb; twist1= $twist1; twist2= $twist2"
# 	}
# close $outfile
# mol delete all

#PC

# mol new     PC_step6.6_equilibration_PLpbcctmd.gro
# mol addfile TF_PC_1us_fitXY_100ps_PL.xtc first 1999 step 2 waitfor all

# set prot [atomselect top "protein and resid 1 to 242"]
# set prot_CA [atomselect top "protein and resid 1 to 242 and name CA"]
# set ref_TMD [atomselect top "protein and name CA and resid 218 to 242"] ;#TMD
# set aln1ca [atomselect top "protein protein and resid 218 to 242 and name CA"] ;#TMDref
# set aln1 [atomselect top "protein protein and resid 218 to 242"] ;#TMD
# #set ref2 [atomselect top "protein and name CA and resid 1 to 217"] ;#ECDs
# set ref2 [atomselect top "protein and name CA and resid 107 to 210"] ;#TFC
# set ref1 [atomselect top "protein and name CA and resid 218 to 242"] ;#TMD
# set outfile [open TFPC_TFC_TMD_titl_skew_R1_wof200ns_200ps.dat w]

# ########################################################
# package require Orient
# namespace import Orient::orient
# set nf [molinfo top get numframes]
# #Center the protein COM on the origin and then align the PAs of the TMD to XYZ respectivelly.
# $prot frame 0
# $ref_TMD frame 0
# $prot moveby [vecscale [measure center $prot weight mass] -1]
# set I [draw principalaxes $ref_TMD]
# set A [orient $ref_TMD [lindex $I 0] {1 0 0}]
# $prot move $A
# set I [draw principalaxes $ref_TMD]
# set A [orient $ref_TMD [lindex $I 1] {0 1 0}]
# $prot move $A
# set I [draw principalaxes $ref_TMD]
# set A [orient $ref_TMD [lindex $I 2] {0 0 1}]
# $prot move $A
# set I [draw principalaxes $ref_TMD]

# for {set i 0} {$i <= $nf} {incr i} {

# #Align the protein such that the TMD is  parallell to the Z axis.#
# 	$aln1 frame $i
#     $ref1 frame $i
# 	$ref2 frame $i
# 	$prot frame $i
#     $ref_TMD frame 0
# 	set M [measure fit $ref1 $ref_TMD]
#     $prot move $M
# 	set I [draw principalaxes $ref1]
# 	#The following is to obtain unit vectors of each principalaxis for selection "ref1: V1xcap, V1ycap and V1zcap"#
#     set V1 [draw principalaxes $ref1]
#     set V1x [lindex $V1 0]
# 	set V1y [lindex $V1 1]
# 	set V1z [lindex $V1 2]
#  	#if {[lindex $V1x 0] <0 } {
#  	#set V1x [vecscale -1 [lindex $V1 0]]} else {
# 	#set V1x [vecscale 1 [lindex $V1 0]]}
# 	#if {[lindex $V1y 1] <0} {
#  	#set V1y [vecscale -1 [lindex $V1 1]]} else {
# 	#set V1y [vecscale 1 [lindex $V1 1]]}
# 	#if {[lindex $V1z 2] <0} {
#  	#set V1z [vecscale -1 [lindex $V1 2]]} else {
#  	#set V1z [vecscale 1 [lindex $V1 2]]}
#  	#puts "debug: V1x= $V1x V1y= $V1y V1z= $V1z"
#  	#The following is to obtain unit vectors of each principalaxis for selection "ref2: V2xcap, V2ycap and V2zcap#
# 	set V2 [draw principalaxes $ref2]
# 	set V2x [lindex $V2 0]
# 	set V2y [lindex $V2 1]
# 	set V2z [lindex $V2 2]
#  	#if {[lindex $V2x 0] <0} {
#  	#set V2x [vecscale -1 [lindex $V2 0]]} else {
# 	#set V2x [vecscale 1 [lindex $V2 0]]}
# 	#if {[lindex $V2y 0] >0} {
#  	#set V2y [vecscale -1 [lindex $V2 1]]} else {
# 	#set V2y [vecscale 1 [lindex $V2 1]]}
#  	if {[lindex $V2z 2] <0} {
#  	set V2z [vecscale -1 [lindex $V2 2]]} else {
#  	set V2z [vecscale 1 [lindex $V2 2]]}
#  	#puts "debug: V2x= $V2x V2y= $V2y V2z= $V2z"
# 	 #following is to calculate tilt#
# 	#calculate angles in degrees by multiplying acos by 57.2958#
# 	#set vectilt [vecdot $V1z $V2z]
# 	set vectilt [vecdot {0 0 1} $V2z]
#     set tilt [expr 57.2958*acos($vectilt)]
#  	#puts "debug: vectilt= $vectilt; tilt= $tilt"
# 	#following is to calculate skew#
# 	set pV2z "[lindex $V2z 0] [lindex $V2z 1] 0"
# 	set pV2zn [vecscale $pV2z [expr 1/[veclength $pV2z]]]
# 	set skew [expr 57.2958*acos([vecdot $V1x $pV2zn]/([veclength $V1x]*[veclength $pV2zn]))]
# 	#if {$skew > 90} {
#  	#set skew [expr 180-(57.2958*acos([vecdot $V1x $pV2zn]/([veclength $V1x]*[veclength $pV2zn])))]} else {
# 	#set skew [expr 57.2958*acos([vecdot $V1x $pV2zn]/([veclength $V1x]*[veclength $pV2zn]))]}
# 	#puts "debug: Pv2z= $pV2z; pV2zn= $pV2zn; skew= $skew"
# 	#following is to calculate twist#
# 	#set VZcross [veccross $V2z $V1z]
# 	set VZcross [veccross $V2z {0 0 1}]
# 	set VZcrossn [vecscale $VZcross [expr 1/[veclength $VZcross]]]
# 	#puts "debug: VZcross= $VZcross VZcrosscap= $VZcrosscap vectwist1= $vectwist1 vectwist2= $vectwist2"
# 	set twist1 [expr 57.2958*acos([vecdot $V1x $VZcrossn]/([veclength $V1x]*[veclength $VZcrossn]))]
# 	set twist2 [expr 57.2958*acos([vecdot $V2x $VZcrossn]/([veclength $V2x]*[veclength $VZcrossn]))]
# 	set twista [expr $twist2 + $twist1]
#     set twistb [expr $twist2 - $twist1]
# 	#if {$twista < 180} {
#  	#set twista [expr 360-($twist2 + $twist1)]} else {
# 	#set twista [expr $twist2 + $twist1]}
#  	#output into file: Projection in X,Y; tilt angle (degrees), skew angle (degrees), twist angle (degrees)#
# 	puts $outfile "$i pZ= $pV2z tilt= $tilt skew= $skew twist1 = $twista twist2 = $twistb"
# 	#puts "debug $V2z pZ = $pV2z;	tilt= $tilt;skew= $skew;twist = $twista $twistb; twist1= $twist1; twist2= $twist2"
# 	}
# mol delete all

# mol new     PC_step6.6_equilibration_PLpbcctmd.gro
# mol addfile TF_PC_1us_fitXY_100ps_PL.xtc first 1999 step 2 waitfor all

# set prot [atomselect top "protein and resid 1 to 242"]
# set prot_CA [atomselect top "protein and resid 1 to 242 and name CA"]
# set ref_TMD [atomselect top "protein and name CA and resid 218 to 242"] ;#TMD
# set aln1ca [atomselect top " protein and resid 218 to 242 and name CA"] ;#TMDref
# set aln1 [atomselect top " protein and resid 218 to 242"] ;#TMD
# set ref2 [atomselect top "protein and name CA and resid 1 to 217"] ;#ECDs
# #set ref2 [atomselect top "protein and name CA and resid 107 to 210"] ;#TFC
# set ref1 [atomselect top "protein and name CA and resid 218 to 242"] ;#TMD
# set outfile [open TFPC_ECD_TMD_titl_skew_R1_wof200ns_200ps.dat w]

# ########################################################
# package require Orient
# namespace import Orient::orient
# set nf [molinfo top get numframes]
# #Center the protein COM on the origin and then align the PAs of the TMD to XYZ respectivelly.
# $prot frame 0
# $ref_TMD frame 0
# $prot moveby [vecscale [measure center $prot weight mass] -1]
# set I [draw principalaxes $ref_TMD]
# set A [orient $ref_TMD [lindex $I 0] {1 0 0}]
# $prot move $A
# set I [draw principalaxes $ref_TMD]
# set A [orient $ref_TMD [lindex $I 1] {0 1 0}]
# $prot move $A
# set I [draw principalaxes $ref_TMD]
# set A [orient $ref_TMD [lindex $I 2] {0 0 1}]
# $prot move $A
# set I [draw principalaxes $ref_TMD]

# for {set i 0} {$i <= $nf} {incr i} {

# #Align the protein such that the TMD is  parallell to the Z axis.#
# 	$aln1 frame $i
#     $ref1 frame $i
# 	$ref2 frame $i
# 	$prot frame $i
#     $ref_TMD frame 0
# 	set M [measure fit $ref1 $ref_TMD]
#     $prot move $M
# 	set I [draw principalaxes $ref1]
# 	#The following is to obtain unit vectors of each principalaxis for selection "ref1: V1xcap, V1ycap and V1zcap"#
#     set V1 [draw principalaxes $ref1]
#     set V1x [lindex $V1 0]
# 	set V1y [lindex $V1 1]
# 	set V1z [lindex $V1 2]
#  	#if {[lindex $V1x 0] <0 } {
#  	#set V1x [vecscale -1 [lindex $V1 0]]} else {
# 	#set V1x [vecscale 1 [lindex $V1 0]]}
# 	#if {[lindex $V1y 1] <0} {
#  	#set V1y [vecscale -1 [lindex $V1 1]]} else {
# 	#set V1y [vecscale 1 [lindex $V1 1]]}
# 	#if {[lindex $V1z 2] <0} {
#  	#set V1z [vecscale -1 [lindex $V1 2]]} else {
#  	#set V1z [vecscale 1 [lindex $V1 2]]}
#  	#puts "debug: V1x= $V1x V1y= $V1y V1z= $V1z"
#  	#The following is to obtain unit vectors of each principalaxis for selection "ref2: V2xcap, V2ycap and V2zcap#
# 	set V2 [draw principalaxes $ref2]
# 	set V2x [lindex $V2 0]
# 	set V2y [lindex $V2 1]
# 	set V2z [lindex $V2 2]
#  	#if {[lindex $V2x 0] <0} {
#  	#set V2x [vecscale -1 [lindex $V2 0]]} else {
# 	#set V2x [vecscale 1 [lindex $V2 0]]}
# 	#if {[lindex $V2y 0] >0} {
#  	#set V2y [vecscale -1 [lindex $V2 1]]} else {
# 	#set V2y [vecscale 1 [lindex $V2 1]]}
#  	if {[lindex $V2z 2] <0} {
#  	set V2z [vecscale -1 [lindex $V2 2]]} else {
#  	set V2z [vecscale 1 [lindex $V2 2]]}
#  	#puts "debug: V2x= $V2x V2y= $V2y V2z= $V2z"
# 	 #following is to calculate tilt#
# 	#calculate angles in degrees by multiplying acos by 57.2958#
# 	#set vectilt [vecdot $V1z $V2z]
# 	set vectilt [vecdot {0 0 1} $V2z]
#     set tilt [expr 57.2958*acos($vectilt)]
#  	#puts "debug: vectilt= $vectilt; tilt= $tilt"
# 	#following is to calculate skew#
# 	set pV2z "[lindex $V2z 0] [lindex $V2z 1] 0"
# 	set pV2zn [vecscale $pV2z [expr 1/[veclength $pV2z]]]
# 	set skew [expr 57.2958*acos([vecdot $V1x $pV2zn]/([veclength $V1x]*[veclength $pV2zn]))]
# 	#if {$skew > 90} {
#  	#set skew [expr 180-(57.2958*acos([vecdot $V1x $pV2zn]/([veclength $V1x]*[veclength $pV2zn])))]} else {
# 	#set skew [expr 57.2958*acos([vecdot $V1x $pV2zn]/([veclength $V1x]*[veclength $pV2zn]))]}
# 	#puts "debug: Pv2z= $pV2z; pV2zn= $pV2zn; skew= $skew"
# 	#following is to calculate twist#
# 	#set VZcross [veccross $V2z $V1z]
# 	set VZcross [veccross $V2z {0 0 1}]
# 	set VZcrossn [vecscale $VZcross [expr 1/[veclength $VZcross]]]
# 	#puts "debug: VZcross= $VZcross VZcrosscap= $VZcrosscap vectwist1= $vectwist1 vectwist2= $vectwist2"
# 	set twist1 [expr 57.2958*acos([vecdot $V1x $VZcrossn]/([veclength $V1x]*[veclength $VZcrossn]))]
# 	set twist2 [expr 57.2958*acos([vecdot $V2x $VZcrossn]/([veclength $V2x]*[veclength $VZcrossn]))]
# 	set twista [expr $twist2 + $twist1]
#     set twistb [expr $twist2 - $twist1]
# 	#if {$twista < 180} {
#  	#set twista [expr 360-($twist2 + $twist1)]} else {
# 	#set twista [expr $twist2 + $twist1]}
#  	#output into file: Projection in X,Y; tilt angle (degrees), skew angle (degrees), twist angle (degrees)#
# 	puts $outfile "$i pZ= $pV2z tilt= $tilt skew= $skew twist1 = $twista twist2 = $twistb"
# 	#puts "debug $V2z pZ = $pV2z;	tilt= $tilt;skew= $skew;twist = $twista $twistb; twist1= $twist1; twist2= $twist2"
# 	}
# close $outfile
# mol delete all

## New TF-F7

mol new s6.6_pli_pbcnj.gro
mol addfile TFF7_pcps_HMR_1us_100ps_pbcm_pbcatm_pbcnj_fitXY_prot_PL.xtc first 1999 step 2 waitfor all

set prot [atomselect top "protein and index 6816 to 10671 and resid 1 to 242"]
set prot_CA [atomselect top "protein and index 6816 to 10671 and resid 1 to 242 and name CA"]
set ref_TMD [atomselect top "protein and index 6816 to 10671 and name CA and resid 218 to 242"] ;#TMD
set aln1ca [atomselect top "protein and index 6816 to 10671 protein and resid 218 to 242 and name CA"] ;#TMDref
set aln1 [atomselect top "protein and index 6816 to 10671 and resid 218 to 242"] ;#TMD
#set ref2 [atomselect top "protein and name CA and resid 1 to 217"] ;#ECDs
set ref2 [atomselect top "protein and index 6816 to 10671 and name CA and resid 107 to 210"] ;#TFC
set ref1 [atomselect top "protein and index 6816 to 10671 and name CA and resid 218 to 242"] ;#TMD
set outfile [open TFF7new_TFC_TMD_titl_skew_wof200ns_200ps.dat w]
########################################################
package require Orient
namespace import Orient::orient
set nf [molinfo top get numframes]
#Center the protein COM on the origin and then align the PAs of the TMD to XYZ respectivelly.
$prot frame 0
$ref_TMD frame 0
$prot moveby [vecscale [measure center $prot weight mass] -1]
set I [draw principalaxes $ref_TMD]
set A [orient $ref_TMD [lindex $I 0] {1 0 0}]
$prot move $A
set I [draw principalaxes $ref_TMD]
set A [orient $ref_TMD [lindex $I 1] {0 1 0}]
$prot move $A
set A [orient $ref_TMD [lindex $I 2] {0 0 1}]
$prot move $A
set I [draw principalaxes $ref_TMD]

for {set i 0} {$i <= $nf} {incr i} {

#Align the protein such that the TMD is  parallell to the Z axis.#
	$aln1 frame $i
    $ref1 frame $i
	$ref2 frame $i
	$prot frame $i
    $ref_TMD frame 0
	set M [measure fit $ref1 $ref_TMD]
    $prot move $M
	set I [draw principalaxes $ref1]
	#The following is to obtain unit vectors of each principalaxis for selection "ref1: V1xcap, V1ycap and V1zcap"#
    set V1 [draw principalaxes $ref1]
    set V1x [lindex $V1 0]
	set V1y [lindex $V1 1]
	set V1z [lindex $V1 2]
 	#if {[lindex $V1x 0] <0 } {
 	#set V1x [vecscale -1 [lindex $V1 0]]} else {
	#set V1x [vecscale 1 [lindex $V1 0]]}
	#if {[lindex $V1y 1] <0} {
 	#set V1y [vecscale -1 [lindex $V1 1]]} else {
	#set V1y [vecscale 1 [lindex $V1 1]]}
	#if {[lindex $V1z 2] <0} {
 	#set V1z [vecscale -1 [lindex $V1 2]]} else {
 	#set V1z [vecscale 1 [lindex $V1 2]]}
 	#puts "debug: V1x= $V1x V1y= $V1y V1z= $V1z"
 	#The following is to obtain unit vectors of each principalaxis for selection "ref2: V2xcap, V2ycap and V2zcap#
	set V2 [draw principalaxes $ref2]
	set V2x [lindex $V2 0]
	set V2y [lindex $V2 1]
	set V2z [lindex $V2 2]
 	#if {[lindex $V2x 0] >0} {
 	#set V2x [vecscale -1 [lindex $V2 0]]} else {
	#set V2x [vecscale 1 [lindex $V2 0]]}
	#if {[lindex $V2y 0] >0} {
 	#set V2y [vecscale -1 [lindex $V2 1]]} else {
	#set V2y [vecscale 1 [lindex $V2 1]]}
 	if {[lindex $V2z 2] < 0} {
 	set V2z [vecscale -1 [lindex $V2 2]]} else {
 	set V2z [vecscale 1 [lindex $V2 2]]}
 	#puts "debug: V2x= $V2x V2y= $V2y V2z= $V2z"
	 #following is to calculate tilt#
	#calculate angles in degrees by multiplying acos by 57.2958#
	set vectilt [vecdot {0 0 1} $V2z]
    set tilt [expr 57.2958*acos($vectilt)]
 	#puts "debug: vectilt= $vectilt; tilt= $tilt"
	#following is to calculate skew#
	set pV2z "[lindex $V2z 0] [lindex $V2z 1] 0"
	set pV2zn [vecscale $pV2z [expr 1/[veclength $pV2z]]]
	set skew [expr 57.2958*acos([vecdot $V1x $pV2zn]/([veclength $V1x]*[veclength $pV2zn]))]
	#if {$skew > 90} {
 	#set skew [expr 180-(57.2958*acos([vecdot $V1x $pV2zn]/([veclength $V1x]*[veclength $pV2zn])))]} else {
	#set skew [expr 57.2958*acos([vecdot $V1x $pV2zn]/([veclength $V1x]*[veclength $pV2zn]))]}
	#puts "debug: Pv2z= $pV2z; pV2zn= $pV2zn; skew= $skew"
	#following is to calculate twist#
	set VZcross [veccross $V2z $V1z]
	set VZcrossn [vecscale $VZcross [expr 1/[veclength $VZcross]]]
	#puts "debug: VZcross= $VZcross VZcrosscap= $VZcrosscap vectwist1= $vectwist1 vectwist2= $vectwist2"
	set twist1 [expr 57.2958*acos([vecdot $V1x $VZcrossn]/([veclength $V1x]*[veclength $VZcrossn]))]
	set twist2 [expr 57.2958*acos([vecdot $V2x $VZcrossn]/([veclength $V2x]*[veclength $VZcrossn]))]
	set twista [expr $twist2 + $twist1]
    set twistb [expr $twist2 - $twist1]
	#if {$twista < 180} {
 	#set twista [expr 360-($twist2 + $twist1)]} else {
	#set twista [expr $twist2 + $twist1]}
 	#output into file: Projection in X,Y; tilt angle (degrees), skew angle (degrees), twist angle (degrees)#
	puts $outfile "$i pZ= $pV2z tilt= $tilt skew= $skew twist1 = $twista twist2 = $twistb"
	puts "debug $V2z pZ = $pV2z;	tilt= $tilt;skew= $skew;twist = $twista $twistb; twist1= $twist1; twist2= $twist2"
	}
close $outfile
mol delete all
quit
# ########################################################
