#x - $s0
#y - $s1
#k - $s2

#inicio

.text
.globl DStar
DStar:

addi $t0, $zero, 0x1001
sll  $t0, $t0, 16
ori  $t0, $t0, 0x0000	 #T0 = Primeiro endereço de memória do mips

lw   $s0, 0($t0)	 #x = A[0]
lw   $s1, 4($t0)	 #y = A[1]
mult $s0, $s1		 #x*y
mflo $s2		 #k = x*y
sw   $s2, 8($t0)	 #A[2] = k

.data
x: .word 4
y: .word 3