
##R1
proc RMSD {frame} {
global all frame0_prot prot selAN frame0_AN selBN frame0_BN selCN frame0_CN selDN frame0_DN selEN frame0_EN selFN frame0_FN output_name 


#outfile
set out3 [open Zpos_$output_name.dat a+]

#Alineamiento 

    $prot frame $frame
    $all frame $frame
    $all move [measure fit $prot $frame0_prot]  
    
 #Actualizacion de Selecciones


    $selAN frame $frame
    $selBN frame $frame
    $selCN frame $frame
    $selDN frame $frame
    $selEN frame $frame
    $selFN frame $frame  

# Centres 

  set C_PROT [measure center $prot weight mass]

  set C_NTH1 [measure center $selAN weight mass]
  set C_NTH2 [measure center $selBN weight mass]
  set C_NTH3 [measure center $selCN weight mass]
  set C_NTH4 [measure center $selDN weight mass]
  set C_NTH5 [measure center $selEN weight mass]
  set C_NTH6 [measure center $selFN weight mass]


#Medicion de distancias


#get z
set NTH_1_z [lindex $C_NTH1 2]
set NTH_2_z [lindex $C_NTH2 2]
set NTH_3_z [lindex $C_NTH3 2]
set NTH_4_z [lindex $C_NTH4 2]
set NTH_5_z [lindex $C_NTH5 2]
set NTH_6_z [lindex $C_NTH6 2]

set C_PROT_z [lindex $C_PROT 2]

# NTH - position (with the center of mass of protein-CA)

set Dist_NTH_1_PROT [expr $NTH_1_z $C_PROT_z]
set Dist_NTH_2_PROT [expr $NTH_2_z $C_PROT_z]
set Dist_NTH_3_PROT [expr $NTH_3_z $C_PROT_z]
set Dist_NTH_4_PROT [expr $NTH_4_z $C_PROT_z]
set Dist_NTH_5_PROT [expr $NTH_5_z $C_PROT_z]
set Dist_NTH_6_PROT [expr $NTH_6_z $C_PROT_z]

#outputs
 
 puts $out3 "$frame $Dist_NTH_1_PROT $Dist_NTH_2_PROT $Dist_NTH_3_PROT $Dist_NTH_4_PROT $Dist_NTH_5_PROT $Dist_NTH_6_PROT"
   # puts "$frame $A $B $C $D $E $F"

close $out3

 }

#
#call bigdcd 
source /Volumes/Knabis_TB/Trayectorias/Conexinas_IBM/bigdcd_2.tcl

# frame 0 (assembly 5)

set frame0_pdb "/Volumes/ipomea4TB/Work/Cx_Systems/WT/step5_assembly.pdb"
set frame0_psf "/Volumes/ipomea4TB/Work/WT/step5_assembly.xplor.psf"
mol load pdb $frame0_pdb psf $frame0_psf


set psf "/Volumes/ipomea4TB/Work/WT/step5_assembly.xplor.psf"
set dcd "/Volumes/ipomea4TB/Work/Trjs_WA/WT_run1_20ns_20ps_wraped_A.dcd"
mol load psf $psf 

set output_name "WT_R1cCryst"


set out_b [open Zpos_$output_name.dat w]

#Frame0_All
set frame0_prot [atomselect 0 "protein and name CA"]

#Frame0_NTH
set frame0_AN [atomselect 0 "protein and segname PROA and resid 2 to 10 and name CA"]
set frame0_BN [atomselect 0 "protein and segname PROB and resid 2 to 10 and name CA"]
set frame0_CN [atomselect 0 "protein and segname PROC and resid 2 to 10 and name CA"]
set frame0_DN [atomselect 0 "protein and segname PROD and resid 2 to 10 and name CA"]
set frame0_EN [atomselect 0 "protein and segname PROE and resid 2 to 10 and name CA"]
set frame0_FN [atomselect 0 "protein and segname PROF and resid 2 to 10 and name CA"]

#Variables
set prot [atomselect 1 "protein and name CA"]
set all [atomselect 1 "all"]

#NTH
set selAN [atomselect 1 "protein and segname PROA and resid 2 to 10 and name CA"]
set selBN [atomselect 1 "protein and segname PROB and resid 2 to 10 and name CA"]
set selCN [atomselect 1 "protein and segname PROC and resid 2 to 10 and name CA"]
set selDN [atomselect 1 "protein and segname PROD and resid 2 to 10 and name CA"]
set selEN [atomselect 1 "protein and segname PROE and resid 2 to 10 and name CA"]
set selFN [atomselect 1 "protein and segname PROF and resid 2 to 10 and name CA"]


#DCD

bigdcd RMSD $dcd
bigdcd_wait
close $out_b
mol delete all

