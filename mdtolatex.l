%{
#include <stdio.h>
%}

%%

\# printf("asdasd\n" );
\*\*[A-z0-9]+\*\*      printf("Negrita\n");
__[A-z0-9]+__      printf("Negrita\n");
\*[A-z0-9]+\*      printf("Cursiva\n");
_[A-z0-9]+_       printf("Cursiva\n");
%%
