.text
.globl main
main:

addi $s2,$zero,0     #s2 = 0
addi $t3,$zero,0     #t3 = 0

addi $t0,$zero,0x1001
sll  $t0,$t0,16 #pegar a primeira posicao da memoria

lw   $s0, 0($t0)  #pegar o endereco do vetor        s0 = 0x10010008
lw   $s1, 4($t0)  #pegar a quantidade de numeros    s1 = 10

add $t0,$zero,$s0 #t0 = mem

addi $t2,$zero,30 #t2 = 30 
slt $t1 ,$s1,$t2  
bne $t1,$zero, function   #if s1 < 30 vai para funcao
addi $s1,$zero,0x0000001E #else s1 = 30
function:
add $a0,$zero,$s1
jal vetor  #ir para o vetor
j fim      #ir para o fim

vetor:
add $t2,$zero,$a0
addi $sp,$sp,-4  #topo = topo - 4
sw $ra, 4($sp)   #topo + 4 = ra

do:              #do - while
andi $t3,$s2,1   
beq $t3,$zero,par #if s2 eh par, vou para par else continua

add $a0,$zero,$s2 # if impar, a0 = s2
jal quadrado      #quadrado de s2
sw $v0,0($t0)     #guardar o quadrado em mem
j voltar          #vai para voltar
par:              #if par
add $a0,$zero,$s2 # a0 = s2
jal quadrado      #v0 = quadrado de s2
sll $t5,$v0,1     #t5 = vo*2
sll $t6,$s2,1     #t6 = s2*2
add $t7,$t5,$t6   #t7 = t5 + t6
addi $t7,$t7,1    #t7 = t7 + 1
sw $t7,0($t0)
voltar:
addi $s2,$s2,1  #s2 = s2 + 1
addi $t0,$t0,4  #mem = mem + 4
bne $t2,$s2,do

lw $ra, 4($sp)  #ra = sp + 4
addi $sp,$sp,4  #sp = sp + 4
jr $ra

quadrado:  
mult $a0,$a0 #a0 ^2
mflo $v0
jr $ra

fim:
.data
x: .word 0x10010008
y: .word 0x00000006