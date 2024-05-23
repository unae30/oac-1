.data 
	msg: .asciiz "Forneça um número decimal: "
	zero: .double 0.0
.text
	#imprimindo a mensagem para o ususario
	li $v0, 4
	la $a0, msg
	syscall 
	
	#lendo o numero
	li $v0, 7
	syscall #valor lido estara em $f0
	
	ldc1 $f2, zero #atribuindo uma variavel zero a f2, pq no co processador nao temos a variavel $zero (registrador par f2)
	add.d $f12, $f2, $f0 #armazenar em f12 a variavel f2 (que é a 'zero' e nao tem nada) junto com a f0.)
	
	
	#imprimindo o numero
	li $v0, 3
	syscall 
		