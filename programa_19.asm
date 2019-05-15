#x - $s0
#y - $s1
#z - $s2
#resultado - $s3

#inicio

.text
.globl DStar
DStar:

addi $t0, $zero, 0x1001
sll  $t0, $t0, 16
ori  $t0, $t0, 0x0000	 #T0 = Primeiro endere?o de mem?ria do mips

addi $t1, $zero, 0x18	#t1 = 0x18
sll  $t1, $t1, 16
ori  $s0, $t1, 0x6A00	#x = 0x186A00
addi $t1, $zero, 0x1	#t1 = 0x1
sll  $t1, $t1, 16
ori  $s1, $t1, 0x3880	#y = 0x13880
addi $t1, $zero, 0x6	#t1 = 0x6
sll  $t1, $t1, 16
ori  $s2, $t1, 0x1A80	#y = 0x61A80
div  $s0, $s2		#x/z
mflo $t2		#t2 = x/z
mult $t2, $s1		#t2*y
mflo $s3		#resultado = (x*y)/z
