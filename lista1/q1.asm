.text 

main: 

	addi $2, $0, 5 # C�digo leitura de inteiro
	syscall #chamada do sistema
	add $8, $0, $2 # registro o valor que estava no $2 no $8
	addi $9, $0, 2
	
	mul $10, $8, $9
	add $4, $0, $10
	addi $2, $0, 1   # C�digo de impress�o de inteiros
	syscall	