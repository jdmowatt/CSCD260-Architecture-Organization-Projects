.global _start
_start:
	
	//Load Base Addresses
	LDR R0, =x			@ R0 = x
	LDR R1, =y 			@ R1 = y
	
	//Steps to reverse array
	
	LDR R2, [R0, #0]	@ R2 = x[0] = 1
	STR R2, [R1, #16]	@ y[4] = 1
	
	LDR R2, [R0, #4]	@ R2 = x[1] = 2
	STR R2, [R1, #12]	@ y[3] = 2
	
	LDR R2, [R0, #8]	@ R2 = x[2] = 3
	STR R2, [R1, #8]	@ y[2] = 3
	
	LDR R2, [R0, #12]	@ R2 = x[3] = 4
	STR R2, [R1, #4]	@ y[1] = 4
	
	LDR R2, [R0, #16]	@ R2 = x[4] = 5
	STR R2, [R1, #0]	@ y[0] = 5
	
	//Validate
	LDR R2, [R1, #0]	@ R2 = y[0]
	LDR R2, [R1, #4]	@ R2 = y[1]
	LDR R2, [R1, #8]	@ R2 = y[2]
	LDR R2, [R1, #12]	@ R2 = y[3]
	LDR R2, [R1, #16]	@ R2 = y[4]
	
	B end
	
_data:
x:	.word 1,2,3,4,5
y:	.word 0,0,0,0,0

_end: