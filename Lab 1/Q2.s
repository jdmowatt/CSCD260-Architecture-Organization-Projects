.global _start
_start:
	
	MOV R1, #20			@ Move decimal 20 to R1
	MOV R2, #30			@ Move decimal 30 to R2
	MOV R3, #100		@ Move decimal 100 to R3
	MLA R0, R1, R2, R3	@ R0 <-- (R1 * R2) + R3