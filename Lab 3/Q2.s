.global _start
_start:
	
	//Calculate Fibonacci (Each block is calculating the next number)
	MOV R0, #1		@ R0 = 1
	MOV R1, #1		@ R1 = 1
	ADD R2, R0, R1	@ R2 = R0 + R1
	
	MOV R0, R1		@ R0 = R1
	MOV R1, R2		@ R1 = R2
	ADD R2, R0, R1	@ R2 = R0 + R1
	
	MOV R0, R1		@ R0 = R1
	MOV R1, R2		@ R1 = R2
	ADD R2, R0, R1	@ R2 = R0 + R1
	
	MOV R0, R1		@ R0 = R1
	MOV R1, R2		@ R1 = R2
	ADD R2, R0, R1	@ R2 = R0 + R1
	
	MOV R0, R1		@ R0 = R1
	MOV R1, R2		@ R1 = R2
	ADD R2, R0, R1	@ R2 = R0 + R1
	
	MOV R0, R1		@ R0 = R1
	MOV R1, R2		@ R1 = R2
	ADD R2, R0, R1	@ R2 = R0 + R1