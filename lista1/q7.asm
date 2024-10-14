.text

main:

	addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $9, $0, 10
	
	div $8, $9
	mfhi $10
	mflo $8
	
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	
	div $8, $9
	mfhi $10
	mflo $8
	
	addi $4, $0, 10
	addi $2, $0, 11
	syscall
	
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	
	div $8, $9
	mfhi $10
	mflo $8
	
	addi $4, $0, 10
	addi $2, $0, 11
	syscall
	
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	
	div $8, $9
	mfhi $10
	mflo $8
	
	addi $4, $0, 10
	addi $2, $0, 11
	syscall
	
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	