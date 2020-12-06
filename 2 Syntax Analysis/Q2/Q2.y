%{
#include <stdio.h>
#include <stdlib.h>
int yylex();
%}
%token ID NUM WHILE LE GE EQ NE OR AND BGN END
%right '='
%left AND OR
%left '<' '>' LE GE EQ NE
%left '+''-'
%left '*''/'
%right UMINUS
%left '!'
%%
S        : ST1 {printf("Input code is VALID\n");exit(0);};
ST1    :    WHILE'(' E2 ')' BGN ST END
ST      :     ST ST
          | E';'
          ;
E       : ID'='E
          | E'+'E
          | E'-'E
          | E'*'E
          | E'/'E
          | E'<'E
          | E'>'E
          | E LE E
          | E GE E
          | E EQ E
          | E NE E
          | E OR E
          | E AND E
          | ID
          | NUM
          ;
E2     : E'<'E
          | E'>'E
          | E LE E
          | E GE E
          | E EQ E
          | E NE E
          | E OR E
          | E AND E
          | ID
          | NUM
          ;

%%

int yyerror(char *msg) 
{
    printf("Input code is INVALID\n");
    exit(0);
}

main()
{
   yyparse();
}