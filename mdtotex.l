%{
  #include <stdlib.h>
  #include <stdio.h>
%}

palabra [A-z0-9]+
todo .+

%%

^#[ ]{todo}                  printf("h1\n");
^##[ ]{todo}                   printf("h2\n");
^###[ ]{todo}                   printf("h3\n") ;
^####[ ]{todo}                   printf("h4\n") ;
^#####[ ]{todo}                   printf("h5\n") ;
^######[ ]{todo}                   printf("h6\n") ;
__{palabra}__           printf("Negrita\n");
_{palabra}_             printf("Cursiva\n");
%%
