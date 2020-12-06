This submission consists of three primary files - `parser.y`, `scanner.l`, and `palindromeCorrect.c`.

`parser.y` contains the yacc script which is capable of parsing the C program for checking whether a given string is an odd length palindrome or not. If the input C file is parsed successfully, then the Three Address Code associated with it is generated.

`scanner.l` contains the flex script for identifying tokens present in the input C program.

`palindromeCorrect.c` is present in the `Tests` folder, and contains the C program which identifies whether a given string is an odd length palindrome or not.


This submission also consists of two extra files - `palinSemanticError1.c` and `palinSemanticError2.c`, both present in the `Tests` folder. The former contains a semantic error - variable `i` is undeclared, while the latter contains a semantic error - variable `i` is already declared. Both files are slightly modified versions of `palindromeCorrect.c`.


The screenshots of the outputs produced upon semantic analysis of all three C programs are present in the `Screenshots` folder.


Commands for performing semantic analysis, and intermediate code generation (only if no lexical, syntax, and semantic errors are present):
```
yacc -d parser.y
lex scanner.l
gcc lex.yy.c y.tab.c -o palinCProgICG
./palinCProgICG < Tests/palindromeCorrect.c
./palinCProgICG < Tests/palinSemanticError1.c
./palinCProgICG < Tests/palinSemanticError2.c
```

Commands for executing `palindromeCorrect.c`:
```
gcc Tests/palindromeCorrect.c
./a.out
```