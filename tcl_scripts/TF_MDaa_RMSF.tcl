## NC PCPS ##
#mol new /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/NC/PCPSaa/step5_charmm2gmx.pdb
#mol addfile /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/NC/PCPSaa/step5_charmm2gmx.psf
#
## Define Reference #
#set tfn_ref [atomselect top "protein and resid 1 to 106 and name CA"]
#set tfc_ref [atomselect top "protein and resid 107 to 210 and name CA"]
#set ecd_ref [atomselect top "protein and resid 1 to 210 and name CA"]
#set all_ref [atomselect top "protein"]
#set allCA_ref [atomselect top "protein and name CA"]
#set ref_tmd [atomselect top "protein and resid 219 to 242 and name CA"]
#set ref_linker [atomselect top "protein and resid 211 to 218 and name CA"]
#
#mol new /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/NC/PCPSaa/step6.6_equilibration_PLpbcctmd.gro
#mol addfile /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/NC/PCPSaa/TFecdtmaa_wSSb_NC_PCPS_s7_1us_100ps_pbccTMD.xtc waitfor all
#
#set out1 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/TF_NC_PCPS_1us_100ps_RMSF.dat w]
#set out2 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/TF_NC_PCPS_1us_100ps_ECD_RMSF.dat w]
#set out3 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/TF_NC_PCPS_1us_100ps_TMD_RMSF.dat w]
#set out4 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/TF_NC_PCPS_1us_100ps_linker_RMSF.dat w]
#
## ## Define domains ##
# set tfn [atomselect top "protein and resid 1 to 106 and name CA"]
# set tfc [atomselect top "protein and resid 107 to 210 and name CA"]
# set ecd [atomselect top "protein and resid 1 to 210 and name CA"]
# set all [atomselect top "protein"]
# set allCA [atomselect top "protein and name CA" ]
# set tmd [atomselect top "protein and resid 219 to 242 and name CA"]
# set linker [atomselect top "protein and resid 211 to 218 and name CA"]
# #measure RMSf
# 
# set nfpcps [molinfo top get numframes]
#
# for {set i 0} {$i <= $nfpcps} {incr i} {
#    $tfn   frame $i  
#    $tfc   frame $i  
#    $ecd   frame $i  
#    $all   frame $i  
#    $allCA frame $i   
#    $tmd   frame $i  
#    $linker frame $i
#    # align all prot 
#    set align_prot [measure fit $allCA $allCA_ref]
#    $all move $align_prot
# }
#set Rmsf_prot_alProt [measure rmsf $allCA]
#puts $out1 "$Rmsf_prot_alProt"
#close $out1
#
#for {set i 0} {$i <= $nfpcps} {incr i} {
#    $tfn   frame $i  
#    $tfc   frame $i  
#    $ecd   frame $i  
#    $all   frame $i  
#    $allCA frame $i   
#    $tmd   frame $i  
#    $linker frame $i
#    # align all prot 
#    set align_ECD [measure fit $ecd $ecd_ref]
#    $all move $align_ECD
# }
#set Rmsf_ECD_alECD [measure rmsf $ecd]
#puts $out2 "$Rmsf_ECD_alECD"
#close $out2
#
#for {set i 0} {$i <= $nfpcps} {incr i} {
#    $tfn   frame $i  
#    $tfc   frame $i  
#    $ecd   frame $i  
#    $all   frame $i  
#    $allCA frame $i   
#    $tmd   frame $i  
#    $linker frame $i
#    # align all prot 
#    set align_TMD [measure fit $tmd $ref_tmd]
#    $all move $align_TMD
# }
#set Rmsf_TMD_alTMD [measure rmsf $tmd]
#puts $out3 "$Rmsf_TMD_alTMD"
#close $out3
#
#for {set i 0} {$i <= $nfpcps} {incr i} {
#    $tfn   frame $i  
#    $tfc   frame $i  
#    $ecd   frame $i  
#    $all   frame $i  
#    $allCA frame $i   
#    $tmd   frame $i  
#    $linker frame $i
#    # align all prot 
#    set align_linker [measure fit $linker $ref_linker]
#    $all move $align_linker
# }
#set Rmsf_linker_allinker [measure rmsf $linker]
#puts $out4 "$Rmsf_linker_allinker"
##close $out4
#mol delete all 

## CL PCPS ##
#mol new /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/CL/PCPSaa/step5_charmm2gmx.pdb
#mol addfile /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/CL/PCPSaa/step5_charmm2gmx.psf
#
## Define Reference #
#set tfn_ref [atomselect top "protein and resid 1 to 106 and name CA"]
#set tfc_ref [atomselect top "protein and resid 107 to 210 and name CA"]
#set ecd_ref [atomselect top "protein and resid 1 to 210 and name CA"]
#set all_ref [atomselect top "protein"]
#set allCA_ref [atomselect top "protein and name CA"]
#set ref_tmd [atomselect top "protein and resid 219 to 242 and name CA"]
#set ref_linker [atomselect top "protein and resid 211 to 218 and name CA"]
#
#mol new /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/CL/PCPSaa/step6.6_equilibration_PLpbcctmd.gro
#mol addfile /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/CL/PCPSaa/TFecdtmaa_wSSb_CL_PCPS_s7_1us_100ps_PLpbcctmd.xtc waitfor all
#
#set out1 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/TF_CL_PCPS_1us_100ps_RMSF.dat w]
#set out2 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/TF_CL_PCPS_1us_100ps_ECD_RMSF.dat w]
#set out3 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/TF_CL_PCPS_1us_100ps_TMD_RMSF.dat w]
#set out4 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/TF_CL_PCPS_1us_100ps_linker_RMSF.dat w]
#
## ## Define domains ##
# set tfn [atomselect top "protein and resid 1 to 106 and name CA"]
# set tfc [atomselect top "protein and resid 107 to 210 and name CA"]
# set ecd [atomselect top "protein and resid 1 to 210 and name CA"]
# set all [atomselect top "protein"]
# set allCA [atomselect top "protein and name CA" ]
# set tmd [atomselect top "protein and resid 219 to 242 and name CA"]
# set linker [atomselect top "protein and resid 211 to 218 and name CA"]
# #measure RMSf
# 
# set nfpcps [molinfo top get numframes]
#
# for {set i 0} {$i <= $nfpcps} {incr i} {
#    $tfn   frame $i  
#    $tfc   frame $i  
#    $ecd   frame $i  
#    $all   frame $i  
#    $allCA frame $i   
#    $tmd   frame $i  
#    $linker frame $i
#    # align all prot 
#    set align_prot [measure fit $allCA $allCA_ref]
#    $all move $align_prot
# }
#set Rmsf_prot_alProt [measure rmsf $allCA]
#puts $out1 "$Rmsf_prot_alProt"
#close $out1
#
#for {set i 0} {$i <= $nfpcps} {incr i} {
#    $tfn   frame $i  
#    $tfc   frame $i  
#    $ecd   frame $i  
#    $all   frame $i  
#    $allCA frame $i   
#    $tmd   frame $i  
#    $linker frame $i
#    # align all prot 
#    set align_ECD [measure fit $ecd $ecd_ref]
#    $all move $align_ECD
# }
#set Rmsf_ECD_alECD [measure rmsf $ecd]
#puts $out2 "$Rmsf_ECD_alECD"
#close $out2
#
#for {set i 0} {$i <= $nfpcps} {incr i} {
#    $tfn   frame $i  
#    $tfc   frame $i  
#    $ecd   frame $i  
#    $all   frame $i  
#    $allCA frame $i   
#    $tmd   frame $i  
#    $linker frame $i
#    # align all prot 
#    set align_TMD [measure fit $tmd $ref_tmd]
#    $all move $align_TMD
# }
#set Rmsf_TMD_alTMD [measure rmsf $tmd]
#puts $out3 "$Rmsf_TMD_alTMD"
#close $out3
#
#for {set i 0} {$i <= $nfpcps} {incr i} {
#    $tfn   frame $i  
#    $tfc   frame $i  
#    $ecd   frame $i  
#    $all   frame $i  
#    $allCA frame $i   
#    $tmd   frame $i  
#    $linker frame $i
#    # align all prot 
#    set align_linker [measure fit $linker $ref_linker]
#    $all move $align_linker
# }
#set Rmsf_linker_allinker [measure rmsf $linker]
#puts $out4 "$Rmsf_linker_allinker"
#close $out4
#
#mol delete all

## NC PC ##

#mol new /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/NC/PCaa/step5_charmm2gmx.pdb
#mol addfile /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/NC/PCaa/step5_charmm2gmx.psf
#
## Define Reference #
#set tfn_ref [atomselect top "protein and resid 1 to 106 and name CA"]
#set tfc_ref [atomselect top "protein and resid 107 to 210 and name CA"]
#set ecd_ref [atomselect top "protein and resid 1 to 210 and name CA"]
#set all_ref [atomselect top "protein"]
#set allCA_ref [atomselect top "protein and name CA"]
#set ref_tmd [atomselect top "protein and resid 219 to 242 and name CA"]
#set ref_linker [atomselect top "protein and resid 211 to 218 and name CA"]
#
#mol new /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/NC/PCaa/step6.6_equilibration_PLpbccmtd.gro
#mol addfile /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/NC/PCaa/TFectmdaa_wSS_PC_NC_s7_1us_100ps_PLpbcctmd.xtc waitfor all
#
#set out1 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/TF_NC_PC_1us_100ps_RMSF.dat w]
#set out2 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/TF_NC_PC_1us_100ps_ECD_RMSF.dat w]
#set out3 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/TF_NC_PC_1us_100ps_TMD_RMSF.dat w]
#set out4 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/TF_NC_PC_1us_100ps_linker_RMSF.dat w]
#
## ## Define domains ##
# set tfn [atomselect top "protein and resid 1 to 106 and name CA"]
# set tfc [atomselect top "protein and resid 107 to 210 and name CA"]
# set ecd [atomselect top "protein and resid 1 to 210 and name CA"]
# set all [atomselect top "protein"]
# set allCA [atomselect top "protein and name CA" ]
# set tmd [atomselect top "protein and resid 219 to 242 and name CA"]
# set linker [atomselect top "protein and resid 211 to 218 and name CA"]
# #measure RMSf
# 
# set nfpcps [molinfo top get numframes]
#
# for {set i 0} {$i <= $nfpcps} {incr i} {
#    $tfn   frame $i  
#    $tfc   frame $i  
#    $ecd   frame $i  
#    $all   frame $i  
#    $allCA frame $i   
#    $tmd   frame $i  
#    $linker frame $i
#    # align all prot 
#    set align_prot [measure fit $allCA $allCA_ref]
#    $all move $align_prot
# }
#set Rmsf_prot_alProt [measure rmsf $allCA]
#puts $out1 "$Rmsf_prot_alProt"
#close $out1
#
#for {set i 0} {$i <= $nfpcps} {incr i} {
#    $tfn   frame $i  
#    $tfc   frame $i  
#    $ecd   frame $i  
#    $all   frame $i  
#    $allCA frame $i   
#    $tmd   frame $i  
#    $linker frame $i
#    # align all prot 
#    set align_ECD [measure fit $ecd $ecd_ref]
#    $all move $align_ECD
# }
#set Rmsf_ECD_alECD [measure rmsf $ecd]
#puts $out2 "$Rmsf_ECD_alECD"
#close $out2
#
#for {set i 0} {$i <= $nfpcps} {incr i} {
#    $tfn   frame $i  
#    $tfc   frame $i  
#    $ecd   frame $i  
#    $all   frame $i  
#    $allCA frame $i   
#    $tmd   frame $i  
#    $linker frame $i
#    # align all prot 
#    set align_TMD [measure fit $tmd $ref_tmd]
#    $all move $align_TMD
# }
#set Rmsf_TMD_alTMD [measure rmsf $tmd]
#puts $out3 "$Rmsf_TMD_alTMD"
#close $out3
#
#for {set i 0} {$i <= $nfpcps} {incr i} {
#    $tfn   frame $i  
#    $tfc   frame $i  
#    $ecd   frame $i  
#    $all   frame $i  
#    $allCA frame $i   
#    $tmd   frame $i  
#    $linker frame $i
#    # align all prot 
#    set align_linker [measure fit $linker $ref_linker]
#    $all move $align_linker
# }
#set Rmsf_linker_allinker [measure rmsf $linker]
#puts $out4 "$Rmsf_linker_allinker"
##close $out4
#mol delete all 

