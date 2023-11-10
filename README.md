# More Assembly Required

**CMS 230, Fall 2017**

**Due Thursday, November 30, 11:59:59 PM**

## Description

This project involves translating provided C programs into ARM assembly language. The focus is on practicing writing assembly language programs with a particular emphasis on function calls. Programs will be graded by running them on the Raspberry Pi, and each program should produce an obvious correct output using `printf`. There are four problems, each worth 25 points.

### Guidelines

- Name your problems as `problem1.c`, `problem2.c`, and so forth.
- Include a Makefile for building your programs from source. Failure to successfully build with make results in a 10-point deduction.
- There are no precise style guidelines for ARM programs, but programs should be well-formatted to reflect logical structure. Incoherent or impossible-to-understand formatting may result in point deductions.
- Utilize recursive functions where applicable. Heavy penalties apply if a loop is used for a recursive problem.
- Include descriptive comments in your programs.
- Upload your work to GitHub by the due date. Ensure the Raspberry Pi is connected to a network, or if not possible, copy the files to your main computer or Cloud 9 and upload from there.

### Tips

- Remember the calling convention for ARM programs, especially when calling functions like `printf`. Save and restore registers as needed.

## The Problems

### Problem 1: FizzBuzz II: Electric FizzBuzzoogaloo

Solve the FizzBuzz problem in ARM:

- Loop through the numbers from 1 to 100.
- If a number is divisible by 3, print Fizz; if it’s divisible by 5, print Buzz; if it’s divisible by 3 and 5, print FizzBuzz; if it’s not divisible by 3 or 5, print the number.

Write a function that implements the mod operation using repeated subtraction.

### Problem 2: We Are All Made of Stars

Write an ARM program that prints a slope of stars, using a variable and loops to control the height of the slope.

### Problem 3: Hobbies, Again

Build a recursive ARM assembly program that calculates the number of stones in a ten-level ziggurat. The number of stones in an N-level ziggurat is the number in an (N-1)-level ziggurat plus N^2.

*Hint: Use the recursive formula: `stones(N) = stones(N-1) + N^2`.*

---

*Note: Adjust program names and test file names based on your project structure and naming conventions.*
