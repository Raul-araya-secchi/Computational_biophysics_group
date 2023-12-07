package require Orient
namespace import Orient::orient

### TFC-TFN anf TFC membrane angle as defined by Ohkubo et al. Journal of Thrombosis and Haemostasis, 8: 1044–1053

## R1
# mol new     step6.6_equilibration_PLpbcc.gro
# mol addfile TFecdtmaa_wSSb_CL_PCPS_s7_1us_100ps_pbcmcp_PL_wof200ns_fitXY.xtc step 2 waitfor all

# set out [open TFangles_as_Okhubo_R1_200ps.dat w] 
# set out2 [open projections_TFC_R1_200ps.dat w] 
# set out3 [open projections_TFN_R1_200ps.dat w] 
# ##select protein, tfc_ref and tfc
# set prot_ref [atomselect top "protein" frame 0]
# set tfc_ref [atomselect top "protein and resid 107 to 210 and name CA" frame 0]

# set id [molinfo top]
# set num_steps [molinfo $id get numframes]

#  for {set f 0} {$f <=  $num_steps} {incr f} { 
#     set prot [atomselect top protein]
#     set tfc [atomselect top "protein and resid 107 to 210"]
#     set tfn [atomselect top "protein and resid 1 to 106"] 
#     $prot frame $f
#     $tfn frame $f
#     $tfc frame $f
#     ##set PAs for TFC
#     set TFCpa [draw principalaxes $tfc]
#     set PATFCv1 [lindex $TFCpa 0]
#     set PATFCv2 [lindex $TFCpa 1]
#     set PATFCv3 [lindex $TFCpa 2]
#     set PATFCe3 [vecscale $PATFCv3 [expr 1/[veclength $PATFCv3]]]
#     if {[lindex $PATFCe3 0] <0 } {
#    	    set PATFCv3m [vecscale -1 $PATFCe3]} else {
#    		set PATFCv3m [vecscale 1 $PATFCe3] }
#    	set projection1xC [lindex $PATFCe3 0]	
#    	set projection1yC [lindex $PATFCe3 1] 
#    	set projection1zC [lindex $PATFCe3 2]
#     set projection1xMC [lindex $PATFCv3m 0]	
#   	set projection1yMC [lindex $PATFCv3m 1] 
#    	set projection1zMC [lindex $PATFCv3m 2]

#     ##set PAs for TFN
#     set TFNpa [draw principalaxes $tfn]
#     set PATFNv1 [lindex $TFNpa 0]
#     set PATFNv2 [lindex $TFNpa 1]
#     set PATFNv3 [lindex $TFNpa 2]
#     set PATFNe3 [vecscale $PATFNv3 [expr 1/[veclength $PATFNv3]]]
#     if {[lindex $PATFNe3 0] >0 } {
#    	    set PATFNv3m [vecscale -1 $PATFNe3]} else {
#    		set PATFNv3m [vecscale 1 $PATFNe3] }
#    	set projection1xN [lindex $PATFNe3 0]	
#    	set projection1yN [lindex $PATFNe3 1] 
#    	set projection1zN [lindex $PATFNe3 2]
#     set projection1xMN [lindex $PATFNv3m 0]	
#   	set projection1yMN [lindex $PATFNv3m 1] 
#    	set projection1zMN [lindex $PATFNv3m 2]

#     # TFN-TFC angle
#     set TFC_TFNm [vecdot $PATFCv3m $PATFNv3m]
#     set TFC_TFNangle_m [expr 57.2958 * acos($TFC_TFNm)]

#     set TFC_TFNm2 [vecdot $PATFCe3 $PATFNv3m]
#     set TFC_TFNangle_m2 [expr 57.2958 * acos($TFC_TFNm2)]
#     #puts "DEBUG65"
#     set TFC_TFN [vecdot $PATFCe3 $PATFNe3]
#     set TFC_TFNangle [expr 57.2958 * acos($TFC_TFN)]
#     #puts "DEBUG75"
#     #TFN-TFC cross vector (normal of the plane defined by I_N and I_C can be obtained by outer-product of I_N and I_C.)
#     set TFC_TFNcross [veccross $PATFNe3 $PATFCe3]
#     set TFC_TFNcross_m [veccross $PATFNv3m $PATFCv3m]
#     set TFC_TFNcross_m2 [veccross $PATFNv3m $PATFCe3]
#     set TFC_TFNcross_m3 [veccross $PATFNe3 $PATFCv3m]
#     #puts "$TFC_TFNcross"
#     #:Qputs "DEBUG85"
#     # Intersection bw l-NCM and normIC_IN
#     set Lncm [veccross $TFC_TFNcross {0 0 1}]
#     set Lncm_m [veccross $TFC_TFNcross_m {0 0 1}]
#     set Lncm_m2 [veccross $TFC_TFNcross_m2 {0 0 1}]
#     set Lncm_m3 [veccross $TFC_TFNcross_m3 {0 0 1}]
#     #puts "DEBUG6"
#     #ThetaCM
#     set ThetaCM [vecdot $Lncm  $PATFCe3]
#     set ThetaCMang [expr 57.2958 * acos($ThetaCM)] 

#     set ThetaCM_m4 [vecdot $Lncm  $PATFCv3m]
#     set ThetaCMang_m4 [expr 57.2958 * acos($ThetaCM_m4)] 
    
#     set ThetaCM_m3 [vecdot $Lncm_m  $PATFCe3]
#     set ThetaCMang_m3 [expr 57.2958 * acos($ThetaCM_m3)]

#     set ThetaCM_m [vecdot $Lncm_m  $PATFCv3m]
#     set ThetaCMang_m [expr 57.2958 * acos($ThetaCM_m)] 

#     set ThetaCM_m2 [vecdot $Lncm_m2  $PATFCe3]
#     set ThetaCMang_m2 [expr 57.2958 * acos($ThetaCM_m2)]
    
#     set ThetaCM_m5 [vecdot $Lncm_m2  $PATFCv3m]
#     set ThetaCMang_m5 [expr 57.2958 * acos($ThetaCM_m5)]
    
#     set ThetaCM_m6 [vecdot $Lncm_m3  $PATFCe3]
#     set ThetaCMang_m6 [expr 57.2958 * acos($ThetaCM_m6)]
    
#     set ThetaCM_m7 [vecdot $Lncm_m3  $PATFCv3m]
#     set ThetaCMang_m7 [expr 57.2958 * acos($ThetaCM_m3)]

#     #puts "DEBUG200"
#     puts $out "$f $TFC_TFNangle $TFC_TFNangle_m $ThetaCMang  $ThetaCMang_m4 $ThetaCMang_m3 $ThetaCMang_m $ThetaCMang_m2 $ThetaCMang_m5 $ThetaCMang_m6 $ThetaCMang_m7"
#     puts $out2 "$f $projection1xC $projection1yC $projection1zC $projection1xMC $projection1yMC $projection1zMC "
#     puts $out3 "$f $projection1xN $projection1yN $projection1zN $projection1xMN $projection1yMN $projection1zMN "
# }
 
# close $out
# close $out2
# close $out3
# mol delete all

# ## R2
# mol new     CLpcpsAA_r2_1us_100ps_PL_pbcmctmd_s6.0.gro
# mol addfile CLpcpsAA_r2_1us_100ps_PL_pbcmctmd_fitXY.xtc first 1999 step 2 waitfor all

# set out [open TFangles_as_Okhubo_R2_200ps.dat w] 
# set out2 [open projections_TFC_R2_200ps.dat w] 
# set out3 [open projections_TFN_R2_200ps.dat w] 
# ##select protein, tfc_ref and tfc
# set prot_ref [atomselect top "protein" frame 0]
# set tfc_ref [atomselect top "protein and resid 107 to 210 and name CA" frame 0]

# set id [molinfo top]
# set num_steps [molinfo $id get numframes]

#  for {set f 0} {$f <=  $num_steps} {incr f} { 
#     set prot [atomselect top protein]
#     set tfc [atomselect top "protein and resid 107 to 210"]
#     set tfn [atomselect top "protein and resid 1 to 106"] 
#     $prot frame $f
#     $tfn frame $f
#     $tfc frame $f
#     ##set PAs for TFC
#     set TFCpa [draw principalaxes $tfc]
#     set PATFCv1 [lindex $TFCpa 0]
#     set PATFCv2 [lindex $TFCpa 1]
#     set PATFCv3 [lindex $TFCpa 2]
#     set PATFCe3 [vecscale $PATFCv3 [expr 1/[veclength $PATFCv3]]]
#     if {[lindex $PATFCe3 0] <0 } {
#    	    set PATFCv3m [vecscale -1 $PATFCe3]} else {
#    		set PATFCv3m [vecscale 1 $PATFCe3] }
#    	set projection1xC [lindex $PATFCe3 0]	
#    	set projection1yC [lindex $PATFCe3 1] 
#    	set projection1zC [lindex $PATFCe3 2]
#     set projection1xMC [lindex $PATFCv3m 0]	
#   	set projection1yMC [lindex $PATFCv3m 1] 
#    	set projection1zMC [lindex $PATFCv3m 2]

#     ##set PAs for TFN
#     set TFNpa [draw principalaxes $tfn]
#     set PATFNv1 [lindex $TFNpa 0]
#     set PATFNv2 [lindex $TFNpa 1]
#     set PATFNv3 [lindex $TFNpa 2]
#     set PATFNe3 [vecscale $PATFNv3 [expr 1/[veclength $PATFNv3]]]
#     if {[lindex $PATFNe3 0] >0 } {
#    	    set PATFNv3m [vecscale -1 $PATFNe3]} else {
#    		set PATFNv3m [vecscale 1 $PATFNe3] }
#    	set projection1xN [lindex $PATFNe3 0]	
#    	set projection1yN [lindex $PATFNe3 1] 
#    	set projection1zN [lindex $PATFNe3 2]
#     set projection1xMN [lindex $PATFNv3m 0]	
#   	set projection1yMN [lindex $PATFNv3m 1] 
#    	set projection1zMN [lindex $PATFNv3m 2]

#     # TFN-TFC angle
#     set TFC_TFNm [vecdot $PATFCv3m $PATFNv3m]
#     set TFC_TFNangle_m [expr 57.2958 * acos($TFC_TFNm)]

#     set TFC_TFNm2 [vecdot $PATFCe3 $PATFNv3m]
#     set TFC_TFNangle_m2 [expr 57.2958 * acos($TFC_TFNm2)]
#     #puts "DEBUG65"
#     set TFC_TFN [vecdot $PATFCe3 $PATFNe3]
#     set TFC_TFNangle [expr 57.2958 * acos($TFC_TFN)]
#     #puts "DEBUG75"
#     #TFN-TFC cross vector (normal of the plane defined by I_N and I_C can be obtained by outer-product of I_N and I_C.)
#     set TFC_TFNcross [veccross $PATFNe3 $PATFCe3]
#     set TFC_TFNcross_m [veccross $PATFNv3m $PATFCv3m]
#     set TFC_TFNcross_m2 [veccross $PATFNv3m $PATFCe3]
#     set TFC_TFNcross_m3 [veccross $PATFNe3 $PATFCv3m]
#     #puts "$TFC_TFNcross"
#     #:Qputs "DEBUG85"
#     # Intersection bw l-NCM and normIC_IN
#     set Lncm [veccross $TFC_TFNcross {0 0 -1}]
#     set Lncm_m [veccross $TFC_TFNcross_m {0 0 -1}]
#     set Lncm_m2 [veccross $TFC_TFNcross_m2 {0 0 -1}]
#     set Lncm_m3 [veccross $TFC_TFNcross_m3 {0 0 -1}]
#     #puts "DEBUG6"
#     #ThetaCM
#     set ThetaCM [vecdot $Lncm  $PATFCe3]
#     set ThetaCMang [expr 57.2958 * acos($ThetaCM)] 

#     set ThetaCM_m4 [vecdot $Lncm  $PATFCv3m]
#     set ThetaCMang_m4 [expr 57.2958 * acos($ThetaCM_m4)] 
    
#     set ThetaCM_m3 [vecdot $Lncm_m  $PATFCe3]
#     set ThetaCMang_m3 [expr 57.2958 * acos($ThetaCM_m3)]

#     set ThetaCM_m [vecdot $Lncm_m  $PATFCv3m]
#     set ThetaCMang_m [expr 57.2958 * acos($ThetaCM_m)] 

#     set ThetaCM_m2 [vecdot $Lncm_m2  $PATFCe3]
#     set ThetaCMang_m2 [expr 57.2958 * acos($ThetaCM_m2)]
    
#     set ThetaCM_m5 [vecdot $Lncm_m2  $PATFCv3m]
#     set ThetaCMang_m5 [expr 57.2958 * acos($ThetaCM_m5)]
    
