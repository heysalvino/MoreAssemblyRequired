//FizzBuzz II: Electric FizzBuzzoogaloo

// int mod(int a, int b) {
//	int rem = a;
//	while (rem > b) {
//	   rem -= b;
//	}
//	return rem;
// }

// This line declares the label main as the program's entry point
.global main

.data

format: .asciz "%d\n"
Fizz: .asciz "Fizz!\n"
Buzz: .asciz "Buzz!\n"
Fizzbuzz: .asciz "Fizzbuzz!\n"

.text

mod:
	// This command goes at the beginning of every function
	push {ip, lr}

	while:
	  // Compare r0 and r1
	  cmp r0, r1 // while(rem > b)
	  // Branch around body on opposite quality
	  blt end  // Branch less than
	  // Loop Body
	  // Subtraction
	  sub r0, r0, r1 // r0 <- r0 - r1
	  // Unconditional branch back to the top
	  b while

	end:
	  // Return
	  pop {ip,pc}

main:
	// This command goes at the beginning of every function
	push {ip, lr}
	// Move the value 0 into Register 0
	mov r0, #0
	// Push Register 0
	push {r0}

    while2:
	// Pop Register 0
	pop {r0}
	// Addition
	add r0, r0, #1 // r0 <- r0 + 1
	// Compare Register 0 and 100
        cmp r0, #100 // while( 0 <= 100)
	// Branch around body on opposite quality
        bgt done // Branch greater than

    if:
	// Move the value 3 into Register 1
	mov r1, #3
	// Push Register 0
	push {r0}
	// Call to mod
	bl mod
	// Compare r0 and 0
	cmp r0, #0
	// Branch around body on opposite quality
	bne buzz // Branch not equal

	fizzbuzzIf:
 	   // Pop Register 0
	   pop {r0}
	   // Push Register 0
	   push {r0}
	   // Move the value 5 into Register 1
	   mov r1, #5
	   // Call to mod
	   bl mod
	   // Compare Register 0 and 0
	   cmp r0, #0
	   // Branch around body on opposite quality
	   bne fizz // Branch not equal
	   // Load the address of fizzbuzz into Register 0
	   ldr r0, =Fizzbuzz // r0 <- fizzbuzz
	   // Call to printf
	   bl printf
	   // Unconditional branch back to the top
	   b while2

	fizz:
	   // Load the address of fizz into  Register 0
	   ldr r0, =Fizz
	   // Call to printf
	   bl printf
	   // Unconditional branch back to the top
	   b while2

    buzz:
	// Pop Register 0
	pop {r0}
	// Push Register 0
        push {r0}
	// Move the value 5 into Register 1
	mov r1, #5
	// Call to mod
	bl mod
	// Compare Register 0 and 0
	cmp r0, #0
	// Branch on opposite quality
	bne none // Branch not equal
	// Load the address of buzz into Register 0
	ldr r0, =Buzz
	// Call to printf
	bl printf
	// Unconditiona branch back to the top
	b while2

    none:
	// Pop Register 1
        pop {r1}
	// Push Register 1
	push {r1}
	// Load the address of format into Register 0
        ldr r0, =format
	// Call to printf
	bl printf
	// Unconditional branch back to the top
	b while2

done:
    // Return
    pop {ip, pc}
