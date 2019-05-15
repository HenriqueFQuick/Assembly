#i - $s0
#limite - $s1
#inicio par - $s2
#inicio impar - $s3


#inicio

.text
.globl DStar
DStar:
addi $s1, $zero, 102
addi $t7, $zero, 101
addi $s0, $zero, 0
addi $s2, $zero, 0
addi $s3, $zero, 1

addi $t0, $zero, 0x1001
sll  $t0, $t0, 16
ori  $t0, $t0, 0x0000	 #T0 = Primeiro endereço de memória do mips

somaP:
sll  $t1, $s0, 2
add  $t2, $t1, $t0
sw   $s2, 0($t2)	 #s1 = Valor de x1
addi $s2, $s2, 2
slt  $t1, $s0, $s2
addi $s0, $s0, 1
bne  $s2, $s1, somaP

somaI:
sll  $t1, $s0, 2
add  $t2, $t1, $t0
sw   $s3, 0($t2)	 #s1 = Valor de x1
addi $s3, $s3, 2
slt  $t1, $s0, $s3
addi $s0, $s0, 1
bne  $s3, $t7, somaI


fim: