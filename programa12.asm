.text
.globl main
main:
	addi $t0,$zero,0x1001
	sll  $t0,$t0,16         #x = 0x10010000
	
	lw $s0,0($t0)           # MEM[x]
	lw $s1,0($s0)           # MEM[MEM[x]]
	lw $s2,0($s1)           # MEM[MEM[MEM[x]]]  =  k
	
	sll $t2,$s2,1          #2k
	
	sw  $t2,0($s1)
	                
.data
x1:.word 0x10010004
x2:.word 0x10010008
x3:.word 100