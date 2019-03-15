main:
     addi $sp,$sp,-32
     sw $s0,28($sp)           # Eight registers for 2 128bit numbers
     sw $s1,24($sp)
     sw $s2,20($sp)
     sw $s3,16($sp)
     sw $s4,12($sp)
     sw $s5,8($sp)
     sw $s6,4($sp)
     sw $s7,0($sp)
     
     addi $s0,$zero,5         #assigning values
     addi $s1,$zero,7
     addi $s2,$zero,5
     addi $s3,$zero,7
     addi $s4,$zero,5
     addi $s5,$zero,7
     addi $s6,$zero,5
     addi $s7,$zero,7
     addi $t1,$zero,0
     
     add $t0,$s0,$s4		#adding 0th bit
     slt $t1,$t0,$s0
     slt $t1,$t0,$s4
     add $s0,$t0,$zero
     
     add $t0,$s1,$s5		#adding 1st bit
     add $t0,$t0,$t1
     slt $t1,$t0,$s1
     slt $t1,$t0,$s5
     add $s1,$t0,$zero 
     
     add $t0,$s2,$s6		#adding 2nd bit
     add $t0,$t0,$t1
     slt $t1,$t0,$s2
     slt $t1,$t0,$s6
     add $s2,$t0,$zero
     	
     add $t0,$s3,$s7		#adding 3rd bit
     add $t0,$t0,$t1
     slt $t1,$t0,$s3
     slt $t1,$t0,$s7
     add $s3,$t0,$zero  
     
     lw  $s7,0($sp)		#dereferencing
     lw  $s6,4($sp)
     lw  $s5,8($sp)
     lw  $s4,12($sp)
     lw  $s3,16($sp)
     lw  $s2,20($sp)
     lw  $s1,24($sp)
     lw  $s0,28($sp)
     addi $sp,$sp,32
     j $31