#     set ThetaCM_m6 [vecdot $Lncm_m3  $PATFCe3]
#     set ThetaCMang_m6 [expr 57.2958 * acos($ThetaCM_m6)]
    
#     set ThetaCM_m7 [vecdot $Lncm_m3  $PATFCv3m]
#     set ThetaCMang_m7 [expr 57.2958 * acos($ThetaCM_m3)]

#     #puts "DEBUG200"
#     puts $out "$f $TFC_TFNangle $TFC_TFNangle_m $ThetaCMang  $ThetaCMang_m4 $ThetaCMang_m3 $ThetaCMang_m $ThetaCMang_m2 $ThetaCMang_m5 $ThetaCMang_m6 $ThetaCMang_m7"
#     puts $out2 "$f $projection1xC $projection1yC $projection1zC $projection1xMC $projection1yMC $projection1zMC "
#     puts $out3 "$f $projection1xN $projection1yN $projection1zN $projection1xMN $projection1yMN $projection1zMN "
# }
 
# close $out
# close $out2
# close $out3
# mol delete all

# ## R3
# mol new     CLpcpsAA_r2_1us_100ps_PL_pbcmctmd_s6.0.gro
# mol addfile CLpcpsAA_r3_1us_100ps_PL_pbcmctmd_fitXY.xtc first 1999 step 2 waitfor all

# set out [open TFangles_as_Okhubo_R3_200ps.dat w] 
# set out2 [open projections_TFC_R3_200ps.dat w] 
# set out3 [open projections_TFN_R3_200ps.dat w] 
# ##select protein, tfc_ref and tfc
# set prot_ref [atomselect top "protein" frame 0]
# set tfc_ref [atomselect top "protein and resid 107 to 210 and name CA" frame 0]

# set id [molinfo top]
# set num_steps [molinfo $id get numframes]

# for {set f 0} {$f <=  $num_steps} {incr f} { 
#     set prot [atomselect top protein]
#     set tfc [atomselect top "protein and resid 107 to 210"]
#     set tfn [atomselect top "protein and resid 1 to 106"] 
#     $prot frame $f
#     $tfn frame $f
#     $tfc frame $f
#     ##set PAs for TFC
#     set TFCpa [draw principalaxes $tfc]
#     set PATFCv1 [lindex $TFCpa 0]
#     set PATFCv2 [lindex $TFCpa 1]
#     set PATFCv3 [lindex $TFCpa 2]
#     set PATFCe3 [vecscale $PATFCv3 [expr 1/[veclength $PATFCv3]]]
#     if {[lindex $PATFCe3 0] <0 } {
#    	    set PATFCv3m [vecscale -1 $PATFCe3]} else {
#    		set PATFCv3m [vecscale 1 $PATFCe3] }
#    	set projection1xC [lindex $PATFCe3 0]	
#    	set projection1yC [lindex $PATFCe3 1] 
#    	set projection1zC [lindex $PATFCe3 2]
#     set projection1xMC [lindex $PATFCv3m 0]	
#   	set projection1yMC [lindex $PATFCv3m 1] 
#    	set projection1zMC [lindex $PATFCv3m 2]

#     ##set PAs for TFN
#     set TFNpa [draw principalaxes $tfn]
#     set PATFNv1 [lindex $TFNpa 0]
#     set PATFNv2 [lindex $TFNpa 1]
#     set PATFNv3 [lindex $TFNpa 2]
#     set PATFNe3 [vecscale $PATFNv3 [expr 1/[veclength $PATFNv3]]]
#     if {[lindex $PATFNe3 0] >0 } {
#    	    set PATFNv3m [vecscale -1 $PATFNe3]} else {
#    		set PATFNv3m [vecscale 1 $PATFNe3] }
#    	set projection1xN [lindex $PATFNe3 0]	
#    	set projection1yN [lindex $PATFNe3 1] 
#    	set projection1zN [lindex $PATFNe3 2]
#     set projection1xMN [lindex $PATFNv3m 0]	
#   	set projection1yMN [lindex $PATFNv3m 1] 
#    	set projection1zMN [lindex $PATFNv3m 2]

#     # TFN-TFC angle
#     set TFC_TFNm [vecdot $PATFCv3m $PATFNv3m]
#     set TFC_TFNangle_m [expr 57.2958 * acos($TFC_TFNm)]

