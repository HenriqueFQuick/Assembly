#i - $s0
#limite - $s1
#soma-$s2
#aux - $s3
#flag - $s4
#j - $s5

#inicio

.text
.globl DStar
DStar:
addi $s1, $zero, 99
addi $s0, $zero, 0
addi $s2, $zero, 0
addi $s4, $zero, 5

addi $t0, $zero, 0x1001
sll  $t0, $t0, 16
ori  $t0, $t0, 0x0000	 #T0 = Primeiro endere�o de mem�ria do mips
add  $t4, $s1, $zero 
somaI:
sll  $t1, $s0, 2
add  $t2, $t1, $t0
addi $t4, $t4, -1
sw   $t4, 0($t2)	 #s1 = Valor de x1
slt  $t1, $s0, $s1
addi $s0, $s0, 1
bne $t1, $zero, somaI
addi $s0, $zero, 0


BolhaF1:
slt  $t1, $s0, $s1          # if (i < limite) return 1
beq  $t1, $zero , fimBolha1 # if(i>= limite) go to fimBolha1


BolhaF2:
slt  $t7, $s5, $s1	    #If( j < limite)? 1:0
beq  $t7, $zero, fimBolha2  #if(t7 == 0)? segue: volta
sll  $t3, $s5, 2            #  t3 = j*4
add  $t6, $t3, $t0	    # t6 = j*4 + endBase
lw   $s3, 0($t6)	    #aux = V[j]
lw   $t5, 4($t6)	    #t5 = V[j+1]
slt  $t4, $s3, $t5	    #t4 = if(aux < t5)? 1:0
bne  $t4, $zero, fimIf    #if(t4 == 0)? segue: volta
sw   $t5, 0($t6)	    #V[i] = t5
sw   $s3, 4($t6)	    #V[i+1] = aux
fimIf:

addi $s5, $s5, 1 #j = j + 1

j BolhaF2
fimBolha2:
add $s5, $zero,$zero # zerar (j)
addi $s0, $s0, 1  #i = i+1
j BolhaF1
fimBolha1:


	 

