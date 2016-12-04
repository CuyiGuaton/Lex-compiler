%{
  #include <stdlib.h>
  #include <stdio.h>
%}

/* Definiciones */

caracter [A-z0-9]+
gato #
%%

__{caracter}__      printf("Negrita\n");
_{caracter}_       printf("Cursiva\n");
%%