#     set TFC_TFNm2 [vecdot $PATFCe3 $PATFNv3m]
#     set TFC_TFNangle_m2 [expr 57.2958 * acos($TFC_TFNm2)]
#     #puts "DEBUG65"
#     set TFC_TFN [vecdot $PATFCe3 $PATFNe3]
#     set TFC_TFNangle [expr 57.2958 * acos($TFC_TFN)]
#     #puts "DEBUG75"
#     #TFN-TFC cross vector (normal of the plane defined by I_N and I_C can be obtained by outer-product of I_N and I_C.)
#     set TFC_TFNcross [veccross $PATFNe3 $PATFCe3]
#     set TFC_TFNcross_m [veccross $PATFNv3m $PATFCv3m]
#     set TFC_TFNcross_m2 [veccross $PATFNv3m $PATFCe3]
#     set TFC_TFNcross_m3 [veccross $PATFNe3 $PATFCv3m]
#     #puts "$TFC_TFNcross"
#     #:Qputs "DEBUG85"
#     # Intersection bw l-NCM and normIC_IN
#     set Lncm [veccross $TFC_TFNcross {0 0 -1}]
#     set Lncm_m [veccross $TFC_TFNcross_m {0 0 -1}]
#     set Lncm_m2 [veccross $TFC_TFNcross_m2 {0 0 -1}]
#     set Lncm_m3 [veccross $TFC_TFNcross_m3 {0 0 -1}]
#     #puts "DEBUG6"
#     #ThetaCM
#     set ThetaCM [vecdot $Lncm  $PATFCe3]
#     set ThetaCMang [expr 57.2958 * acos($ThetaCM)] 

#     set ThetaCM_m4 [vecdot $Lncm  $PATFCv3m]
#     set ThetaCMang_m4 [expr 57.2958 * acos($ThetaCM_m4)] 
    
#     set ThetaCM_m3 [vecdot $Lncm_m  $PATFCe3]
#     set ThetaCMang_m3 [expr 57.2958 * acos($ThetaCM_m3)]

#     set ThetaCM_m [vecdot $Lncm_m  $PATFCv3m]
#     set ThetaCMang_m [expr 57.2958 * acos($ThetaCM_m)] 

#     set ThetaCM_m2 [vecdot $Lncm_m2  $PATFCe3]
#     set ThetaCMang_m2 [expr 57.2958 * acos($ThetaCM_m2)]
    
#     set ThetaCM_m5 [vecdot $Lncm_m2  $PATFCv3m]
#     set ThetaCMang_m5 [expr 57.2958 * acos($ThetaCM_m5)]
    
#     set ThetaCM_m6 [vecdot $Lncm_m3  $PATFCe3]
#     set ThetaCMang_m6 [expr 57.2958 * acos($ThetaCM_m6)]
    
#     set ThetaCM_m7 [vecdot $Lncm_m3  $PATFCv3m]
#     set ThetaCMang_m7 [expr 57.2958 * acos($ThetaCM_m3)]

#     #puts "DEBUG200"
#     puts $out "$f $TFC_TFNangle $TFC_TFNangle_m $ThetaCMang  $ThetaCMang_m4 $ThetaCMang_m3 $ThetaCMang_m $ThetaCMang_m2 $ThetaCMang_m5 $ThetaCMang_m6 $ThetaCMang_m7"
#     puts $out2 "$f $projection1xC $projection1yC $projection1zC $projection1xMC $projection1yMC $projection1zMC "
#     puts $out3 "$f $projection1xN $projection1yN $projection1zN $projection1xMN $projection1yMN $projection1zMN "
# }
 
# close $out
# close $out2
# close $out3
# mol delete all


## PC

# mol new     PC_step6.6_equilibration_PLpbcctmd.gro
# mol addfile TF_PC_1us_fitXY_100ps_PL.xtc first 1999 step 2 waitfor all

# set out [open TFangles_as_Okhubo_PC_200ps.dat w] 
# set out2 [open projections_TFC_PC_200ps.dat w] 
# set out3 [open projections_TFN_PC_200ps.dat w] 
# ##select protein, tfc_ref and tfc
# set prot_ref [atomselect top "protein" frame 0]
# set tfc_ref [atomselect top "protein and resid 107 to 210 and name CA" frame 0]

