.data  #area para dados da memoria principal

	msg: .asciiz "Hello World" #mensagem a ser exibida para o usuario

.text #area para instru��es do programa

	li $v0, 4 #instru��o para impress�o de String
	la $a0, msg #indicar o endere�o em que esta a mensagem
	syscall #fa�a, imprima;
	