%{
	#include <stdio.h>
	#include <stdlib.h>
%}
%token A B
%%
S:E B '\n'{printf("Valid String\n");
exit(0);}
;
E:A E
|
;
%%
int main()
{
	printf("\nEnter a String in the language anb:\n");
	yyparse();
	exit(0);
}
int yyerror(char *s)
{
	printf("Invalid String\n");
	exit(0);
}
