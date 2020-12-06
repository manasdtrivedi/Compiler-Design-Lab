This submission consists of four primary files - `parser.y`, `scanner.l`, `palindromeCorrect.c`, and `CFG.txt`.

`parser.y` contains the yacc script which is capable of parsing the C program for checking whether a given string is an odd length palindrome or not.

`scanner.l` contains the flex script for identifying tokens present in the input C program.

`palindromeCorrect.c` is present in the `Tests` folder, and contains the C program which identifies whether a given string is an odd length palindrome or not.

`CFG.txt` contains the context-free grammar used for the syntax analysis of `palindromeCorrect.c`.


This submission also consists of two extra files - `palinSemanticError1.c` and `palinSemanticError2.c`, both present in the Tests folder. The former contains a semantic error - variable `i` is undeclared, while the latter contains a semantic error - variable `i` is already declared. Both files are slightly modified versions of `palindromeCorrect.c`.


The screenshots of the outputs produced upon semantic analysis of all three C programs are present in the `Screenshots` folder.


Commands for performing semantic analysis of the C files:
```
yacc -d parser.y
lex scanner.l
gcc lex.yy.c y.tab.c -o semanticAnalyzerForPalinCProgram
./semanticAnalyzerForPalinCProgram < Tests/palindromeCorrect.c
./semanticAnalyzerForPalinCProgram < Tests/palinSemanticError1.c
./semanticAnalyzerForPalinCProgram < Tests/palinSemanticError2.c
```

Commands for executing `palindromeCorrect.c`:
```
gcc Tests/palindromeCorrect.c
./a.out
```