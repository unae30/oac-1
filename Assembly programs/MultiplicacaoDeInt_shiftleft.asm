.text 
	li $t0, 12
	addi $t1, $zero, 10 #outra forma de atribuir o valor ao t1
	
	sll $s1, $t1, 10 #multiplicar por 2 elevado a 10
	
	#$s0 será o resultado da multiplicação
	mul $s0, $t0, $t1
	
	li $v0, 1
	move $a0, $s0 #para imprimir um inteiro o valor temq ue estar na variavel $a0, e este move esta tranferindo o valor de s0 para a0
	syscall