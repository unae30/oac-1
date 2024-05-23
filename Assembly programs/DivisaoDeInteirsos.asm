.text

	li $t0, 32
	li $t1, 5
	
	div $t0, $t1 #divido 32/5
	#o resultado fica em lo e o resto em hi e para usar estes resutlados temos que:
	
	#parte inteiroa em $s0
	mflo $s0 #move from lo to $s0
	
	#resto em $s1
	mfhi $s1 #move from hi to $s1