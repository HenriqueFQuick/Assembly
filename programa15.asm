.text
.globl main
main:
#A[0] = $s0
addi $s0,$zero,0x1001
sll $s0,$s0,16
add $t0,$zero,$0
add $t1,$zero,$0
addi $t5,$zero,100
add $t4,$zero,$s0
addi $t8,$zero,0
do:
sll  $t3,$t0,1
addi $t3,$t3,1
sw $t3,0($t4)
addi $t4,$t4,4
addi $t0,$t0,1
add $t8,$t8,$t3
bne $t0,$t5,do
sw $t8,0($t4)