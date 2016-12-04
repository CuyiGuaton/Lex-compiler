%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define YYDEBUG 1
%}
%union {
char*        literal_value;
char*        string_value;
}
%token <literal_value>  PALABRA
%token CURSI NEGRA CR
%%

line:
   PALABRA{
    char* buf;
    buf = calloc(sizeof(char), strlen($1) + 2);

        sprintf(buf,"pico %s", $1);
        free($1);
    }
    ;


%%
int
yyerror(char const *str)
{
    extern char *yytext;
    fprintf(stderr, ":(  %s\n", yytext);
    return 0;
}

int main(void)
{
    extern int yyparse(void);
    extern FILE *yyin;

    //yydebug = 1;
    yyin = stdin;
    if (yyparse()) {
        fprintf(stderr, "Error ! Error ! Error !\n");
        exit(1);
    }
}
