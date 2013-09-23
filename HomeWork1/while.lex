%{
#include <stdlib.h>
#include "while.tab.h"
%}

%%
"for" return FOR;
"while" return WHILE;
"do" return DOWHILE;
"int" return INT;
"!=" return NE;
"<" return LT;
">" return GT;
">=" return GTE;
"<=" return LTE;
[a-z] return CHAR; 
[a-z]+ return WORD; 
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
