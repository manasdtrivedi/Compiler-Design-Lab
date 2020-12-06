/* Declarations */
%{#include<stdio.h>
int countID = 0;
int countKey = 0;
int countOps = 0;
int lineNumber = 1;
%}
digit[0-9]
letter[a-zA-Z_]

/* Rules */
%%
"\n" {
lineNumber++;
}
"int"|"for"|"return" {
countKey++;
printf("Keyword: '%s', on line number: %d\n", yytext, lineNumber);
}

{letter}({letter}|{digit})* {
countID++;
printf("Identifier: '%s', on line number: %d\n", yytext, lineNumber);
}

"<="|"=="|"="|"++"|"-"|"*"|"+" {
countOps++;
printf("Operator: '%s', on line number: %d\n", yytext, lineNumber);
}

. ;

%%

/* User Routines */

int yywrap(){}

int main()
{
	yylex();
	printf("\nCount of identifiers: %d\n", countID);
	printf("Count of keywords: %d\n", countKey);
	printf("Count of operators: %d\n", countOps);
	return 0;
}