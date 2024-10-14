.text

main: 

	addi $2, $0, 5 
	syscall
	add $8, $0, $2 # HORAS
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # MINUTOS
	
	addi $2, $0, 5
	syscall
	add $10, $0, $2 # SEGUNDOS
	
	addi $11, $0, 3600 # $11 hora para minuto 
	addi $12, $0, 60 # $12 minuto para segundo
	
	mul $8, $8, $11 
	mul $9, $9, $12
	
	add $8, $8, $9
	add $8, $8, $10
	
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10 
	syscall
	
	
	