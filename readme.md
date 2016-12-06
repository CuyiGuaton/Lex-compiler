Markdown To Latex
=================

Para compilar

`flex mdtotex.l && cc lex.yy.c -ll && ./a.out `
---


-	[x] Acerca de Markdown
-	[x] Comparación Latex-Markdown
	-	[x] Imagenes paraleras de codigo
-	[x] Análisis léxico
	-	[x] tokens
	-	[x] Expresiones regulares
	-	[x] Automata
	-	[x] Codigo en C
-	[x] Análisis sintáctico
	-	[x] Gramatica
-	[ ] Imagen de un cuyi

Acerca de Markdown
------------------

Es un lenguaje de marcado creado para escribir en la web de tal manera que es fácil de editar y de leer a la vez.

Usualmente todo texto escito en Markdown se suele compilar en HTML, un compilador de Markdown a Latex nos serviría de utilidad para publicar un informe en la web como para presentarlo formalmente en un informe.

![](imagenes/markdown-512.png)

Comparación
-----------

| Tamaño Encabezado | Latex                         | Markdown  |
|-------------------|-------------------------------|-----------|
| 1                 | \section{section}             | # h1      |
| 2                 | \subsection{subsection}       | ## h2     |
| 3                 | \subsubsection{subsubsection} | ### h3    |
| 4                 | \paragraph{paragraph}         | #### h4   |
| 5                 | \subparagraph{subparagraph}   | ##### h5  |
| 6                 |                               | ###### h6 |

|                 | Latex                                                                      | Markdown                     |
|-----------------|----------------------------------------------------------------------------|------------------------------|
| Negrita         | \textbf{Negrita}                                                           | `__Negrita__`                |
| Cursiva         | \textit{Cursiva}                                                           | `_Cursiva_`                  |
| Imagen          | \includegraphics{image}                                                    | `![text](image)`             |
| Lista           | \begin{itemize} <br> \item Item 1 <br> \item Item 2 <br> \end{itemize}     | `* Item 1` <br> `* Item 2`   |
| Lista Enumerada | \begin{enumerate} <br> \item Item 1 <br> \item Item 2 <br> \end{enumerate} | `1. Item 1` <br> `2. Item 2` |

Análisis léxico
---------------

| Token | Lexema  | Expresión Regular |
|-------|---------|-------------------|
| Id    | PALABRA | `[A-z0-9]+`       |
| h1    | \#      | `^#[ ].+`         |
| Cursi | \_      | `_[A-z0-9]+_`     |
| Negra | \_\_    | `__[A-z0-9]+__`   |
| list  | \*      | `^*[ ].+`         |

### Automata

#### Automata para las cabeceras

![](imagenes/automata1.png)

#### Automata para la negrita y la cursiva

