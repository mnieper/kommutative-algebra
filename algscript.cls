\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{algscript}[2009/05/10 LaTeX class]

\RequirePackage{ifthen}
\newboolean{@beamer}
\DeclareOption{beamer}{\setboolean{@beamer}{true}}
\ProcessOptions\relax
\ifthenelse{\boolean{@beamer}}{%
    \LoadClass[ucs,notheorems,ignorenonframetext,hyperref={pdfpagelabels=false},%
               compress]{beamer}%
}{%
    \LoadClass[tocleft,a4paper,12pt]{scrartcl}%
    \RequirePackage[notheorems]{beamerarticle}%
    \sloppy%
}

\RequirePackage{xcolor}
\RequirePackage{alggerman}
\RequirePackage{algmacros}

%\newenvironment{subequations*}{%
%    \begin{subequations}
%     \renewcommand{\theequation}{\roman{equation}}
%}{%
%    \end{subequations}%
%}

\mode<article>{%
\titlehead{Universität Augsburg \hfill Lehrstuhl für Algebra und Zahlentheorie}
\subject{Skript}
\lowertitleback{Dieses Skript wurde mit Hilfe von {\TeX}, {\LaTeX},
                {\KOMAScript} und {\AmS-\LaTeX} gesetzt.}
\uppertitleback{Marc Nieper-Wißkirchen\\%
                Lehrstuhl für Algebra und Zahlentheorie\\%
                Institut für Mathematik\\%
                Universität Augsburg\\%
                D-86157 Augsburg}
\publishers{http://www.math.uni-augsburg.de/alg}
\setkomafont{sectioning}{\normalcolor\bfseries}
\setbeamertemplate{frametitle}{}
}

\mode<presentation>{%
    \useinnertheme{rounded}
   	\setbeamersize{text margin left=0.5cm,text margin right=0.5cm}
   	\setbeamertemplate{theorems}[numbered]
   	\setbeamertemplate{sections/subsections in toc}[ball] 	
   	\usecolortheme{crane}
    \usefonttheme[stillsansseriflarge,stillsansserifsmall]{serif}
    \institute[Augsburg]{Universität Augsburg\\
        Lehrstuhl für Algebra und Zahlentheorie}
    \subtitle{Vorlesung}
}
\date{\today}

\AtBeginPart{\frame{\partpage}}
\AtBeginSection{%
  \begin{frame}<presentation>
      \frametitle{Abschnitt \thesection:\enskip\insertsection}
      \tableofcontents[sectionstyle=show/hide,subsectionstyle=show/shaded/hide]
  \end{frame}}

\AtBeginSubsection{%
	\begin{frame}<presentation>
		\frametitle{Unterabschnitt \thesection.\thesubsection:%
			\enskip\insertsubsection}
		\tableofcontents[sectionstyle=show/hide,subsectionstyle=show/shaded/hide]
	\end{frame}}

\AtBeginLecture{%
    \begin{frame}<presentation>
        \frametitle{Vorlesung \thelecture:\enskip\insertlecture}
        \tableofcontents
    \end{frame}}

