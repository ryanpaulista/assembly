.text

main:

	addi $2, $0, 5
	syscall 
	add $8, $0, $2
	
	sub $9, $0, $8
	srl $10, $9, 31
	
	sll $11, $10, 4
	
	addi, $12, $11, 32
	add $4, $12, $8
	
	addi $2, $0, 11
	syscall 
	
	addi $4, $0, ''  # terminar 