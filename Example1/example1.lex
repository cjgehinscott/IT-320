%{
#include <stdlib.h>
#include "example1.tab.h"
%}

%%

"+" return PLUS;
"-" return MINUS;
[0-9]+ { yylval = atoi(yytext); return INTEGER; }
"\n" return END;