# set id [molinfo top]
# set num_steps [molinfo $id get numframes]

#  for {set f 0} {$f <=  $num_steps} {incr f} { 
#     set prot [atomselect top protein]
#     set tfc [atomselect top "protein and resid 107 to 210"]
#     set tfn [atomselect top "protein and resid 1 to 106"] 
#     $prot frame $f
#     $tfn frame $f
#     $tfc frame $f
#     ##set PAs for TFC
#     set TFCpa [draw principalaxes $tfc]
#     set PATFCv1 [lindex $TFCpa 0]
#     set PATFCv2 [lindex $TFCpa 1]
#     set PATFCv3 [lindex $TFCpa 2]
#     set PATFCe3 [vecscale $PATFCv3 [expr 1/[veclength $PATFCv3]]]
#     if {[lindex $PATFCe3 0] <0 } {
#    	    set PATFCv3m [vecscale -1 $PATFCe3]} else {
#    		set PATFCv3m [vecscale 1 $PATFCe3] }
#    	set projection1xC [lindex $PATFCe3 0]	
#    	set projection1yC [lindex $PATFCe3 1] 
#    	set projection1zC [lindex $PATFCe3 2]
#     set projection1xMC [lindex $PATFCv3m 0]	
#   	set projection1yMC [lindex $PATFCv3m 1] 
#    	set projection1zMC [lindex $PATFCv3m 2]

#     ##set PAs for TFN
#     set TFNpa [draw principalaxes $tfn]
#     set PATFNv1 [lindex $TFNpa 0]
#     set PATFNv2 [lindex $TFNpa 1]
#     set PATFNv3 [lindex $TFNpa 2]
#     set PATFNe3 [vecscale $PATFNv3 [expr 1/[veclength $PATFNv3]]]
#     if {[lindex $PATFNe3 0] >0 } {
#    	    set PATFNv3m [vecscale -1 $PATFNe3]} else {
#    		set PATFNv3m [vecscale 1 $PATFNe3] }
#    	set projection1xN [lindex $PATFNe3 0]	
#    	set projection1yN [lindex $PATFNe3 1] 
#    	set projection1zN [lindex $PATFNe3 2]
#     set projection1xMN [lindex $PATFNv3m 0]	
#   	set projection1yMN [lindex $PATFNv3m 1] 
#    	set projection1zMN [lindex $PATFNv3m 2]

#     # TFN-TFC angle
#     set TFC_TFNm [vecdot $PATFCv3m $PATFNv3m]
#     set TFC_TFNangle_m [expr 57.2958 * acos($TFC_TFNm)]

#     set TFC_TFNm2 [vecdot $PATFCe3 $PATFNv3m]
#     set TFC_TFNangle_m2 [expr 57.2958 * acos($TFC_TFNm2)]
#     #puts "DEBUG65"
#     set TFC_TFN [vecdot $PATFCe3 $PATFNe3]
#     set TFC_TFNangle [expr 57.2958 * acos($TFC_TFN)]
#     #puts "DEBUG75"
#     #TFN-TFC cross vector (normal of the plane defined by I_N and I_C can be obtained by outer-product of I_N and I_C.)
#     set TFC_TFNcross [veccross $PATFNe3 $PATFCe3]
#     set TFC_TFNcross_m [veccross $PATFNv3m $PATFCv3m]
#     set TFC_TFNcross_m2 [veccross $PATFNv3m $PATFCe3]
#     set TFC_TFNcross_m3 [veccross $PATFNe3 $PATFCv3m]
#     #puts "$TFC_TFNcross"
#     #:Qputs "DEBUG85"
#     # Intersection bw l-NCM and normIC_IN
#     set Lncm [veccross $TFC_TFNcross {0 0 1}]
#     set Lncm_m [veccross $TFC_TFNcross_m {0 0 1}]
#     set Lncm_m2 [veccross $TFC_TFNcross_m2 {0 0 1}]
#     set Lncm_m3 [veccross $TFC_TFNcross_m3 {0 0 1}]
#     #puts "DEBUG6"
#     #ThetaCM
#     set ThetaCM [vecdot $Lncm  $PATFCe3]
#     set ThetaCMang [expr 57.2958 * acos($ThetaCM)] 

#     set ThetaCM_m4 [vecdot $Lncm  $PATFCv3m]
#     set ThetaCMang_m4 [expr 57.2958 * acos($ThetaCM_m4)] 
    
