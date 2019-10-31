/*
 *
*/

%{
int num_lines = 0;
int num_char = 0;	
%}

%%
.   {
	 // printf("The input is a character: %s\n",yytext);
 	 num_char++;
    }
\n  {
	 // printf("The input is a newline\n");
	 num_lines++;
    }
end {
	 return 0;
    }
%%

int yywrap(){};

int main()
{
	yylex();
	printf("The number of characters is: %d\n",num_char);
	printf("The number of lines is: %d\n",num_lines);
	return 0;
}