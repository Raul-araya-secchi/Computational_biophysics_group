# Measuring prot dens for GHRfl_GFP monomer m3pws10 sim #


#trajectory#
mol new /home/raul/projects/GHR_FL/GHR_ECDfl_TMD_ICDfl_GFP_composite/CGm3/step6.6_equilibration_PLpbc.gro
mol addfile /home/raul/projects/GHR_FL/GHR_ECDfl_TMD_ICDfl_GFP_composite/CGm3/GHRfl_GFP_m3b32_1_30_500ps_PL_comp_tmd_popc.xtc first 1999 step 2 waitfor all 

## Selection ##

set BB [atomselect top "name BB"]
set prot [atomselect top "not resname POPC"]

vdolmap density $prot -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/GHR_FL/GHR_ECDfl_TMD_ICDfl_GFP_composite/CGm3/GHRfl_GFPmon_prot_dens_l20us1ns.dx
volmap density $BB  -res 1.0 -allframes -combine avg -mol top -checkpoint 0 -o  /home/raul/projects/GHR_FL/GHR_ECDfl_TMD_ICDfl_GFP_composite/CGm3/GHRfl_GFPmon_BB_dens_l20us1ns.dx