.data
	pergunta: .asciiz "Qual é o o seu nome? " 
	saudacao: .asciiz "Olá, "
	nome: .space 25 #criando uma variavel vetor de caracter de tamanho 25 para armazenar o nome
.text
	#impressao da pergunta
	li $v0, 4
	la $a0, pergunta
	syscall 
	
	#leitura da String
	li $v0, 8
	la $a0, nome
	la $a1, 25
	syscall
	
	#mostra a saudacao
	li $v0, 4
	la $a0, saudacao
	syscall
	
	#impressao do nome
	li $v0, 4
	la $a0, nome
	syscall