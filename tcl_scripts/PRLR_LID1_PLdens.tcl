### PRLR LID1 + Lipids --- Density ####

### M2 ####

## PC prot only ##
# set outputname "PRLR_LID1_PC_cgm2" 
# set gro "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PC_m2cg/PRLR_LID1_PC_s6.6_pbcctmd.gro"
# set xtc "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PC_m2cg/PRLR_LID1_PC_1ns_10us_pbcctmd.xtc"
# mol new $gro 
# mol addfile $xtc first 1000 waitfor all

# set prot [atomselect top "same resid as name BB"]

# volmap density $prot -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_Protdens.dx

# mol delete all

# ## PCPS ##
# set outputname "PRLR_LID1_PCPS_cgm2" 
# set gro "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPS_m2cg/PRLR_LID1_m2PCPS_s6.6_PL_pbcctmd.gro"
# set xtc "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPS_m2cg/PRLR_LID1_m2PCPS_10us_1ns_PL_pbcctmd.xtc"
# mol new $gro 
# mol addfile $xtc first 1000 waitfor all

# set prot [atomselect top "same resid as name BB"]

# set PS [atomselect top "resname POPS"]
# set PSpo4 [atomselect top "resname POPS and name PO4"]

# volmap density $PS   -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_PSdens.dx 
# volmap density $PSpo4   -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_PSdens_po4.dx 
# volmap density $prot -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_Protdens.dx

# mol delete all

# ## PCPSPIP2 811 ##
# set outputname "PRLR_LID1_PCPSPI2_811_cgm2" 
# set gro "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_811_m2cg/PRLR_LID1_PCPSPIP2_PL_pbcctmd.gro"
# set xtc "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_811_m2cg/PRLR_LID1_PCPSPIP2_10us_1ns_PL_pbcctmd.xtc"
# mol new $gro 
# mol addfile $xtc first 1000 waitfor all

# set prot [atomselect top "same resid as name BB"]

# set PS [atomselect top "resname POPS"]
# set PSpo4 [atomselect top "resname POPS and name PO4"]

# set PIP2 [atomselect top "resname POP2"]
# set PIP2po4 [atomselect top "resname POP2 and name PO4"]

# volmap density $PS   -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_PSdens.dx 
# volmap density $PSpo4   -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_PSdens_po4.dx 
# volmap density $PIP2 -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_PIP2dens.dx  
# volmap density $PIP2po4 -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_PIP2dens_po4.dx  
# volmap density $prot -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_Protdens.dx

# mol delete all

# ## PCPSPIP2 955 ##
# set outputname "PRLR_LID1_PCPSPI2_955_cgm2" 
# set gro "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/gromacs/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg_s6.6PLpbcc.gro"
# set xtc "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg/gromacs/PRLR_LID1_500lipids_PCPSPIP2_9055_m2cg_1ns_10us_PLpbcctmd.xtc"
# mol new $gro 
# mol addfile $xtc first 1000 waitfor all

# set prot [atomselect top "same resid as name BB"]

# set PS [atomselect top "resname POPS"]
# set PSpo4 [atomselect top "resname POPS and name PO4"]

# set PIP2 [atomselect top "resname POP2"]
# set PIP2po4 [atomselect top "resname POP2 and name PO4"]

# volmap density $PS   -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_PSdens.dx 
# volmap density $PSpo4   -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_PSdens_po4.dx 
# volmap density $PIP2 -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_PIP2dens.dx  
# volmap density $PIP2po4 -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_PIP2dens_po4.dx  
# volmap density $prot -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_Protdens.dx

# mol delete all

# #### M3 ####

# ## PC ##
# set outputname "PRLR_LID1_PC_cgm3"
# set gro "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PC/PRLR_LID1_500lipids_PC_m3cg_6.6PLpbcc.gro"
# set xtc "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PC/PRLR_LID1_500lipids_PC_m3cg_1ns_12us_PLpbcctmd.xtc"
# mol new $gro 
# mol addfile $xtc first 1000 waitfor all

# set prot [atomselect top "same resid as name BB"]

# volmap density $prot -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_Protdens.dx

# mol delete all

# ## PCPS ##
# # set outputname "PRLR_LID1_PCPS_cgm3" 
# # set gro ""
# # set xtc ""
# # mol new $gro 
# # mol addfile $xtc first 1000 waitfor all

# # set prot [atomselect top "same resid as name BB"]

# #
# # set PS [atomselect top "resname POPS"]

# # volmap density $PS   -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_PSdens.dx 
# # volmap density $prot -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_Protdens.dx

# # mol delete all

