/* Write a Lex program to count the number of identifiers in a c file.*/
%{
#include <stdio.h>  
int n = 0 ;   
%}   
%%
"while"|"if"|"else"|"case"|"default"|"for"|"printf"|"scanf"|"return" {printf("\t\n keywords : %s", yytext);}   
"main"|"int"|"float"|"double"|"char" {n++;printf("\t\n keywords : %s", yytext);}    
[a-zA-Z_][a-zA-Z0-9_]* {n++;printf("\t\n identifier : %s", yytext);}   
.    ; 
%%   
int main()  
{    
	yyin= fopen("exam.c","r");
    yylex();  
    printf("\n total no. of identifier = %d\n", n);      
}  