/*
 *
 *
*/

digit		[0-9]
alpha		[a-fA-F]
hextail		({digit}|{alpha}){1,8}
hex		0[xX]{hextail}

%%
{hex} {printf("This is a 32-bit hexadecimal number: %s\n",yytext);}
.     {printf("Not a hexadecimal number: %s\n",yytext);}
%%

int yywrap(){};

int main()
{
	printf("Enter input:\n");
	yylex();
	return 0;
}