# ## PCPSPIP2 811 (3µs) ##
# set outputname "PRLR_LID1_PCPSPIP2_811_cgm3" 
# set gro "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_811/PRLR_LID1_PCPSPIP2_811_m3_s6.6PLpbcc.gro"
# set xtc "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_811/PRLR_LID1_PCPSPIP2_811_m3_1ns_3usPLpbcctmd.xtc"
# mol new $gro 
# mol addfile $xtc first 1000 waitfor all

# set prot [atomselect top "same resid as name BB"]

# set PS [atomselect top "resname POPS"]
# set PSpo4 [atomselect top "resname POPS and name PO4"]

# set PIP2 [atomselect top "resname POP2"]
# set PIP2po4 [atomselect top "resname POP2 and name PO4"]

# volmap density $PS   -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_PSdens.dx 
# volmap density $PSpo4   -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_PSdens_po4.dx 
# volmap density $PIP2 -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_PIP2dens.dx  
# volmap density $PIP2po4 -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_PIP2dens_po4.dx  
# volmap density $prot -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_Protdens.dx

# mol delete all

## PCPSPIP2 955 ##

#### M3 pws10 ###

## PC ##
# set outputname "PRLR_LID1_PC_cg_m3pws10" 
# set gro "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PC/pws10/PRLR_LID1_PC_m3pws10_s6.6_PL_pbcc.gro"
# set xtc "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PC/pws10/PRLR_LID1_PC_m3pws10_11us_1ns_PL_pbcctmd.xtc"
# mol new $gro 
# mol addfile $xtc first 1000 waitfor all

# set prot [atomselect top "same resid as name BB"]

# volmap density $prot -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_Protdens.dx

# mol delete all

## PCPS (10µs) ##
set outputname "PRLR_LID1_PCPS_cgm3pws10_10us" 
set gro "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPS/pws10/PRLR_LID1_PCPS_m3pws10_s6.6_PLpbcctmd.gro"
set xtc "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPS/pws10/PRLR_LID1_PCPS_m3pws10_10us_1ns_PLpbcctmd.xtc"
mol new $gro 
mol addfile $xtc first 1000 waitfor all

set prot [atomselect top "same resid as name BB"]

set PS [atomselect top "resname POPS"]
set PSpo4 [atomselect top "resname POPS and name PO4"]

volmap density $PS   -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_PSdens.dx 
volmap density $PSpo4   -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_PSdens_po4.dx 
volmap density $prot -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_Protdens.dx

mol delete all

## PCPSIP2 811 ##
# set outputname "PRLR_LID1_PCPSPI2_811_cgm3pws10" 
# set gro "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_811/pws10/PRLR_LID1_PCPSPIP2_811_m3pws10_s6.6_PL_pbcc.gro"
# set xtc "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_811/pws10/PRLR_LID1_PCPSPIP2_811_m3pws10_11us_1ns_PL_pbcctmd.xtc"
# mol new $gro 
# mol addfile $xtc first 1000 waitfor all

# set prot [atomselect top "same resid as name BB"]

# set PS [atomselect top "resname POPS"]
# set PSpo4 [atomselect top "resname POPS and name PO4"]

# set PIP2 [atomselect top "resname POP2"]
# set PIP2po4 [atomselect top "resname POP2 and name PO4"]

# volmap density $PS   -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_PSdens.dx 
# volmap density $PSpo4   -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_PSdens_po4.dx 
# volmap density $PIP2 -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_PIP2dens.dx  
# volmap density $PIP2po4 -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_PIP2dens_po4.dx  
# volmap density $prot -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_Protdens.dx

# mol delete all

## PCPSPIP2 955 10µs##

set outputname "PRLR_LID1_PCPSPI2_955_cgm3pws10_10us" 
set gro "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/PRLR_LID1_PCPSPIP2_955_s6.6_m3pws10_PLpbcctmd.gro"
set xtc "/media/4TB_HDD/raul/projects/synergy/SPTMRs/PRLR/CG/M3/PRLR_LID1_PCPSPIP2_955/pws10/PRLR_LID1_PCPSPIP2_955_1ns_10us_m3pws10_PLpbcctmd.xtc"
mol new $gro 
mol addfile $xtc first 1000 waitfor all

set prot [atomselect top "same resid as name BB"]

set PS [atomselect top "resname POPS"]
set PSpo4 [atomselect top "resname POPS and name PO4"]

set PIP2 [atomselect top "resname POP2"]
set PIP2po4 [atomselect top "resname POP2 and name PO4"]

volmap density $PS   -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_PSdens.dx 
volmap density $PSpo4   -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_PSdens_po4.dx 
volmap density $PIP2 -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_PIP2dens.dx  
volmap density $PIP2po4 -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_PIP2dens_po4.dx  
volmap density $prot -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/SPTMRs/PRLR/CG/results/density/${outputname}_1ns_m1us_Protdens.dx

mol delete all
quit










