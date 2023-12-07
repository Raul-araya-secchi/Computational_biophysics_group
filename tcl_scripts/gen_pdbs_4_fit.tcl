## Add element column to PDBs ##

for {set i 2} {$i < 9} {incr i} {

mol new AA_CGframe$i.pdb

set C [atomselect top "carbon"]
set N [atomselect top "nitrogen"]
set O [atomselect top "oxygen"]
set H [atomselect top "hydrogen"]
set S [atomselect top "sulfur"]
set all [atomselect top all]

$C set element C 
$N set element N
$O set element O
$H set element H
$S set element S

set TMD [atomselect top "resid 252 to 270 and name CA"]
set M [vecinvert [measure center $TMD]]
$all moveby $M

$all writepdb AA_frame$i_ae.pdb
}