.data 
	msg: .asciiz "Forneça um número: "
	par: .asciiz "Este número é par"
	impar: .asciiz "O número é impar" 
.text
	#imprimindo mensagem para o usuario
	li $v0, 4
	la $a0, msg
	syscall 
	
	#ler o numero
	li $v0, 5
	syscall
	
	li $t0, 2 #criei uma variavel de valor 2
	div $v0, $t0 #dividi o numero lido pore 2
	
	mfhi $t1 #passou o valor de hi (resto) para t1
	
	beq $t1, $zero, imprimePar #se t1 é igtual a $zero, execute o rotulo imprimePar
	#se ele não for par, ele vai executar aqui (imprimir o impar).
	li $v0, 4
	la $a0, impar
	syscall 
	
	#finalizando o programa para nao executar o rotulo imprimePar
	li $v0, 10
	syscall
	
	imprimePar: 
		li $v0, 4
		la $a0, par
		syscall 
	