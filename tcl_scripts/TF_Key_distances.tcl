## TF Key distances ##

## CL PCPS ##

#proc clpcps_kd { frame } {
#
#    set out1 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/CLpcps_1us_100ps_dist_ionic.dat a+]
#    set out2 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/CLpcps_1us_100ps_dist_arom.dat a+]
#    set out3 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/CLpcps_1us_100ps_dist_zpos.dat a+]
#
#
#set F221 [atomselect top "protein and resid 219 and name CA"]
#    set C209 [atomselect top "protein and resid 207 and name CA"]
#    set S161 [atomselect top "protein and resid 159 and name CA"]
#    set D180 [atomselect top "protein and resid 178 and name CA"]
#
#    set K159 [atomselect top "protein and resid 157 and name NZ"]
#    set K181 [atomselect top "protein and resid 179 and name NZ"]
#    set D180s [atomselect top "protein and resid 178 and name CG"]
#    set E219 [atomselect top "protein and resid 217 and name CD"]
#
#    set R218 [atomselect top "protein and resid 216 and name CZ"] 
#    set E219 [atomselect top "protein and resid 217 and name CD"]
#
#    set G182 [atomselect top "protein and resid 180 and name O"]
#    set G215 [atomselect top "protein and resid 213 and name N"]
#    set N184 [atomselect top "protein and resid 182 and name CG"]
#    set E213 [atomselect top "protein and resid 211 and name O"]
#
#    set TMD [atomselect top "protein and resid 219 to 241 and name CA"]
#    set TFC [atomselect top "protein and resid 107 to 210 and name CA"]
#
#    # aromatic trio -- Rings #
#
#    set F217 [atomselect top "protein and resid 215 and name CG CD2 CE2 CZ CE1 CD1"]
#    set F221 [atomselect top "protein and resid 219 and name CG CD2 CE2 CZ CE1 CD1"]
#    set Y222 [atomselect top "protein and resid 220 and name CG CD2 CE2 CZ CE1 CD1"]
#
#    ## name P ##
#
#    set LL [ atomselect top "name P and z > 70"]
#    set UL [ atomselect top "name P and z < 60"]
#
#    # Measure COM #
#
#    set F221c [measure center $F221 weight mass] 
#    set C209c [measure center $C209 weight mass] 
#    set D180c [measure center $D180 weight mass] 
#    set D180sc [measure center $D180s weight mass] 
#    set S161c [measure center $S161 weight mass] 
#    set K181c [measure center $K181 weight mass]  
#    set E219c [measure center $E219 weight mass] 
#    set R218c [measure center $R218 weight mass] 
#    set E219c [measure center $E219 weight mass] 
#    set G182c [measure center $G182 weight mass] 
#    set G215c [measure center $G215 weight mass] 
#    set N184c [measure center $N184 weight mass] 
#    set E213c [measure center $E213 weight mass] 
#    set K159c [measure center $K159 weight mass] 
#    set TMDc  [measure center $TMD weight mass] 
#    set TFCc  [measure center $TFC weight mass] 
#
#    set F217rc [ measure center $F217 weight mass]
#    set F221rc [ measure center $F221 weight mass]
#    set Y222rc [ measure center $Y222 weight mass]
#
#    set ULc [measure center $UL weight mass]
#    set LLc [measure center $LL weight mass]
#
#    # measure distances
#
#    set dF221c_C209c [vecdist $F221c $C209c]
#    set dF221c_D180c [vecdist $F221c $D180c]
#    set dF221c_S161c [vecdist $F221c $S161c]
#    
#    set dE219c_K181c [vecdist $E219c $K181c]
#    set dE219c_R218c [vecdist $E219c $R218c]
#    set dD180sc_R218c [vecdist $D180sc $R218c]
#    set dD180sc_K181c [vecdist $D180sc $K181c]
#    set dD180sc_K159c [vecdist $D180sc $K159c]
#    set dG182c_G215c [vecdist $G182c $G215c]
#    set dE213c_N184c [vecdist $E213c $N184c]
#
#    puts $out1 "$frame $dF221c_C209c $dF221c_D180c $dF221c_S161c $dE219c_K181c $dE219c_R218c $dD180sc_K159c $dD180sc_R218c $dD180sc_K181c $dG182c_G215c $dE213c_N184c"
#
#    set dF217rc_F221rc [vecdist $F217rc $F221rc]
#    set dF217rc_Y222rc [vecdist $F217rc $Y222rc]
#    set dF221rc_Y222rc [vecdist $F221rc $Y222rc]
#
#    puts $out2 "$frame $dF217rc_F221rc $dF217rc_Y222rc $dF221rc_Y222rc"
#
#    ## Z pos and Z diff -- ECD, TMD, Ps ##
#
#    set Ztmd [lindex $TMDc 2]
#    set Ztfc [lindex $TFCc 2]
#    set Zul [lindex $ULc 2]
#    set Zll [lindex $LLc 2]
#    set diff [expr (abs ($Ztfc - $Ztmd))]
#
#    puts $out3 "$frame $Ztmd $Ztfc $Zul $Zll $diff"
#    
#    close $out1
#    close $out2
#    close $out3
#}
#
#source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl
#
#set gro /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/CL/PCPSaa/step6.6_equilibration_PLpbcctmd.gro
#set xtc /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/CL/PCPSaa/TFecdtmaa_wSSb_CL_PCPS_s7_1us_100ps_PLpbcctmd.xtc
#
#set outa [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/CLpcps_1us_100ps_dist_ionic.dat w]
#set outb [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/CLpcps_1us_100ps_dist_arom.dat w]
#set outc [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/CLpcps_1us_100ps_dist_zpos.dat w]
#
#mol load gro $gro
#bigdcd clpcps_kd xtc $xtc
#bigdcd_wait
#close $outa
#close $outb
#close $outc
#mol delete all

## CL PC ##

proc clpc_kd { frame } {

    set out1 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/CLpc_1us_100ps_dist_ionic.dat a+]
    set out2 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/CLpc_1us_100ps_dist_arom.dat a+]
    set out3 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/CLpc_1us_100ps_dist_zpos.dat a+]

    set F221 [atomselect top "protein and resid 219 and name CA"]
    set C209 [atomselect top "protein and resid 207 and name CA"]
    set S161 [atomselect top "protein and resid 159 and name CA"]
    set D180 [atomselect top "protein and resid 178 and name CA"]

    set K159 [atomselect top "protein and resid 157 and name NZ"]
    set K181 [atomselect top "protein and resid 179 and name NZ"]
    set D180s [atomselect top "protein and resid 178 and name CG"]
    set E219 [atomselect top "protein and resid 217 and name CD"]

    set R218 [atomselect top "protein and resid 216 and name CZ"] 
    set E219 [atomselect top "protein and resid 217 and name CD"]

    set G182 [atomselect top "protein and resid 180 and name O"]
    set G215 [atomselect top "protein and resid 213 and name N"]
    set N184 [atomselect top "protein and resid 182 and name CG"]
    set E213 [atomselect top "protein and resid 211 and name O"]

    set TMD [atomselect top "protein and resid 219 to 241 and name CA"]
    set TFC [atomselect top "protein and resid 107 to 210 and name CA"]

    # aromatic trio -- Rings #

    set F217 [atomselect top "protein and resid 215 and name CG CD2 CE2 CZ CE1 CD1"]
    set F221 [atomselect top "protein and resid 219 and name CG CD2 CE2 CZ CE1 CD1"]
    set Y222 [atomselect top "protein and resid 220 and name CG CD2 CE2 CZ CE1 CD1"]

    ## name P ##

    set LL [ atomselect top "name P and z > 70"]
    set UL [ atomselect top "name P and z < 60"]

    # Measure COM #

    set F221c [measure center $F221 weight mass] 
    set C209c [measure center $C209 weight mass] 
    set D180c [measure center $D180 weight mass] 
    set D180sc [measure center $D180s weight mass] 
    set S161c [measure center $S161 weight mass] 
    set K181c [measure center $K181 weight mass]  
    set E219c [measure center $E219 weight mass] 
    set R218c [measure center $R218 weight mass] 
    set E219c [measure center $E219 weight mass] 
    set G182c [measure center $G182 weight mass] 
    set G215c [measure center $G215 weight mass] 
    set N184c [measure center $N184 weight mass] 
    set E213c [measure center $E213 weight mass] 
    set K159c [measure center $K159 weight mass] 
    set TMDc  [measure center $TMD weight mass] 
    set TFCc  [measure center $TFC weight mass] 

    set F217rc [ measure center $F217 weight mass]
    set F221rc [ measure center $F221 weight mass]
    set Y222rc [ measure center $Y222 weight mass]

    set ULc [measure center $UL weight mass]
    set LLc [measure center $LL weight mass]

    # measure distances

    set dF221c_C209c [vecdist $F221c $C209c]
    set dF221c_D180c [vecdist $F221c $D180c]
    set dF221c_S161c [vecdist $F221c $S161c]
    
    set dE219c_K181c [vecdist $E219c $K181c]
    set dE219c_R218c [vecdist $E219c $R218c]
    set dD180sc_R218c [vecdist $D180sc $R218c]
    set dD180sc_K181c [vecdist $D180sc $K181c]
    set dD180sc_K159c [vecdist $D180sc $K159c]
    set dG182c_G215c [vecdist $G182c $G215c]
    set dE213c_N184c [vecdist $E213c $N184c]

    puts $out1 "$frame $dF221c_C209c $dF221c_D180c $dF221c_S161c $dE219c_K181c $dE219c_R218c $dD180sc_K159c $dD180sc_R218c $dD180sc_K181c $dG182c_G215c $dE213c_N184c"

    set dF217rc_F221rc [vecdist $F217rc $F221rc]
    set dF217rc_Y222rc [vecdist $F217rc $Y222rc]
    set dF221rc_Y222rc [vecdist $F221rc $Y222rc]

    puts $out2 "$frame $dF217rc_F221rc $dF217rc_Y222rc $dF221rc_Y222rc"

    ## Z pos and Z diff -- ECD, TMD, Ps ##

    set Ztmd [lindex $TMDc 2]
    set Ztfc [lindex $TFCc 2]
    set Zul [lindex $ULc 2]
    set Zll [lindex $LLc 2]
    set diff [expr (abs ($Ztfc - $Ztmd))]

    puts $out3 "$frame $Ztmd $Ztfc $Zul $Zll $diff"
    
    close $out1
    close $out2
    close $out3
}

source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl

set gro /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/CL/PCaa/step6.6_equilibration_PLpbcctmd.gro
set xtc /home/raul/remote-home/remote-home/MD-sims/TF_ECD_TMD/AA/w_SSbs/CL/PCaa/TFectmdaa_wSS_PC_CL_s7_1_29_100ps_PLpbcctmd.xtc

set outa [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/CLpc_1us_100ps_dist_ionic.dat w]
set outb [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/CLpc_1us_100ps_dist_arom.dat w]
set outc [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/CLpc_1us_100ps_dist_zpos.dat w]

mol load gro $gro
bigdcd clpc_kd xtc $xtc
bigdcd_wait
close $outa
close $outb
close $outc
mol delete all

## NC PCPS ##

#proc ncpcps_kd { frame } {
#
#    set out1 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/NCpcps_1us_100ps_dist_ionic.dat a+]
#    set out2 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/NCpcps_1us_100ps_dist_arom.dat a+]
#    set out3 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/NCpcps_1us_100ps_dist_zpos.dat a+]
#
#    set F221 [atomselect top "protein and resid 219 and name CA"]
#    set C209 [atomselect top "protein and resid 207 and name CA"]
#    set S161 [atomselect top "protein and resid 159 and name CA"]
#    set D180 [atomselect top "protein and resid 178 and name CA"]
#
#    set K159 [atomselect top "protein and resid 157 and name NZ"]
#    set K181 [atomselect top "protein and resid 179 and name NZ"]
#    set D180s [atomselect top "protein and resid 178 and name CG"]
#    set E219 [atomselect top "protein and resid 217 and name CD"]
#
#    set R218 [atomselect top "protein and resid 216 and name CZ"] 
#    set E219 [atomselect top "protein and resid 217 and name CD"]
#
#    set G182 [atomselect top "protein and resid 180 and name O"]
#    set G215 [atomselect top "protein and resid 213 and name N"]
#    set N184 [atomselect top "protein and resid 182 and name CG"]
#    set E213 [atomselect top "protein and resid 211 and name O"]
#
#    set TMD [atomselect top "protein and resid 219 to 241 and name CA"]
#    set TFC [atomselect top "protein and resid 107 to 210 and name CA"]
#
#    # aromatic trio -- Rings #
#
#    set F217 [atomselect top "protein and resid 215 and name CG CD2 CE2 CZ CE1 CD1"]
#    set F221 [atomselect top "protein and resid 219 and name CG CD2 CE2 CZ CE1 CD1"]
#    set Y222 [atomselect top "protein and resid 220 and name CG CD2 CE2 CZ CE1 CD1"]
#
#    ## name P ##
#
#    set LL [ atomselect top "name P and z > 70"]
#    set UL [ atomselect top "name P and z < 60"]
#
#    # Measure COM #
#
#    set F221c [measure center $F221 weight mass] 
#    set C209c [measure center $C209 weight mass] 
#    set D180c [measure center $D180 weight mass] 
#    set D180sc [measure center $D180s weight mass] 
#    set S161c [measure center $S161 weight mass] 
#    set K181c [measure center $K181 weight mass]  
#    set E219c [measure center $E219 weight mass] 
#    set R218c [measure center $R218 weight mass] 
#    set E219c [measure center $E219 weight mass] 
#    set G182c [measure center $G182 weight mass] 
#    set G215c [measure center $G215 weight mass] 
#    set N184c [measure center $N184 weight mass] 
#    set E213c [measure center $E213 weight mass] 
#    set K159c [measure center $K159 weight mass] 
#    set TMDc  [measure center $TMD weight mass] 
#    set TFCc  [measure center $TFC weight mass] 
#
#    set F217rc [ measure center $F217 weight mass]
#    set F221rc [ measure center $F221 weight mass]
#    set Y222rc [ measure center $Y222 weight mass]
#
#    set ULc [measure center $UL weight mass]
#    set LLc [measure center $LL weight mass]
#
#    # measure distances
#
#    set dF221c_C209c [vecdist $F221c $C209c]
#    set dF221c_D180c [vecdist $F221c $D180c]
#    set dF221c_S161c [vecdist $F221c $S161c]
#    
#    set dE219c_K181c [vecdist $E219c $K181c]
#    set dE219c_R218c [vecdist $E219c $R218c]
#    set dD180sc_R218c [vecdist $D180sc $R218c]
#    set dD180sc_K181c [vecdist $D180sc $K181c]
#    set dD180sc_K159c [vecdist $D180sc $K159c]
#    set dG182c_G215c [vecdist $G182c $G215c]
#    set dE213c_N184c [vecdist $E213c $N184c]
#
#    puts $out1 "$frame $dF221c_C209c $dF221c_D180c $dF221c_S161c $dE219c_K181c $dE219c_R218c $dD180sc_K159c $dD180sc_R218c $dD180sc_K181c $dG182c_G215c $dE213c_N184c"
#
#    set dF217rc_F221rc [vecdist $F217rc $F221rc]
#    set dF217rc_Y222rc [vecdist $F217rc $Y222rc]
#    set dF221rc_Y222rc [vecdist $F221rc $Y222rc]
#
#    puts $out2 "$frame $dF217rc_F221rc $dF217rc_Y222rc $dF221rc_Y222rc"
#
#    ## Z pos and Z diff -- ECD, TMD, Ps ##
#
#    set Ztmd [lindex $TMDc 2]
#    set Ztfc [lindex $TFCc 2]
#    set Zul [lindex $ULc 2]
#    set Zll [lindex $LLc 2]
#    set diff [expr (abs ($Ztfc - $Ztmd))]
#
#    puts $out3 "$frame $Ztmd $Ztfc $Zul $Zll $diff"
#    
#    close $out1
#    close $out2
#    close $out3
#}
#
#source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl
#
#set gro /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/NC/PCPSaa/step6.6_equilibration_PLpbcctmd.gro
#set xtc /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/NC/PCPSaa/TFecdtmaa_wSSb_NC_PCPS_s7_1us_100ps_pbccTMD.xtc
#
#set outa [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/NCpcps_1us_100ps_dist_ionic.dat w]
#set outb [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/NCpcps_1us_100ps_dist_arom.dat w]
#set outc [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/NCpcps_1us_100ps_dist_zpos.dat w]
#
#mol load gro $gro
#bigdcd ncpcps_kd xtc $xtc
#bigdcd_wait
#close $outa
#close $outb
#close $outc
#mol delete all

