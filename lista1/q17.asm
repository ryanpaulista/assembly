.text

main:

	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall 
	add $9, $0, $2
	
	add $8, $8, $9
	addi $9, $0, 2
	div $8, $9
	mflo $10
	mfhi $11
	
	div $11, $9
	mflo $11
	
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	
	add $4, $0, 44
	addi $2, $0, 11
	syscall
	
	add $4, $0, $11
	addi $2, $0, 1
	syscall 
	
	addi $2, $0, 10
	syscall
	