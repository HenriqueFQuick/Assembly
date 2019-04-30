.text
.globl main
main:
addi $t0,$0,1
sll  $t0,$t0,4
addi $t0,$t0,2
sll  $t0,$t0,4
addi $t0,$t0,3
sll  $t0,$t0,4
addi $t0,$t0,4
sll  $t0,$t0,4
addi $t0,$t0,5
sll  $t0,$t0,4
addi $t0,$t0,6
sll  $t0,$t0,4
addi $t0,$t0,7
sll  $t0,$t0,4
addi $t0,$t0,8

srl $9,$8,24

srl $10,$8,16
andi $10,$10,0x34

srl $11,$8,8
andi $11,$11,0x56

andi $12,$8,0x78