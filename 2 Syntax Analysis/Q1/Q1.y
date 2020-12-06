%{
#include<stdio.h>
#include<stdlib.h>
%}

%token CONST ADD MULT SUB COMP ASSIGN NOT EQUALS NL

%%

A : B MULT A
  | B
  | ;

B : C ADD B
  | C SUB B
  | C
  | ;

C : D COMP C
  | D
  | ;

D : NOT E
  | E
  | ;

E : E ASSIGN CONST
  | CONST NL {printf("Expression is VALID.\n");exit(0);}
  | CONST
%%

int yyerror(char *msg)
{
printf("Expression is INVALID.\n");
exit(0);
}

int main()
{
printf("Enter a C expression:\n");
yyparse();
}
