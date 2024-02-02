%{
#include <stdio.h>
/init the var here/
int strInput;
%}
%%
[0-9]+ {
strInput = atoi(yytext);
if(strInput%2==0)
printf("Even");
else
printf("Odd");}
.* {printf("Invalid Input Detected!");}
%%
int main()
{
printf("Enter the input here");
yylex();
return 0;
}
int yywrap()
{
return 1;
}