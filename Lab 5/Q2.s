.global _start
_start:
	
	MOV R0, #10		@ R0 = x (10)
	CMP R0, #0		@ Compare R0 to 0
	
	MOVLE R1, #0	@ R1 = 0 if (R0 <= 0)
	MOVGT R1, #1	@ R1 = 1 if (R0 > 0)
	
_end: