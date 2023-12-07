## CL PCPS ##

#mol new /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/CL/PCPSaa/step6.6_equilibration_PLpbcctmd.gro
#mol addfile /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/CL/PCPSaa/TFecdtmaa_wSSb_CL_PCPS_s7_1us_100ps_PLpbcctmd.xtc first 1999 step 2 waitfor all
# For per- element density use the full-system trj
#mol new /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/CL/PCPSaa/step6.6_equilibration.gro
mol new /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/CL/PCPSaa/step5_charmm2gmx.psf
mol addfile /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/CL/PCPSaa/TFecdtmaa_wSSb_CL_PCPS_s7_1us_100ps_pbcctmd.xtc first 1999 step 2 waitfor all
#set prot [atomselect top "protein and noh and resid 1 to 219"]
#set P [atomselect top "name P"]
## LIPID Headgroups -- PCPS ##
#Select per elelemt -- NCOHSP

#set H [atomselec top "hydrogen"] 
set W [atomselect top "water"]
#set O [atomselect top "oxygen"] 
#set C [atomselect top "carbon"] 
#set N [atomselect top "nitrogen"] 
#
#set lC [atomselect top {name "C.*" and same resid as (resname POPC POPS)}]
#set pC [atomselect top {name "C.*" and same resid as (protein)}]
set  wH [atomselect top {name "H.*" and same resid as (name OH2)}]
set  pH [atomselect top {name "H.*" and same resid as (protein)}]
#set lH [atomselect top {name "H.*" and same resid as (resname POPC POPS)}]
set  pN [atomselect top {name "N.*" and same resid as (protein)}]
#set lN [atomselect top {name "N.*" and same resid as (resname POPC POPS)}]
set  wO [atomselect top {name "O.*" and same resid as (name OH2)}]
set  pO [atomselect top {name "O.*" and same resid as (protein)}]
#set lO [atomselect top {name "O.*" and same resid as (resname POPC POPS)}]
#set P [atomselect top "name P"]
#set S [atomselect top {name "S.*" and same resid as (protein)}]
set prot [atomselect top protein]

set $out_wH   [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/dens/elements/dim_wHpbctmd.dat w]
set $out_pH   [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/dens/elements/dim_pHpbctmd.dat w]
set $out_lH   [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/dens/elements/dim_lHpbctmd.dat w]
set $out_pN   [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/dens/elements/dim_pNpbctmd.dat w]
set $out_lN   [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/dens/elements/dim_lNpbctmd.dat w]
set $out_wO   [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/dens/elements/dim_wOpbctmd.dat w]
set $out_pO   [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/dens/elements/dim_pOpbctmd.dat w]
set $out_prot [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/dens/elements/dim_protpbctmd.dat w]

set nfpcps [molinfo top get numframes]

