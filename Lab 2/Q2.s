.global _start
_start:
	
	//Factorial of 5 (2 Registers, No Loop)
	MOV R0, #5		@ R0 = 5
	MOV R1, #4		@ R1 = 4
	MUL R0, R0, R1	@ R0 = R0 * R1 (5 * 4 = 20)
	MOV R1, #3		@ R1 = 3
	MUL R0, R0, R1	@ R0 = R0 * R1 (20 * 3 = 60)
	MOV R1, #2		@ R1 = 2
	MUL R0, R0, R1	@ R0 = R0 * R1 (60 * 2 = 120)
	MOV R1, #1		@ R1 = 1
	MUL R0, R0, R1	@ R0 = R0 * R1 (120 * 1 = 120)