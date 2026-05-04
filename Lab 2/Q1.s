.global _start
_start:
	
	//Move Values into Registers
	//500000 too big to move at once
	MOVW R0, #0xA120	@ Move bottom half of 500000 to R0 (500000 = 0x7A120)
	MOVT R0, #0x0007	@ Move top half of 500000 to R0 (Base Pay in cents)
	
	MOV R1, #15			@ R1 = # of OT hours 15
	MOV R2, #3250		@ R2 = Hourly Rate in cents
	MOV R3, #5			@ R3 = OT Multiplier Numerator. (2.5 = 5/2)
	
	//Calculate OT
	MUL R4, R2, R3	@ R4 = R2 x R3 (Scaled OT Rate)
	MUL R4, R4, R1	@ R4 = R4 x R1 (Total Scaled OT Pay)
	LSR R4, R4, #1	@ R4 = R4 / 2 (Total OT Pay) (cents)
	
	//Add OT to Base Pay
	ADD R0, R0, R4	@ R0 = R0 + R4 (Total Pay) (cents)
	