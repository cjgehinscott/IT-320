%{
#include <stdio.h>
%}

%token EQUAL
%token PLUS
%token OPEN_PAREN
%token CLOSE_PAREN
%token OPEN_BRACK
%token CLOSE_BRACK
%token LESS
%token GREATER
%token COLON
%token LESSEQUAL
%token GREATEREQUAL
%token EQUALS
%token NOTEQUAL
%token DO
%token FOR
%token INT
%token WHILE
%token NAME
%token END
%token NUMBER
%%

exp: while_loop END { printf("Correct Syntax...\n"); return 0;} |
     do_loop END { printf("Correct Syntax...\n"); return 0;} |
     for_loop END { printf("Correct Syntax...\n"); return 0;}
;

/* two defined syntax of while loop
   1. without the square brackets
   2. with the square brackets
*/
while_loop: WHILE OPEN_PAREN condition CLOSE_PAREN declare |
            WHILE OPEN_PAREN condition CLOSE_PAREN OPEN_BRACK declares CLOSE_BRACK
;

do_loop: DO OPEN_BRACK declares CLOSE_BRACK WHILE OPEN_PAREN condition CLOSE_PAREN
;

/* two defined syntax of for loop
   1. without the square brackets
   2. with the square brackets
*/
for_loop: FOR OPEN_PAREN declare condition COLON NAME EQUAL NAME PLUS NUMBER COLON CLOSE_PAREN declare |
          FOR OPEN_PAREN declare condition COLON NAME EQUAL NAME PLUS NUMBER COLON CLOSE_PAREN OPEN_BRACK declares CLOSE_BRACK
;

/* recursion of declares non-terminal to allow unlimited declaration statements */
declares: declares declare |
		  declare
;
	
declare: INT NAME EQUAL NUMBER COLON
;

condition: NAME comparison_op NUMBER
;

comparison_op: LESS | GREATER | LESSEQUAL | GREATEREQUAL | EQUALS | NOTEQUAL
;
%%

int yyerror(char *s) {
  fprintf(stderr, "error: %s\n", s);
}

int main() {
	yyparse();
}