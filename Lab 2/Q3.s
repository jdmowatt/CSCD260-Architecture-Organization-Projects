.global _start
_start:
	
	//a^3 - 3a^2b + 3ab^2 - b^3 (2 Registers)
	//a^3 - 3a^2b + 3ab^2 - b^3 = (a - b)^3
	
	MOV R0, #5		@ R0 = a = 5
	MOV R1, #2		@ R1 = b = 2
	
	SUB R0, R0, R1	@ R0 = R0 - R1 (a - b)
	MOV R1, R0		@ R1 = R0 (a - b)
	
	MUL R0, R0, R1	@ R0 = R0 * R1 (a - b)^2
	MUL R0, R0, R1	@ R0 = R0 * R1 (a - b)^3