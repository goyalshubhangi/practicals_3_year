/* Write a Lex program that distinguishes keywords, integers , floats , identifiers , operators and comments in any simple programming language.*/
%{
#include <stdio.h>
enum{INTEGER,FLOAT,IDENTIFIER,OPERATOR,COMMENT};
%}
%%
[0-9]+ {return INTEGER;}
[0-9]+\.[0-9]+ {return FLOAT;}
['+'|'-'|'*'|'/'] {return OPERATOR;}
[a-z A-Z _]([a-z A-Z 0-9])* {return IDENTIFIER;}
"/*"|"//" {return COMMENT;}
%%
int main()
{
	int result;
	int choice=1;
	while(choice)
	{
		result=yylex();
		switch(result)
		{
			case INTEGER: printf("Integer");break;
			case FLOAT: printf("Float");break;
			case OPERATOR: printf("Operator");break;
			case IDENTIFIER: printf("Identifier");break;
			case COMMENT: printf("Comment");break;

		}
	}
}