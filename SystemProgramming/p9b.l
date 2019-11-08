%{
	#include "y.tab.h"
%}
%%
[0-9] return digit;
[a-z] return letter;
[\n] return yytext[0];
. return 0;
%%
int yywrap()
{
	return 1;
}