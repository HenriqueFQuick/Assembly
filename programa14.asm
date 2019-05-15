.text
.globl main
main:
addi $t0,$zero,0x1001
sll $t0,$t0,16
addi $t2,$zero,30
addi $t3,$zero,50
addi $s1,$zero,1
lw $s0,0($t0)

slt $t1,$s0,$t2     #if(s0 < 30)
bne $t1,$zero,fail
slt $t1,$t3,$s0     #if(50 < s0)
bne $t1,$zero,fail
sw $s1,4($t0)
j fim
fail: sw $zero,4($t0)
fim:
.data
x:.word 20