##R2
proc RMSD {frame} {
global all frame0_prot prot selAN frame0_AN selBN frame0_BN selCN frame0_CN selDN frame0_DN selEN frame0_EN selFN frame0_FN output_name 


#outfile
set out3 [open Zpos_$output_name.dat a+]

#Alineamiento 

    $prot frame $frame
    $all frame $frame
    $all move [measure fit $prot $frame0_prot]  
    
 #Actualizacion de Selecciones


    $selAN frame $frame
    $selBN frame $frame
    $selCN frame $frame
    $selDN frame $frame
    $selEN frame $frame
    $selFN frame $frame  

# Centres 

  set C_PROT [measure center $prot weight mass]

  set C_NTH1 [measure center $selAN weight mass]
  set C_NTH2 [measure center $selBN weight mass]
  set C_NTH3 [measure center $selCN weight mass]
  set C_NTH4 [measure center $selDN weight mass]
  set C_NTH5 [measure center $selEN weight mass]
  set C_NTH6 [measure center $selFN weight mass]


#Medicion de distancias


#get z
set NTH_1_z [lindex $C_NTH1 2]
set NTH_2_z [lindex $C_NTH2 2]
set NTH_3_z [lindex $C_NTH3 2]
set NTH_4_z [lindex $C_NTH4 2]
set NTH_5_z [lindex $C_NTH5 2]
set NTH_6_z [lindex $C_NTH6 2]

set C_PROT_z [lindex $C_PROT 2]

# NTH - position (with the center of mass of protein-CA)

set Dist_NTH_1_PROT [expr $NTH_1_z $C_PROT_z]
set Dist_NTH_2_PROT [expr $NTH_2_z $C_PROT_z]
set Dist_NTH_3_PROT [expr $NTH_3_z $C_PROT_z]
set Dist_NTH_4_PROT [expr $NTH_4_z $C_PROT_z]
set Dist_NTH_5_PROT [expr $NTH_5_z $C_PROT_z]
set Dist_NTH_6_PROT [expr $NTH_6_z $C_PROT_z]

#outputs
 
 puts $out3 "$frame $Dist_NTH_1_PROT $Dist_NTH_2_PROT $Dist_NTH_3_PROT $Dist_NTH_4_PROT $Dist_NTH_5_PROT $Dist_NTH_6_PROT"
   # puts "$frame $A $B $C $D $E $F"
         
close $out3


 }

#
#call bigdcd 
source /Volumes/Knabis_TB/Trayectorias/Conexinas_IBM/bigdcd_2.tcl

# frame 0 (assembly 5)

set frame0_pdb "/Volumes/ipomea4TB/Work/Cx_Systems/WT/step5_assembly.pdb"
set frame0_psf "/Volumes/ipomea4TB/Work/WT/step5_assembly.xplor.psf"
mol load pdb $frame0_pdb psf $frame0_psf


set psf "/Volumes/ipomea4TB/Work/WT/step5_assembly.xplor.psf"
set dcd "/Volumes/ipomea4TB/Work/Trjs_WA/WT_run2_20ns_20ps_wraped_A.dcd"
mol load psf $psf 

set output_name "WT_R2cCryst"


set out_b [open Zpos_$output_name.dat w]

#Frame0_All
set frame0_prot [atomselect 2 "protein and name CA"]

#Frame0_NTH
set frame0_AN [atomselect 2 "protein and segname PROA and resid 2 to 10 and name CA"]
set frame0_BN [atomselect 2 "protein and segname PROB and resid 2 to 10 and name CA"]
set frame0_CN [atomselect 2 "protein and segname PROC and resid 2 to 10 and name CA"]
set frame0_DN [atomselect 2 "protein and segname PROD and resid 2 to 10 and name CA"]
set frame0_EN [atomselect 2 "protein and segname PROE and resid 2 to 10 and name CA"]
set frame0_FN [atomselect 2 "protein and segname PROF and resid 2 to 10 and name CA"]

#Variables
set prot [atomselect 3 "protein and name CA"]
set all [atomselect 3 "all"]

#NTH
set selAN [atomselect 3 "protein and segname PROA and resid 2 to 10 and name CA"]
set selBN [atomselect 3 "protein and segname PROB and resid 2 to 10 and name CA"]
set selCN [atomselect 3 "protein and segname PROC and resid 2 to 10 and name CA"]
set selDN [atomselect 3 "protein and segname PROD and resid 2 to 10 and name CA"]
set selEN [atomselect 3 "protein and segname PROE and resid 2 to 10 and name CA"]
set selFN [atomselect 3 "protein and segname PROF and resid 2 to 10 and name CA"]


#DCD

bigdcd RMSD $dcd
bigdcd_wait
close $out_b
mol delete all


