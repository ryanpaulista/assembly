.text 

main:

	add $2, $0, 5
	syscall
	add $8, $0, $2
	addi $9, $0, 10
	
	div $8, $9
	mfhi $10 # hi RESTO 
	mflo $8 # lo QUOCIENTE
	
	div $8, $9
	mfhi $11
	mflo $8
	
	div $8, $9
	mfhi $12
	
	add $13, $10, $11
	add $14, $12, $13
	
	add $4, $0, $14
	addi $2, $0, 1
	syscall	
