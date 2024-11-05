.text

main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	addi $2, $0, 5
	syscall
	add $10, $0, $2
	
	add $8, $8, $9
	add $8, $8, $10
	addi $9, $0, 3
	
	div $8, $9
	mflo $10
	mfhi $11
	addi $12, $0, 2
	
	slt $13, $11, $12 # se $11<$12 $13=1 se não $13=0
	bne $13, $0, imp #se $13 != 0 exec
	addi $10, $10, 1
	
imp: 	add $4, $0, $10
	addi $2, $0, 1
	syscall