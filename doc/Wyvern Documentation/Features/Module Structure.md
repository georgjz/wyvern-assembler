A module resides in a single file. It has a module header and a code block. If the export list is omitted, all symbols from the module are exported. If the parentheses are empty, no symbols are exported.

$$
\newcommand{\T}[1]{\texttt{#1}}
\newcommand{\pro}{\quad \to \quad}
\newcommand{\or}{\quad \; \mid \quad}
\begin{alignat*}{3}

&Module             &&\pro &&ModuleHeader \quad Body \quad \T{eof}  \\
\\

&ModuleHeader       &&\pro &&\T{module} \quad Identifier \quad ExportList \quad \T{eol}  \\
\\

&ExportList         &&\pro &&\T{lparens} \quad IdList \quad \T{rparens}  \\
&                   &&\or  &&\T{lparens} \quad \T{rparens}  \\
&                   &&\or  &&\epsilon  \\
\\

&IdList             &&\pro &&Identifier  \\
&                   &&\or  &&Identifier \quad \T{comma} \quad IdList  \\
\\

\end{alignat*}
$$

A module's body is made up of import statements and/or code blocks, or it is empty. Import statements must precede code blocks:

$$
\newcommand{\T}[1]{\texttt{#1}}
\newcommand{\pro}{\quad \to \quad}
\newcommand{\or}{\quad \; \mid \quad}
\begin{alignat*}{3}

&Body               &&\pro &&ImportStmts \quad CodeBlocks  \\
&                   &&\or  &&ImportStmts  \\
&                   &&\or  &&CodeBlocks  \\
&                   &&\or  &&\epsilon  \\
\\

&CodeBlocks         &&\pro &&CodeBlock  \\
&                   &&\or  &&CodeBlock \quad CodeBlocks  \\
\\

&CodeBlock          &&\pro &&Stmts  \\
&                   &&\or  &&Subroutine  \\
&                   &&\or  &&Macro  \\
\\

\end{alignat*}
$$

Statements are strings that actually generate output in an object file:

$$
\newcommand{\T}[1]{\texttt{#1}}
\newcommand{\pro}{\quad \to \quad}
\newcommand{\or}{\quad \; \mid \quad}
\begin{alignat*}{3}

&Stmts              &&\pro &&Stmt \quad \T{eol}  \\
&                   &&\or  &&Stmt \quad \T{eol} \quad Stmts  \\
&                   &&\or  &&Comment \quad \T{eol}  \\
\\

&Stmt               &&\pro &&CodeLine  \\
&                   &&\or  &&Data  \\
\\

\end{alignat*}
$$

Statements are either assembly code, or data:

$$
\newcommand{\T}[1]{\texttt{#1}}
\newcommand{\pro}{\quad \to \quad}
\newcommand{\or}{\quad \; \mid \quad}
\begin{alignat*}{3}

&CodeLine           &&\pro &&Label \quad Instr \quad Comment  \\
\\

&Data               &&\pro &&DataDefinition \quad Comment \\
&                   &&\or  &&BinaryImport  \\
\\

&Comment            &&\pro &&\T{commentop} \quad \T{anychar}  \\
&                   &&\or  &&\epsilon  \\
\\

&Label              &&\pro &&Identifier \quad \T{colon}  \\
\\

\end{alignat*}
$$

Import statements can only be used before any other code:

$$
\newcommand{\T}[1]{\texttt{#1}}
\newcommand{\pro}{\quad \to \quad}
\newcommand{\or}{\quad \; \mid \quad}
\begin{alignat*}{3}

&ImportStmts        &&\pro &&ImportStmt \quad \T{eol}  \\
&                   &&\or  &&ImportStmt \quad \T{eol} \quad ImportStmts  \\
\\

&ImportStmt         &&\pro &&\T{importop} \quad ImportIdentifier  \\
\\

&ImportIdentifier   &&\pro &&Identifier  \\
&                   &&\or  &&Identifier \quad \T{period} \quad ImportIdentifier  \\
\\

\end{alignat*}
$$

Data definitions allow for value aliases and "hardcoded" binary data:

$$
\newcommand{\T}[1]{\texttt{#1}}
\newcommand{\pro}{\quad \to \quad}
\newcommand{\or}{\quad \; \mid \quad}
\begin{alignat*}{3}

&DataDefinition     &&\pro &&Identifier \quad \T{assignop} \quad Number  \\
&                   &&\or  &&Label \quad DataDeclarator \quad NumberList  \\
&                   &&\or  &&DataDeclarator \quad NumberList  \\
\\

&DataDeclarator     &&\pro &&\T{bytedecl}  \\
&                   &&\or  &&\T{worddecl}  \\
&                   &&\or  &&\T{longdecl}  \\
\\

&NumberList         &&\pro &&Number  \\
&                   &&\or  &&Number \quad \T{comma} \quad NumberList  \\
\\

\end{alignat*}
$$

Binary imports allow for binary data import (duh.) A filename is an identifier enclosed in double quotes.

$$
\newcommand{\T}[1]{\texttt{#1}}
\newcommand{\pro}{\quad \to \quad}
\newcommand{\or}{\quad \; \mid \quad}
\begin{alignat*}{3}

&BinaryImport       &&\pro &&\T{binimportop} \quad Filename  \\
&                   &&\or  &&Label \quad \T{binimportop} \quad Filename  \\
\\

&Filename           &&\pro &&\text{legal filename enclosed in double quotes}  \\
\\

&Identifier         &&\pro &&\text{any legal identifier string}  \\
\\

\end{alignat*}
$$

Subroutines can define local labels; these are only in scope for the subroutine itself.

$$
\newcommand{\T}[1]{\texttt{#1}}
\newcommand{\pro}{\quad \to \quad}
\newcommand{\or}{\quad \; \mid \quad}
\begin{alignat*}{3}

&Subroutine         &&\pro &&\T{subroutinekeyword} \quad Identifier \quad \T{colon} \quad \T{eol}  \\
&                   &&     &&Stmts  \\
&                   &&     &&\T{endsubroutinekeyword} \quad \T{eol}  \\
\\

\end{alignat*}
$$

Macros are weird (so far):

$$
\newcommand{\T}[1]{\texttt{#1}}
\newcommand{\pro}{\quad \to \quad}
\newcommand{\or}{\quad \; \mid \quad}
\begin{alignat*}{3}

&Macro              &&\pro &&\T{macrokeyword} \quad Identifier \quad \T{colon} \quad \T{eol}  \\
&                   &&     &&Stmts  \\
&                   &&     &&\T{endmacrokeyword} \quad \T{eol}  \\
\\

\end{alignat*}
$$
