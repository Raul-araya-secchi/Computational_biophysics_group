# pws5

mol new /home/raul/remote-home/remote-home/MD-sims/IDPsM3/GHR_ICD/noDihedral/PWs_5/SB/GHRicd_m3pws5_noDihed_md20_prot.gro
mol addfile /home/raul/remote-home/remote-home/MD-sims/IDPsM3/GHR_ICD/noDihedral/PWs_5/SB/GHRicd_m3pws5_noDihed_md20_1_5sb1_3_100ps_prot_pbcc.xtc waitfor all 

set out [open /home/raul/projects/GHR_FL/GHR_ECDfl_TMD_ICDfl_GFP_composite/CGm3/MS_noRgMetaD_pws/GHRicd_m3pws5_Rg_100ps.dat w]
set prot [atomselect top "same resid as name BB"]

set nf [molinfo top get numframes]

for {set i 1} {$i <= $nf} {incr i} {
    $prot frame $i
    set rg [measure rgyr $prot]
    puts $out "$i $rg"
}
close $out
mol delete all
# pws6

# pws7
mol new /home/raul/remote-home/remote-home/MD-sims/IDPsM3/GHR_ICD/noDihedral/PWs_5/SB/GHRicd_m3pws5_noDihed_md20_prot.gro
mol addfile /home/raul/remote-home/remote-home/MD-sims/IDPsM3/GHR_ICD/noDihedral/PWs_7/GHRicd_m3pws7_noDihed_md20_1_4_100ps_prot_pbcc.xtc waitfor all 

set out [open /home/raul/projects/GHR_FL/GHR_ECDfl_TMD_ICDfl_GFP_composite/CGm3/MS_noRgMetaD_pws/GHRicd_m3pws7_Rg_100ps.dat w]
set prot [atomselect top "same resid as name BB"]

set nf [molinfo top get numframes]

for {set i 1} {$i <= $nf} {incr i} {
    $prot frame $i
    set rg [measure rgyr $prot]
    puts $out "$i $rg"
}
close $out
mol delete all

# pws8
mol new /home/raul/remote-home/remote-home/MD-sims/IDPsM3/GHR_ICD/noDihedral/PWs_5/SB/GHRicd_m3pws5_noDihed_md20_prot.gro
mol addfile /home/raul/remote-home/remote-home/MD-sims/IDPsM3/GHR_ICD/noDihedral/PWs_8/GHRicd_m3pws8_noDihed_md20_1_2_100ps_prot_pbcc.xtc waitfor all 

set out [open /home/raul/projects/GHR_FL/GHR_ECDfl_TMD_ICDfl_GFP_composite/CGm3/MS_noRgMetaD_pws/GHRicd_m3pws8_Rg_100ps.dat w]
set prot [atomselect top "same resid as name BB"]

set nf [molinfo top get numframes]

for {set i 1} {$i <= $nf} {incr i} {
    $prot frame $i
    set rg [measure rgyr $prot]
    puts $out "$i $rg"
}

close $out
mol delete all
# pws9

# pws10
mol new /home/raul/remote-home/remote-home/MD-sims/IDPsM3/GHR_ICD/noDihedral/PWs_5/SB/GHRicd_m3pws5_noDihed_md20_prot.gro
mol addfile /home/raul/remote-home/remote-home/MD-sims/IDPsM3/GHR_ICD/noDihedral/PWs_10/GHRicd_m3pws10_noDihed_md20_1_7_100ps_prot_pbcc.xtc waitfor all

set out [open /home/raul/projects/GHR_FL/GHR_ECDfl_TMD_ICDfl_GFP_composite/CGm3/MS_noRgMetaD_pws/GHRicd_m3pws10_Rg_100ps.dat w]
set prot [atomselect top "same resid as name BB"]

set nf [molinfo top get numframes]

for {set i 1} {$i <= $nf} {incr i} {
    $prot frame $i
    set rg [measure rgyr $prot]
    puts $out "$i $rg"
}
close $out
mol delete all

quit