
%{
#include<stdio.h>
int lc=0,sc=0,tc=0,ch=0,wc=0;
%}
%%
\n {lc++;}
\t { tc++;}
" " {sc++;}
[0-9a-zA-Z] {wc++;}
"end" {return 0;}
%%
int yywrap(){ return 1; }

int main(){
	printf("Enter the Sentence : ");
	yylex();
	printf("Number of lines : %d\n",lc);
	printf("Number of spaces : %d\n",sc);
	printf("Number of tabs, words, charc : %d , %d \n",tc,wc);
	
	//return 0;
}

