## Rg measurement (CG) for the unbiased M3-pws (5-12%) simulations of GHR-ICDfl
## Rg measured every 200ps 

# pws5
  
mol new /home/raul/remote-home/remote-home/MD-sims/IDPsM3/GHR_ICD/noDihedral/PWs_5/SB/GHRicd_m3pws5_noDihed_md20_prot.gro
mol addfile /home/raul/remote-home/remote-home/MD-sims/IDPsM3/GHR_ICD/noDihedral/PWs_5/SB/GHRicd_m3pws5_noDihed_md20_1_5sb1_3_100ps_prot_pbcc.xtc step 10 waitfor all

set out [open /media/4TB_HDD/raul/projects/synergy/GHR_ICD_CGM3pws_cont/RG/GHRicd_fl_CGM3pws5_Rg_1ns.dat w]

set id [molinfo top]
set num_steps [molinfo $id get numframes]
set all [atomselect top all]

for {set f 0} {$f <=  $num_steps} {incr f} {
    $all frame $f
    set rg [measure rgyr $all]
    puts $out "$f $rg"
}
close $out
mol delete all


# pws 8

mol new /media/4TB_HDD/raul/projects/synergy/GHR_ICD_CGM3pws_cont/pws8/relax_prot.gro
mol addfile /media/4TB_HDD/raul/projects/synergy/GHR_ICD_CGM3pws_cont/pws8/GHRicd_m3pws8_noDihed_md20_1_5_100ps_pbcwcp.xtc step 10 waitfor all

set out [open /media/4TB_HDD/raul/projects/synergy/GHR_ICD_CGM3pws_cont/RG/GHRicd_fl_CGM3pws8_Rg_1ns.dat w]

set id [molinfo top]
set num_steps [molinfo $id get numframes]
set all [atomselect top all]

for {set f 0} {$f <=  $num_steps} {incr f} {
    $all frame $f
    set rg [measure rgyr $all]
    puts $out "$f $rg"
}
close $out
mol delete all

# pws 10

mol new /media/4TB_HDD/raul/projects/synergy/GHR_ICD_CGM3pws_cont/pws10/relax_prot.gro
mol addfile /media/4TB_HDD/raul/projects/synergy/GHR_ICD_CGM3pws_cont/pws10/GHRicd_m3pws10_noDihed_md20_1_9_100ps_pbcwcp.xtc step 10 waitfor all

set out [open /media/4TB_HDD/raul/projects/synergy/GHR_ICD_CGM3pws_cont/RG/GHRicd_fl_CGM3pws10_Rg_1ns.dat w]

set id [molinfo top]
set num_steps [molinfo $id get numframes]
set all [atomselect top all]

for {set f 0} {$f <=  $num_steps} {incr f} {
    $all frame $f
    set rg [measure rgyr $all]
    puts $out "$f $rg"
}
close $out
mol delete all