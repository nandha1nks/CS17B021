main:
     addi $sp,$sp,-8
     sw $s0,4($sp)
     sw $s1,0($sp)
     
     addi $t0,$zero,1
     addi $t1,$zero,1
     addi $t2,$zero,1
     addi $t3,$zero,1
     addi $t4,$zero,2
     addi $t5,$zero,2
     addi $t6,$zero,2
     addi $t7,$zero,2
     addi $s1,$zero,0
     
     add $s0,$t0,$t4
     slt $s1,$s0,$t0
     slt $s1,$s0,$t4
     add $t0,$s0,$zero
     add $s0,$t1,$t5
     add $s0,$s0,$s1
     slt $s1,$s0,$t1
     slt $s1,$s0,$t5
     add $t1,$s0,$zero 
     add $s0,$t2,$t6
     add $s0,$s0,$s1
     slt $s1,$s0,$t2
     slt $s1,$s0,$t6
     add $t2,$s0,$zero
     add $s0,$t3,$t7
     add $s0,$s0,$s1
     slt $s1,$s0,$t3
     slt $s1,$s0,$t7
     add $t3,$s0,$zero  
     
     lw  $s1,0($sp)
     lw  $s0,4($sp)
     addi $sp,$sp,8
j $31
