.global _start
_start:
	
	MOV R0, #50		@ Move decimal 50 to R0
	MOV R1, #100	@ Move decimal 100 to R1
	ADD R0, R0, R1	@ R0 <-- R0 + R1
	
	MOV R1, #150	@ Move decimal 150 to R1
	ADD R0, R0, R1	@ R0 <-- R0 + R1
	
	MOV R1, #200	@ Move decimal 200 to R1
	ADD R0, R0, R1	@ R0 <-- R0 + R1