.data
	maior: .asciiz "O número é maior que zero"
	menor: .asciiz "O número é menor que zero"
	igual: .asciiz "O número é igual a zero"
.text
	#ler número inteiro
	li $v0, 5
	syscall
	
	move $t0, $v0 #movendo pra poder usar o v0 depois de boas
	
	#comparando se é igual a zero
	beq $t0, $zero, imprimeIgual
	bgt $t0, $zero, imprimeMaior
	blt $t0, $zero, imprimeMenor
	
	
	imprimeIgual:
	#imprime que o número é zero
	li $v0, 4
	la $a0, igual
	syscall
	#terminando programa
	li $v0, 10
	syscall
	
	imprimeMaior:
	#imprime que o némero é maior que zero
	li $v0, 4
	la $a0, maior
	syscall
	#terminando programa
	li $v0, 10
	syscall
	
	imprimeMenor:
	#imprime que o némero é menor que zero
	li $v0, 4
	la $a0, menor
	syscall
	#ja vai finalizar sozinho
	