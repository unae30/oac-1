.data
	saudacao: .asciiz "Ol�! Por favor, forne�a sua idade:"
	saida: .asciiz "Sua idade � "
.text
	li $v0, 4 #imprimir uma string
	la $a0, saudacao #passando o conteudo de saudacao para a0
	syscall
	
	li $v0, 5 #leitura de inteiros
	syscall

	move $t0, $v0 #copiei o valor fornecido para t0
	
	li $v0, 4 #imprimir string
	la $a0, saida #passando o conteudo de saida para a0
	syscall
	
	li $v0, 1 #imprimir inteiro
	move $a0, $t0 #passando o valor de t0 para a0, pois precisa estar para imprimir
	syscall