for {set i 0} {$i <= $nfpcps} {incr i} {
    $wH   frame $i
    $pH   frame $i
    $lH   frame $i
    $pN   frame $i
    $lN   frame $i
    $wO   frame $i
    $pO   frame $i
    $prot frame $i

    set dim_wH   [measure minmax $wH  ]
    set dim_pH   [measure minmax $pH  ]
    set dim_lH   [measure minmax $lH  ]
    set dim_pN   [measure minmax $pN  ]
    set dim_lN   [measure minmax $lN  ]
    set dim_wO   [measure minmax $wO  ]
    set dim_pO   [measure minmax $pO  ]
    set dim_prot [measure minmax $prot]

    set dim_wHx   [expr [lindex $dim_wH   0 0]-[lindex $dim_wH   1 0]]
    set dim_pHx   [expr [lindex $dim_pH   0 0]-[lindex $dim_pH   1 0]]
    set dim_lHx   [expr [lindex $dim_lH   0 0]-[lindex $dim_lH   1 0]]
    set dim_pNx   [expr [lindex $dim_pN   0 0]-[lindex $dim_pN   1 0]]
    set dim_lNx   [expr [lindex $dim_lN   0 0]-[lindex $dim_lN   1 0]]
    set dim_wOx   [expr [lindex $dim_wO   0 0]-[lindex $dim_wO   1 0]]
    set dim_pOx   [expr [lindex $dim_pO   0 0]-[lindex $dim_pO   1 0]]
    set dim_protx [expr [lindex $dim_prot 0 0]-[lindex $dim_prot 1 0]]

    set dim_wHy   [expr [lindex $dim_wH   0 1]-[lindex $dim_wH   1 1]]
    set dim_pHy   [expr [lindex $dim_pH   0 1]-[lindex $dim_pH   1 1]]
    set dim_lHy   [expr [lindex $dim_lH   0 1]-[lindex $dim_lH   1 1]]
    set dim_pNy   [expr [lindex $dim_pN   0 1]-[lindex $dim_pN   1 1]]
    set dim_lNy   [expr [lindex $dim_lN   0 1]-[lindex $dim_lN   1 1]]
    set dim_wOy   [expr [lindex $dim_wO   0 1]-[lindex $dim_wO   1 1]]
    set dim_pOy   [expr [lindex $dim_pO   0 1]-[lindex $dim_pO   1 1]]
    set dim_proty [expr [lindex $dim_prot 0 1]-[lindex $dim_prot 1 1]]

    set dim_wHz   [expr [lindex $dim_wH   0 2]-[lindex $dim_wH   1 2]]
    set dim_pHz   [expr [lindex $dim_pH   0 2]-[lindex $dim_pH   1 2]]
    set dim_lHz   [expr [lindex $dim_lH   0 2]-[lindex $dim_lH   1 2]]
    set dim_pNz   [expr [lindex $dim_pN   0 2]-[lindex $dim_pN   1 2]]
    set dim_lNz   [expr [lindex $dim_lN   0 2]-[lindex $dim_lN   1 2]]
    set dim_wOz   [expr [lindex $dim_wO   0 2]-[lindex $dim_wO   1 2]]
    set dim_pOz   [expr [lindex $dim_pO   0 2]-[lindex $dim_pO   1 2]]
    set dim_protz [expr [lindex $dim_prot 0 2]-[lindex $dim_prot 1 2]]

    set dim_wHxy   [expr dim_wHx   * dim_wHy  ]
    set dim_pHxy   [expr dim_pHx   * dim_pHy  ]
    set dim_lHxy   [expr dim_lHx   * dim_lHy  ]
    set dim_pNxy   [expr dim_pNx   * dim_pNy  ]
    set dim_lNxy   [expr dim_lNx   * dim_lNy  ]
    set dim_wOxy   [expr dim_wOx   * dim_wOy  ]
    set dim_pOxy   [expr dim_pOx   * dim_pOy  ]
    set dim_protxy [expr dim_protx * dim_proty]

    puts $out_wH    "$i $dim_wHx   dim_wHy   $dim_wHxy   dim_wHz  "
    puts $out_pH    "$i $dim_pHx   dim_pHy   $dim_pHxy   dim_pHz  "
    puts $out_lH    "$i $dim_lHx   dim_lHy   $dim_lHxy   dim_lHz  "
    puts $out_pN    "$i $dim_pNx   dim_pNy   $dim_pNxy   dim_pNz  "
    puts $out_lN    "$i $dim_lNx   dim_lNy   $dim_lNxy   dim_lNz  "
    puts $out_wO    "$i $dim_wOx   dim_wOy   $dim_wOxy   dim_wOz  "
    puts $out_pO    "$i $dim_pOx   dim_pOy   $dim_pOxy   dim_pOz  "
    puts $out_prot  "$i $dim_protx dim_proty $dim_protxy dim_protz"
}
close $out_wH  
close $out_pH  
close $out_lH  
close $out_pN  
close $out_lN  
close $out_wO  
close $out_pO  
close $out_prot
