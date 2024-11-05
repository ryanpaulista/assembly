.text

main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	slt $10, $8, $9 #se 8<9 $10=1 se não $10=0
	
	
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	beq $8, $9, impiguais
	bne $10, $0, impMenor
	j impMaior
	
impiguais: add $4, $0, '='
	addi $2, $0, 11
	syscall
	j impFinal

impMaior: add $4, $0, '>'
	addi $2, $0, 11
	syscall 	
	j impFinal	
impMenor: add $4, $0, '<'
	addi $2, $0, 11
	syscall
	
impFinal: 
	add $4, $0, $9
	addi $2, $0, 1
	syscall