.text

main: 	addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	slt $10, $8, $9 # se $8<$9 $10=1 se n�o $10=0
	bne $10, $0, imp9 #$9 � maior que $8
	add $4, $0, $8 #$8 � maior que $9
	sub $11, $8, $9
	j impFinal

imp9: 	add $4, $0, $9
	sub $11, $9, $8

impFinal: addi $2, $0, 1
	syscall
	
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $11
	addi $2, $0, 1
	syscall 
	
	addi $2, $0, 10
	syscall
	