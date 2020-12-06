%{
    #include<stdio.h>
    #include "y.tab.h"
%}

alpha [A-Za-z]
digit [0-9]
%%
[ \t\n]
begin    return BGN;
end      return END;
while    return WHILE;
{digit}+    return NUM;
{alpha}({alpha}|{digit})*    return ID;
"<="    return LE;
">="    return GE;
"=="    return EQ;
"!="    return NE;
"||"    return OR;
"&&"    return AND;
.    return yytext[0];
%%

int yywrap()
{
    return 1;
}