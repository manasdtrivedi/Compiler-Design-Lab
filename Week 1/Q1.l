/* Declarations */
start \/\*
end \*\/

/* Rules */
%%

[\t]+ {fprintf(yyout, "");}
\/\/(.*) {fprintf(yyout, "");}
{start}(.|\n)*{end} {fprintf(yyout, "");}
. {fprintf(yyout, "%s", yytext);}
%%

/* User Routines */

int yywrap(){}

int main()
{
	extern FILE *yyin, *yyout;
	yyin = fopen("input.c", "r");
	yyout = fopen("input_copied.c", "w");
	yylex();
	return 0;
}