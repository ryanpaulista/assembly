.text

main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	srl $9, $8, 31
	beq $9, $0, dobro
	mul $8, $8, $8
	j imp
	
dobro: 	add $8, $8, $8 #imprime o dobro do numero caso seja par
	
imp:	add $4, $0, $8
	addi $2, $0, 1
	syscall 

	addi $2, $0, 10
	syscall
	
	