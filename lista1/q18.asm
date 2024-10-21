.text 

main:

	addi $2, $0, 5
	syscall
	add $8, $0, $2 # $8 <= x
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # $9 <= y
	
	sub $10, $8, $9
	
	srl $11, $10, 31 # $11 <= bit de sinal
		
	mul $12, $8, $11 # $12 <= x * bit de sinal
	
	xori $13, $11, 1 # $13 <= bit de sinal negado
	
	mul $14, $9, $13 # $14 <= y * bit de sinal negado
	
	or $15, $12, $14
	
	add $4, $0, $15
	addi $2, $0, 1
	syscall 
	
	addi $2, $0, 10
	syscall