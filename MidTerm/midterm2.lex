%{
#include <stdlib.h>
#include "midterm2.tab.h"
%}

%%
"switch" return SWITCH;
"int" return INT;
"case" return CASE;
[a-z] return CHAR; 
[a-z]+ return VAR; 
"=" return EQ;
")" return CLOSEPAREN;
"(" return OPENPAREN;
"[" return OPENBRACKET;
"]" return CLOSEBRACKET;
":" return COLON;
[0-9]+ { yylval = atoi(yytext); return INTEGER; }
"\n" return END;
