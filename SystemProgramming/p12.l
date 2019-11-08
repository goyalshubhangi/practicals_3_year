/* Write a program in YACC to recognise the language (anb ,n>=10). (output to say input is valid or not)*/
%{
	#include "y.tab.h"
%}
%%
a {return A;}
b {return B;}
.|\n {return yytext[0];}
%%
int yywrap()
{
	return 1;
}

