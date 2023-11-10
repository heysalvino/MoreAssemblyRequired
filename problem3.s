// Hobbies, again

//int stones( int s){
//    if (s == 1){
//        return 1;
//    }else{
//        return((s*s) + stones(s-1));
//    }
//}

//int main() {
//    printf("%d\n", stones(10));
//    return 0;
//}

// This line declares the label main as the program's entry point
.global main

.data
format: .asciz "%d\n"

.text

stones:
	// This command goes at the beginning of every function
	push {ip, lr}

	if:
	   // Base Case
	   // Compare Register 0 and 1
	   cmp r1, #0 
	   // Branch on opposite quality
	   bgt else
	   //  Branch to done
	   b done

	else:
	   // Recursive case
	   // Multiply
	   mul r2, r1, r1 // r2 <- r1 * r1
	   // Addition
	   add r0, r0, r2 // r0 <- r0 + r2
	   // Subtraction
	   sub r1, r1, #1 // r1 <- r1 - r1
	   // Call to stones
	   bl stones

done:
	// Return
	pop {ip, pc}

main:
	// This command goes at the beginning of every function
	push {ip, lr}
	// Move the value 0 into Register 0
	mov r0, #0
	// Move the value 10 into Register 1
        mov r1, #10
	// Call to stones
	bl stones
	// Move Register 0 into Register 1
	mov r1, r0
	// Load the address of format into Register 0
	ldr r0, =format
	// Call to printf
	bl printf

	//Return
	pop {ip, pc}
