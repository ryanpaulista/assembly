.text

main:

	addi $2, $0, 5
	syscall 
	add $8, $0, $2 #a
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2 #b
	
	addi $2, $0, 5
	syscall 
	add $10, $0, $2 #c
	
if1:

	slt $11, $8, $9 # se a<b $11=1 se não $11=0
	bne $11, $zero, aMenorB

if2:
	slt $13, $9, $8 # se b<a $13=1 se não $13=0
	bne $13, $zero, bMenorA
	
else: 
	j notPico

aMenorB: 
	
	slt $12, $10, $9 # se c<b $12=1 se não $12=0
	bne $12, $zero, cMenorB
	j if2
	
cMenorB:
	
	add $4, $0, 'P'
	addi $2, $0, 11
	syscall
	add $4, $0, '+'
	addi $2, $0, 11
	syscall
	j final
	
bMenorA:

	slt $14, $9, $10 # se b<c $14=1 se não $14=0
	bne $14, $zero, bMenorC
	j notPico

bMenorC:

	add $4, $0, 'P'
	addi $2, $0, 11
	syscall
	add $4, $0, '-'
	addi $2, $0, 11
	syscall
	j final

notPico: 

	addi $4, $0, 'N'
	add $2, $0, 11
	syscall

final: 

	addi $2, $0, 10
	syscall 
	
	
	