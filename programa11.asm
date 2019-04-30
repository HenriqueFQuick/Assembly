.text
.globl main
main:
	addi $t0,$zero,0x493e
	sll  $t0,$t0,4
	
	addi $t1,$zero,0x1001
	sll  $t1,$t1,16
	
	lw $s0,0($t1)
	lw $s1,4($t1)
	
	sub $t3,$s0,$s1
	add $s2,$t3,$t0
	
	sw $s2, 12($t1)
.data 
x:.word 100000
z:.word 200000
y:.word 0