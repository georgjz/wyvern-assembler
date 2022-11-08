Arithmetic expressions in Wyvern support addition, subtraction, multiplication, division, and unary subtraction/negation. Parenthesized expressions have highest precedence, multiplication and division lower precedence, addition and subtraction lowest precedence.

$$
\newcommand{\T}[1]{\texttt{#1}}
\newcommand{\pro}{\quad \to \quad}
\newcommand{\or}{\quad \; \mid \quad}
\begin{alignat*}{3}

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

$Number$ refers to any [[Numbers CFG|legal number expression]], $\texttt{id}$ any legal [[identifier]].
