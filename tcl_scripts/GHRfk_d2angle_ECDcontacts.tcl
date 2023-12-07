### Measurement of GHR-D2 angle with respect to z   ###
### and measurement of N-ter to ECD contacts v/time ###
### for the GHRfl-GFP M3pws10 system                ###

package require Orient
namespace import Orient::orient

## D1 angle ##
mol new /home/raul/projects/GHR_FL/GHR_ECDfl_TMD_ICDfl_GFP_composite/CGm3/step6.6_equilibration_PLpbc.gro
mol addfile /home/raul/projects/GHR_FL/GHR_ECDfl_TMD_ICDfl_GFP_composite/CGm3/GHRfl_GFP_m3b32_1_30_500ps_PL_comp_tmd_popc.xtc  waitfor all

set id [molinfo top]
set num_steps [molinfo $id get numframes]
set out1 [open /home/raul/projects/GHR_FL/GHR_ECDfl_TMD_ICDfl_GFP_composite/CGm3/ECD_D2angle.dat w]
set out2 [open /home/raul/projects/GHR_FL/GHR_ECDfl_TMD_ICDfl_GFP_composite/CGm3/Nt_ECD_contacts.dat w]
set out3 [open /home/raul/projects/GHR_FL/GHR_ECDfl_TMD_ICDfl_GFP_composite/CGm3/ECD_Nt_contacts.dat w]


for {set f 0} {$f <=  $num_steps} {incr f} {
      #fit TMD-BB
      set all [atomselect top all]
      set ref [atomselect top "resid 250 to 272 and name BB" frame 0]
      set sel [atomselect top "resid 250 to 272 and name BB"]
      set M [measure fit $sel $ref]
      $all move $M
      #get ECD-D2pa
      set D2 [atomselect top "name BB and resid 129 to 235"]
      $D2 frame $f
      set D2pa [draw principalaxes $D2]
      set D2pa_3 [lindex $D2pa 2]
      set angz [vecdot $D2pa_3 {0 0 1}]
      set anglez [expr 57.2958*acos($angz)]
      set angx [vecdot $D2pa_3 {1 0 0}]
      set anglex [expr 57.2958*acos($angx)]
      puts $out1 "$f $angz $angx $anglez $anglex"
      # Nter - ECD contact (dist ≤7 BB-BB)
      set Ntail [atomselect top "name BB and resid 1 to 32"]
      set ECD [atomselect top "name BB and resid 33 to 235"]
      set contact_Ntail_ECD [atomselect top "name BB and resid 1 to 32 and pbwithin 7 of name BB and resid 33 to 235"]
      set contact_ECD_Ntail [atomselect top "name BB and resid 33 to 235 and pbwithin 7 of name BB and resid 1 to 32"]
      puts $out2 "$frame [$contact_Ntail_ECD num] [$contact_Ntail_ECD get resid]"
      puts $out3 "$frame [$contact_ECD_Ntail num] [$contact_ECD_Ntail resid]"
 }
 close $out1
 close $out2
 close $out3
 mol delete all