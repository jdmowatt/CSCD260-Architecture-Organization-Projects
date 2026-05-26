.global _start
_start:
	
	//Load X
	LDR R0, =x	@ R0 = x
	
	//Swap first element with last
	LDR R1, [R0, #0]	@ R1 = x[0] = 1
	LDR R2, [R0, #16]	@ R2 = x [4] = 5
	STR R1, [R0, #16]	@ x[4] = 1
	STR R2, [R0, #0]	@ x[0] = 5
	
	//Swap 2nd element with 2nd last
	LDR R1, [R0, #4]	@ R1 = x[1] = 2
	LDR R2, [R0, #12]	@ R2 = x [3] = 4
	STR R1, [R0, #12]	@ x[3] = 2
	STR R2, [R0, #4]	@ x[1] = 4
	
	//Validate
    LDR R2, [R0, #0]    @ R2 = x[0]
    LDR R2, [R0, #4]    @ R2 = x[1]
    LDR R2, [R0, #8]    @ R2 = x[2]
    LDR R2, [R0, #12]	@ R2 = x[3]
    LDR R2, [R0, #16]	@ R2 = x[4]
	
	B end
	
data_:
x:	.word 1,2,3,4,5