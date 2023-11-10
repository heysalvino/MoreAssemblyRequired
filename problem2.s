// We Are All Made Of Stars

// This line declares the label main as the program's entry point
.global main
.global printStars
.extern printf

.data

format: .asciz "\n"
star: .asciz "*"

.text

stars:
	// This command goes at the beginning of every function
	push {ip, lr}

	while:
 	    // Compare Register 0 and 0
	    cmp r0, #0 // while( r0 > 0 )
	    // Branch around body on opposite quality
	    ble end // Branch less than equal to
	    // Push Register 0
	    push {r0}
	    // Load the address of star into Register 0
	    ldr r0, =star
	    // Call to printf
	    bl printf
	    // Pop Register 0
	    pop {r0}
	    // Loop body
	    // Subtraction
	    sub r0, r0, #1
	    // Unconditional branch back to while
	    b while

	end:
	    // Load the address of format into Register 0
	    ldr r0, =format
	    // Call to printf
	    bl printf
	    // Return
	    pop {ip, pc}

main:
	// This command goes at the beginning of every function
	push {ip,lr}
	// Move the value 1 into Register 0
	mov r0, #1

	while2:
 	    // Compare Register 0 and 5
	    cmp r0, #5
	    // Branch around loop body on opposite quality
	    bgt done // Branch greater than
	    // Push Register 0
	    push {r0}
	    // Call to stars
	    bl stars
	    // Pop Register 0
	    pop {r0}
	    // Loop body
	    // Addition
	    add r0, r0, #1 // r0 <- r0 + 1
	    // Unconditional branch back to while
	    b while2

done:
	// Return
	pop {ip,pc}
