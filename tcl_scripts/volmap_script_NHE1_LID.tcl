
# input files and output names
#PC#
mol new /media/4TB_HDD/raul/projects/synergy/NHE1/LID/AA/MBUF_wMEMB/PC/step6.6_equilibration_PL.gro
mol addfile /media/4TB_HDD/raul/projects/synergy/NHE1/LID/AA/MBUF_wMEMB/PC/NHE1_LIDmb_PCcbwri_PL_s7_1-9_50ps_pbcc.xtc first 1999 waitfor all
#set outP [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PC/dens/NHE1_MBUF_PC_1-9_densP.dat w]
#set outHGPC [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PC/dens/NHE1_MBUF_PC_1-9_densHGPC.dat w]
#set outProt [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PC/dens/NHE1_MBUF_PC_1-9_densProt.dat w]


#selections#

set prot [atomselect top "protein and noh"]
set P [atomselect top "name P"]

## LIPID Headgroups##

set HGPC [atomselect top "resname POPC and noh and not name C1 C2 C3 O21 O22 O31 O32 C31 to C39 C21 to C2922 O31 O32 C31 to C39 C21 to C29"]


# Densities #

#Lipids#

volmap density $P -res 0.5 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PC/dens/NHE1_LIDmb_PCcbwri_PL_s7_1-9_P.dx
volmap density $HGPC -res 0.5 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PC/dens/NHE1_LIDmb_PCcbwri_PL_s7_1-9_HGPC.dx 

#Protein
volmap density $prot -res 0.5 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PC/dens/NHE1_LIDmb_PCcbwri_PL_s7_1-9_Prot.dx

mol delete all

#PCPS#
mol new /media/4TB_HDD/raul/projects/synergy/NHE1/LID/AA/MBUF_wMEMB/PCPS/step6.6_equilibration_PL.gro
mol addfile /media/4TB_HDD/raul/projects/synergy/NHE1/LID/AA/MBUF_wMEMB/PCPS/NHE1_LIDmb_PCPScbwri_PL_s7_1-9_50ps_pbcc.xtc first 1999 waitfor all
#set outP [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PCPS/dens/NHE1_MBUF_PCPS_1-9_densP.dat w]
#set outHGPC [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PCPS/dens/NHE1_MBUF_PCPS_1-9_densHGPC.dat w]
#set outHG [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PCPS/dens/NHE1_MBUF_PCPS_1-9_densHG.dat w]
#set outHGPS [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PCPS/dens/NHE1_MBUF_PCPS_1-9_densHGPS.dat w]
#set outProt [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PCPS/dens/NHE1_MBUF_PCPS_1-9_densProt.dat w]

#selections#

set prot [atomselect top "protein and noh"]
set P [atomselect top "name P"]

## LIPID Headgroups##


set HGPC [atomselect top "noh and resname POPC and not name C1 C2 C3 O21 O22 O31 O32 C31 to C39 C21 to C2922 O31 O32 C31 to C39 C21 to C29"]
set HGPS [atomselect top "noh and resname POPS  and not name C1 C2 C3 O21 O22 O31 O32 C31 to C39 C21 to C2922 O31 O32 C31 to C39 C21 to C29"]
set HG [atomselect top "noh and resname POPC POPS  and not name C1 C2 C3 O21 O22 O31 O32 C31 to C39 C21 to C2922 O31 O32 C31 to C39 C21 to C29"]

# Densities #

#Lipids#

volmap density $P -res 0.5 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PCPS/dens/NHE1_LIDmb_PCPScbwri_PL_s7_1-9_P.dx
volmap density $HG -res 0.5 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PCPS/dens/NHE1_LIDmb_PCPScbwri_PL_s7_1-9_HG.dx
volmap density $HGPC -res 0.5 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PCPS/dens/NHE1_LIDmb_PCPScbwri_PL_s7_1-9_HGPC.dx 

#mixed lipids
volmap density $HGPS -res 0.5 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PCPS/dens/NHE1_LIDmb_PCPScbwri_PL_s7_1-9_HGPS.dx

#Protein
volmap density $prot -res 0.5 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PCPS/dens/NHE1_LIDmb_PCPScbwri_PL_s7_1-9_prot.dx

mol delete all 

#PCPIP2#
mol new /media/4TB_HDD/raul/projects/synergy/NHE1/LID/AA/MBUF_wMEMB/PCPIP2/step6.6_equilibration_PL.gro
mol addfile /media/4TB_HDD/raul/projects/synergy/NHE1/LID/AA/MBUF_wMEMB/PCPIP2/NHE1_LIDmb_PCPIP2cbwri_PLI_s7_1-8_50ps_pbcc.xtc first 1999 waitfor all
#set outP [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PCPIP2/dens/NHE1_MBUF_PCPIP2_1-8_densP.dat w]
#set outHGPC [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PCPIP2/dens/NHE1_MBUF_PCPIP2_1-8_densHGPC.dat w]
#set outHG [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PCPIP2/dens/NHE1_MBUF_PCPIP2_1-8_densHG.dat w]
#set outHGPIP2 [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PCPIP2/dens/NHE1_MBUF_PCPIP2_1-8_densHGPIP2.dat w]
#set outProt [open /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PCPIP2/dens/NHE1_MBUF_PCPIP2_1-8_densProt.dat w]

#selections#

set prot [atomselect top "protein and noh"]
set P [atomselect top "name P"]

## LIPID Headgroups##

set HGPIP2 [atomselect top "noh and resname POPI2 and not name C1 C2 C3 O21 O22 O31 O32 C31 to C39 C21 to C2922 O31 O32 C31 to C39 C21 to C29"]
set HGPC [atomselect top "noh and resname POPC and not name C1 C2 C3 O21 O22 O31 O32 C31 to C39 C21 to C2922 O31 O32 C31 to C39 C21 to C29"]
set HG [atomselect top "noh and resname POPC POPI2 and not name C1 C2 C3 O21 O22 O31 O32 C31 to C39 C21 to C2922 O31 O32 C31 to C39 C21 to C29"]

# Densities #

#Lipids#

volmap density $P -res 0.5 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PCPIP2/dens/NHE1_LIDmb_PCPIP2cbwri_PLI_s7_1-8_P.dx
volmap density $HG -res 0.5 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PCPIP2/dens/NHE1_LIDmb_PCPIP2cbwri_PLI_s7_1-8_HG.dx
volmap density $HGPC -res 0.5 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PCPIP2/dens/NHE1_LIDmb_PCPIP2cbwri_PLI_s7_1-8_HGPC.dx 

#mixed lipids
volmap density $HGPIP2 -res 0.5 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PCPIP2/dens/NHE1_LIDmb_PCPIP2cbwri_PLI_s7_1-8_HGPIP2.dx

#Protein
volmap density $prot -res 0.5 -allframes -combine avg -mol top -checkpoint 0 -o /home/raul/projects/MD-runs/synergy/NHE1/LID/AA/MBUF_wMEMB/results/PCPIP2/dens/NHE1_LIDmb_PCPIP2cbwri_PLI_s7_1-8_prot.dx

mol delete all 

quit