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

stmt: keyword expression END { printf("Correct Syntax..."); } 
;
keyword: SWITCH variable 
;
variable:OPENPAREN VAR CLOSEPAREN
;
expression: OPENBRACKET stmt CLOSEBRACKET 
;
stmt: case declaration
| stmt case declaration
;
case: term COLON INTEGER
;
declaration: term expr COLON
;
term: INT | CASE
;
expr: CHAR op INTEGER
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