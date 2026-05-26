.global _start
_start:
	
	MOV R0, #7			@ R0 = 7
	MOV R1, #23			@ R1 = 23
	
	CMP R0, R1			@ Set Flags
	SUBHI R0, R0, R1	@ R0 = R0 - R1 (if R0 > R1)
	SUBLO R1, R1, R0	@ R1 = R1 - R0 (if R1 > R0)