set out1 [open ../BME/ub_pws5_Rg_1ns.dat w]
for {set i 0} {$i <= 5638} {incr i} {
    mol new AA_frame$i.pdb
    set all [atomselect top all]
    $all frame $i
    set rg [measure rgyr $all]
    puts $out1 "AA_frame$i $rg"
    mol delete all
}

close $out1

quit