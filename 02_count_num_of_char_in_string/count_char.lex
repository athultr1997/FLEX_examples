/*
 *
 *
*/

%{
int count = 0;	
%}

%%
[A-Z] {
		printf("Capital Letter: %s\n",yytext);
		count++;
	  }

[a-z] {
		printf("Small Letter: %s\n",yytext);
		count++;
	  }

.     {
		printf("Not an alphabet: %s\n",yytext);
		count++;
	  }

\n    {
		return 0;
	  }	 
%%

int yywrap(){};

int main()
{
	yylex();
	printf("The number of characters in the string is:%d\n",count);
	return 0;
}