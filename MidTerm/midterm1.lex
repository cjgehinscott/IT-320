%{
#include <stdlib.h>
#include "midterm1.tab.h"
%}

%%
"switch" return SWITCH;
"int" return INT;
"case" return CASE;
"!=" return NE;
"<" return LT;
">" return GT;
">=" return GTE;
"<=" return LTE;
[a-z] return CHAR; 
[a-z]+ return VAR; 
";" return SEPARATE;
"=" return EQ;
"==" return EQUALS;
"-" return MINUS;
"+" return PLUS;
")" return CLOSEPAREN;
"(" return OPENPAREN;
"[" return OPENBRACKET;
"]" return CLOSEBRACKET;
":" return COLON;
[0-9]+ { yylval = atoi(yytext); return INTEGER; }
"\n" return END;
