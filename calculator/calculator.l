/* recognise tokens for the calculator and print them */
%%
"+" { printf("PLUS\n"); }
"-" { printf("MINUS\n"); }
"*" { printf("TIMES\n"); }
"/" { printf("DIVIDE\n"); }
"|" { printf("ABS\n"); }
[0-9]+ { printf("Number: %s\n", yytext); }
\n { printf("Newline\n"); }
[ \t] {}
. { printf("Invalid character: %s\n", yytext); }
%%
