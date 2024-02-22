%{
#include<stdio.h>
int lc=0,wc=0,tc=0,cc=0,sc=0;
%}
%%
\n {lc++;}
" " {sc++;wc++;}

\t {tc++;}
[0-9a-zA-Z] {cc++;}

"end" {return 0;}
%%
int  yywrap(){return 1;}
int main(){
			printf("enter the sentence:");
			yylex();
			printf("no of line %d\n",lc);
			printf("no of words %d\n",wc+1);
			printf("no of tabs %d\n",tc);
			printf("no of chars %d\n",cc);
			printf("no of spaces %d\n",sc);
			return 0;
}