#R3
proc RMSD3 {frame} {
global all frame0_prot prot selAN frame0_AN selBN frame0_BN selCN frame0_CN selDN frame0_DN selEN frame0_EN selFN frame0_FN output_name 


#outfile
set out3 [open Zpos_$output_name.dat a+]

#Alineamiento 

    $prot frame $frame
    $all frame $frame
    $all move [measure fit $prot $frame0_prot]  
    
 #Actualizacion de Selecciones
    

    $selAN frame $frame
    $selBN frame $frame
    $selCN frame $frame
    $selDN frame $frame
    $selEN frame $frame
    $selFN frame $frame  

# Centres 

  set C_PROT [measure center $prot weight mass]

  set C_NTH1 [measure center $selAN weight mass]
  set C_NTH2 [measure center $selBN weight mass]
  set C_NTH3 [measure center $selCN weight mass]
  set C_NTH4 [measure center $selDN weight mass]
  set C_NTH5 [measure center $selEN weight mass]
  set C_NTH6 [measure center $selFN weight mass]


#Medicion de distancias


#get z
set NTH_1_z [lindex $C_NTH1 2]
set NTH_2_z [lindex $C_NTH2 2]
set NTH_3_z [lindex $C_NTH3 2]
set NTH_4_z [lindex $C_NTH4 2]
set NTH_5_z [lindex $C_NTH5 2]
set NTH_6_z [lindex $C_NTH6 2]

set C_PROT_z [lindex $C_PROT 2]

# NTH - position (with the center of mass of protein-CA)

set Dist_NTH_1_PROT [expr $NTH_1_z $C_PROT_z]
set Dist_NTH_2_PROT [expr $NTH_2_z $C_PROT_z]
set Dist_NTH_3_PROT [expr $NTH_3_z $C_PROT_z]
set Dist_NTH_4_PROT [expr $NTH_4_z $C_PROT_z]
set Dist_NTH_5_PROT [expr $NTH_5_z $C_PROT_z]
set Dist_NTH_6_PROT [expr $NTH_6_z $C_PROT_z]

#outputs
 
 puts $out3 "$frame $Dist_NTH_1_PROT $Dist_NTH_2_PROT $Dist_NTH_3_PROT $Dist_NTH_4_PROT $Dist_NTH_5_PROT $Dist_NTH_6_PROT"
   # puts "$frame $A $B $C $D $E $F"
         

close $out3

 }

#
#call bigdcd 
source /Volumes/Knabis_TB/Trayectorias/Conexinas_IBM/bigdcd_2.tcl

# frame 0 (assembly 5)

set frame0_pdb "/Volumes/ipomea4TB/Work/Cx_Systems/WT/step5_assembly.pdb"
set frame0_psf "/Volumes/ipomea4TB/Work/WT/step5_assembly.xplor.psf"
mol load pdb $frame0_pdb psf $frame0_psf


set psf "/Volumes/ipomea4TB/Work/WT/step5_assembly.xplor.psf"
set dcd "/Volumes/ipomea4TB/Work/Trjs_WA/WT_run3_20ns_20ps_wraped_A.dcd"
mol load psf $psf 

set output_name "WT_R3cCryst"


set out_b [open Zpos_$output_name.dat w]

#Frame0_All
set frame0_prot [atomselect 4 "protein and name CA"]

#Frame0_NTH
set frame0_AN [atomselect 4 "protein and segname PROA and resid 2 to 10 and name CA"]
set frame0_BN [atomselect 4 "protein and segname PROB and resid 2 to 10 and name CA"]
set frame0_CN [atomselect 4 "protein and segname PROC and resid 2 to 10 and name CA"]
set frame0_DN [atomselect 4 "protein and segname PROD and resid 2 to 10 and name CA"]
set frame0_EN [atomselect 4 "protein and segname PROE and resid 2 to 10 and name CA"]
set frame0_FN [atomselect 4 "protein and segname PROF and resid 2 to 10 and name CA"]

#Variables
set prot [atomselect 5 "protein and name CA"]
set all [atomselect 5 "all"]

#NTH
set selAN [atomselect 5 "protein and segname PROA and resid 2 to 10 and name CA"]
set selBN [atomselect 5 "protein and segname PROB and resid 2 to 10 and name CA"]
set selCN [atomselect 5 "protein and segname PROC and resid 2 to 10 and name CA"]
set selDN [atomselect 5 "protein and segname PROD and resid 2 to 10 and name CA"]
set selEN [atomselect 5 "protein and segname PROE and resid 2 to 10 and name CA"]
set selFN [atomselect 5 "protein and segname PROF and resid 2 to 10 and name CA"]


#DCD

bigdcd RMSD3 $dcd
bigdcd_wait
close $out_b
mol delete all


