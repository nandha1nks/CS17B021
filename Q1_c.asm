main:
    addi $s0,$zero,0xF0F0
    addi $s1,$zero,0
    addi $s2,$zero,0
    addi $s4,$zero,1
    
    and $s3,$s0,$s4
    xori $s3,$s3,0
    b L3
    sll $s4,$s4,1
    b loop
    j $31
    
loop:
    and $t0,$s0,$s4
    bne $t0,$s3,L3
    sll $s4,$s4,1
    bne $s4,0,loop
    noop
    
L3:
    beq $s3,0,L1
    noop
    beq $s3,1,L2
    noop

L1:
    addi $s3,$s3,1
    addi $s2,$s2,1
    noop
    
L2:
    addi $s3,$zero,0
    addi $s1,$s1,1
    noop
