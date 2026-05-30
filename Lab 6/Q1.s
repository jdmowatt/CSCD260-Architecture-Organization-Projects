.global _start
_start:
	
	LDR R0, =array_1		@ R0 = array_1
	LDR R1, =array_2		@ R1 = array_2
	LDR R2, =arrayLength	@ R2 = arrayLength
	LDRB R2, [R2]			@ R2 = 6
	MOV R3, #0				@ R3 = 0, offset index
	MOV R6, #0				@ R6 = 0, total
	
loop:
	LDR R4, [R0, R3]		@ R4 = array_1[i]
	LDR R5, [R1, R3]		@ R5 = array_2[i]
	MUL R4, R4, R5			@ R4 = R4 x R5
	ADD R6, R6, R4			@ R6 = R6 + R4
	
	ADD R3, R3, #4			@ R3 = R3 + 4
	SUBS R2, R2, #1			@ R2 = R2 - 1 & set flags
	BGT loop				@ if R2 > 0, loop
	
	LDR R0, =innerProduct	@ R0 = innerProduct
    STR R6, [R0]			@ innerProduct = total

    B _end
	
	
_end:
	
data:
array_1: .word 1, 3, 5, 7, 9, 11
array_2: .word 2, 4, 6, 8, 10, 12
innerProduct: .word 0
arrayLength: .byte 6