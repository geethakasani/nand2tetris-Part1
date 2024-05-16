// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

//// Replace this comment with your code.
// Store the value of R0 in R2 (to be used as the accumulator)
@R0
D=M    // D = R0

@R2
M=0    // Clear R2 (accumulator) initially

// Loop to perform repetitive addition
(LOOP)
// Check if R1 == 0, if so, end the loop
@R1
D=M    // D = R1
@END_LOOP
D;JEQ

// Add R0 to R2
@R0
D=M    // D = R0
@R2
M=M+D  // R2 = R2 + R0

// Decrement R1
@R1
M=M-1  // R1 = R1 - 1

// Repeat the loop
@LOOP
0;JMP

// End of loop
(END_LOOP)
