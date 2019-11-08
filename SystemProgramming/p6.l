 /*Write a Lex program to count the number of words, characters, blank spaces and lines in c file.*/
%{
	#include <stdio.h>
	int lines=0,words=0,chars=0,spaces=0;
%}
%%
[\n]|[.] {lines++;}
[ \t] {spaces++;}
[a-zA-Z] {chars++;}
%%
int main()
{
	yyin=fopen("exam.c","r");
	yylex();
	printf("\n\tLines are:%d",lines);	
	printf("\n\tWords are:%d",spaces+1);
	printf("\n\tCharacters are:%d",chars);
	printf("\n\tBlanks are:%d\n",spaces);	
}

