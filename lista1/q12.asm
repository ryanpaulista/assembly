.text

main:  

	addi $2, $0, 5 
	syscall
	add $8, $0, $2 # valor1
	add $9, $0, $8 #Cópia valor inicial
	
	addi $2, $0, 5
	syscall
	add $10, $0, $2 # valor2
	add $11, $0, $10 #Cópia valor inicial
	
	addi $2, $0, 5
	syscall
	add $12, $0, $2 # valor3
	add $13, $0, $12 #Cópia valor inicial
	
	add $8, $8, $9
	add $8, $8, $9
	
	add $10, $10, $11
	add $10, $10, $11
	add $10, $10, $11
	add $10, $10, $11
	add $10, $10, $11
	add $10, $10, $11
	add $10, $10, $11
	add $10 $10, $11
	
	add $12, $12, $13
	add $12, $12, $13
	add $12, $12, $13
	add $12, $12, $13
	add $12, $12, $13
	add $12, $12, $13
	add $12, $12, $13
	add $12, $12, $13
	add $12, $12, $13
	add $12, $12, $13
	add $12, $12, $13
	add $12, $12, $13
	add $12, $12, $13
	add $12, $12, $13
	
	add $8, $8, $10
	add $8, $8, $12
	
	addi $9, $0, 3
	addi $10, $0, 9
	addi $11, $0, 15
	
	add $9, $9, $10
	add $9, $9, $11
	
	div $8, $9
	mflo $8
			
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	add $2, $0, 10
	syscall
	
	
	