/* Write a Lex program that finds the longest word (defined as a contiguous string of upper and lower case letters) in the input.*/
%{
int counter = 0;
char str[15];
%} 
  
%% 
[a-zA-Z]+ { 
  if (yyleng > counter) { 
    counter = yyleng;
    for(int i=0;i<counter;i++)
    {
        str[i]=yytext[i];
    }
  }
}
%% 
  
int main() { 
  yylex(); 
  printf("largest: %d\n", counter);
  printf("word: ");
  for(int i=0; i<sizeof(str)/sizeof(str[0]); i++)
    printf("%c",str[i]);
    printf("\n");
}