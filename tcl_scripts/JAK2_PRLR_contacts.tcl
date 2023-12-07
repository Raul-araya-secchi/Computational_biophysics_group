
set out1 [open /media/storage/raul/JAK-FERM-SH2_aa/wPRLR_LID1/PRLR_JAK2_contacts_num_CA7_SC.dat w]
set out2 [open /media/storage/raul/JAK-FERM-SH2_aa/wPRLR_LID1/PRLR_contacts_resid_CA7.dat w]
set out3 [open /media/storage/raul/JAK-FERM-SH2_aa/wPRLR_LID1/JAK2_contacts_resid_CA7.dat w]
set out4 [open /media/storage/raul/JAK-FERM-SH2_aa/wPRLR_LID1/PRLR_contacts_resid_SC.dat w]
set out5 [open /media/storage/raul/JAK-FERM-SH2_aa/wPRLR_LID1/JAK2_contacts_resid_SC.dat w]

set nfpcps [molinfo top get numframes]

for {set i 0} {$i <= $nfpcps} {incr i} {
    #set PRLR_CA [atomselect top "segname PROB and name CA"] 
    #set JAK2_CA [atomselect top "segname PROA and name CA"]
    
    set PRLRcontCA [atomselect top "segname PROB and name CA and within 7 of segname PROA and name CA" frame $i]
    set JAK2contCA [atomselect top "segname PROA and name CA and within 7 of segname PROB and name CA" frame $i]

    set PRLRcnCA [$PRLRcontCA num]
    set JAK2cnCA [$JAK2contCA num]
    
    set PRLRresidCA [$PRLRcontCA get resid]  
    set JAK2residCA [$JAK2contCA get resid] 
    
    set JAK2contSC [atomselect top "segname PROA and not name CA N C O and within 3.5 of segname PROB and not name CA N C O" frame $i]
    set PRLRcontSC [atomselect top "segname PROB and not name CA N C O and within 3.5 of segname PROA and not name CA N C O" frame $i]

    set PRLRcnSC [$PRLRcontSC num]
    set JAK2cnSC [$JAK2contSC num]
    
    set PRLRresidSC [$PRLRcontSC get resid]  
    set JAK2residSC [$JAK2contSC get resid] 

    puts $out1 "$i $PRLRcnCA $PRLRcnSC $JAK2cnCA $JAK2cnSC"
    puts $out2 "$i $PRLRresidCA"
    puts $out3 "$i $JAK2residCA"
    puts $out4 "$i $PRLRresidSC"
    puts $out5 "$i $JAK2residSC"
}
close $out1
close $out2
close $out3
close $out4
close $out5