#     set ThetaCM_m3 [vecdot $Lncm_m  $PATFCe3]
#     set ThetaCMang_m3 [expr 57.2958 * acos($ThetaCM_m3)]

#     set ThetaCM_m [vecdot $Lncm_m  $PATFCv3m]
#     set ThetaCMang_m [expr 57.2958 * acos($ThetaCM_m)] 

#     set ThetaCM_m2 [vecdot $Lncm_m2  $PATFCe3]
#     set ThetaCMang_m2 [expr 57.2958 * acos($ThetaCM_m2)]
    
#     set ThetaCM_m5 [vecdot $Lncm_m2  $PATFCv3m]
#     set ThetaCMang_m5 [expr 57.2958 * acos($ThetaCM_m5)]
    
#     set ThetaCM_m6 [vecdot $Lncm_m3  $PATFCe3]
#     set ThetaCMang_m6 [expr 57.2958 * acos($ThetaCM_m6)]
    
#     set ThetaCM_m7 [vecdot $Lncm_m3  $PATFCv3m]
#     set ThetaCMang_m7 [expr 57.2958 * acos($ThetaCM_m3)]

#     #puts "DEBUG200"
#     puts $out "$f $TFC_TFNangle $TFC_TFNangle_m $ThetaCMang  $ThetaCMang_m4 $ThetaCMang_m3 $ThetaCMang_m $ThetaCMang_m2 $ThetaCMang_m5 $ThetaCMang_m6 $ThetaCMang_m7"
#     puts $out2 "$f $projection1xC $projection1yC $projection1zC $projection1xMC $projection1yMC $projection1zMC "
#     puts $out3 "$f $projection1xN $projection1yN $projection1zN $projection1xMN $projection1yMN $projection1zMN "
# }
 
# close $out
# close $out2
# close $out3
# mol delete all

## New TFF7

mol new s6.6_pli_pbcnj.gro
mol addfile TFF7_pcps_HMR_1us_100ps_pbcm_pbcatm_pbcnj_fitXY_prot_PL.xtc first 1999 step 2 waitfor all

set out [open TF_F7_new_angles_as_Okhubo_R3_200ps.dat w] 
set out2 [open TF_F7_new_projections_TFC_R3_200ps.dat w] 
set out3 [open TF_F7_new_projections_TFN_R3_200ps.dat w] 
##select protein, tfc_ref and tfc
set prot_ref [atomselect top "protein" frame 0]
set tfc_ref [atomselect top "protein and index 6816 to 10671 and resid 107 to 210 and name CA" frame 0]

set id [molinfo top]
set num_steps [molinfo $id get numframes]

for {set f 0} {$f <=  $num_steps} {incr f} { 
    set prot [atomselect top protein]
    set tfc [atomselect top "protein and index 6816 to 10671 and resid 107 to 210"]
    set tfn [atomselect top "protein and index 6816 to 10671 and resid 1 to 106"] 
    $prot frame $f
    $tfn frame $f
    $tfc frame $f
    ##set PAs for TFC
    set TFCpa [draw principalaxes $tfc]
    set PATFCv1 [lindex $TFCpa 0]
    set PATFCv2 [lindex $TFCpa 1]
    set PATFCv3 [lindex $TFCpa 2]
    set PATFCe3 [vecscale $PATFCv3 [expr 1/[veclength $PATFCv3]]]
    if {[lindex $PATFCe3 0] <0 } {
   	    set PATFCv3m [vecscale -1 $PATFCe3]} else {
   		set PATFCv3m [vecscale 1 $PATFCe3] }
   	set projection1xC [lindex $PATFCe3 0]	
   	set projection1yC [lindex $PATFCe3 1] 
   	set projection1zC [lindex $PATFCe3 2]
    set projection1xMC [lindex $PATFCv3m 0]	
  	set projection1yMC [lindex $PATFCv3m 1] 
   	set projection1zMC [lindex $PATFCv3m 2]

    ##set PAs for TFN
    set TFNpa [draw principalaxes $tfn]
    set PATFNv1 [lindex $TFNpa 0]
    set PATFNv2 [lindex $TFNpa 1]
    set PATFNv3 [lindex $TFNpa 2]
    set PATFNe3 [vecscale $PATFNv3 [expr 1/[veclength $PATFNv3]]]
    if {[lindex $PATFNe3 0] >0 } {
   	    set PATFNv3m [vecscale -1 $PATFNe3]} else {
   		set PATFNv3m [vecscale 1 $PATFNe3] }
   	set projection1xN [lindex $PATFNe3 0]	
   	set projection1yN [lindex $PATFNe3 1] 
   	set projection1zN [lindex $PATFNe3 2]
    set projection1xMN [lindex $PATFNv3m 0]	
  	set projection1yMN [lindex $PATFNv3m 1] 
   	set projection1zMN [lindex $PATFNv3m 2]

    # TFN-TFC angle
    set TFC_TFNm [vecdot $PATFCv3m $PATFNv3m]
    set TFC_TFNangle_m [expr 57.2958 * acos($TFC_TFNm)]

    set TFC_TFNm2 [vecdot $PATFCe3 $PATFNv3m]
    set TFC_TFNangle_m2 [expr 57.2958 * acos($TFC_TFNm2)]
    #puts "DEBUG65"
    set TFC_TFN [vecdot $PATFCe3 $PATFNe3]
    set TFC_TFNangle [expr 57.2958 * acos($TFC_TFN)]
    #puts "DEBUG75"
    #TFN-TFC cross vector (normal of the plane defined by I_N and I_C can be obtained by outer-product of I_N and I_C.)
    set TFC_TFNcross [veccross $PATFNe3 $PATFCe3]
    set TFC_TFNcross_m [veccross $PATFNv3m $PATFCv3m]
    set TFC_TFNcross_m2 [veccross $PATFNv3m $PATFCe3]
    set TFC_TFNcross_m3 [veccross $PATFNe3 $PATFCv3m]
    #puts "$TFC_TFNcross"
    #:Qputs "DEBUG85"
    # Intersection bw l-NCM and normIC_IN
    set Lncm [veccross $TFC_TFNcross {0 0 -1}]
    set Lncm_m [veccross $TFC_TFNcross_m {0 0 -1}]
    set Lncm_m2 [veccross $TFC_TFNcross_m2 {0 0 -1}]
    set Lncm_m3 [veccross $TFC_TFNcross_m3 {0 0 -1}]
    #puts "DEBUG6"
    #ThetaCM
    set ThetaCM [vecdot $Lncm  $PATFCe3]
    set ThetaCMang [expr 57.2958 * acos($ThetaCM)] 

    set ThetaCM_m4 [vecdot $Lncm  $PATFCv3m]
    set ThetaCMang_m4 [expr 57.2958 * acos($ThetaCM_m4)] 
    
    set ThetaCM_m3 [vecdot $Lncm_m  $PATFCe3]
    set ThetaCMang_m3 [expr 57.2958 * acos($ThetaCM_m3)]

    set ThetaCM_m [vecdot $Lncm_m  $PATFCv3m]
    set ThetaCMang_m [expr 57.2958 * acos($ThetaCM_m)] 

    set ThetaCM_m2 [vecdot $Lncm_m2  $PATFCe3]
    set ThetaCMang_m2 [expr 57.2958 * acos($ThetaCM_m2)]
    
    set ThetaCM_m5 [vecdot $Lncm_m2  $PATFCv3m]
    set ThetaCMang_m5 [expr 57.2958 * acos($ThetaCM_m5)]
    
    set ThetaCM_m6 [vecdot $Lncm_m3  $PATFCe3]
    set ThetaCMang_m6 [expr 57.2958 * acos($ThetaCM_m6)]
    
    set ThetaCM_m7 [vecdot $Lncm_m3  $PATFCv3m]
    set ThetaCMang_m7 [expr 57.2958 * acos($ThetaCM_m3)]

    #puts "DEBUG200"
    puts $out "$f $TFC_TFNangle $TFC_TFNangle_m $ThetaCMang  $ThetaCMang_m4 $ThetaCMang_m3 $ThetaCMang_m $ThetaCMang_m2 $ThetaCMang_m5 $ThetaCMang_m6 $ThetaCMang_m7"
    puts $out2 "$f $projection1xC $projection1yC $projection1zC $projection1xMC $projection1yMC $projection1zMC "
    puts $out3 "$f $projection1xN $projection1yN $projection1zN $projection1xMN $projection1yMN $projection1zMN "
}
 
close $out
close $out2
close $out3
mol delete all

quit
