.data  #area para dados da memoria principal

	msg: .asciiz "Hello World" #mensagem a ser exibida para o usuario

.text #area para instruções do programa

	li $v0, 4 #instrução para impressão de String
	la $a0, msg #indicar o endereço em que esta a mensagem
	syscall #faça, imprima;
	