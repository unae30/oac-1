.data
	maior: .asciiz "O n�mero � maior que zero"
	menor: .asciiz "O n�mero � menor que zero"
	igual: .asciiz "O n�mero � igual a zero"
.text
	#ler n�mero inteiro
	li $v0, 5
	syscall
	
	move $t0, $v0 #movendo pra poder usar o v0 depois de boas
	
	#comparando se � igual a zero
	beq $t0, $zero, imprimeIgual
	bgt $t0, $zero, imprimeMaior
	blt $t0, $zero, imprimeMenor
	
	
	imprimeIgual:
	#imprime que o n�mero � zero
	li $v0, 4
	la $a0, igual
	syscall
	#terminando programa
	li $v0, 10
	syscall
	
	imprimeMaior:
	#imprime que o n�mero � maior que zero
	li $v0, 4
	la $a0, maior
	syscall
	#terminando programa
	li $v0, 10
	syscall
	
	imprimeMenor:
	#imprime que o n�mero � menor que zero
	li $v0, 4
	la $a0, menor
	syscall
	#ja vai finalizar sozinho
	