![](imagenes/automata2.png) \`\`\`

#### Automata final
```
\begin{center}
\begin{tikzpicture}[scale=0.2]
\tikzstyle{every node}+=[inner sep=0pt]
\draw [black] (36,-28.9) circle (3);
\draw (36,-28.9) node {$1$};
\draw [black] (36,-28.9) circle (2.4);
\draw [black] (36,-13.9) circle (3);
\draw (36,-13.9) node {$2$};
\draw [black] (22.2,-13.9) circle (3);
\draw (22.2,-13.9) node {$3$};
\draw [black] (49.4,-13.9) circle (3);
\draw (49.4,-13.9) node {$5$};
\draw [black] (61.3,-13.9) circle (3);
\draw (61.3,-13.9) node {$6$};
\draw [black] (73.7,-13.9) circle (3);
\draw (73.7,-13.9) node {$7$};
\draw [black] (36,-38.7) circle (3);
\draw (36,-38.7) node {$8$};
\draw [black] (36,-51.4) circle (3);
\draw (36,-51.4) node {$9$};
\draw [black] (56.2,-51.4) circle (3);
\draw (56.2,-51.4) node {$10$};
\draw [black] (56.2,-38.7) circle (3);
\draw (56.2,-38.7) node {$11$};
\draw [black] (29.1,-28.9) -- (33,-28.9);
\fill [black] (33,-28.9) -- (32.2,-28.4) -- (32.2,-29.4);
\draw [black] (36,-25.9) -- (36,-16.9);
\fill [black] (36,-16.9) -- (35.5,-17.7) -- (36.5,-17.7);
\draw (36.5,-21.4) node [right] {$-$};
\draw [black] (33,-13.9) -- (25.2,-13.9);
\fill [black] (25.2,-13.9) -- (26,-14.4) -- (26,-13.4);
\draw (29.1,-13.4) node [above] {$char$};
\draw [black] (39,-13.9) -- (46.4,-13.9);
\fill [black] (46.4,-13.9) -- (45.6,-13.4) -- (45.6,-14.4);
\draw (42.7,-14.4) node [below] {$-$};
\draw [black] (52.4,-13.9) -- (58.3,-13.9);
\fill [black] (58.3,-13.9) -- (57.5,-13.4) -- (57.5,-14.4);
\draw (55.35,-14.4) node [below] {$char$};
\draw [black] (21.458,-11.005) arc (222.11134:-65.88866:2.25);
\draw (24.92,-6.61) node [above] {$char$};
\fill [black] (24.05,-11.55) -- (24.97,-11.38) -- (24.3,-10.64);
\draw [black] (61.564,-10.923) arc (202.67131:-85.32869:2.25);
\draw (67.03,-7.63) node [above] {$char$};
\fill [black] (63.82,-12.3) -- (64.75,-12.45) -- (64.37,-11.53);
\draw [black] (64.3,-13.9) -- (70.7,-13.9);
\fill [black] (70.7,-13.9) -- (69.9,-13.4) -- (69.9,-14.4);
\draw (67.5,-14.4) node [below] {$-$};
\draw [black] (70.91,-15.01) -- (38.79,-27.79);
\fill [black] (38.79,-27.79) -- (39.72,-27.96) -- (39.35,-27.03);
\draw (55.64,-21.92) node [below] {$-$};
\draw [black] (36,-31.9) -- (36,-35.7);
\fill [black] (36,-35.7) -- (36.5,-34.9) -- (35.5,-34.9);
\draw (35.5,-33.8) node [left] {$#$};
\draw [black] (36,-41.7) -- (36,-48.4);
\fill [black] (36,-48.4) -- (36.5,-47.6) -- (35.5,-47.6);
\draw (35.5,-45.05) node [left] {$#$};
\draw [black] (39,-51.4) -- (53.2,-51.4);
\fill [black] (53.2,-51.4) -- (52.4,-50.9) -- (52.4,-51.9);
\draw (46.1,-51.9) node [below] {$#$};
\draw [black] (39,-38.7) -- (53.2,-38.7);
\fill [black] (53.2,-38.7) -- (52.4,-38.2) -- (52.4,-39.2);
\draw (46.1,-38.2) node [above] {$s$};
\draw [black] (56.2,-48.4) -- (56.2,-41.7);
\fill [black] (56.2,-41.7) -- (55.7,-42.5) -- (56.7,-42.5);
\draw (56.7,-45.05) node [right] {$s$};
\draw [black] (38.54,-49.8) -- (53.66,-40.3);
\fill [black] (53.66,-40.3) -- (52.72,-40.3) -- (53.25,-41.15);
\draw (46.99,-45.55) node [below] {$s$};
\draw [black] (59.065,-37.851) arc (134.23913:-153.76087:2.25);
\draw (63.57,-40.09) node [right] {$char$};
\fill [black] (58.62,-40.46) -- (58.82,-41.38) -- (59.53,-40.68);
\draw [black] (53.5,-37.39) -- (38.7,-30.21);
\fill [black] (38.7,-30.21) -- (39.2,-31.01) -- (39.64,-30.11);
\draw (47.09,-33.29) node [above] {$n$};
\draw [black] (34.851,-31.659) arc (5.12592:-282.87408:2.25);
\draw (30.37,-34.79) node [left] {$Any$};
\fill [black] (33.11,-29.67) -- (32.27,-29.24) -- (32.36,-30.24);
\draw [black] (24.23,-16.11) -- (33.97,-26.69);
\fill [black] (33.97,-26.69) -- (33.8,-25.76) -- (33.06,-26.44);
\draw (28.57,-22.86) node [left] {$-$};
\end{tikzpicture}
\end{center}

```
Análisis Sintactico
===================

La gramatica libre de contexto es:

A-> h1 | h2 | h3 | N | C | B | A | \n
h1 -> # \s B \n
h2 -> ## \s B \n
h3 -> ### \s B \n
N -> `_B_`A
C -> `__B__`A
B -> a|b|...|z|0|...|9|BB|
