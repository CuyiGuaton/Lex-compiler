# Markdown To Latex
* * * *

- [x] Acerca de Markdown
- [x] Comparación Latex-Markdown
- [x] Análisis léxico
  - [x] tokens
    - [ ] Expresiones regulares
  - [ ] Automata
  - [ ] Codigo en C
- [ ] Análisis sintáctico
  - [ ] Gramatica
- [ ] Más mierda

## Acerca de Markdown

Es un lenguaje de marcado creado para escribir en la web de tal manera que es fácil de editar y de leer a la vez.

Usualmente todo texto escito en Markdown se suele compilar en HTML, un compilador de Markdown a Latex nos serviría de utilidad para publicar un informe en la web como para presentarlo formalmente en un informe.

## Comparación

| Tamaño Encabezado | Latex                         | Markdown  |
|-------------------|-------------------------------|-----------|
| 1                 | \section{section}             | # h1      |
| 2                 | \subsection{subsection}       | ## h2     |
| 3                 | \subsubsection{subsubsection} | ### h3    |
| 4                 | \paragraph{paragraph}         | #### h4   |
| 5                 | \subparagraph{subparagraph}   | ##### h5  |
| 6                 |                               | ###### h6 |



|          | Latex | Markdown |
|---------|----------|----------|
| Negrita | \textbf{Negrita} |  `__Negrita__` |
| Cursiva | \textit{Cursiva} | `_Cursiva_` |
| Imagen |    \includegraphics{image}             |    `  ![text](image)  `    |
| Lista |  \begin{itemize} <br>    \item Item 1 <br>  \item Item 2 <br> \end{itemize} | `* Item 1` <br> `* Item 2` |
| Lista Enumerada |  \begin{enumerate} <br>    \item Item 1 <br>  \item Item 2 <br> \end{enumerate} | `1. Item 1` <br> `2. Item 2` |

## Análisis léxico

| Token | Lexema | Expresión Regular |
|--------|------|-------------------|
| Id | PALABRA | [A-z0-9]+|
| h1 | # |  ^#   |    
| Cursi  |  _   |          |
|  Negra |  __ |    |
| list  |  *   |          |
| InitImg   |  [ |       |   
|  CloseImg  |  ] |       |   
