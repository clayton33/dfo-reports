%%
%% This is a document class for the Department of Fisheries and Oceans
%% data reports.
%%
%% Much of this is adapted from the ocethesis.cls
%%
%% Some has also been adapted from https://github.com/pbs-assess/csasdown particularly the cover page and title page
%%

\def\fileversion{2018.1}
\def\filedate{2018/01/09}
\def\docdate{2018/01/09}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dforeport}[2018/01/09 DFO report class]
\LoadClass{article}
\RequirePackage{titlesec}

%% PAGE PARAMETERS 
%% From ocethesis.cls
\setlength{\headsep}{\baselineskip}
\setlength{\footskip}{0.5in}
\setlength{\topmargin}{-1.0cm} % CHECKME
\setlength{\oddsidemargin}{0.25in} % the extra 0.05 is to avoid hassles with printers 
\setlength{\evensidemargin}{0in}
\setlength{\textwidth}{\paperwidth}
\addtolength{\textwidth}{-2.60in} % the extra 2*0.05 is to avoid hassles with printers 
\setlength{\textheight}{\paperheight}
\addtolength{\textheight}{-2.1in}
%%
%%


%% COVER and TITLE PAGE
%% define page arguments
\def\address#1{\gdef\@address{#1}}
\def\division#1{\gdef\@division{#1}}
\def\reportnum#1{\gdef\@reportnum{#1}}
\def\year#1{\gdef\@year{#1}}
\def\@title{}
\def\@author{}
\def\authorshort#1{\gdef\@authorshort{#1}}
\def\@authorshort{}
\def\@year{}
\def\@reportnum{}
\def\@division{Ocean and Ecosystem Sciences Division}
\def\@address{Fisheries and Oceans Canada \\
	      Bedford Institute of Oceanography \\
	      P.O. Box 1006 \\
	      Dartmouth, Nova Scotia \\
	      Canada, B2Y 4A2}
\def\catno#1{\gdef\@catno{#1}}
\def\@catno{}
\def\issnprint#1{\gdef\@issnprint{#1}}
\def\@issnprint{}
\def\issnelectronic#1{\gdef\@issnelectronic{#1}}
\def\@issnelectronic{}
\def\isbnno#1{\gdef\@isbnno{#1}}
\def\@isbnno{}
\newcommand{\reportcitation}{%
	\begin{hangparas}{1em}{1}
	\@authorshort . \@year . \@title . Can. Tech.  Rep. Hydrogr. Ocean Sci. \@reportnum : \pageref{TRlastRoman}{}\,+\,\pageref{LastPage}{}\,p.
	\end{hangparas}
}
\def\reportabstract#1{\gdef\@reportabstract{#1}}
\def\@reportabstract{}
\def\reportresume#1{\gdef\@reportresume{#1}}
\def\@reportresume{}

%% some things required for cover page from https://github.com/pbs-assess/csasdown/blob/master/inst/csas-style/tech-report.sty 
% Enable footnotes
\newcommand{\EnableFootNotes}{%
  \LetLtxMacro\footnote\Oldfootnote%
}

% Disable footnotes (on the cover page)
\newcommand{\DisableFootNotes}{%
  \renewcommand{\footnote}[2][]{\relax}
}

% Define helvetica font for cover page
\newenvironment{coverfont}{\fontfamily{phv}\selectfont}{\par}
\DeclareTextFontCommand{\dfocoverfont}{\coverfont}

