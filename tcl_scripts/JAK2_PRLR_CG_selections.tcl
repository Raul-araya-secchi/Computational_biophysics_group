#state1
mol new JAK2-fermsh2-LID1_PCPSPIP2_11_init.gro
mol addfile JAK2-fermsh2-LID1_PCPSPIP2_11_run.xtc first 1440 last 1450 waitfor all 

#state2
mol new JAK2-fermsh2-LID1_PCPSPIP2_6_init.gro
mol addfile JAK2-fermsh2-LID1_PCPSPIP2_6_run.xtc first 6534 last 7255 waitfor all 

#state3
mol new JAK2-fermsh2-LID1_PCPSPIP2_1_init.gro
mol addfile JAK2-fermsh2-LID1_PCPSPIP2_1_run.xtc first 3183 last 3198 waitfor all 

#state4
mol new JAK2-fermsh2-LID1_PCPSPIP2_14_init.gro
mol addfile JAK2-fermsh2-LID1_PCPSPIP2_14_run.xtc first 8984 last 9049 waitfor all 

#state5
mol new JAK2-fermsh2-LID1_PCPSPIP2_4_init.gro
mol addfile JAK2-fermsh2-LID1_PCPSPIP2_4_run.xtc first 5509 last 5543 waitfor all 

#state6
mol new JAK2-fermsh2-LID1_PCPSPIP2_13_init.gro
mol addfile JAK2-fermsh2-LID1_PCPSPIP2_13_run.xtc first 6466 last 6525 waitfor all 


for {set i 0} {$i < 6} {incr i} {
    puts "$i"
}
for {set i 0} {$i < 6} {incr i} {
    set F1_$i   [atomselect $i "same resid as name BB and resid 1 to 80" ]
    set F1F2L_$i [atomselect $i "same resid as name BB and resid 81 to 111" ]
    set F2_$i    [atomselect $i "same resid as name BB and resid 112 to 228" ]
    set F3_$i    [atomselect $i "same resid as name BB and resid 229 to 354" ]
    set F3SH2L_$i [atomselect $i "same resid as name BB and resid 355 to 367" ]
    set SH2_$i   [atomselect $i "same resid as name BB and resid 368 to 478" ]
    set LID1_$i  [atomselect $i "same resid as name BB and resid 479 to 528" ]
    puts "$i"
    
    
    #$F1_$i  set chain A 
    #$F1F2L_$i  set chain B 
    #$F2_$i     set chain C 
    #$F3_$i     set chain D 
    #$F3SH2L_$i set chain E 
    #$SH2_$i    set chain F 
    #$LID1_$i   set chain G
}


set F1   [atomselect   top "same residue as name BB and resid 1 to 80" ]
set F1F2L [atomselect  top "same residue as name BB and resid 81 to 111" ]
set F2    [atomselect  top "same residue as name BB and resid 112 to 228" ]
set F3    [atomselect  top "same residue as name BB and resid 229 to 354" ]
set F3SH2L [atomselect top "same residue as name BB and resid 355 to 367" ]
set SH2   [atomselect  top "same residue as name BB and resid 368 to 478" ]
set LID1  [atomselect  top "same residue as name BB and resid 479 to 528" ]
 

    $F1     set chain A 
    $F1F2L  set chain B 
    $F2     set chain C 
    $F3     set chain D 
    $F3SH2L set chain E 
    $SH2    set chain F 
    $LID1   set chain G

    $F1_0     set chain A 
    $F1F2L_0  set chain B 
    $F2_0     set chain C 
    $F3_0     set chain D 
    $F3SH2L_0 set chain E 
    $SH2_0    set chain F 
    $LID1_0   set chain G

    $F1_1     set chain A 
    $F1F2L_1  set chain B 
    $F2_1     set chain C 
    $F3_1     set chain D 
    $F3SH2L_1 set chain E 
    $SH2_1    set chain F 
    $LID1_1   set chain G

    $F1_2     set chain A 
    $F1F2L_2  set chain B 
    $F2_2     set chain C 
    $F3_2     set chain D 
    $F3SH2L_2 set chain E 
    $SH2_2    set chain F 
    $LID1_2   set chain G

    $F1_3     set chain A 
    $F1F2L_3  set chain B 
    $F2_3     set chain C 
    $F3_3     set chain D 
    $F3SH2L_3 set chain E 
    $SH2_3    set chain F 
    $LID1_3   set chain G

    $F1_4     set chain A 
    $F1F2L_4  set chain B 
    $F2_4     set chain C 
    $F3_4     set chain D 
    $F3SH2L_4 set chain E 
    $SH2_4    set chain F 
    $LID1_4   set chain G

    $F1_5     set chain A 
    $F1F2L_5  set chain B 
    $F2_5     set chain C 
    $F3_5     set chain D 
    $F3SH2L_5 set chain E 
    $SH2_5    set chain F 
    $LID1_5   set chain G
}

    set F1    [atomselect 0 "same resid as name BB and resid 1 to 80" ]
    set F1F2L [atomselect 0 "same resid as name BB and resid 81 to 111" ]
    set F2    [atomselect 0 "same resid as name BB and resid 112 to 228" ]
    set F3    [atomselect 0 "same resid as name BB and resid 229 to 354" ]
    set F3SH2L   [atomselect 0 "same resid as name BB and resid 355 to 367" ]
    set SH2   [atomselect 0 "same resid as name BB and resid 368 to 478" ]
    set LID1  [atomselect 0 "same resid as name BB and resid 479 to 528" ]

    $F1     set chain A 
    $F1F2L  set chain B 
    $F2     set chain C 
    $F3     set chain D 
    $F3SH2L set chain E 
    $SH2    set chain F 
    $LID1   set chain G

    set F1    [atomselect 1 "same resid as name BB and resid 1 to 80" ]
    set F1F2L [atomselect 1 "same resid as name BB and resid 81 to 111" ]
    set F2    [atomselect 1 "same resid as name BB and resid 112 to 228" ]
    set F3    [atomselect 1 "same resid as name BB and resid 229 to 354" ]
    set F3SH2L   [atomselect 1 "same resid as name BB and resid 355 to 367" ]
    set SH2   [atomselect 1 "same resid as name BB and resid 368 to 478" ]
    set LID1  [atomselect 1 "same resid as name BB and resid 479 to 528" ]

    $F1     set chain A 
    $F1F2L  set chain B 
    $F2     set chain C 
    $F3     set chain D 
    $F3SH2L set chain E 
    $SH2    set chain F 
    $LID1   set chain G

    set F1    [atomselect 2 "same resid as name BB and resid 1 to 80" ]
    set F1F2L [atomselect 2 "same resid as name BB and resid 81 to 111" ]
    set F2    [atomselect 2 "same resid as name BB and resid 112 to 228" ]
    set F3    [atomselect 2 "same resid as name BB and resid 229 to 354" ]
    set F3SH2L   [atomselect 2 "same resid as name BB and resid 355 to 367" ]
    set SH2   [atomselect 2 "same resid as name BB and resid 368 to 478" ]
    set LID1  [atomselect 2 "same resid as name BB and resid 479 to 528" ]

    $F1     set chain A 
    $F1F2L  set chain B 
    $F2     set chain C 
    $F3     set chain D 
    $F3SH2L set chain E 
    $SH2    set chain F 
    $LID1   set chain G

    set F1    [atomselect 3 "same resid as name BB and resid 1 to 80" ]
    set F1F2L [atomselect 3 "same resid as name BB and resid 81 to 111" ]
    set F2    [atomselect 3 "same resid as name BB and resid 112 to 228" ]
    set F3    [atomselect 3 "same resid as name BB and resid 229 to 354" ]
    set F3SH2L   [atomselect 3 "same resid as name BB and resid 355 to 367" ]
    set SH2   [atomselect 3 "same resid as name BB and resid 368 to 478" ]
    set LID1  [atomselect 3 "same resid as name BB and resid 479 to 528" ]

    $F1     set chain A 
    $F1F2L  set chain B 
    $F2     set chain C 
    $F3     set chain D 
    $F3SH2L set chain E 
    $SH2    set chain F 
    $LID1   set chain G

    set F1    [atomselect 4 "same resid as name BB and resid 1 to 80" ]
    set F1F2L [atomselect 4 "same resid as name BB and resid 81 to 111" ]
    set F2    [atomselect 4 "same resid as name BB and resid 112 to 228" ]
    set F3    [atomselect 4 "same resid as name BB and resid 229 to 354" ]
    set F3SH2L   [atomselect 4 "same resid as name BB and resid 355 to 367" ]
    set SH2   [atomselect 4 "same resid as name BB and resid 368 to 478" ]
    set LID1  [atomselect 4 "same resid as name BB and resid 479 to 528" ]

    $F1     set chain A 
    $F1F2L  set chain B 
    $F2     set chain C 
    $F3     set chain D 
    $F3SH2L set chain E 
    $SH2    set chain F 
    $LID1   set chain G

    set F1    [atomselect 5 "same resid as name BB and resid 1 to 80" ]
    set F1F2L [atomselect 5 "same resid as name BB and resid 81 to 111" ]
    set F2    [atomselect 5 "same resid as name BB and resid 112 to 228" ]
    set F3    [atomselect 5 "same resid as name BB and resid 229 to 354" ]
    set F3SH2L   [atomselect 5 "same resid as name BB and resid 355 to 367" ]
    set SH2   [atomselect 5 "same resid as name BB and resid 368 to 478" ]
    set LID1  [atomselect 5 "same resid as name BB and resid 479 to 528" ]

    $F1     set chain A 
    $F1F2L  set chain B 
    $F2     set chain C 
    $F3     set chain D 
    $F3SH2L set chain E 
    $SH2    set chain F 
    $LID1   set chain G