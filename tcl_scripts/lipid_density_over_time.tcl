####################################
## Script to measure the lipid density at diferent stages of the simulations ##
##

## For CG runs: Load frames every 500 ns and obtain one .dx file with the density of each lipid ##
## Mske sure to use processed trajectories (PBCC)

# FOR PRLR_1000lipids_PCPEPI2_LID1-2_p1-18_1ns
## load psf
mol new /home/raul/Documents/SYNERGY/TMDs/models/bigger_CG/PRLR/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/step5_assembly.xplor_ext.psf type psf waitfor all

### load xtc (every 500 ns --> stride 500)
mol addfile /home/raul/Documents/SYNERGY/TMDs/models/bigger_CG/PRLR/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/gromacs/trj/PRLR_1000lipids_PCPEPI2_LID1-2_p1-22_1ns_pbcc.xtc type xtc step 500 waitfor all

### measure density with volmap tools for each frame
set PC [atomselect top "resname POPC"]
set PE [atomselect top "resname POPE"]
set PIP2 [atomselect top "resname POP2"]
set prot [atomselect top "name BB"]

set nf [molinfo top get numframes]

for {set i 0} {$i <= $nf} {incr i} { 

	$PC frame $i
	$PE frame $i
	$PIP2 frame $i
	$prot frame $i
	volmap density $PC -res 1.0 -o /home/raul/Documents/SYNERGY/TMDs/models/bigger_CG/PRLR/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/results/dx/PCdens_500x$i.dx 

	volmap density $PE -res 1.0 -o /home/raul/Documents/SYNERGY/TMDs/models/bigger_CG/PRLR/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/results/dx/PEdens_500x$i.dx 

	volmap density $PIP2 -res 1.0 -o /home/raul/Documents/SYNERGY/TMDs/models/bigger_CG/PRLR/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/results/dx/PIP2dens_500x$i.dx
	
	volmap density $prot -res 1.0 -o /home/raul/Documents/SYNERGY/TMDs/models/bigger_CG/PRLR/PRLR_1000lipids_POPC_POPE_PIP2_LID1-2_martini/results/dx/PROTdens_500x$i.dx 

}
mol delete all

# FOR PRLR_LID1_2_PC_s7_1-17_1ns_pbcc

## load psf
#mol new /home/raul/Documents/SYNERGY/TMDs/models/bigger_CG/PRLR/PRLR_1000lipids_POPC_LID1-2_martini/step5_assembly.xplor_ext.psf type psf waitfor all

### load xtc (every 500 ns --> stride 500)
#mol addfile /home/raul/Documents/SYNERGY/TMDs/models/bigger_CG/PRLR/PRLR_1000lipids_POPC_LID1-2_martini/gromacs/trjs/PRLR_LID1_2_PC_s7_1-19_1ns_pbcc.xtc type xtc step 500 waitfor all

### measure density with volmap tools for each frame
#set PC [atomselect top "resname POPC"]
#set prot [atomselect top "name BB"]

#set nf [molinfo top get numframes]

#for {set i 0} {$i <= $nf} {incr i} { 

#	$PC frame $i
#	$prot frame $i
#	volmap density $PC -res 1.0 -o /home/raul/Documents/SYNERGY/TMDs/models/bigger_CG/PRLR/PRLR_1000lipids_POPC_LID1-2_martini/results/dx/PCdens_500x$i.dx 

#	volmap density $prot -res 1.0 -o /home/raul/Documents/SYNERGY/TMDs/models/bigger_CG/PRLR/PRLR_1000lipids_POPC_LID1-2_martini/results/dx/PROTdens_500x$i.dx 

#}
#mol delete all

quit





