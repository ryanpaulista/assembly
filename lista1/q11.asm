.text

main: 

	addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $9, $0, 10
	addi $10, $0, 100
	
	div $8, $9
	mfhi $11
	mflo $12
	
	mul $13, $11, $10
	
	div $12, $9
	mfhi $11
	mflo $12
	
	mul $14, $11, $9
	
	add $14, $14, $13
	add $14, $14, $12
	
	add $4, $0, $14
	addi $2, $0, 1
	syscall