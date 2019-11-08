%{
	#include <stdio.h>	
	#include <stdlib.h>
%}
%token A B
%%
S:E'\n' {printf("Valid String\n");
exit(0);};
E:A E B
| 
;
%%
int main()
{
	printf("Enter a String:\n");
	yyparse();
	return 0;
}
int yyerror(char *s)
{
	printf("Invalid String\n");
}
