main:
	addi $s0,$zero,4
	addi $s1,$zero,4
	addi $s2,$zero,0
	addi $s3,$zero,0
	addi $s4,$zero,0
loop:
	
	srl $t0,$s3,31
	sll $s3,$s3,1
	sll $s2,$s2,1
	addu $s2,$s2,$t0

	andi $t0,$s0,0x8000
	beq $t0,$0,next
	add $s3,$s3,$s1

next:
	sll $s0,$s0,1
	addi $s4,$s4,1
	bne $s4,16,loop
	
	j $31
