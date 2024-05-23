.data 
	idade: .word 56 #valor itneiro na memoria RAM (um inteiro tem o mesmo tamanho de uma palavra na memória, portanto usa 'word'
.text
	li $v0, 1 #comando para iprimir inteiro
	lw $a0, idade
	syscall