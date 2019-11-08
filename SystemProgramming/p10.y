%{
 #include<stdio.h>
%}
%token NUMBER ID
%left '+' '-'
%left '*' '/'

%%
E : T{ printf("Result=%d\n",$$);}
T:T'+' T{$$ = $1+$3;}
 |T '-' T {$$ = $1-$3;}
 |T '*' T {$$ = $1*$3;}
 |T '/' T { if ($3!=0){ $$ = $1/$3; }else { printf("Error: divide by Zero"); } }
 |'-' NUMBER {$$= -$2;}
 |'-' ID {$$=-$2;}
 |'(' T ')' {$$ =$2;}
 |NUMBER {$$=$1;}
 |ID {$$=$1;}
 ;

%%
int main()
{

printf("Enter the expression\n"); 
yyparse();
return 0;
}
int yyerror(char *s)
{
 printf("%s",s);
}
