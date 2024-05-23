.data 
	msg: .asciiz "Forneça um número decimal: "
	zero: .float 0.0
.text
	#imprimindo a mensagem para o ususario
	li $v0, 4
	la $a0, msg
	syscall 
	
	#lendo o numero
	li $v0, 6
	syscall #valor lido estara em $f0
	lwc1 $f1, zero #atribuindo uma variavel zero a f1, pq no co processador nao temos a variavel $zero
	add.s $f12, $f1, $f0 #armazenar em f12 a variavel f1 (que é a 'zero' e nao tem nada) junto com a f0.)
	
	
	#imprimindo o numero
	li $v0, 2
	syscall 
		