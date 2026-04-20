1. Write an assembly program (to be run on CPUlator,
https://cpulator.01xz.net/?sys=arm-de1soc&d_audio=48000) which will add up the
four integers, 50, 100, 150, and 200. Your code must not use more than two registers
(use R0 and R1) and the final result must be available in R0. You will need to use the
ADD and MOV instructions, but also experiment with ADDS (which updates the CPSR
flags).

2. Write an assembly program which will implement the operation R0 ← R1*R2+R3,
where R1 = 20, R2 = 30, and R3 = 100.

3. Write an assembly program which will implement the operation R0 ← R1*R2-R3,
where R1 = 20, R2 = 30, and R3 = 100. You cannot use SUB or SUBS in your code
