/* Write a YACC program to find the validity of a given expression (for operators + - * and /) .A program in YACC which recognises a valid variable which starts with a letter followed by a digit.The letter should be in lower case only.*/
%{
#include "y.tab.h"
%}
%%
[0-9]+ { return NUMBER;}  
[a-zA-Z]+ {return ID;}         
[\t]+ ;
\n {return 0;}
. {return yytext[0];}
%%
int yywrap()
{
return 1;
}