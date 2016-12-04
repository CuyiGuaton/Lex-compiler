%{
  #include <stdlib.h>
  #include <stdio.h>
%}

/* Reglas */

caracter [A-z0-9]+

%%

__{caracter}__      printf("Negrita\n");
_{caracter}_       printf("Cursiva\n");
%%
