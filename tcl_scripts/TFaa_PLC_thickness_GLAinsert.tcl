## TF_TMD_ECD_aa PLC and prot thickness and densities -- ECD 1 to 219 every 100 ps##

##FVIIa-TF PCPS ##

mol new s6.6_pli_pbcnj.gro
mol addfile TFF7_pcps_HMR_1us_100ps_pbcm_pbcatm_pbcnj_fitXY_prot_PL.xtc first 3434 step 1 waitfor all

#TF
set out1 [open TFF7new_pcps_tail_TFPLC_PS.dat w]
set out2 [open TFF7new_pcps_tail_TFPLC_PC.dat w]

#FVIIa
set out3 [open TFF7new_pcps_tail_F7PLC_PS.dat w]
set out4 [open TFF7new_pcps_tailF7PLC_PC.dat w]

## TF-FVIIa P_P #

set out6 [open TFF7new_pcps_TF_F7_PP_100ps.dat w]
set out7 [open TFF7new_pcps_F7_TF_PP_100ps.dat w]
set out8 [open TFF7new_pcps_F7_ASdist_100ps.dat w]

set nf [molinfo top get numframes] 

for {set i 0} {$i <= $nf} {incr i} {
    # #TF-plc
    set TFPSpcps [atomselect top "(protein and index 6816 to 10671 and name CA) and pbwithin 12 of (noh and resname POPC and name C1 C2 C3 O21 O22 O31 O32 C31 to C39 C21 to C2922 O31 O32 C31 to C39 C21 to C29)" frame $i]
    set TFPCpcps [atomselect top "(protein and index 6816 to 10671 and name CA) and pbwithin 12 of (noh and resname POPS and name C1 C2 C3 O21 O22 O31 O32 C31 to C39 C21 to C2922 O31 O32 C31 to C39 C21 to C29)" frame $i]
    puts $out1 "$i [$TFPSpcps num] [$TFPSpcps get resid]" 
    puts $out2 "$i [$TFPCpcps num] [$TFPCpcps get resid]"
    
    # #F7-plc
    set F7PSpcps [atomselect top "(index 0 to 6234 and protein and name CA) and pbwithin 12 of (noh and resname POPC and name C1 C2 C3 O21 O22 O31 O32 C31 to C39 C21 to C2922 O31 O32 C31 to C39 C21 to C29)" frame $i]
    set F7PCpcps [atomselect top "(index 0 to 6234 and protein and name CA) and pbwithin 12 of (noh and resname POPS and name C1 C2 C3 O21 O22 O31 O32 C31 to C39 C21 to C2922 O31 O32 C31 to C39 C21 to C29)" frame $i]
    puts $out3 "$i [$F7PSpcps num] [$F7PSpcps get resid]" 
    puts $out4 "$i [$F7PCpcps num] [$F7PCpcps get resid]"

    # ##TF-F7 pp
    set TFF7pp [atomselect top "(index 6816 to 10671 and protein and name CA) and pbwithin 12 of (index 0 to 6234 and protein and name CA)" frame $i]
    puts $out6 "$i [$TFF7pp num] [$TFF7pp get resid]" 
    
    ##F7-TF pp
    set F7TFpp [atomselect top "(index 0 to 6234 and protein and name CA) and pbwithin 12 of (index 6816 to 10671 and protein and name CA)" frame $i] 
    puts $out7 "$i [$F7TFpp num] [$F7TFpp get resid]" 
    
    $TFPSpcps delete
    $TFPCpcps delete
    $F7PSpcps delete
    $F7PCpcps delete
    $TFF7pp delete
    $F7TFpp delete

    #F7 -- active site
    set AS [atomselect top "noh and same residue as index 2893 3662 5244"]
    $AS frame $i
    set AS_c [measure center $AS weight mass]
    set AS_cz [lindex $AS_c 2]
    set lip [atomselect top "name P and z < 80"]
    $lip frame $i
    set lip_c [measure center $lip weight mass]
    set lip_cz [lindex $lip_c 2]
    set vd_AS_lip [vecdist $AS_c $lip_c]
    set dist_c_AS_lip [expr (abs ($AS_cz - $lip_cz))]
    puts $out8 "$i $AS_cz $lip_cz  $vd_AS_lip $dist_c_AS_lip"

    $AS delete
    $lip delete
}   
close $out1
close $out2
close $out3
close $out4
close $out6
close $out7
close $out8
mol delete all

