/*Write a program in YACC to recognise the string “abbb”, “ab”,”a” of the language (anbn ,n>=1).*/
%{
	#include "y.tab.h"
%}
%%
a return A;
b return B;
.|\n return yytext[0];
%%
int yywrap()
{
	return 1;
}

