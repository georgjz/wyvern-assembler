A module resides in a single file. It has a module header and a code block. If the export list is omitted, all symbols from the module are exported. If the parentheses are empty, no symbols are exported.

$$
\begin{alignat*}{3}
\def\T#1{{\texttt{#1}}}
\def\pro{{\quad \to \quad}}
\def\or{{\quad \; \mid \quad }}

&Module             &&\pro &&ModuleHeader \quad CodeBlock \quad \T{eof}  \\
\\

&ModuleHeader       &&\pro &&\T{module} \quad Identifier \quad ExportList \quad \T{eol}  \\
\\

&ExportList         &&\pro &&\T{lparen} \quad IdList \quad \T{rparen}  \\
&                   &&\or  &&\epsilon  \\
\\

&IdList             &&\pro &&Identifier  \\
&                   &&\or  &&Identifier \quad \T{,} \quad IdList  \\
&                   &&\or  &&\epsilon  \\
\\

\end{alignat*}
$$

A code block includes import statements, directives, and code. All lines may contain one label and an optional comment.

FIXME: Newline operator.

$$
\begin{alignat*}{3}
\def\T#1{{\texttt{#1}}}
\def\pro{{\quad \to \quad}}
\def\or{{\quad \; \mid \quad }}

&CodeBlock          &&\pro &&ImportStmt^{*} \quad CodeLine^{*}  \\
\\

&CodeLine           &&\pro &&Label^{1} \quad (Directive \or Instr)^{1} \quad Comment^{1}  \\
\\

&Comment            &&\pro &&\T{commentop} \quad \T{anychar}  \\
\\

\end{alignat*}
$$

Legal directives are: Value aliases; data definitions; binary file imports; macros

Data definitions allow for value aliases and "hardcoded" binary data.

$$
\begin{alignat*}{3}
\def\T#1{{\texttt{#1}}}
\def\pro{{\quad \to \quad}}
\def\or{{\quad \; \mid \quad }}

&Directive          &&\pro &&DataDefinition \quad \T{eol} \\
&                   &&\or  &&Subroutine  \\
&                   &&\or  &&BinaryImport  \\
&                   &&\or  &&Macro  \\
\\

&DataDefinition     &&\pro &&Identifier \quad AssignOp \quad Number  \\
&                   &&\or  &&DataDeclarator \quad NumberList  \\
\\

&DataDeclarator     &&\pro &&\T{bytedecl}  \\
&                   &&\or  &&\T{worddecl}  \\
&                   &&\or  &&\T{longdecl}  \\
\\

&NumberList         &&\pro &&Number  \\
&                   &&\or  &&Number \quad \T{,} \quad NumberList  \\
\\

\end{alignat*}
$$

Subroutines can define local labels; these are only in scope for the subroutine itself.

$$
\begin{alignat*}{3}
\def\T#1{{\texttt{#1}}}
\def\pro{{\quad \to \quad}}
\def\or{{\quad \; \mid \quad }}

&Subroutine         &&\pro &&\T{subroutinekeyword} \quad Identifier \quad \T{colon} \quad \T{eol}  \\
&                   &&     &&LabeledLine^{*}  \\
&                   &&     &&\T{endsubroutinekeyword} \quad \T{eol}  \\
\\

&LabeledLine        &&\pro &&Label^{1} \quad Instr \quad Comment^{1} \quad \T{eol}  \\
\\

\end{alignat*}
$$

Subroutines can define local labels; these are only in scope for the subroutine itself.

$$
\begin{alignat*}{3}
\def\T#1{{\texttt{#1}}}
\def\pro{{\quad \to \quad}}
\def\or{{\quad \; \mid \quad }}

&Subroutine         &&\pro &&\T{subroutinekeyword} \quad Identifier \quad \T{colon} \quad \T{eol}  \\
&                   &&     &&LabeledLine^{*}  \\
&                   &&     &&\T{endsubroutinekeyword} \quad \T{eol}  \\
\\

&LabeledLine        &&\pro &&Label^{1} \quad Instr \quad Comment^{1} \quad \T{eol}  \\
\\

\end{alignat*}
$$

Binary imports allow for binary data import (duh.) A filename is an identifier enclosed in double quotes.

$$
\begin{alignat*}{3}
\def\T#1{{\texttt{#1}}}
\def\pro{{\quad \to \quad}}
\def\or{{\quad \; \mid \quad }}

&BinaryImport       &&\pro &&\T{binimportop} \quad Filename \quad \T{eol}  \\
\\

&Filename           &&\pro &&\T{legal filename enclosed in double quotes}  \\
\\

\end{alignat*}
$$
