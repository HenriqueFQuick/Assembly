#x = s0  | y = s1  | z = s2
.text
.globl main
main:
addi $t0,$zero,1
sll  $t0,$t0,4
addi $t0,$t0,8
sll  $t0,$t0,4
addi $t0,$t0,6
sll  $t0,$t0,4
addi $t0,$t0,10
sll  $t0,$t0,4

add $s0,$zero,$t0

addi $t1,$zero,3
sll  $t1,$t1,4
sll  $t1,$t1,4
addi $t1,$t1,13
sll  $t1,$t1,4
addi $t1,$t1,4
sll  $t1,$t1,4
add $s1,$zero,$t1

add $s2,$s0,$s1