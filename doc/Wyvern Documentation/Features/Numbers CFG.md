Wyvern supports number expressed in decimal, hexadecimal, octal, and binary notation.

$$
\begin{alignat*}{3}
\def\T#1{{\texttt{#1}}}
\def\pro{{\quad \to \quad}}
\def\or{{\quad \; \mid \quad }}

&AExpr              &&\pro &&Expr \\
\\
&Expr               &&\pro &&Expr \quad \T{+} \quad Term  \\
&                   &&\or  &&Expr \quad \T{-} \quad Term  \\
&                   &&\or  &&Term  \\
\\
&Term               &&\pro &&Term \quad \T{*} \quad Factor  \\
&                   &&\or  &&Term \quad \T{/} \quad Factor  \\
&                   &&\or  &&Factor  \\
\\
&Factor             &&\pro &&\T{\lparen} \quad Expr \quad \T{\rparen}  \\
&                   &&\or  &&\T{-} Factor  \\
&                   &&\or  &&Number  \\
&                   &&\or  &&\T{id}  \\

\end{alignat*}
$$
