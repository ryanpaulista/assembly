.text

main:

	addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $9, $0, 10
	
	div $8, $9
	mflo $8
	mfhi $11 #n1
	
	div $8, $9
	mflo $8
	mfhi $12 #n2
	
	div $8, $9
	mflo $14 #n4
	mfhi $13 #n3
	
	addi $15, $0, -1
	
	mul $16, $11, $15
	mul $17, $12, $15
	mul $18, $13, $15
	mul $19, $14, $15
	
	srl $20, $16, 31 # n1
	srl $21, $17, 31 # n2
	srl $22, $18, 31 # n3 -  BITS DE SINAIS = S
	srl $23, $19, 31 # n4
	
	addi $8, $0, 32 #32
	addi $9, $0, 16 #16
	
	add $15, $11, $8 
	mul $16, $20, $9
	add $15, $15, $16 # resultado primeiro bit
	
	add $16, $12, $8
	mul $17, $21, $9
	add $16, $16, $17 #resultado segundo bit
	
	add $17, $13, $8
	mul $18, $22, $9
	add $17, $17, $18 #resultado terceiro bit
	
	add $18, $14, $8
	mul $19, $23, $9
	add $18, $18, $19 #resultado quarto bit
	
	add $4, $0, $18
	addi $2, $0, 11
	syscall
	
	add $4, $0, $17
	addi $2, $0, 11
	syscall
	
	add $4, $0, $16
	addi $2, $0, 11
	syscall
	
	add $4, $0, $15
	addi $2, $0, 11
	syscall
	
	addi $2, $0, 10
	syscall 