# Stack Machine Challenge

## Goal

Write a program that accepts two arguments: the input file name and the second is the output file name.
The input file contains strings of characters to be parsed/ The output file will contain the results of each line.
This can be completed in any programming language.

## Challenge

A stack machine is a simple system that performs arithmetic operations on an input string of numbers and operators. It contains a stack that can store an arbitrary number of 12-bit unsigned integers. Initially the stack is empty. The machine processes a string of characters in the following way:

- the characters of the string are processed one by one;
- if the current character is a digit `[0-9]`, the machine pushes the value of that digit onto its stack;
- if the current character is `+`, the machine pops the two topmost values from its stack, adds them and pushes the result onto the stack;
- if the current character is `*`, the machine pops the two topmost values from its stack, multiplies them and pushes the result onto the stack;
- after the machine has processed the whole string it returns the topmost value of its stack as the result;
- the machine reports an error if any operation it performs (addition or multiplication) results in an overflow;
- the machine reports an error if it tries to pop an element from its stack when the stack is empty, or if the stack is empty after the machine has processed the whole string.

For example, given the string `13+62*7+*` the machine will perform the following operations:

character 	| comment                | stack
 -----------|------------------------|----------
            |                        | [empty]
 `1`        | push 1 onto the stack  |
            |                        | 1
 `3`        | push 3 onto the stack  |
            |                        | 1, 3
 `+`        | perform addition       |
            |                        | 4
 `6`        | push 6 onto the stack  |
            |                        | 4, 6
 `2`        | push 2 onto the stack  |
            |                        | 4, 6, 2
 `*`        | perform multiplication |
            |                        | 4, 12
 `7`        | push 7 onto the stack  |
            |                        | 4, 12, 7
 `+`        | perform addition       |
            |                        | 4, 19
 `*`        | perform multiplication |
            |                        | 76

The machine will return `76` as the result as it is the topmost element of its stack at completion. If there was a problem with the input string, the machine would return `-1`.

For example, given `13+62*7+*` the function should return `76`, as explained in the example above. Given `11++` the function should return `-1`.

For each line in the input file, the output will contain a line with the output.

### Input Example:
```
13+62*7+*
55+2*
9999+**
+
```

### Output Example:
```
76
20
1458
-1
```


Assume that:
- strings consist only of the following characters: `0`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `+` and/or `*`.