## CL PC ##

#mol new      /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/CL/PCaa/step5_charmm2gmx.pdb
#mol addfile /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/CL/PCaa/step5_charmm2gmx.psf

# Define Reference #
#set tfn_ref [atomselect top "protein and resid 1 to 106 and name CA"]
#set tfc_ref [atomselect top "protein and resid 107 to 210 and name CA"]
#set ecd_ref [atomselect top "protein and resid 1 to 210 and name CA"]
#set all_ref [atomselect top "protein"]
#set allCA_ref [atomselect top "protein and name CA"]
#set ref_tmd [atomselect top "protein and resid 219 to 242 and name CA"]
#set ref_linker [atomselect top "protein and resid 211 to 218 and name CA"]

#mol new /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/CL/PCaa/step6.6_equilibration_PLpbcctmd.gro
#mol addfile /home/raul/remote-home/remote-home/MD-sims/TF_ECD_TMD/AA/w_SSbs/CL/PCaa/TFectmdaa_wSS_PC_CL_s7_1_29_100ps_PLpbcctmd.xtc waitfor all

#set out1 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/TF_CL_PC_0d5us_100ps_RMSF.dat w]
#set out2 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/TF_CL_PC_0d5us_100ps_ECD_RMSF.dat w]
#set out3 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/TF_CL_PC_0d5us_100ps_TMD_RMSF.dat w]
#set out4 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/TF_CL_PC_0d5us_100ps_linker_RMSF.dat w]

# ## Define domains ##
 #set tfn [atomselect top "protein and resid 1 to 106 and name CA"]
 #set tfc [atomselect top "protein and resid 107 to 210 and name CA"]
 #set ecd [atomselect top "protein and resid 1 to 210 and name CA"]
 #set all [atomselect top "protein"]
 #set allCA [atomselect top "protein and name CA" ]
 #set tmd [atomselect top "protein and resid 219 to 242 and name CA"]
 #set linker [atomselect top "protein and resid 211 to 218 and name CA"]
 #measure RMSf
 
#  set nfpcps [molinfo top get numframes]

#  for {set i 0} {$i <= $nfpcps} {incr i} {
#     $tfn   frame $i  
#     $tfc   frame $i  
#     $ecd   frame $i  
#     $all   frame $i  
#     $allCA frame $i   
#     $tmd   frame $i  
#     $linker frame $i
#     # align all prot 
#     set align_prot [measure fit $allCA $allCA_ref]
#     $all move $align_prot
#  }
# set Rmsf_prot_alProt [measure rmsf $allCA]
# puts $out1 "$Rmsf_prot_alProt"
# close $out1

# for {set i 0} {$i <= $nfpcps} {incr i} {
#     $tfn   frame $i  
#     $tfc   frame $i  
#     $ecd   frame $i  
#     $all   frame $i  
#     $allCA frame $i   
#     $tmd   frame $i  
#     $linker frame $i
#     # align all prot 
#     set align_ECD [measure fit $ecd $ecd_ref]
#     $all move $align_ECD
#  }
# set Rmsf_ECD_alECD [measure rmsf $ecd]
# puts $out2 "$Rmsf_ECD_alECD"
# close $out2

# for {set i 0} {$i <= $nfpcps} {incr i} {
#     $tfn   frame $i  
#     $tfc   frame $i  
#     $ecd   frame $i  
#     $all   frame $i  
#     $allCA frame $i   
#     $tmd   frame $i  
#     $linker frame $i
#     # align all prot 
#     set align_TMD [measure fit $tmd $ref_tmd]
#     $all move $align_TMD
#  }
# set Rmsf_TMD_alTMD [measure rmsf $tmd]
# puts $out3 "$Rmsf_TMD_alTMD"
# close $out3

# for {set i 0} {$i <= $nfpcps} {incr i} {
#     $tfn   frame $i  
#     $tfc   frame $i  
#     $ecd   frame $i  
#     $all   frame $i  
#     $allCA frame $i   
#     $tmd   frame $i  
#     $linker frame $i
#     # align all prot 
#     set align_linker [measure fit $linker $ref_linker]
#     $all move $align_linker
#  }
# set Rmsf_linker_allinker [measure rmsf $linker]
# puts $out4 "$Rmsf_linker_allinker"
# close $out4
# mol delete all

## FVIIa-TFcl ##

set out1 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/FVIIac_TFCLinit_glyc_PCPS/RMS/FVIIac_TFCLinit_100ps_RMSF.dat w]
set out2 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/FVIIac_TFCLinit_glyc_PCPS/RMS/FVIIac_TFCLinit_100ps_ECD_RMSF.dat w]
set out3 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/FVIIac_TFCLinit_glyc_PCPS/RMS/FVIIac_TFCLinit_100ps_TMD_RMSF.dat w]
set out4 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/FVIIac_TFCLinit_glyc_PCPS/RMS/FVIIac_TFCLinit_100ps_linker_RMSF.dat w]
set out5 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/FVIIac_TFCLinit_glyc_PCPS/RMS/FVIIac_TFCLinit_100ps_F7_RMSF.dat w]


mol new /home/raul/projects/MD-runs/synergy/FVIIac_TFCLinit_glyc_PCPS/gromacs/step6.6_equilibration_PLS.gro

# Define Reference #
set TF_ref [atomselect top "protein and index 6816 to 10671"]
set tfn_ref [atomselect top "protein and index 6816 to 10671 and resid 1 to 106 and name CA"]
set tfc_ref [atomselect top "protein and index 6816 to 10671 and resid 107 to 210 and name CA"]
set ecd_ref [atomselect top "protein and index 6816 to 10671 and resid 1 to 210 and name CA"]
set all_ref [atomselect top "protein"]
set allCA_ref [atomselect top "protein and name CA"]
set ref_tmd [atomselect top "protein and index 6816 to 10671 and resid 219 to 242 and name CA"]
set ref_linker [atomselect top "protein and index 6816 to 10671 and resid 211 to 218 and name CA"]

set F7_ref [atomselect top "protein and index 0 to 6234"]
set F7L_ref [atomselect top "index 0 to 6815 and resid 1 to 152"]
set F7H_ref [atomselect top "index 0 to 6815 and resid 153 to 406"]
set GLA_ref [atomselect top "index 0 to 6815 and resid 1 to 48"]

mol new /home/raul/projects/MD-runs/synergy/FVIIac_TFCLinit_glyc_PCPS/gromacs/step6.6_equilibration_PLS.gro
mol addfile /home/raul/projects/MD-runs/synergy/FVIIac_TFCLinit_glyc_PCPS/gromacs/FVIIac_TFCLinit_glyc_PCPS_s7_500ns_100ps_pbcwcp_PLS_pbcw_clust_cent_m.xtc waitfor all

