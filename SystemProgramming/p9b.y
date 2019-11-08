%{
	#include <stdio.h>
	#include <stdlib.h>
%}
%token digit letter
%%
ident: expn '\n' { printf ("valid\n"); exit (0); };
expn: letter
| expn letter
| expn digit
| error{ yyerror ("invalid \n"); exit (0); }
;
	%%
	int main()
	{
	printf("Enter the expression\n");
	yyparse();
	printf("\nExpression is valid\n");
	exit(0);
	}
	int yyerror(char *s)
	{
	printf("\nExpression is invalid");
	exit(0);
	}