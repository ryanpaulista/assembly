.text

main:

	addi $2, $0, 5
	syscall
	add $8, $0, $2
	add $9, $0, $8 #copy$8
	
	addi $10, $0, 10
	
	div $9, $10
	mflo $9
	mfhi $11
	addi $12, $0, 2
	mul $13, $11, $12
	add $20, $20, $13
	
	div $9, $10
	mflo $9
	mfhi $11
	addi $12, $0, 3
	mul $13, $11, $12
	add $20, $20, $13
	
	div $9, $10
	mflo $9
	mfhi $11
	addi $12, $0, 4
	mul $13, $11, $12
	add $20, $20, $13
	
	div $9, $10
	mflo $9
	mfhi $11
	addi $12, $0, 5
	mul $13, $11, $12
	add $20, $20, $13	
	
	div $9, $10
	mflo $9
	mfhi $11
	addi $12, $0, 6
	mul $13, $11, $12
	add $20, $20, $13
	
	div $9, $10
	mflo $9
	mfhi $11
	addi $12, $0, 7
	mul $13, $11, $12
	add $20, $20, $13
	
	div $9, $10
	mflo $9
	mfhi $11
	addi $12, $0, 8
	mul $13, $11, $12
	add $20, $20, $13
	
	div $9, $10
	mflo $9
	mfhi $11
	addi $12, $0, 9
	mul $13, $11, $12
	add $20, $20, $13
	
	div $9, $10
	mflo $9
	mfhi $11
	addi $12, $0, 10
	mul $13, $11, $12
	add $20, $20, $13
	
	addi $14, $0, 11
	addi $15, $0, 2
	div $20, $14
	mfhi $16
	slt $17, $16, 2 # se $16<2 $17=1 else $17=0
	bne $17, $zero, Pzero
	
	 
Pzero: 	
	addi $21, $0, 0
	 
	
	
	add $4, $0, $20
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall