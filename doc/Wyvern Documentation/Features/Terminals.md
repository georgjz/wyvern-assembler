These are the terminals shared by the different architectures

$$
\newcommand{\T}[1]{\texttt{#1}}
\newcommand{\pro}{\quad \to \quad}
\newcommand{\or}{\quad \; \mid \quad}
\begin{alignat*}{2}

&\T{bytedecl}       &&\pro \text{db, byte}  \\
&\T{worddecl}       &&\pro \text{dw, word}  \\
&\T{longdecl}       &&\pro \text{dl, long, longword}  \\
\\

&\T{lparens}        &&\pro \text{(}  \\
&\T{rparens}        &&\pro \text{)}  \\
\\

&\T{commentop}      &&\pro \text{;}  \\
&\T{anychar}        &&\pro \text{any alphanumeric symbol except newline}  \\
\\

&\T{eof}            &&\pro \text{end of file}  \\
&\T{eol}            &&\pro \text{end of line}  \\
\\

&\T{subroutinekeyword}      &&\pro \text{sub, subroutine, proc, procedure, fun}  \\
&\T{endsubroutinekeyword}   &&\pro \text{endsub, etc. to match the above}  \\
\\

&\T{hexprefix}      &&\pro \text{\$}  \\
&\T{hexpostfix}     &&\pro \text{h}  \\
&\T{octpostfix}     &&\pro \text{o}  \\
&\T{binprefix}      &&\pro \text{\%}  \\
&\T{binpostfix}     &&\pro \text{b}  \\
\\

\end{alignat*}
$$
