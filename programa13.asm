.text
.globl main
main:
#a = $s1
addi $t0,$zero,0x1001
sll  $t0,$t0,16
lw $s1,0($t0)

addi $s0,$zero,1
sll  $s0,$s0,31

and $s2,$s0,$s1
beq $s2,$zero,ehpositivo
sub $s1,$zero,$s1
sw $s1,0($t0)
j fim
ehpositivo: sw $s1,0($t0)
fim:
.data
x1:.word -4