mol new s6.6_pli_pbcnj.gro
mol addfile TFF7_pcps_HMR_1us_100ps_pbcm_pbcatm_pbcnj_fitXY_prot_PL.xtc first 3434 step 1 waitfor all

# #TF
set out1 [open TFF7new_pcps_TFPLC_PS_100ps.dat w]
set out2 [open TFF7new_pcps_TFPLC_PC_100ps.dat w]

# #FVIIa
set out3 [open TFF7new_pcps_F7PLC_PS_100ps_s71_6.dat w]
set out4 [open TFF7new_pcps_F7PLC_PC_100ps_s71_6.dat w]

## TF-FVIIa P_P #

set out6 [open TFF7new_pcps_TF_F7_PP_100ps.dat w]
set out7 [open TFF7new_pcps_F7_TF_PP_100ps.dat w]
set out8 [open TFF7new_pcps_F7_ASdist_100ps.dat w]

set nf [molinfo top get numframes] 

for {set i 0} {$i <= $nf} {incr i} {
    # #TF-plc
    set TFPSpcps [atomselect top "(protein and index 6816 to 10671 and name CA) and pbwithin 12 of (noh and resname POPS and name P)" frame $i]
    set TFPCpcps [atomselect top "(protein and index 6816 to 10671 and name CA) and pbwithin 12 of (noh and resname POPC and name P)" frame $i]
    puts $out1 "$i [$TFPSpcps num] [$TFPSpcps get resid]" 
    puts $out2 "$i [$TFPCpcps num] [$TFPCpcps get resid]"
    
    # #F7-plc
    set F7PSpcps [atomselect top "(index 0 to 6234 and protein and name CA) and pbwithin 12 of (noh and resname POPS and name P)" frame $i]
    set F7PCpcps [atomselect top "(index 0 to 6234 and protein and name CA) and pbwithin 12 of (noh and resname POPC and name P)" frame $i]
    puts $out3 "$i [$F7PSpcps num] [$F7PSpcps get resid]" 
    puts $out4 "$i [$F7PCpcps num] [$F7PCpcps get resid]"
    
    # ##TF-F7 pp
    set TFF7pp [atomselect top "(index 6816 to 10671 and protein and name CA) and pbwithin 12 of (index 0 to 6234 and protein and name CA)" frame $i]
    puts $out6 "$i [$TFF7pp num] [$TFF7pp get resid]" 
    
    ##F7-TF pp
    set F7TFpp [atomselect top "(index 0 to 6234 and protein and name CA) and pbwithin 12 of (index 6816 to 10671 and protein and name CA)" frame $i] 
    puts $out7 "$i [$F7TFpp num] [$F7TFpp get resid]" 
    
    $TFPSpcps delete
    $TFPCpcps delete
    $F7PSpcps delete
    $F7PCpcps delete
    $TFF7pp delete
    $F7TFpp delete

    #F7 -- active site
    set AS [atomselect top "noh and same residue as index 2893 3662 5244"]
    $AS frame $i
    set AS_c [measure center $AS weight mass]
    set AS_cz [lindex $AS_c 2]
    set lip [atomselect top "name P and z < 80"]
    $lip frame $i
    set lip_c [measure center $lip weight mass]
    set lip_cz [lindex $lip_c 2]
    set vd_AS_lip [vecdist $AS_c $lip_c]
    set dist_c_AS_lip [expr (abs ($AS_cz - $lip_cz))]
    puts $out8 "$i $AS_cz $lip_cz  $vd_AS_lip $dist_c_AS_lip"

    $AS delete
    $lip delete
    
}   
close $out1
close $out2
close $out3
close $out4
close $out6
close $out7
close $out8

mol delete all

quit





