Wyvern supports number expressed in decimal, hexadecimal, octal, and binary notation.

$$
\newcommand{\T}[1]{\texttt{#1}}
\newcommand{\pro}{\quad \to \quad}
\newcommand{\or}{\quad \; \mid \quad}
\begin{alignat*}{3}

&Number             &&\pro &&HexNumber  \\
&                   &&\or  &&DecNumber  \\
&                   &&\or  &&OctNumber  \\
&                   &&\or  &&BinNumber  \\
\\

&HexNumber          &&\pro &&\T{hexprefix} \quad HexDigit^+   \\
&                   &&\or  &&HexDigit^{+} \quad \T{hexpostfix} \\
\\

&DecNumber          &&\pro &&Digit^{+} \\
\\

&OctNumber          &&\pro &&OctDigit^{+} \quad \T{octpostfix}  \\
\\

&BinNumber          &&\pro &&\T{binprefix} \quad BinDigit^{+}  \\
&                   &&\or  &&BinDigit^{+} \quad \T{binpostfix}  \\
\\

&HexDigit           &&\pro &&\T{[a-fA-F]} \or Digit  \\

&Digit              &&\pro &&\T{9} \or \T{8} \or OctDigit  \\

&OctDigit           &&\pro &&\T{7} \or \T{6} \or \T{5} \or \T{4} \or \T{3} \or \T{2} \or BinDigit  \\

&BinDigit           &&\pro &&\T{1} \or \T{0}  \\

\end{alignat*}
$$
