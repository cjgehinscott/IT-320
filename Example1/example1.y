%{
#include <stdio.h>
%}


%token END
%token INTEGER
%token PLUS
%token MINUS
%%

exp: math_op END { printf(" = %d", $1); }
;

math_op: math_op PLUS INTEGER { $$ = $1 + $3; } | math_op MINUS INTEGER{ $$ = $1 - $3; } | 
	INTEGER { $$ = $1; }
;

%%

int yyerror(char *s) {
	fprintf(stderr, "error: %s\n", s);
}

int main() {
	yyparse();
}
