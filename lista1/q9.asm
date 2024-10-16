.text 

main:

	addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $9, $0, 3600
	addi $10, $0, 60
	
	div $8, $9
	mflo $9
	mfhi $8
	
	div $8, $10
	mflo $10
	mfhi $11
	
	add $4, $0, $9
	addi $2, $0, 1
	syscall 
	
	add $4, $0, ':'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	
	add $4, $0, ':'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	
			
	addi $2, $0, 10
	syscall 