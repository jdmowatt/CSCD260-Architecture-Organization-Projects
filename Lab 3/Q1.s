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
	
	// Convert pennies to dollars using 1/100 ~= sum of 1/2^n shifts
	LSR R1, R0, #7      @ R1 = R0 / 128
    LSR R2, R0, #9      @ R2 = R0 / 512
    LSR R3, R0, #13     @ R3 = R0 / 8192
    LSR R4, R0, #14     @ R4 = R0 / 16384
    LSR R5, R0, #15     @ R5 = R0 / 32768
	LSR R6, R0, #16		@ R6 = R0 / 65536
    LSR R7, R0, #17		@ R7 = R0 / 131072 (Slightly Exceeds 0.01)
	LSR R8, R0, #18		@ R8 = R0 / 262144
	LSR R9, R0, #19		@ R9 = R0 / 524288 (Slightly Exceeds 0.01)
	
	ADD R1, R1, R2      @ Add them all up
    ADD R1, R1, R3
    ADD R1, R1, R4
    ADD R1, R1, R5
	ADD R1, R1, R6
    ADD R1, R1, R7
	ADD R1, R1, R8
	ADD R1, R1, R9		@ R1 ~= Total pay in dollars
	
_end: