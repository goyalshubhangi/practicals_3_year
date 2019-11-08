/*Write a program in YACC to evaluate an expression (simple calculator program for addition and subtraction,multiplication ,division).*/
%{
 #include "y.tab.h"
 extern int yylval;
%}

%%
[0-9]+ { yylval=atoi(yytext);return NUMBER;}
[a-zA-Z]+ {return ID;}
\n {return 0;}
.   {return yytext[0];}
%%
int yywrap()
{
	return 1;
}