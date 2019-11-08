/*Write a Lex program that implements the Caesar cipher. It replaces every letter with the one three letters after in an alphabetical order, wrapping around at Z e.g a is replaced by d ,d bye ,and so on z by c.*/
%{
	#include <stdio.h>
	char str[10];
	int i=0;
%}
%%
[a-w A-W] {str[i]=(int)str[i]+3; i++;}
[w-z W-Z] {str[i]=(int)str[i]-23; i++;}
%%
int main()
{
	printf("\nEnter a string: ");
    scanf("%s",str);
    yy_scan_string(str);
    yylex();
    printf("Caesar Ciphered String: %s\n",str);
    return 0;	

}