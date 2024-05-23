#nao vou criar a area .data pq nao vamos ter nada na memoria RAM 
.text
	li $t0, 75 #$t0 recebe 75
	li $t1, 25 #$t1 recebe 25
	add $s0, $t0, $t1 #$s0 armazena a soma de t0 e t1
	addi $s1, $s0, 36 #adiciona 36 diretamente ao $s0 