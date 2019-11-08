/* WAP in Lex to count the number of lines and characters in the input file.*/
%{
 #include <stdio.h>
 int lineCount=0;
 int charCount=0;
 int spaceCount=0;

%}
%%
[\n] {lineCount++;}
[ ] {spaceCount++;}
. {charCount++;}
end return 0;
%%
int main()
{
	yylex();
	printf("\nNumber of Lines:%d",lineCount);
	printf("\nNumber of Characters:%d",charCount);
	printf("\nNumber of Spaces:%d",spaceCount);
	return 0;
}