% make title uppercase from ocethesis.cls
\newcommand{\MakeUppercaseWithNewline}[1]{%
   \begingroup
      \let\orig@newline\\%
      \DeclareRobustCommand{\\}{\orig@newline}%
      \MakeUppercase{#1}%
   \endgroup%
}

\newcommand{\titleCasedWithNewline}[1]{%
   \begingroup
      \MakeUppercaseWithNewline{#1}%
   \endgroup%
}

% cover page
\newcommand{\@makefrontcoverpage} {%
	\thispagestyle{fancyplain}
	\DisableFootNotes
	\noindent
	\begin{flushleft}
	\LARGE
	\dfocoverfont{\textbf{\@title}}\\
	\vfill
	\Large
	\dfocoverfont{\@author}
	\vfill
	\dfocoverfont{\@address}
	\vfill
	\dfocoverfont{\@year}
	\vfill
	\LARGE
	\dfocoverfont{\textbf{Canadian Technical Report of\\
	Hydrography and Ocean Sciences \@reportnum}}
	%\lfoot{\includegraphics[height=7mm, keepaspectratio]{LogoDFO.png}} % save these in local directory /images ?
	%\cfoot{}
	%\rfoot{\includegraphics[height=7mm, keepaspectratio]{LogoCanada.jpg}}
	\end{flushleft}
	\EnableFootNotes
	\clearpage
}
% cover page back
\newcommand{\@makebackcoverpage} {%
	\footnotesize
	\lfoot{} \cfoot{\thepage} \rfoot{}
	\thispagestyle{empty}
	\vspace*{4\baselineskip}
	\begin{center}
		\textbf{Canadian Technical Report of Hydrography and Ocean  Sciences}
	\end{center}
	\medskip
	\vskip 6pt
	\indent
	Technical reports contain scientific and technical information of a type that represents a contribution to existing knowledge but which is not normally found in the primary literature.  The subject matter is generally related to programs and interests of the Oceans and Science sectors of Fisheries and Oceans Canada.
	\vskip 6pt
	\indent
	Technical reports may be cited as full publications.
	The correct citation appears above the abstract of each report.
	Each report is abstracted in the data base \emph{Aquatic Sciences and Fisheries Abstracts}.
	\vskip 6pt
	\indent
	Technical reports are produced regionally but are numbered nationally.  
	Requests for individual reports will be filled by the issuing establishment listed on the front cover and title page.
	\vskip 6pt
	\indent
	Regional and headquarters establishments of Ocean Science and Surveys ceased publication of their various report series as of December 1981.
	A complete listing of these publications and the last number issued under each title are published in the \emph{ Canadian Journal of Fisheries and Aquatic Sciences}, Volume 38: Index to Publications 1981.
	The current series began with Report Number 1 in January 1982.
	\vskip 6pt
	\medskip
        \medskip
	\begin{center}
		\textbf{Rapport technique canadien sur l'hydrographie et les sciences oc\'{e}aniques}
	\end{center}
	\medskip
	\vskip 6pt
	\indent
	Les rapports techniques contiennent des renseignements scientifiques et techniques qui constituent 
	une contribution aux connaissances actuelles mais que l'on ne trouve pas normalement dans les revues scientifiques.  
	Le sujet est g\'{e}n\'{e}ralement rattach\'{e} aux programmes et int\'{e}r\^{e}ts des secteurs des Oc\'{e}ans et des Sciences de P\^{e}ches et Oc\'{e}ans Canada.
	\vskip 6pt
	\indent
	Les rapports techniques peuvent \^{e}tre cit\'{e}s comme des publications \`{a} part enti\`{e}re. 
	Le titre exact figure au-dessus du r\'{e}sum\'{e} de chaque rapport.  
	Les rapports techniques sont r\'{e}sum\'{e}s dans la base de donn\'{e}es \emph{R\'{e}sum\'{e}s des sciences aquatiques et halieutiques}.
	\vskip 6pt
	\indent
	Les rapports techniques sont produits \`{a} l'\'{e}chelon r\'{e}gional, mais num\'{e}rot\'{e}s \`{a} l'\'{e}chelon national.
	Les demandes de rapports seront satisfaites par l'\'{e}tablissement auteur dont le nom figure sur la couverture et sur la page de titre.
	\vskip 6pt
	\indent
	Les \'{e}tablissements de l'ancien secteur des Sciences et Lev\'{e}s oc\'{e}aniques dans les r\'{e}gions et \`{a}
 	l'administration centrale ont cess\'{e} de publier leurs diverses s\'{e}ries de rapports en d\'{e}cembre 1981.  
	Vous trouverez dans l'index des publications du volume 38 du \emph{Journal canadien des sciences halieutiques et aquatiques}, 
	la liste de ces publications ainsi que le dernier num\'{e}ro paru dans chaque cat\'{e}gorie.  
	La nouvelle s\'{e}rie a commenc\'{e} avec la publication du rapport num\'{e}ro 1 en janvier 1982.
	\clearpage
	}

% title page command
\newcommand{\@makefronttitlepage} {%
	\thispagestyle{empty}%
	\fontsize{10}{12}\selectfont
	\begin{center}
	%\noindent
	\linespread{1.37}
	Canadian Technical Report of \\
	Hydrography and Ocean Sciences \@reportnum
	\end{center}
	\vfill
	\begin{center}
	\@year	
	\end{center}
	\vfill
	\begin{center}
	\titleCasedWithNewline{\@title}
	\end{center}
	\vfill
	\begin{center}
	by \\[2.5ex]
	\@author
	\end{center}
	\vfill
	\begin{center}
	\linespread{1}
	\@division, \\
	\@address
	\end{center}
	\vskip0.25in
	\clearpage
	}

\newcommand{\@makebacktitlepage}{%
	\vspace*{\fill}
	\begin{center}
	\textcopyright Her Majesty the Queen in Right of Canada, \@year \\
	%Cat. No. \@catno/\@reportnum E \phantom{x} ISSN \@issnprint \phantom{x} (print version)\\
	Cat. No. \@catno/\@reportnum E-PDF \phantom{x} ISBN \@isbnno \phantom{x} ISSN  \@issnelectronic\\
	\end{center}
	\par
	\bigskip
	\noindent
	Correct Citation for this publication:
	\bigskip
	\par
	\reportcitation
	\clearpage
	}
% Abstract page(s)
\newcommand{\@makeabstract}{%
	\section*{ABSTRACT}\addcontentsline{toc}{section}{ABSTRACT}
	\reportcitation
	\bigskip
	\@reportabstract
	\clearpage
	\section*{R\'{E}SUM\'{E}}\addcontentsline{toc}{section}{R\'{E}SUM\'{E}}
	\reportcitation{}
	\bigskip
	\@reportresume
	\label{TRlastRoman}
	\clearpage
	}
%% FRONT PAGES
\renewcommand{\contentsname}{Table of Contents}
\def\frontmatter{%
	\pagenumbering{roman}
	\pagestyle{plain}
	\@makefrontcoverpage
	\fontsize{10}{12}\selectfont
	\@makebackcoverpage
	\@makefronttitlepage
	\@makebacktitlepage
        \tableofcontents
        \clearpage
	\addcontentsline{toc}{section}{\listtablename}
        \listoftables
	\clearpage
	\addtocontents{lot}{\protect\baselineskip=0.7\protect\baselineskip}
	\addcontentsline{toc}{section}{\listfigurename}
        \listoffigures
	\clearpage
	\addtocontents{lof}{\protect\baselineskip=0.8\protect\baselineskip}
	\@makeabstract
	\clearpage
	}

%% MAIN PAGES
\newcommand{\properpagestyle}{%
	\pagestyle{plain}}
\def\mainmatter{%
	\pagenumbering{arabic}
	\properpagestyle
	}
%% SECTION LABELS
% Ensure auto-generated sections are uppercase
\renewcommand{\contentsname}{CONTENTS}
\renewcommand{\refname}{REFERENCES}
\renewcommand{\indexname}{INDEX}
\renewcommand{\appendixname}{APPENDIX}

%% SECTIONS
\setcounter{secnumdepth}{4}
\renewcommand\section{\addtocontents{toc}{\protect\addvspace{10\p@}}%
\@startsection {section}{1}{\z@}%
   {-3.5ex \@plus -1ex \@minus -.2ex}%
   {2.3ex \@plus.2ex}%
   {\linespread{1}\normalfont\Large\bfseries\raggedright}%
}
\renewcommand\section{\@startsection{section}{1}{\z@}%
    {-3.5ex \@plus -0.5ex \@minus 3.5ex}%
    { 2.3ex \@plus  0.2ex \@minus 2.3ex}%
    {\normalfont\normalsize\centering\bfseries\noindent}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
   {-3.0ex \@plus -0.5ex \@minus -2ex}%
   { 1.5ex \@plus  0.2ex \@minus  1.2ex}%
   %{\linespread{1}\normalfont\large\itshape}
   {\linespread{1}\normalfont\normalsize\bfseries}%
}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
   {-3.0ex \@plus -0.5ex \@minus -1.5ex}%
   { 1.2ex \@plus  0.2ex \@minus  1.2ex}%
   {\normalfont\normalsize\itshape\noindent}%
}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
   %{3.25ex \@plus1ex \@minus.2ex}%
   %{-1em}%
   {-3.25ex\@plus -1ex \@minus -.2ex}%
   {1.5ex \@plus .2ex}%
   {\normalfont\normalsize\itshape\indent}}