#R4
proc RMSD4 {frame} {
global all frame0_prot prot selAN frame0_AN selBN frame0_BN selCN frame0_CN selDN frame0_DN selEN frame0_EN selFN frame0_FN output_name 


#outfile
set out3 [open Zpos_$output_name.dat a+]

#Alineamiento 

    $prot frame $frame
    $all frame $frame
    $all move [measure fit $prot $frame0_prot]  
    
 #Actualizacion de Selecciones

    $selAN frame $frame
    $selBN frame $frame
    $selCN frame $frame
    $selDN frame $frame
    $selEN frame $frame
    $selFN frame $frame  

# Centres 

  set C_PROT [measure center $prot weight mass]

  set C_NTH1 [measure center $selAN weight mass]
  set C_NTH2 [measure center $selBN weight mass]
  set C_NTH3 [measure center $selCN weight mass]
  set C_NTH4 [measure center $selDN weight mass]
  set C_NTH5 [measure center $selEN weight mass]
  set C_NTH6 [measure center $selFN weight mass]


#Medicion de distancias


#get z
set NTH_1_z [lindex $C_NTH1 2]
set NTH_2_z [lindex $C_NTH2 2]
set NTH_3_z [lindex $C_NTH3 2]
set NTH_4_z [lindex $C_NTH4 2]
set NTH_5_z [lindex $C_NTH5 2]
set NTH_6_z [lindex $C_NTH6 2]

set C_PROT_z [lindex $C_PROT 2]

# NTH - position (with the center of mass of protein-CA)

set Dist_NTH_1_PROT [expr $NTH_1_z $C_PROT_z]
set Dist_NTH_2_PROT [expr $NTH_2_z $C_PROT_z]
set Dist_NTH_3_PROT [expr $NTH_3_z $C_PROT_z]
set Dist_NTH_4_PROT [expr $NTH_4_z $C_PROT_z]
set Dist_NTH_5_PROT [expr $NTH_5_z $C_PROT_z]
set Dist_NTH_6_PROT [expr $NTH_6_z $C_PROT_z]

#outputs
 
 puts $out3 "$frame $Dist_NTH_1_PROT $Dist_NTH_2_PROT $Dist_NTH_3_PROT $Dist_NTH_4_PROT $Dist_NTH_5_PROT $Dist_NTH_6_PROT"
   # puts "$frame $A $B $C $D $E $F"

close $out3

 }

#
#call bigdcd 
source /Volumes/Knabis_TB/Trayectorias/Conexinas_IBM/bigdcd_2.tcl

# frame 0 (assembly 5)

set frame0_pdb "/Volumes/ipomea4TB/Work/Cx_Systems/WT/step5_assembly.pdb"
set frame0_psf "/Volumes/ipomea4TB/Work/WT/step5_assembly.xplor.psf"
mol load pdb $frame0_pdb psf $frame0_psf


set psf "/Volumes/ipomea4TB/Work/WT/step5_assembly.xplor.psf"
set dcd "/Volumes/ipomea4TB/Work/Trjs_WA/WT_run4_20ns_20ps_wraped_A.dcd"
mol load psf $psf 

set output_name "WT_R4cCryst"


set out_b [open Zpos_$output_name.dat w]

#Frame0_All
set frame0_prot [atomselect 6 "protein and name CA"]

#Frame0_NTH
set frame0_AN [atomselect 6 "protein and segname PROA and resid 2 to 10 and name CA"]
set frame0_BN [atomselect 6 "protein and segname PROB and resid 2 to 10 and name CA"]
set frame0_CN [atomselect 6 "protein and segname PROC and resid 2 to 10 and name CA"]
set frame0_DN [atomselect 6 "protein and segname PROD and resid 2 to 10 and name CA"]
set frame0_EN [atomselect 6 "protein and segname PROE and resid 2 to 10 and name CA"]
set frame0_FN [atomselect 6 "protein and segname PROF and resid 2 to 10 and name CA"]

#Variables
set prot [atomselect 7 "protein and name CA"]
set all [atomselect 7 "all"]

#NTH
set selAN [atomselect 7 "protein and segname PROA and resid 2 to 10 and name CA"]
set selBN [atomselect 7 "protein and segname PROB and resid 2 to 10 and name CA"]
set selCN [atomselect 7 "protein and segname PROC and resid 2 to 10 and name CA"]
set selDN [atomselect 7 "protein and segname PROD and resid 2 to 10 and name CA"]
set selEN [atomselect 7 "protein and segname PROE and resid 2 to 10 and name CA"]
set selFN [atomselect 7 "protein and segname PROF and resid 2 to 10 and name CA"]


#DCD

bigdcd RMSD4 $dcd
bigdcd_wait
close $out_b
mol delete all
quit




