#### Projection of GFP COM on the XY plane for the GHRfl-GFP + POPC m3pws10 simulation(S) ####
## Last 20µs -- every 5 ns (4000+ frames)

set out [open /home/raul/projects/GHR_FL/GHR_ECDfl_TMD_ICDfl_GFP_composite/CGm3/GFP_COM_XY_l205ns.dat w]
set out2 [open /home/raul/projects/GHR_FL/GHR_ECDfl_TMD_ICDfl_GFP_composite/CGm3/TMD_COM_XY_l205ns.dat w]

set GFP [atomselect top "name BB and resid 620 to 846"]
set TMD [atomselect top "name BB and resid 250 to 273"]
set nf [molinfo top get numframes]

for {set i 0} {$i <= $nf} {incr i} {
    $GFP frame $i
    $TMD frame $i
    set C [measure center $GFP weight mass]
    set T [measure center $TMD weight mass]
    ## get XY coords of GFP COM
    set X [lindex $C 0]
    set Y [lindex $C 1]
    set Z [lindex $C 2]
    puts $out "$i $X $Y $Z"

    ## get XY coords of TMD COM
    set XT [lindex $T 0]
    set YT [lindex $T 1]
    set ZT [lindex $T 2]
    puts $out2 "$i $XT $YT $ZT"
}
close $out
close $out2