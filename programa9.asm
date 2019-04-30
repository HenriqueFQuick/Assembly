#x1 = s1  | x2 = s2  | x3 = s3  | x4 = s4
.text
.globl teste
teste:
	addi $t1,$zero,0x1001  #t1 = 0x1001
	sll  $t1,$t1,16        #t1 = 0x10010000
	lw   $s1,0($t1)
	lw   $s2,4($t1)
	lw   $s3,8($t1)
	lw   $s4,12($t1)
	
	add $s5,$s1,$s2
	add $s5,$s5,$s3
	add $s5,$s5,$s4
	
	sw $s5,16($t1)

.data
x1:.word 15
x2:.word 25
x3:.word 13
x4:.word 17
soma:.word -1