## NC PC ##

#proc ncpc_kd { frame } {
#
#    set out1 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/NCpc_1us_100ps_dist_ionic.dat a+]
#    set out2 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/NCpc_1us_100ps_dist_arom.dat a+]
#    set out3 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/NCpc_1us_100ps_dist_zpos.dat a+]
#
#    set F221 [atomselect top "protein and resid 219 and name CA"]
#    set C209 [atomselect top "protein and resid 207 and name CA"]
#    set S161 [atomselect top "protein and resid 159 and name CA"]
#    set D180 [atomselect top "protein and resid 178 and name CA"]
#
#    set K159 [atomselect top "protein and resid 157 and name NZ"]
#    set K181 [atomselect top "protein and resid 179 and name NZ"]
#    set D180s [atomselect top "protein and resid 178 and name CG"]
#    set E219 [atomselect top "protein and resid 217 and name CD"]
#
#    set R218 [atomselect top "protein and resid 216 and name CZ"] 
#    set E219 [atomselect top "protein and resid 217 and name CD"]
#
#    set G182 [atomselect top "protein and resid 180 and name O"]
#    set G215 [atomselect top "protein and resid 213 and name N"]
#    set N184 [atomselect top "protein and resid 182 and name CG"]
#    set E213 [atomselect top "protein and resid 211 and name O"]
#
#    set TMD [atomselect top "protein and resid 219 to 241 and name CA"]
#    set TFC [atomselect top "protein and resid 107 to 210 and name CA"]
#
#    # aromatic trio -- Rings #
#
#    set F217 [atomselect top "protein and resid 215 and name CG CD2 CE2 CZ CE1 CD1"]
#    set F221 [atomselect top "protein and resid 219 and name CG CD2 CE2 CZ CE1 CD1"]
#    set Y222 [atomselect top "protein and resid 220 and name CG CD2 CE2 CZ CE1 CD1"]
#
#    ## name P ##
#
#    set LL [ atomselect top "name P and z > 70"]
#    set UL [ atomselect top "name P and z < 60"]
#
#    # Measure COM #
#
#    set F221c [measure center $F221 weight mass] 
#    set C209c [measure center $C209 weight mass] 
#    set D180c [measure center $D180 weight mass] 
#    set D180sc [measure center $D180s weight mass] 
#    set S161c [measure center $S161 weight mass] 
#    set K181c [measure center $K181 weight mass]  
#    set E219c [measure center $E219 weight mass] 
#    set R218c [measure center $R218 weight mass] 
#    set E219c [measure center $E219 weight mass] 
#    set G182c [measure center $G182 weight mass] 
#    set G215c [measure center $G215 weight mass] 
#    set N184c [measure center $N184 weight mass] 
#    set E213c [measure center $E213 weight mass] 
#    set K159c [measure center $K159 weight mass] 
#    set TMDc  [measure center $TMD weight mass] 
#    set TFCc  [measure center $TFC weight mass] 
#
#    set F217rc [ measure center $F217 weight mass]
#    set F221rc [ measure center $F221 weight mass]
#    set Y222rc [ measure center $Y222 weight mass]
#
#    set ULc [measure center $UL weight mass]
#    set LLc [measure center $LL weight mass]
#
#    # measure distances
#
#    set dF221c_C209c [vecdist $F221c $C209c]
#    set dF221c_D180c [vecdist $F221c $D180c]
#    set dF221c_S161c [vecdist $F221c $S161c]
#    
#    set dE219c_K181c [vecdist $E219c $K181c]
#    set dE219c_R218c [vecdist $E219c $R218c]
#    set dD180sc_R218c [vecdist $D180sc $R218c]
#    set dD180sc_K181c [vecdist $D180sc $K181c]
#    set dD180sc_K159c [vecdist $D180sc $K159c]
#    set dG182c_G215c [vecdist $G182c $G215c]
#    set dE213c_N184c [vecdist $E213c $N184c]
#
#    puts $out1 "$frame $dF221c_C209c $dF221c_D180c $dF221c_S161c $dE219c_K181c $dE219c_R218c $dD180sc_K159c $dD180sc_R218c $dD180sc_K181c $dG182c_G215c $dE213c_N184c"
#
#    set dF217rc_F221rc [vecdist $F217rc $F221rc]
#    set dF217rc_Y222rc [vecdist $F217rc $Y222rc]
#    set dF221rc_Y222rc [vecdist $F221rc $Y222rc]
#
#    puts $out2 "$frame $dF217rc_F221rc $dF217rc_Y222rc $dF221rc_Y222rc"
#
#    ## Z pos and Z diff -- ECD, TMD, Ps ##
#
#    set Ztmd [lindex $TMDc 2]
#    set Ztfc [lindex $TFCc 2]
#    set Zul [lindex $ULc 2]
#    set Zll [lindex $LLc 2]
#    set diff [expr (abs ($Ztfc - $Ztmd))]
#
#    puts $out3 "$frame $Ztmd $Ztfc $Zul $Zll $diff"
#    
#    close $out1
#    close $out2
#    close $out3
#}
#
#source /home/raul/projects/MD-runs/analysis_tools/bigdcd_v2.tcl
#
#set gro /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/NC/PCaa/step6.6_equilibration_PLpbccmtd.gro
#set xtc /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/NC/PCaa/TFectmdaa_wSS_PC_NC_s7_1us_100ps_PLpbcctmd.xtc
#
#set outa [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/NCpc_1us_100ps_dist_ionic.dat w]
#set outb [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/NCpc_1us_100ps_dist_arom.dat w]
#set outc [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/NCpc_1us_100ps_dist_zpos.dat w]
#
#mol load gro $gro
#bigdcd ncpc_kd xtc $xtc
#bigdcd_wait
#close $outa
#close $outb
#close $outc
#mol delete all
#
quit




