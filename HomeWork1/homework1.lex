%{
#include <stdlib.h>
#include "homework1.tab.h"
%}

%%

"=" return EQUAL;
"+" return PLUS;
"(" return OPEN_PAREN;
")" return CLOSE_PAREN;
"[" return OPEN_BRACK;
"]" return CLOSE_BRACK;
"<" return LESS;
">" return GREATER;
":" return COLON;
"<=" return LESSEQUAL;
">=" return GREATEREQUAL;
"==" return EQUALS;
"!=" return NOTEQUAL;
"do" return DO;
"for" return FOR;
"int" return INT;
"while" return WHILE;
[0-9]+ return NUMBER;
[a-zA-Z0-9]+ return NAME;
"\n" return END;
