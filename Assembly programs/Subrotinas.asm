.data
	msgUsr: .asciiz "Forneça o número positivo: "
	msgPar: .asciiz "O número é par."
	msgImpar: .asciiz "O número é ímpar."
.text
	
	la $a0, msgUsr
	jal imprimeString #chamei a funcao de imprimir string com msgUser com a0 em argumento
	jal lerInteiro #chamei a funcao de ler inteiros
	
	move $a0, $v0
	jal ehImpar #chamei a funcao pra conferir se e impar
	beq $v0, $zero, imprimePar #se o num for igual a zero ele é par, entao chama Imprime par
	la $a0, msgImpar #se nao ele vai cair aqui e imprimir é impar
	jal imprimeString
	jal encerraPrograma #encerra
	
	
	
	#funcao que imprime par
	imprimePar:
		la $a0, msgPar
		jal imprimeString
		jal encerraPrograma #encerra
		
	#------------------------------FUNÇÕES--------------------------#
	
	#função que verifica se o argumento $a0 é impar
	#retorna 1 se for ímpar
	#e retorna 0 se for par
	ehImpar:
		li $t0, 2 #atribuindo o valor 2 a $t0
		div $a0, $t0 #dividindo $a0 por $t0 (2)
	
		mfhi $v0 #peguei o resto e coloquei em $v0
		jr $ra #retornar pra quem chamou a função
		
	
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