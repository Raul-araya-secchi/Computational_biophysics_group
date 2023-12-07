## Systems loaded to VMD and TMDs-CA aligned (219 to 214) to remove tras-rot of the helix ##
## this may affect the measurement because the TMD tilt also changes during the MD. Keep in mind for a next version ##

package require Orient
namespace import Orient::orient
## PCPS ##
# set out1 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/paxes/pcps_paxes_tfn.dat w]
# set out2 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/paxes/pcps_paxes_tfc.dat w]

# ## Define domains ##
# set tfn [atomselect 0 "protein and resid 1 to 105 and name CA"]
# set tfc [atomselect 0 "protein and resid 106 to 210 and name CA"]

# set nfpcps [molinfo 0 get numframes]

# for {set i 0} {$i <= $nfpcps} {incr i} {
# 	$tfn frame $i
# 	$tfc frame $i
# 	set PATFN [draw principalaxes $tfn]
#     set PATFNv1 [lindex $PATFN 0]
# 	set PATFNv2 [lindex $PATFN 1]
# 	set PATFNv3 [lindex $PATFN 2]
# 	set PATFNe3 [vecscale $PATFNv3 [expr 1/[veclength $PATFNv3]]]
#     if {[lindex $PATFNe3 0] >0 } {
# 		set PATFNv3m [vecscale -1 $PATFNe3]} else {
# 		set PATFNv3m [vecscale 1 $PATFNe3] }

# 	set projection1xN [lindex $PATFNe3 0]	
# 	set projection1yN [lindex $PATFNe3 1] 
# 	set projection1zN [lindex $PATFNe3 2]
#     set projection1xMN [lindex $PATFNv3m 0]	
# 	set projection1yMN [lindex $PATFNv3m 1] 
# 	set projection1zMN [lindex $PATFNv3m 2]
#     puts $out1 "$i $projection1xN $projection1yN $projection1zN $projection1xMN $projection1yMN $projection1zMN"

# 	set PATFC [draw principalaxes $tfc]
# 	set PATFCv1 [lindex $PATFC 0]
# 	set PATFCv2 [lindex $PATFC 1]
# 	set PATFCv3 [lindex $PATFC 2]
# 	set PATFCe3 [vecscale $PATFCv3 [expr 1/[veclength $PATFCv3]]]
	
#     if {[lindex $PATFCe3 0] >0 } {
# 		set PATFCv3m [vecscale -1 $PATFCe3]} else {
# 		set PATFCv3m [vecscale 1 $PATFCe3] }
	
#     #set tilt [expr acos([vecdot [lindex $PATFN 2] $PATFCv3]/([veclength [lindex $PATFN 2]]*[veclength $PATFCv3]))]
# 	set projection1xC [lindex $PATFCe3 0]	
# 	set projection1yC [lindex $PATFCe3 1] 
# 	set projection1zC [lindex $PATFCe3 2]
#     set projection1xMC [lindex $PATFCv3m 0]	
# 	set projection1yMC [lindex $PATFCv3m 1] 
# 	set projection1zMC [lindex $PATFCv3m 2]
# 	#puts "DEBUG5 [expr [vecdot $p1 $p2]/([veclength $p1]*[veclength $p2])]"
# 	#puts $outfile "$i $PATFN $PATFC $tilt $PATFCv1 $PATFCv2 $PATFCv3 $PATFCv3n"
# 	puts $out2 "$i $projection1xC $projection1yC $projection1zC $projection1xMC $projection1yMC $projection1zMC"
# }

## PC ##

set out1 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/paxes/pc_paxes_tfn.dat w]
set out2 [open /media/4TB_HDD/raul/projects/synergy/TF_EC_TMD/AA/w_SSbs/results/paxes/pc_paxes_tfc.dat w]

## Define domains ##
set tfn [atomselect 1 "protein and resid 1 to 105 and name CA"]
set tfc [atomselect 1 "protein and resid 106 to 210 and name CA"]

set nfpc [molinfo 1 get numframes]

for {set i 0} {$i <= $nfpc} {incr i} {
	$tfn frame $i
	$tfc frame $i
	set PATFN [draw principalaxes $tfn]
    set PATFNv1 [lindex $PATFN 0]
	set PATFNv2 [lindex $PATFN 1]
	set PATFNv3 [lindex $PATFN 2]
	set PATFNe3 [vecscale $PATFNv3 [expr 1/[veclength $PATFNv3]]]
    if {[lindex $PATFNe3 0] >0 } {
		set PATFNv3m [vecscale -1 $PATFNe3]} else {
		set PATFNv3m [vecscale 1 $PATFNe3] }

	set projection1xN [lindex $PATFNe3 0]	
	set projection1yN [lindex $PATFNe3 1] 
	set projection1zN [lindex $PATFNe3 2]
    set projection1xMN [lindex $PATFNv3m 0]	
	set projection1yMN [lindex $PATFNv3m 1] 
	set projection1zMN [lindex $PATFNv3m 2]
    puts $out1 "$i $projection1xN $projection1yN $projection1zN $projection1xMN $projection1yMN $projection1zMN"

	set PATFC [draw principalaxes $tfc]
	set PATFCv1 [lindex $PATFC 0]
	set PATFCv2 [lindex $PATFC 1]
	set PATFCv3 [lindex $PATFC 2]
	set PATFCe3 [vecscale $PATFCv3 [expr 1/[veclength $PATFCv3]]]
	
    if {[lindex $PATFCe3 0] >0 } {
		set PATFCv3m [vecscale -1 $PATFCe3]} else {
		set PATFCv3m [vecscale 1 $PATFCe3] }
	
    #set tilt [expr acos([vecdot [lindex $PATFN 2] $PATFCv3]/([veclength [lindex $PATFN 2]]*[veclength $PATFCv3]))]
	set projection1xC [lindex $PATFCe3 0]	
	set projection1yC [lindex $PATFCe3 1] 
	set projection1zC [lindex $PATFCe3 2]
    set projection1xMC [lindex $PATFCv3m 0]	
	set projection1yMC [lindex $PATFCv3m 1] 
	set projection1zMC [lindex $PATFCv3m 2]
	#puts "DEBUG5 [expr [vecdot $p1 $p2]/([veclength $p1]*[veclength $p2])]"
	#puts $outfile "$i $PATFN $PATFC $tilt $PATFCv1 $PATFCv2 $PATFCv3 $PATFCv3n"
	puts $out2 "$i $projection1xC $projection1yC $projection1zC $projection1xMC $projection1yMC $projection1zMC"
}

