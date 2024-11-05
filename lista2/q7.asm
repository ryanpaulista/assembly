.text

main: 	addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $9, $0, 4
	
	div $8, $9
	mfhi $10
	
	beq $10, $0, bissexto
	addi $4, $0, 'N'
	j imp
	
bissexto: addi $4, $0, 'Y'

imp: 	add $2, $0, 11
	syscall
	
	add $2, $0, 10
	syscall