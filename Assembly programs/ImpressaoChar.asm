.data
	caractere: .byte 'A' #caracterre a ser impresso
.text
	li $v0, 4 #imprimir char ou String
	la $a0, caractere
	syscall