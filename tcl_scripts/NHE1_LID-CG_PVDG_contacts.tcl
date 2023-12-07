
set nf [molinfo top get numframes]
set outa [open /Users/raul/Documents/Projects/SYNERGY/NHEI/LID/CG_MD/DAG_binding/results/P-DAG_contacts/NHE1_LID_CG_PVDG-S3_1-3_500ps_7d5-bb_contacts.dat w]

for {set i 0} {$i <= $nf} {incr i} {
    set JPC [atomselect top "name BB and pbwithin 7.5 of resname PVDG" frame $i] 
    puts $outa "$i [$JPC num] [$JPC get resid]"
}
close $outa