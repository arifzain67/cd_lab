%{
#include<stdio.h>
int i=0,fl=0;
%}
%%
[-+]?[0-9]* {i++;}
[-+]?[0-9]*[.][0-9]* {fl++;}
"q" {return 0;}
%%

int yywrap() {return 1;}

int main(){
	printf("enter the number:");
	yylex();
	printf("integers:%d\n",i);
	printf("float:%d\n",fl);
	
}
