.data
	msgUsr: .asciiz "Forne�a o n�mero positivo: "
	msgPar: .asciiz "O n�mero � par."
	msgImpar: .asciiz "O n�mero � �mpar."
.text
	
	la $a0, msgUsr
	jal imprimeString #chamei a funcao de imprimir string com msgUser com a0 em argumento
	jal lerInteiro #chamei a funcao de ler inteiros
	
	move $a0, $v0
	jal ehImpar #chamei a funcao pra conferir se e impar
	beq $v0, $zero, imprimePar #se o num for igual a zero ele � par, entao chama Imprime par
	la $a0, msgImpar #se nao ele vai cair aqui e imprimir � impar
	jal imprimeString
	jal encerraPrograma #encerra
	
	
	
	#funcao que imprime par
	imprimePar:
		la $a0, msgPar
		jal imprimeString
		jal encerraPrograma #encerra
		
	#------------------------------FUN��ES--------------------------#
	
	#fun��o que verifica se o argumento $a0 � impar
	#retorna 1 se for �mpar
	#e retorna 0 se for par
	ehImpar:
		li $t0, 2 #atribuindo o valor 2 a $t0
		div $a0, $t0 #dividindo $a0 por $t0 (2)
	
		mfhi $v0 #peguei o resto e coloquei em $v0
		jr $ra #retornar pra quem chamou a fun��o
		
	
	#funcao que encerra programa
	encerraPrograma:
		li $v0, 10
		syscall
		
		
	#funcao que recebe uma String em $a0 e a imprime	
	imprimeString:
		li $v0, 4
		syscall
		jr $ra
		
		
	#funcao que le um inteiro e o retorna em $v0
	lerInteiro:
		li $v0, 5
		syscall
		jr $ra