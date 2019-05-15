#x - $s0
#y - $s1
#k - $s2

#inicio 

.text
.globl main
main:
	
	addi $t0,$zero,0x1001 #t0 = 1001
	 sll $t0,$t0,16  #t0 = 10010000
	 
	 lw $t1,0($t0) # Ler da primeira posição da memoria 
	 lw $t2,4($t0) # Ler da segunda posição da memoria 
	 beq $t2,$zero,zero	# Caso seja igual a zero , colocar um
	 zero:
	 	addi $t3,$zero,1 # t3 = 0
	 beq $t2,$zero,fim # caso seja igual a zero , ir para o fim do programa 
	 while:
	 	mult $t3,$t1, # multiplicar o valor por ele mesmo 
	 	mflo $t3      # pegar o valor da posição low 
	  	add $t2,$t2,-1# subtrair 1 da variavel y 
	 bne $t2,$zero,while  # se y nao for igual a zero , voltar a função while
	 j fim 
	 fim:
	 	 sw $t3,8($t0)# colocar o  valor na primeira posição livre da memoria
	.data 
	x : .word 2
	y : .word 10
