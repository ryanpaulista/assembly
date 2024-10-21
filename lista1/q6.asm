.text

main:

	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $9, $0, 0
	addi $10, $0, 0
	
	addi $11, $0, 10
	
	div $8, $11
	mfhi $8
	mflo $9
	
	div $9, $11
	mfhi $9
	mflo $10
	
	add $4, $0, $10 
	addi $2, $0, 1
	syscall
	
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall