main:
	addi $sp,$sp,-12
	lw $s0,8($sp)
	lw $s1,4($sp)
	lw $s2,0($sp)

	addi $s0,$zero,15
	addi $s1,$zero,0
	add $s2,$zero,$zero
	add $t0,$zero,$zero
	addi $t1,$zero,1

L1:	and $t2,$t1,$s0
	bne $t2,$zero,L2
	addi $s1,$s1,1
	j L3
L2:	addi $s2,$s2,1
L3:	addi $t0,$t0,1
	sll $t1,$t1,1
	beq $t0,32,L4
	slti $t3,$t0,32
	beq $t3,1,L1

L4:	sw $s2,0($sp)
	sw $s1,4($sp)
	sw $s0,8($sp)
	addi $sp,$sp,12
	j $31
