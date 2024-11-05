.text

main: 

	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	addi $2, $0, 5
	syscall
	add $10, $0, $2
	
	addi $11, $0, 1
	addi $12, $0, 2
	addi $13, $0, 3
	
	mul $8, $8, $11
	mul $9, $9, $12
	mul $10, $10, $13
	
	add $8, $8, $9
	add $8, $8, $10 #$8 soma das notas com os pesos 
	
	add $11, $11, $12
	add $11, $11, $13 #$11 soma dos pesos
	
	div $8, $11
	mflo $14
	addi $15, $0, 60
	
	slt $16, $14, $15 #se $14<$15 $16=1 se não $16=0
	bne $16, $0, reprovado
	addi $4, $0, 'A' 
	j impfinal

reprovado: addi $4, $0, 'R'

impfinal:addi $2, $0, 11
	syscall
	
	addi $2, $0, 10
	syscall	