set TF [atomselect top "protein and index 6816 to 10671"]
set tfn [atomselect top "protein and index 6816 to 10671 and resid 1 to 106 and name CA"]
set tfc [atomselect top "protein and index 6816 to 10671 and resid 107 to 210 and name CA"]
set ecd [atomselect top "protein and index 6816 to 10671 and resid 1 to 210 and name CA"]
set all [atomselect top "protein"]
set allCA [atomselect top "protein and name CA"]
set tmd [atomselect top "protein and index 6816 to 10671 and resid 219 to 242 and name CA"]
set linker [atomselect top "protein and index 6816 to 10671 and resid 211 to 218 and name CA"]

set F7 [atomselect top "protein and index 0 to 6234"]
set F7L [atomselect top "index 0 to 6234 and resid 1 to 152"]
set F7H [atomselect top "index 0 to 6234 and resid 153 to 406"]
set GLA [atomselect top "index 0 to 6234 and resid 1 to 48"]
 
 set nfpcps [molinfo top get numframes]

 for {set i 0} {$i <= $nfpcps} {incr i} {
    $TF frame $i
    $tfn   frame $i  
    $tfc   frame $i  
    $ecd   frame $i  
    $all   frame $i  
    $allCA frame $i   
    $tmd   frame $i  
    $linker frame $i
    $F7  frame $i
    $F7L frame $i
    $F7H frame $i
    $GLA frame $i
    # align all prot 
    set align_prot [measure fit $allCA $allCA_ref]
    $all move $align_prot
 }
set Rmsf_prot_alProt [measure rmsf $allCA]
puts $out1 "$Rmsf_prot_alProt"
close $out1

for {set i 0} {$i <= $nfpcps} {incr i} {
    $TF frame $i
    $tfn   frame $i  
    $tfc   frame $i  
    $ecd   frame $i  
    $all   frame $i  
    $allCA frame $i   
    $tmd   frame $i  
    $linker frame $i
    $F7  frame $i
    $F7L frame $i
    $F7H frame $i
    $GLA frame $i
    # align all prot 
    set align_ECD [measure fit $ecd $ecd_ref]
    $all move $align_ECD
 }
set Rmsf_ECD_alECD [measure rmsf $ecd]
puts $out2 "$Rmsf_ECD_alECD"
close $out2

for {set i 0} {$i <= $nfpcps} {incr i} {
    $TF frame $i
    $tfn   frame $i  
    $tfc   frame $i  
    $ecd   frame $i  
    $all   frame $i  
    $allCA frame $i   
    $tmd   frame $i  
    $linker frame $i
    $F7  frame $i
    $F7L frame $i
    $F7H frame $i
    $GLA frame $i
    # align all prot 
    set align_TMD [measure fit $tmd $ref_tmd]
    $all move $align_TMD
 }
set Rmsf_TMD_alTMD [measure rmsf $tmd]
puts $out3 "$Rmsf_TMD_alTMD"
close $out3

for {set i 0} {$i <= $nfpcps} {incr i} {
    $TF frame $i
    $tfn   frame $i  
    $tfc   frame $i  
    $ecd   frame $i  
    $all   frame $i  
    $allCA frame $i   
    $tmd   frame $i  
    $linker frame $i
    $F7  frame $i
    $F7L frame $i
    $F7H frame $i
    $GLA frame $i
    # align all prot 
    set align_linker [measure fit $linker $ref_linker]
    $all move $align_linker
 }
set Rmsf_linker_allinker [measure rmsf $linker]
puts $out4 "$Rmsf_linker_allinker"
close $out4

for {set i 0} {$i <= $nfpcps} {incr i} {
    $TF frame $i
    $tfn   frame $i  
    $tfc   frame $i  
    $ecd   frame $i  
    $all   frame $i  
    $allCA frame $i   
    $tmd   frame $i  
    $linker frame $i
    $F7  frame $i
    $F7L frame $i
    $F7H frame $i
    $GLA frame $i
    # align all prot 
    set align_F7 [measure fit $F7 $F7_ref]
    $all move $align_F7
 }
set Rmsf_F7_alF7 [measure rmsf $F7]
puts $out5 "$Rmsf_F7_alF7"
close $out5

mol delete all

quit 
