%{
  #include <stdlib.h>
  #include <stdio.h>
  #include <string.h>
  #include "y.tab.h"
%}


/* Definiciones */

caracter [A-z0-9]+
gato #
%%

__{caracter}__      {yylval.string=strdup(yytext);return NEGRA;}
_{caracter}_       {yylval.string=strdup(yytext);return CURSIVA;}
%%
