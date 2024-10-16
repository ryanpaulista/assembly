.text 

# 12 - LER CARACTERE; 11 - IMPRIMIR CARACTERE; 5 - LER INTEIRO; 1 - IMPRIMI INTEIRO; 10 FINALIZA CÓDIGO


main:

	addi $2, $0, 12
	syscall 
	add $8, $0, $2
	
	addi $4, $8, -32
	
	addi $2, $0, 11
	syscall
	
	addi $2, $0, 10
	syscall
