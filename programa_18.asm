#x - $s0
#y - $s1

#inicio

.text
.globl DStar
DStar:

addi $t0, $zero, 0x1001
sll  $t0, $t0, 16
ori  $t0, $t0, 0x0000	 #T0 = Primeiro endere?o de mem?ria do mips

lw   $s0, 0($t0)    	#x = A[0]
slt  $t1, $zero, $s0	# x > 0 ? 1 : 0
beq  $t1, $zero, menor  #if(t1 != 0)? menor : maior

mult $s0, $s0		# x * x
mflo $t2		#t2 = x^2
mult $t2, $s0		#x^2 * x
mflo $t3		#t3 = x^3
addi $s1, $t3, 1	#y = x^3 + 1
j fim

menor:
mult $s0, $s0		#x * x
mflo $t2		#t2 = x^2
mult $t2, $t2		#x^2 * x^2
mflo $t4		#t4 = x^4
addi $s1, $t4, -1	#y = x^4 - 1

fim:
sw   $s1, 4($t0)	#A[1] = y


.data
x: .word -5