Arithmetic expressions in Wyvern support addition, subtraction, multiplication, division, and unary subtraction/negation. Parenthesized expressions have highest precedence, multiplication and division lower precedence, addition and subtraction lowest precedence.

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
&                   &&\or  &&\T{num}  \\
&                   &&\or  &&\T{id}  \\

\end{alignat*}
$$
