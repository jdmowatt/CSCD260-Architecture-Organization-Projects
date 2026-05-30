.global _start
_start:
	
	LDR R0, =x			@ R0 = addres of x
	LDR R0, [R0]		@ R0 = x
	LDR R1, =y			@ R1 = address of y
	LDR R1, [R1]		@ R1 = y
	
	EOR R0, R0, R1		@ R0 = x XOR y (differing bits are 1s)
    MOV R1, #0			@ R1 = Hamming distance counter
    MOV R2, #32			@ R2 = loop counter (32 bits in a word)
	
loop:
    AND R3, R0, #1		@ R3 = least significant bit of R0
    ADD R1, R1, R3		@ If LSB is 1, increment counter
    LSR R0, R0, #1		@ Shift R0 right by 1 (check next bit)
    SUBS R2, R2, #1		@ R2 - 1, set flags
    BGT loop			@ Loop if R2 > 0

    LDR R2, =HammDist	@ R2 = addres of HammDist
    STR R1, [R2]		@ HammDist = R1

_end:
    B _end
	
	
	
_data:
x: .word 0xAA
y: .word 0xCC
HammDist: .word 0