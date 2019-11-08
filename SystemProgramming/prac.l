%{
	#include<stdio.h>
	#include<stdlib.h>
	
%}
%%
[a-z A-z _]([a-z A-Z 0-9])* {printf("valid");}
.* {printf("invalid");}
%%
int main()
{
	yylex();
}