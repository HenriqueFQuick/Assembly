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
sll  $t1, $s0, 31	
sra  $t1, $t1, 31
addi $t1, $t1, 1	#t1 = x + 1
beq  $t1, $zero, impar  #if(t1 == 0)? impar : par

mult $s0, $s0		# x * x
mflo $t2		#t2 = x^2
add  $t5, $t2, $t2	#t5 = 2x^2
mult $t2, $s0		#x^2 * x
mflo $t3		#t3 = x^3
mult $t2, $t2		#x^2 * x^2
mflo $t4		#t4 = x^4
add  $t6, $t2, $t3	#t6 = x^4 + x^3
sub  $s1, $t6, $t5	#y = x^4 + x^3 - 2x^2
j fim

impar:
mult $s0, $s0		#x * x
mflo $t2		#t2 = x^2
mult $t2, $s0		#x^2 * x
mflo $t3		#t3 = x^3
mult $t3, $t2		#x^3 * x^2
mflo $t4		#t4 = x^5
sub  $t5, $t4, $t3	#x^5 - x^3
addi $s1, $t5, 1	#y = x^5 - x^3 + 1

fim:
sw   $s1, 4($t0)	#A[1] = y


.data
x: .word 4


	 

