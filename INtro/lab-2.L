/*preamble part - 1*/
%{
#include<stdio.h>
%}
%%
"hi" {printf("aajao meri jaan");}
.* {printf("tune kuch or daala hai!");}
%%
main()
{
    printf("Enter i/p string");
    yylex();
}
int yywrap(){
    return 1;
}

