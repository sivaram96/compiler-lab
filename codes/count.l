%{
	#include <stdio.h>
	int chars=0, lines=0;
%}

%%

. {
	++chars;
}
\n {
	++chars;
	++lines;
}

%%

int main(void)
{
	yylex();
	printf("Number of chars: %d\n", chars);
	printf("Number of lines: %d\n", lines);
	return 0;
}