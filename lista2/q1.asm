.text

main: 
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	slt $10, $8, $9 # se ($8<9) $10<=1 else $10<=0
	beq $8, $9, iguais
	j idMenor

iguais: add $4, $0, '='
	addi $2, $0, 11
	syscall
	j posMenor

idMenor: 
	
	beq $10, $0, imp9
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	j posMenor
	
imp9: 	add $4, $0, $9
	addi $2, $0, 1
	syscall

posMenor:

	addi $2, $0, 10
	syscall 

	
