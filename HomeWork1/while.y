%{
#include <stdio.h>
%}


%token END
%token FOR 
%token WHILE
%token DOWHILE
%token OPENPAREN
%token CLOSEPAREN
%token CLOSEBRACKET
%token OPENBRACKET
%token INTEGER
%token PLUS
%token MINUS
%token WORD
%token EQUALS
%token EQ
%token SEPARATE
%token DO
%token CHAR
%token INT
%token LT
%token GT
%token GTE
%token LTE
%token NE
%token COLON




%%

stmt: loop expression END { printf("Correct Syntax..."); } 
;
loop: WHILE | DOWHILE | FOR
;
expression: expression declaration | 
OPENPAREN condition CLOSEPAREN
| OPENBRACKET declaration CLOSEBRACKET declaration
| OPENBRACKET declaration declaration CLOSEBRACKET declaration
| OPENPAREN declaration condition COLON expr CLOSEPAREN declaration
;
declaration: term expr COLON | OPENBRACKET declaration declaration CLOSEBRACKET
|OPENBRACKET declaration CLOSEBRACKET
| loop OPENPAREN condition CLOSEPAREN
;
term: INT
;
expr: CHAR op INTEGER
| CHAR op CHAR op INTEGER
;
condition: CHAR op INTEGER
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

%%

int yyerror(char *s) {
	fprintf(stderr, "error: %s\n", s);
}
	
int main() {
	yyparse();
}