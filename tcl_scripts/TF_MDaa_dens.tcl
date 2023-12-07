
## Protein and lipid headgroups densities measured every 100 ps and averaged ###

mol new /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/NC/PCPSaa/step6.6_equilibration_PLpbcc.gro 
mol addfile /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/NC/PCPSaa/TFecdtmaa_wSSb_NC_PCPS_s7_1_10_20ps_pbcc_PL.xtc step 5 waitfor all

#selections for volmap dens#
 
set prot [atomselect top "protein and noh and resid 1 to 219"]
set P [atomselect top "name P"]

## LIPID Headgroups##

set HGPC [atomselect top "noh and resname POPC and not name C1 C2 C3 O21 O22 O31 O32 C31 to C39 C21 to C2922 O31 O32 C31 to C39 C21 to C29"]
set HGPS [atomselect top "noh and resname POPS  and not name C1 C2 C3 O21 O22 O31 O32 C31 to C39 C21 to C2922 O31 O32 C31 to C39 C21 to C29"]
set HG [atomselect top "noh and resname POPC POPS  and not name C1 C2 C3 O21 O22 O31 O32 C31 to C39 C21 to C2922 O31 O32 C31 to C39 C21 to C29"]

volmap density $HGPS -res 0.5 -allframes -combine avg -mol top -checkpoint 0 -o /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/PLCT/NC_1-10_pcps_HGPSdens.dx
volmap density $P -res 0.5 -allframes -combine avg -mol top -checkpoint 0 -o /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/PLCT/NC_1-10_pcps_Pdens.dx
volmap density $HG -res 0.5 -allframes -combine avg -mol top -checkpoint 0 -o /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/PLCT/NC_1-10_pcps_HGdens.dx
volmap density $HGPC -res 0.5 -allframes -combine avg -mol top -checkpoint 0 -o /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/PLCT/NC_1-10_pcps_HGPCdens.dx
volmap density $prot -res 0.5 -allframes -combine avg -mol top -checkpoint 0 -o /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/PLCT/NC_1-10_pcps_ECDdens.dx

mol delete all

mol new /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/NC/PCaa/step6.6_equilibration_PLpbcc.gro
mol addfile /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/NC/PCaa/TFectmdaa_wSS_PC_NC_s7_1-10_20ps_PLpbcc.xtc step 5 waitfor all

## LIPID Headgroups##

set HGPC [atomselect top "noh and resname POPC and not name C1 C2 C3 O21 O22 O31 O32 C31 to C39 C21 to C2922 O31 O32 C31 to C39 C21 to C29"]

volmap density $P -res 0.5 -allframes -combine avg -mol top -checkpoint 0 -o /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/PLCT/NC_1-10_pc_Pdens.dx
volmap density $HG -res 0.5 -allframes -combine avg -mol top -checkpoint 0 -o /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/PLCT/NC_1-10_pc_HGdens.dx
volmap density $prot -res 0.5 -allframes -combine avg -mol top -checkpoint 0 -o /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/NC/PLCT/NC_1-10_pc_ECDdens.dx

mol delete all

mol new /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/CL/PCPSaa/step6.6_equilibration_PLpbcc.gro 
mol addfile /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/CL/PCPSaa/TFecdtmaa_wSSb_CL_PCPS_s7_1_9_20ps_pbccPL.xtc step 5 waitfor all

#selections for volmap dens#
 
set prot [atomselect top "protein and noh and resid 1 to 219"]
set P [atomselect top "name P"]

## LIPID Headgroups##

set HGPC [atomselect top "noh and resname POPC and not name C1 C2 C3 O21 O22 O31 O32 C31 to C39 C21 to C2922 O31 O32 C31 to C39 C21 to C29"]
set HGPS [atomselect top "noh and resname POPS  and not name C1 C2 C3 O21 O22 O31 O32 C31 to C39 C21 to C2922 O31 O32 C31 to C39 C21 to C29"]
set HG [atomselect top "noh and resname POPC POPS  and not name C1 C2 C3 O21 O22 O31 O32 C31 to C39 C21 to C2922 O31 O32 C31 to C39 C21 to C29"]

volmap density $HGPS -res 0.5 -allframes -combine avg -mol top -checkpoint 0 -o /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/PLC/CL_1-9_pcps_HGPSdens.dx
volmap density $P -res 0.5 -allframes -combine avg -mol top -checkpoint 0 -o /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/PLC/CL_1-9_pcps_Pdens.dx
volmap density $HG -res 0.5 -allframes -combine avg -mol top -checkpoint 0 -o /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/PLC/CL_1-9_pcps_HGdens.dx
volmap density $HGPC -res 0.5 -allframes -combine avg -mol top -checkpoint 0 -o /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/PLC/CL_1-9_pcps_HGPCdens.dx
volmap density $prot -res 0.5 -allframes -combine avg -mol top -checkpoint 0 -o /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/CL/PLC/CL_1-9_pcps_ECDdens.dx

mol delete all

quit