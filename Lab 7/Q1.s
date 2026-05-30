.global _start
_start:
	
	LDR R0, =0xAAAAAAAA	@ R0 = Number to be reversed
	LDR R1, =x			@ R0 = address of x
	LDR R2, =length		@ R2 = address of length
	LDR R2, [R2]		@ R2 = length (32)
	
loop:
	AND R3, R0, #1		@ R3 = LSB of R0
	STR R3, [R1]		@ Store R3 into x[i]
	ADD R1, R1, #4		@ Advance to next element
	LSR R0, R0, #1		@ Shift R0 right by 1 (next bit becomes LSB)
	SUBS R2, R2, #1		@ R2 - 1, set flags
	BGT loop			@ Loop if R2 > 0
	
_end:
    B _end
	
	
	
_data:
x: .word -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1, -1,-1,-1,-1,-1,-1,-1,-1, -1,-1,-1,-1,-1,-1,-1,-1
length: .word 32