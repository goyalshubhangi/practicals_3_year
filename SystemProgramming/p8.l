/*Write a program in Lex to recognise a valid arithmetic expression.*/
%{
#include<stdio.h>
#include<stdlib.h>
int opnd,oper,ent=0,ext=0;
%}
operand [a-zA-Z0-9]+
operator [+\-\/*]
%%
{operator} {oper++;printf("%s is an operator \n",yytext);} 
{operand} {opnd++;printf("%s is an operand \n",yytext);}
"(" {if(ext<=ent)ent++;}
")" {ext++;}
\n {if(ent==ext && opnd>oper){printf("valid exp\n");}else {printf("invalid exp\n");};exit(0);}
%%
int main(){
yylex();
}