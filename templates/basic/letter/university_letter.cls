% Customized letter class:  university_letter.cls
% changes the letter class by adding letterhead
% option either "sign" (default) or "nosign"; the sign feature includes your signature
% which must be in a file signature.jpg

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{university_letter}


%\RequirePackage{ifthen}
%\RequirePackage{fontspec}
%\RequirePackage{xunicode}

\newboolean{@sign}

% Defaults:  signed 
\setboolean{@sign}{true}
\DeclareOption{sign}{
	\setboolean{@sign}{true}}
\DeclareOption{nosign}{
	\setboolean{@sign}{false}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{letter}}

\ProcessOptions
\LoadClass{letter}

%%The \RequirePackage{fontspec} should always follow \LoadClass{letter} in order to avoid
%% "The font size command \normalsize is not defined" log .
\RequirePackage{ifthen}
\RequirePackage{fontspec}
\RequirePackage{xunicode}
\RequirePackage{times}
\RequirePackage{graphicx}
\RequirePackage{url}
%\def\myauthor{Kieran Healy}
\def\myauthor{Anil Kunwar}
\def\mytitle{Vita}
\def\mycopyright{\myauthor}
\def\mybibliostyle{plain}
\def\mysubtitle{}
%\def\myaffiliation{Duke University}
\def\myaffiliation{Dalian University of Technology}
%\def\myphone{\tiny\sffamily (919) 660-5737} +86 0411 84707636
%\def\myfax{\tiny\sffamily (919) 660-5623}
\def\myphone{\tiny\sffamily  +86 0411 84707636}
\def\myfax{\tiny\sffamily  +86 0411 84707636}
\def\myversion{}
\def\myrevision{}

\setlength{\topmargin}{-1.5cm}
\newsavebox{\tsheader}
\newsavebox{\universitylogo}

\sbox{\universitylogo}{\parbox{\textwidth}{
    \begin{tabular}{l}
     \includegraphics[scale=0.3255]{figures/DUT_logo}
       %\includegraphics[scale=0.55]{/Users/kjhealy/Documents/letterhead/logos/sociologydept.pdf}
   \end{tabular}}}
		
\sbox{\tsheader}{\parbox[b]{\textwidth}{\usebox{\universitylogo}\raisebox{0cm}}}


\renewcommand{\ps@firstpage}{%
  \setlength{\headheight}{0cm}\setlength{\headsep}{3.5cm}%
  \renewcommand{\@oddhead}{\usebox{\tsheader}}
  %\renewcommand{\@oddfoot}{{\sffamily\tiny 268 Sociology/Psychology
      %Building, Duke University, Durham, North Carolina 27708, USA. Phone:
      %\myphone \,Fax: \myfax.}}%
      \renewcommand{\@oddfoot}{{\sffamily\tiny No.2 Linggong Road, Ganjingzi District, Dalian City,     			Liaoning Province, China, 116024. Phone:
      \myphone \,Fax: \myfax.}}%
       
    %\renewcommand{\@evenhead}{}\renewcommand{\@evenfoot}{{\sffamily\tiny 268 Sociology/Psychology
      %Building, Duke University, Durham, North Carolina 27708, USA. Phone:
      %\myphone \,Fax: \myfax.}}%
      \renewcommand{\@evenhead}{}\renewcommand{\@evenfoot}{{\sffamily\tiny No.2 Linggong Road, Ganjingzi 			District, Dalian City, 	Liaoning Province, P.R.C., 116024. Phone:
      \myphone \,Fax: \myfax.}}%
  }

\providecommand{\@evenhead}{} \providecommand{\@oddhead}{}
%\providecommand{\@evenfoot}{{\sffamily\tiny 268 Sociology/Psychology
      %Building, Duke University, Durham, North Carolina 27708, USA. Phone:
      %\myphone \,Fax: \myfax.}} \providecommand{\@oddfoot}{}
      
      \providecommand{\@evenfoot}{{\sffamily\tiny No.2 Linggong Road, Ganjingzi	District,
       Dalian City,	Liaoning Province, P.R.C., 116024. Phone:
      \myphone \,Fax: \myfax.}} \providecommand{\@oddfoot}{}

%\pagestyle{headings}


\renewcommand{\closing}[1]{
	\hspace*{4cm}
	\parbox{\textwidth}{
	\ifthenelse{\equal{#1}{}}{}{#1\\}
	\ifthenelse{\boolean{@sign}}{}{\bigskip \bigskip \bigskip \bigskip \bigskip \ifthenelse{\equal{#1}{}}{}{{ }\\}}	
	\raggedright \fromsig}}

\signature{
	%Associate Professor of Sociology\\
	%\\\url{kjhealy@soc.duke.edu}}
	 Postdoctoral Researcher in Mechanical Engineering \\
	\\\url{kunwaranil@dlut.edu.cn}}
	
