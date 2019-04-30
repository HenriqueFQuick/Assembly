#x = s0  | y = s1  | z = s2
.text
.globl main
main:
addi $t0,$zero,1
sll  $t0,$t0,31
sra  $t0,$t0,31
srl  $t0,$t0,1
add $s0,$zero,$t0

addi $t0,$zero,4
sll  $t0,$t0,4
addi $t0,$t0,9
sll  $t0,$t0,4
addi $t0,$t0,3
sll  $t0,$t0,4
addi $t0,$t0,14
sll  $t0,$t0,4
sll  $t0,$t0,4
add $s1,$zero,$t0

sub $s2,$s0,$s1



