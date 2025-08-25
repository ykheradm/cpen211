    .globl binary_search
binary_search:
    MOV R3, #0                // startIndex = 0
    SUB R4, R2, #1            // endIndex = length - 1
    MOV R6, #-1               // keyIndex = -1
    MOV R7, #1                // NumIters = 1

loop_start:
    CMP R6, #-1               // Check if keyIndex == -1
    BNE end_loop              // Exit if keyIndex is found

    CMP R3, R4               // Compare startIndex with endIndex
    BGT end_loop             // If startIndex > endIndex, exit loop

    ADD R5, R3, R4            // middleIndex = (startIndex + endIndex) / 2
    LSR R5, R5, #1            // Right shift by 1 instead of dividing by 2

    MOV R8, R5                // middleIndex in R8
    LSL R8, R8, #2            // Offset in bytes
    LDR R9, [R0, R8]          // Load numbers[middleIndex]

    CMP R9, R1                // Compare numbers[middleIndex] to key
    BEQ found_key             // If equal, go to found_key
    BGT decrease_end            // If greater, go to decrease_end

increase_start:
    ADD R3, R5, #1            // startIndex = middleIndex + 1
    B update_iteration

decrease_end:
    SUB R4, R5, #1            // endIndex = middleIndex - 1

update_iteration:
    RSB R10, R7, #0           // Get -NumIters in R10
    STR R10, [R0, R8]         // Store -NumIters at numbers[middleIndex]
    ADD R7, R7, #1            // Increment NumIters

    B loop_start              // Repeat loop

found_key:
    MOV R6, R5                // keyIndex = middleIndex
    B update_iteration        // Proceed to update numbers and NumIters

end_loop:
    MOV R0, R6                // Return keyIndex
    MOV PC, LR                // Return to caller
