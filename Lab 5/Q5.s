.global _start
_start:

	//Test any number 1-7
    MOV R0, #3		@ R0 = x (3)
    MOV R1, #1		@ R1 = 1 (Default = 1)

    CMP R0, #6		@ Compare x to 6
    BLT _end		@ Branch to end if (R0 < 6)

    MOV R1, #0		@ R1 = 0

    B _end			@ Branch to end

_end: