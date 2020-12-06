%{
#include "y.tab.h"
%}

%%
" " ;
"=" {return ASSIGN;}
"+" {return ADD;}
"*" {return MULT;}
"-" {return SUB;}
"<" {return COMP;}
">" {return COMP;}
">=" {return COMP;}
"<=" {return COMP;}
"==" {return EQUALS;}
[!] {return NOT;}
. {return CONST;}
\n {return NL;}
%%
