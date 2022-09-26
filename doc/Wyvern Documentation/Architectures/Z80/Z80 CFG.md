Nonterminals are $Uppercase$, Terminals are $\texttt{lowercase block}$.

Instructions:

$$
\def\T#1{{\texttt{#1}}}
\def\or{{\ \mid \ }}

\begin{align*}
&Register    \ &\to \  \T{r} \\
&RegisterExt \ &\to \  Register \or \T{f} \\
&HL          \ &\to \  \T{hl} \\
&CC          \ &\to \  \T{cc} \\


\end{align*}
$$
$$
\begin{alignat*}{3}
  &[x \mapsto s]x &&= s && \\
  &[x \mapsto s]y &&= y \qquad &&\text{als } y\neq x \\
  &[x \mapsto s](\lambda(y)t_1) &&= \lambda(y)[x \mapsto s]t_1 \qquad &&\text{als } y \neq x \text{ en   } y \not \in FV(s) \\
  &[x \mapsto s](t_1 \; t_2)&&= ([x \mapsto s]t_1)\;([x \mapsto s]t_2) &&
\end{alignat*}

$$