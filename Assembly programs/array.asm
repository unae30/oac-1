.data
	meuArray:
		.align 2
		.space 16 #aloca 4 espaços de array
.text
	move $t0, $zero #indice do array
	move $t1, $zero #valor a ser colocado no array 
	li $t2, 16 #tamanho do array
	
	loop: 
		beq $t0, $t2, saiDoLoop #se t0 é igual a t2, saia do loop
		sw $t1, meuArray($t0)
		addi $t0, $t0, 4 #contador de 4 em 4
		addi $t1, $t1, 1 #contador preenchendo vetor de 0 a 3
		j loop
	
	 saiDoLoop:
	 	move $t0, $zero #indice do array
	   	imprime: 
			beq $t0, $t2, saiDaImpressao
			li $v0, 1
			lw $a0, meuArray($t0)
			syscall
			
			addi $t0 , $t0, 4 #contador de 4 em 4
			j imprime
			
		saiDaImpressao:
			