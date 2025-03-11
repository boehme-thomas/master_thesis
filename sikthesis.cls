% Encoding: UTF-8
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% $Id: sikthesis.cls 111 2015-10-06 12:55:56Z klugeflo $
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% sikthesis.cls -- based on DE-TeX-FAQ's modified ``article.cls''
\NeedsTeXFormat{LaTeX2e}\relax
\ProvidesClass{sikthesis}[2011/07/13 Class for SIK thesis]
%% Load ``scrreprt.cls'' with ``12pt'' and A4 format as default
%% (an explicit definition is necessary for this)
%% and just pass along all other options from the author:
% \DeclareOption{a4paper}{\PassOptionsToClass{\CurrentOption}{scrreprt}}
% \DeclareOption{12pt}{\PassOptionsToClass{\CurrentOption}{scrreprt}}
% \DeclareOption{twoside}{\PassOptionsToClass{\CurrentOption}{scrreprt}}
% \DeclareOption{twoside}{\PassOptionsToClass{\CurrentOption}{scrbook}}
% \DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrbook}}
%\ExecuteOptions{a4paper,12pt,twoside}
\ProcessOptions\relax
\PassOptionsToClass{12pt,a4paper,bibliography=totoc,listof=totoc,twoside,openright}{scrbook}
\LoadClass{scrbook}

 %% From here you can make changes to the macros of the loaded class
 %% (please use \renewenvironment or \renewcommand!),
 %% add packages and/or define your own statements and environments:

\RequirePackage{acro}
\RequirePackage{amsmath}
\RequirePackage{appendix}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\RequirePackage[utf8]{inputenc} % text encoding is UTF-8
\RequirePackage{todonotes}
\RequirePackage{tikz}
\RequirePackage{pgfplots}
\RequirePackage{csquotes}

\newcommand{\infonote}[1]{\todo[color=blue!25]{#1}}
\def\tikz{Ti\textit{k}Z}

%\makeatletter

%% Page layout
\pagestyle{fancy}
%\pagestyle{fancyplain}
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection\ #1}}
\lhead[\fancyplain{}{\bfseries\thepage}]
{\fancyplain{}{\bfseries\rightmark}}
\rhead[\fancyplain{}{\bfseries\leftmark}]{\fancyplain{}{\bfseries\thepage}}
\cfoot{\fancyplain{\bfseries\thepage}{}}
\setlength{\parindent}{0cm} \setlength{\parskip}{1.5ex}
\setcounter{secnumdepth}{3}

%%\fancyhead[LE,CE,RE]{\empty}
%\fancyhead[LO]{\siksem@author}
%\fancyhead[CO]{\empty}
%\fancyhead[RO]{\siksem@shorttitle}

\gdef\sikType#1{\gdef\@sikType{#1}}
\def\@sikType{Thesis}
\gdef\sikAuthor#1{\gdef\@sikAuthor{#1}}
\def\@sikAuthor{Missing author :-)}
\def\sikTitle#1{\gdef\@sikTitle{#1}}
\def\@sikTitle{Missing title :-)}
\gdef\sikRefereeOne#1{\gdef\@sikRefereeOne{#1}}
\def\@sikRefereeOne{Missing first reviewer:-)}
\gdef\sikRefereeTwo#1{\gdef\@sikRefereeTwo{#1}}
\def\@sikRefereeTwo{Missing second reviewer:-)}
\gdef\sikAdviser#1{\gdef\@sikAdviser{#1}}
\def\@sikAdviser{Missing supervisor :-)}
\def\sikDate#1{\gdef\@sikDate{#1}}
\gdef\@sikDate{\datoday}

\newcommand{\sikTitlePage}{
	\begingroup
	\KOMAoptions{twoside=false}
  \begin{titlepage}
    \begin{center}%
      {\huge \textsc{Institute of Computer Science }} \\[1em]%
      {\huge \textsc{University of Augsburg}}%
      \\\vspace{5em}
      \includegraphics[height=4.2cm]{unilogo}%
      \\\vspace{5em}
      \begin{minipage}[c]{12cm}%
        \begin{center}%
          {\LARGE \@sikType \par}%
          \vskip 3em%
                 {\LARGE \textbf{\@sikTitle}\par}%
                 \vskip 3em%
                        {\large
                          \lineskip .75em%
                          \begin{tabular}[t]{c}%
                            {\LARGE\textbf{\@sikAuthor}}
                          \end{tabular}\par}%
                        \vskip 5em%
                        
                        \begin{tabular}{rl}
                          First Referee : & \@sikRefereeOne \\      
                          Second Referee: & \@sikRefereeTwo \\       
                          Supervisor: & \@sikAdviser \\       
                          Date: & \@sikDate \\
                        \end{tabular}
        \end{center}\par
      \end{minipage}
      \null\vfill
    \end{center}\par
  \end{titlepage}
  \endgroup

  \vspace*{\fill}
  \textit{written at the}\\
  Chair of Organic Computing \\
  Prof. Dr. Jörg Hähner \\
  Institute of Computer Science \\
  University of Augsburg \\
  86159 Augsburg, Germany \\
  \url{https://www.uni-augsburg.de/informatik}
}

\newcommand\makedatitle{
  \begin{titlepage}%
  \let\footnotesize\small
  \let\footnoterule\relax
  \setcounter{footnote}{0}
}

 %% End the class file:
 \endinput
 %% End of ``sikseminar.cls''    
