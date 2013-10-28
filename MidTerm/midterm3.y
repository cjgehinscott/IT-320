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
%token PLUS
%token MINUS
%token VAR
%token EQUALS
%token EQ
%token SEPARATE
%token CASE
%token CHAR
%token INT
%token LT
%token GT
%token GTE
%token LTE
%token NE
%token COLON




%%

stmt: switch_stmt END { printf("Correct Syntax..."); } 
;
switch_stmt: SWITCH OPENPAREN VAR CLOSEPAREN OPENBRACKET cases declares CLOSEBRACKET 
;
declares: declares declare
| declare
;
cases: cases case
| case
;
declare: INT CHAR op INTEGER COLON
;
case: CASE COLON INTEGER
;

op: LT
| GT
| EQ
| PLUS
| EQUALS
| MINUS
| GTE
| LTE
| NE
;

%%

int yyerror(char *s) {
	fprintf(stderr, "error: %s\n", s);
}
	
int main() {
	yyparse();
}