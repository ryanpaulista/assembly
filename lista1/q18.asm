.text

main:
	addi $2, $0, 5
	syscall 
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall 
	add $9, $0, $2
	
	sub $10, $8, $9 #y = a -b
	not $11, $10 # x = y negado bit a bit1
	
	srl $12, $10, 31 # s = sinal(y)
	srl $13, $11, 31 # s = sinal(x)
	
	mul $14, $8, $12 # a * s 
	mul $15, $9, $13 # b * k
	
	add $4, $14, $15
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10 #Finalização do código
	syscall
