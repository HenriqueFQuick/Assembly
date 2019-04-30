#x = s0  | z = s1 | y = s2
.text
.globl main
main:
	addi $t0,$zero,0x1001
	sll  $t0,$t0,16
	
	lw $t1,0($t0)
	lw $t2,4($t0)
	
	sll $s0,$t1,7
	sub $s0,$s0,$t1
	
	sll  $s1,$t2,6
	add $s1,$s1,$t2
	
	sub  $s2,$s0,$s1
	addi $s2,$s2,1
	
	sw  $s2,12($t0)
.data
x:.word 5
z:.word 7
y:.word 0