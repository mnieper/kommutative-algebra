\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{algposter}[2009/07/16 LaTeX class]

\LoadClass[ucs,notheorems,ignorenonframetext,hyperref={pdfpagelabels=false},%
               compress]{beamer}%

\RequirePackage{xcolor}
\RequirePackage{alggerman}
\RequirePackage{algmacros}
\RequirePackage[size=a3]{beamerposter}

\setbeamersize{text margin left=0cm,text margin right=0cm}
\setbeamertemplate{theorems}[numbered]
\setbeamertemplate{navigation symbols}{}

\setbeamertemplate{headline}{%
	\leavevmode%
	\hbox{\small%
		\begin{beamercolorbox}[wd=.666667\paperwidth,ht=2.25ex,dp=1ex,left]%
			{subsection in head/foot}%
			\usebeamerfont{subsection in head/foot}\hspace*{2ex}\inserttitle%
		\end{beamercolorbox}%
		\begin{beamercolorbox}[wd=.333333\paperwidth,ht=2.25ex,dp=1ex,right]%
			{section in head/foot}%
		    \usebeamerfont{section in head/foot}\insertinstitute\hspace*{2ex}%
		\end{beamercolorbox}}%
		\vskip0pt%
}

\setbeamertemplate{footline}{%
	\leavevmode%
 	\hbox{\tiny%
	\begin{beamercolorbox}[wd=.33333\paperwidth,ht=2.25ex,dp=1ex,center]%
		{author in head/foot}%
		\usebeamerfont{author in head/foot}\insertinstitute
	\end{beamercolorbox}%
	\begin{beamercolorbox}[wd=.333333\paperwidth,ht=2.25ex,dp=1ex,center]%
		{title in head/foot}%
	    \usebeamerfont{title in head/foot}\insertshorttitle
	\end{beamercolorbox}%
	\begin{beamercolorbox}[wd=.333333\paperwidth,ht=2.25ex,dp=1ex,right]%
		{date in head/foot}%
	    \usebeamerfont{date in head/foot}\insertdate{}\hspace*{2em}
	\end{beamercolorbox}}%
	\vskip0pt%
}

\useinnertheme[shadow]{rounded}
\usefonttheme{structurebold}
\usecolortheme{crane}

\institute{Lehrstuhl für Algebra und Zahlentheorie}
\date{\today}

