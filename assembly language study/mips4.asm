move    $s5,$t0     
move    $s6,$t1     

    jal MyMult
    j   print

MyMult:
    move $t2, $0       
    move $t3, $0        

    beq $t1, $0, done
    beq $t0, $0, done

    move $s2, $0        

loop:
    andi $t0, $t0, 1    
    beq $t0, $0, next   
    addu $t2, $t2, $t1  
    sltu $t0, $t2, $t1 
    addu $t3, $t3, $t0  
    addu $t3, $t3, $s2  
next:
    srl $t0, $t1, 31   
    sll $t1, $t1, 1
    sll $s2, $s2, 1
    addu $s2, $s2, $t0

    srl $t0, $t0, 1
    bne $t0, $0, loop

