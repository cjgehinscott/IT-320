%{
#include <stdio.h>
%}


%token END
%token SWITCH
%token OPENPAREN
%token CLOSEPAREN
%token CLOSEBRACKET
%token OPENBRACKET
%token INTEGER
%token VAR
%token EQ
%token SEPARATE
%token CASE
%token CHAR
%token INT
%token COLON




%%

stmt: keyword expression END { printf("Correct Syntax..."); } 
;
keyword: SWITCH variable 
;
variable:OPENPAREN VAR CLOSEPAREN
;
expression: OPENBRACKET stmnt CLOSEBRACKET 
;
stmnt: cases declaration
| stmnt cases declaration
;
cases: cases case | case
;
declaration: INT CHAR EQ INTEGER COLON
| INT CHAR EQ INTEGER COLON declaration
;
case: CASE COLON INTEGER 
;

%%

int yyerror(char *s) {
	fprintf(stderr, "error: %s\n", s);
}
	
int main() {
	yyparse();
}