proc CGpres_dist { frame } {

    set out1 [open /home/raul/projects/prestin_2022/2021_Hsprestin_AF2_ebi_AA/dist_ocup/hPres_AF2ebi_GCm3go_occup.dat a+]
    

    #define selections
    set BSa      [atomselect top "residue 0 to 2065 and resid 399 398 397 396"]
    set BVa      [atomselect top "residue 0 to 2065 and resid 398 402 401 404 405 276 277 279 280 281 283 447  449 450 451 453 454 455 456 457 210 211 213 214 207 365 366 364 361 363 360 357 356 131 132 133 353 204 205 203 202 286 287 288 289  290 293 292 294 291 90 92 93 403 463 461 460 459"]
    set R399a    [atomselect top "residue 0 to 2065  and resid 399 and name BB"]
    set F137a    [atomselect top "residue 0 to 2065  and resid 137 and name BB"]
    set V499a    [atomselect top "residue 0 to 2065  and resid 499 and name BB"]
    set ctTM6a   [atomselect top "residue 0 to 2065  and resid 275 to 283 and name BB"]
    set midTM12a [atomselect top "residue 0 to 2065  and resid 445 to 453 and name BB"]
    set TM3a     [atomselect top "residue 0 to 2065  and resid 396 to 406 and name BB"]
    set TM10a    [atomselect top "residue 0 to 2065  and resid 138  to 151 and name BB"]
    set NPa      [atomselect top "residue 0 to 2065  and resid 602 to 613 and name BB"]  
    
    set BSb      [atomselect top "residue 2066 to 4130 and resid 399 398 397 396  395 137 136 "]
    set BVb      [atomselect top "residue 2066 to 4130 and resid 398 402 401 404 405 276 277 279 280 281 283 447  449 450 451 453 454 455 456 457 210 211 213 214 207 365 366 364 361 363 360 357 356 131 132 133 353 204 205 203 202 286 287 288 289  290 293 292 294 291 90 92 93 403 463 461 460 459"]
    set R399b    [atomselect top "residue 2066 to 4130 and resid 399 and name BB"]
    set F137b    [atomselect top "residue 2066 to 4130 and resid 137 and name BB"]
    set V499b    [atomselect top "residue 2066 to 4130 and resid 499 and name BB"]
    set ctTM6b   [atomselect top "residue 2066 to 4130 and resid 275 to 283 and name BB"]
    set midTM12b [atomselect top "residue 2066 to 4130 and resid 445 to 453 and name BB"]
    set TM3b     [atomselect top "residue 2066 to 4130 and resid 396 to 406 and name BB"]
    set TM10b    [atomselect top "residue 2066 to 4130 and resid 138  to 151 and name BB"]
    set NPb      [atomselect top "residue 2066 to 4130 and resid 602 to 613 and name BB"]
    # Measure COM #
    
    set BSca     [measure center $BSa       weight mass] 
    set BVca     [measure center $BVa      weight mass]
    set R399ca   [measure center $R399a    weight mass]
    set F137ca   [measure center $F137a    weight mass]
    set V499ca   [measure center $V499a    weight mass]
    set ctTM6ca  [measure center $ctTM6a   weight mass]
    set midTM12ca [measure center $midTM12a weight mass]
    set TM3ca    [measure center $TM3a     weight mass]
    set TM10ca   [measure center $TM10a    weight mass]
    set NPca     [measure center $NPa      weight mass]

    set BScb     [measure center $BSb       weight mass] 
    set BVcb     [measure center $BVb      weight mass]
    set R399cb   [measure center $R399b    weight mass]
    set F137cb   [measure center $F137b    weight mass]
    set V499cb   [measure center $V499b    weight mass]
    set ctTM6cb  [measure center $ctTM6b   weight mass]
    set midTM12cb [measure center $midTM12b weight mass]
    set TM3cb    [measure center $TM3b     weight mass]
    set TM10cb   [measure center $TM10b    weight mass]
    set NPcb     [measure center $NPb      weight mass]

    # measure distances

    set dBSa_NPb [vecdist $BSca $NPcb]
    set dBSb_NPa [vecdist $BScb $NPca]
    
    set dctTM6a_midTM12a [vecdist $ctTM6ca $midTM12ca]
    set dctTM6b_midTM12b [vecdist $ctTM6cb $midTM12cb]
    
    set dTM3a_TM10a [vecdist $TM3ca $TM10ca]
    set dTM3b_TM10b [vecdist $TM3cb $TM10cb]
    
    set d399a_137a [vecdist $R399ca $F137ca]
    set d399b_137b [vecdist $R399cb $F137cb]
    
    set d399a_499a [vecdist $R399ca $V499ca]
    set d399b_499b [vecdist $R399cb $V499cb]
    
    set zR399ca [lindex $R399ca 2 ]
    set zV499ca [lindex $V499ca 2 ]
    set zd399a_400a [expr $zR399ca - $zV499ca ]

    set zR399cb [lindex $R399cb 2 ]
    set zV499cb [lindex $V499cb 2 ]
    set zd399b_400b [expr $zR399cb - $zV499cb ]


    #measure Cl occup.
    set cl_BSa [atomselect top "name CL and within 10 of (residue 0 to 2065 and resid 399 398 397 396 and name BB)" ]
    set cl_BVa [atomselect top "name CL and within 10 of (residue 0 to 2065  and resid 398 402 401 404 405 276 277 279 280 281 283 447  449 450 451 453 454 455 456 457 210 211 213 214 207 365 366 364 361 363 360 357 356 131 132 133 353 204 205 203 202 286 287 288 289  290 293 292 294 291 90 92 93 403 463 461 460 459)"]
    
    set cl_BSb [atomselect top "name CL and within 10 of (residue 2066 to 4130 and resid 399 398 397 396  395 137 136)" ]
    set cl_BVb [atomselect top "name CL and within 10 of (residue 2066 to 4130 and resid 398 402 401 404 405 276 277 279 280 281 283 447  449 450 451 453 454 455 456 457 210 211 213 214 207 365 366 364 361 363 360 357 356 131 132 133 353 204 205 203 202 286 287 288 289  290 293 292 294 291 90 92 93 403 463 461 460 459)"]

    #measure Wat occup.
    #set w_BS [name OH2 and within 7 of ( and resid 399 398 397 396  395 137 136 and name BB) ]
    #set w_BV [name OH2 and within 7 of ( and resid 398 402 401 404 405 276 277 279 280 281 283 447  449 450 451 453 454 455 456 457 210 211 213 214 207 365 366 364 361 363 360 357 356 131 132 133 353 204 205 203 202 286 287 288 289  290 293 292 294 291 90 92 93 403 463 461 460 459 and name BB)]

    puts $out1 "$frame $dBSa_NPb $dBSb_NPa $dctTM6a_midTM12a $dctTM6b_midTM12b $dTM3a_TM10a  $dTM3b_TM10b  $d399a_137a  $d399b_137b  $d399a_499a  $d399b_499b $zd399a_400a $zd399b_400b [$cl_BSa num] [$cl_BVa num] [$cl_BSb num] [$cl_BVb num]"
    
    close $out1
    
}

source /home/raul/projects/analysis_tools/bigdcd_v2.tcl

set gro /home/raul/projects/prestin_2022/2021_Hsprestin_AF2ebi_M3go/hPres_AF2ebi_m3go_25us_PLIpbcmc_f0.gro
set dcd /home/raul/projects/prestin_2022/2021_Hsprestin_AF2ebi_M3go/hPres_AF2ebi_m3go_25us_PLI_1ns_aligned.dcd

set outa [open /home/raul/projects/prestin_2022/2021_Hsprestin_AF2_ebi_AA/dist_ocup/hPres_AF2ebi_GCm3go_occup.dat w]

mol load gro $gro
bigdcd CGpres_dist dcd $dcd
bigdcd_wait
close $outa
mol delete all