// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

//Start multiplication
(LOOP)
//Check if R1 == 0
@R1
D=M
@DONE
D;JEQ

//Add R0 + RO
@R0
D=M+M

//reduce R1 by 1
@R1
M=M-1
@LOOP
0;JMP

(DONE)
@R0
D=M
@R2
M=D
