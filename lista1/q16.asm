.text

main:

	addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $9, $0, 2
	
	div $8, $9
	mfhi $10
	 
	addi $11, $0, -1
	mul $10, $10, $11
	
	srl $12, $10, 31 # bit de sinal
	
	mul $13, $11, $12
	
	add $4, $0, $13
	addi $2, $0, 1
	syscall 
	
	addi $2, $0, 10
	syscall
	
	