


set out1 [open /home/raul/projects/GHR_FL/GHR_ECDfl/Rg/GHR_ECDfl_m02_Rg.dat w]

for {set i 1} {$i <= 2720} {incr i} {
mol new GHR_ECDfl_m02_$i.pdb
set all [atomselect top all]
set rg1 [measure rgyr $all1]
puts $out1 "$i $rg1"
mol delete all
}
close $out1

