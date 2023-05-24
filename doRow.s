        .arch armv7
        .cpu cortex-a53
        .equ 	NUL, 0

        .global asm_doRow
        // !!! SET FP_OFFSET TO THE NUMBER OF (SAVED REGISTERS -1 * 4)
        .equ 	FP_OFFSET, //TODO	// (# of saved regs - 1) * 4
	
	// Set offsets for parameters 5 and 6
	.equ	NEWLIFE_OFFSET, //TODO	// new life
	.equ    NCOLS_OFFSET, //TODO	// number columns	
	
	// Set space for locals
	.equ	LOCAL_SPACE, //TODO	// total local space
	.equ    PARAM_SPACE, //TODO	// total param space

	// Set offsets for any local variables used
	
	


	// asm_doRow(belem *dest,    // r0
	//           belem *src,     // r1
	//           size_t curRow,  // r2
	//           size_t nRows,   // r3
	//           size_t nCols,   // fp + 4
	//	     int *newLife)   // fp + 8


asm_doRow:	
	push {fp, lr} 	//TODO: Push preserved registers
	add fp, sp, #FP_OFFSET
	sub sp, sp, #(LOCAL_SPACE + PARAM_SPACE)
	
	
	// Write body of asm_doRow here

	
	sub sp, fp, #FP_OFFSET
	pop {fp, lr} //TODO: Pop preserved registers
	bx lr
	
