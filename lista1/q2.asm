.text

main: 

	addi $2, $0, 5 # C�digo leitura de inteiro
	syscall #chamada do sistema
	add $8, $0, $2 # registro o valor que estava no $2 no $8
	
	mul $9, $8, $8
	add $4, $0, $9
	addi $2, $0, 1   # C�digo de impress�o de inteiros
	syscall	