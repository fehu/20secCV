\ProvidesClass{twentysecondcv}[2017/05/30 CV class]
\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}

%----------------------------------------------------------------------------------------
%	 REQUIRED PACKAGES
%-----------------------------------------------------------------------	-----------------

\RequirePackage[quiet]{fontspec}
\RequirePackage[sfdefault]{ClearSans}

\newfontfamily{\FA}{FontAwesome.otf}

\usepackage{fontawesome}
\RequirePackage{tikz}
\RequirePackage{xcolor}
\RequirePackage[absolute,overlay]{textpos}
\RequirePackage{ragged2e}
\RequirePackage{etoolbox}
\RequirePackage{ifmtarg}
\RequirePackage{ifthen}
\RequirePackage{pgffor}
\RequirePackage{marvosym}
\RequirePackage{parskip}
\RequirePackage{adjustbox}

\usepackage{enumitem}
\setlist[itemize]{leftmargin=*}

\RequirePackage[hidelinks]{hyperref}
\hypersetup{
    pdftitle={},
    pdfauthor={},
    pdfsubject={},
    pdfkeywords={},
    colorlinks=false,           % no lik border color
    allbordercolors=white       % white border color for all
}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\ifxetex
  \usepackage{letltxmacro}
  \setlength{\XeTeXLinkMargin}{1pt}
  \LetLtxMacro\SavedIncludeGraphics\includegraphics
  \def\includegraphics#1#{% #1 catches optional stuff (star/opt. arg.)
    \IncludeGraphicsAux{#1}%
  }%
  \newcommand*{\IncludeGraphicsAux}[2]{%
    \XeTeXLinkBox{%
      \SavedIncludeGraphics#1{#2}%
    }%
  }%
\fi

%----------------------------------------------------------------------------------------
%	 COLOURS
%----------------------------------------------------------------------------------------

\definecolor{white}{RGB}{255,255,255}
\definecolor{gray}{HTML}{4D4D4D}
\definecolor{sidecolor}{HTML}{E7E7E7}
\definecolor{mainblue}{HTML}{0E5484}
\definecolor{maingray}{HTML}{B9B9B9}

\definecolor{pblue}{HTML}{0395DE}

\definecolor{darkgray}{HTML}{333333}
\definecolor{gray}{HTML}{4D4D4D}
\definecolor{lightgray}{HTML}{999999}
\definecolor{green}{HTML}{C2E15F}
\definecolor{orange}{HTML}{FDA333}
\definecolor{purple}{HTML}{D3A4F9}
\definecolor{red}{HTML}{FB4485}
\definecolor{blue}{HTML}{6CE0F1}
\definecolor{pblue}{HTML}{0395DE}
\definecolor{materialpurple}{HTML}{9C27B0}
\definecolor{materialindigo}{HTML}{3F51B5}
\definecolor{materialblue}{HTML}{2196F3}
\definecolor{materialcyan}{HTML}{00BCD4}
\definecolor{materialteal}{HTML}{009688}
\definecolor{materialgreen}{HTML}{4CAF50}
\definecolor{materiallime}{HTML}{CDDC39}
\definecolor{materialamber}{HTML}{FFC107}
\definecolor{materialbrown}{HTML}{795548}
\definecolor{materialred}{HTML}{FF4436}
\definecolor{materialorange}{HTML}{FF5722}
\definecolor{linkedin}{HTML}{0085AE}
\definecolor{github}{HTML}{171515}
\definecolor{skype}{HTML}{00A9F0}
\definecolor{test}{HTML}{0077be}
\definecolor{yt}{HTML}{c71610}
\colorlet{birthday}{orange!80!black}
\colorlet{citizen}{black}
\colorlet{matrial}{black}
\colorlet{residence}{black}


\ifdefined\@cv@print
  \colorlet{green}{gray}
  \colorlet{orange}{gray}
  \colorlet{purple}{gray}
  \colorlet{red}{gray}
  \colorlet{blue}{gray}
  \colorlet{fillheader}{white}
  \colorlet{header}{gray}
\else
  \colorlet{fillheader}{white}
  \colorlet{header}{gray}
\fi
\colorlet{textcolor}{gray}
\colorlet{headercolor}{gray}

%----------------------------------------------------------------------------------------
%	 MISC CONFIGURATIONS
%----------------------------------------------------------------------------------------

% \renewcommand{\bfseries}{\color{black}} % Make \textbf produce coloured text instead

\pagestyle{empty} % Disable headers and footers

\setlength{\parindent}{0pt} % Disable paragraph indentation

% --------------------------------------------------------------------------------------
% 	FONTS
%-------------------------------------------------------------------------------------
\newfontfamily\headingfont[Path = fonts/]{segoeuib.ttf}

%----------------------------------------------------------------------------------------
%	 SIDEBAR DEFINITIONS
%----------------------------------------------------------------------------------------

\setlength{\TPHorizModule}{1cm} % Left margin
\setlength{\TPVertModule}{1cm} % Top margin

\newlength\imagewidth
\newlength\imagescale
\pgfmathsetlength{\imagewidth}{5cm}
\pgfmathsetlength{\imagescale}{\imagewidth/600}

\newcommand{\profilesection}[2]{\vspace{8pt}{\color{black!80} \huge #1 \rule[0.15\baselineskip]{#2}{1pt}}}

% Define custom commands for CV info
\newcommand{\cvname}[1]{\renewcommand{\cvname}{#1}}
\newcommand{\cvjobtitle}[1]{\renewcommand{\cvjobtitle}{#1}}

\newcommand{\cvbirth}[1]{\renewcommand{\cvbirth}{#1}}
\newcommand{\cvcitizen}[1]{\renewcommand{\cvcitizen}{#1}}
\newcommand{\cvresidence}[1]{\renewcommand{\cvresidence}{#1}}
\newcommand{\cvmatrial}[1]{\renewcommand{\cvmatrial}{#1}}

\newcommand{\cvnumberphone}[1]{\renewcommand{\cvnumberphone}{#1}}
\newcommand{\cvskype}[1]{\renewcommand{\cvskype}{#1}}
\newcommand{\cvmail}[1]{\renewcommand{\cvmail}{#1}}

\newcommand{\cvlinkedin}[1]{\renewcommand{\cvlinkedin}{#1}}
\newcommand{\cvgithub}[1]{\renewcommand{\cvgithub}{#1}}
\newcommand{\cvsite}[1]{\renewcommand{\cvsite}{#1}}


%----------------------------------------------------------------------------------------

\newcommand\languages[1]{
  \renewcommand{\languages}{
    \gdef\langAcc{}
    \foreach \q/\l in {#1} {
      \xappto\langAcc{\q\ \underline{\l} \noexpand\\}
    }
    \marginbox{1em 0 0 0}{
      {\Large
       \begin{tabular}{l}\langAcc \end{tabular}
      }
    }
  }
}

%----------------------------------------------------------------------------------------
%  SIDEBAR LAYOUT
%----------------------------------------------------------------------------------------

\providecommand\customCVsections{}

\newcommand\languageSection{
  \vspace{4mm}
  \profilesection{Languages}{2.4cm}

  \languages
}

%----------------------------------------------------------------------------------------

\newcommand{\makeprofile}{
  \begin{tikzpicture}[remember picture,overlay]
      \node [rectangle, fill=sidecolor, anchor=north, minimum width=9cm, minimum height=\paperheight+1cm] (box) at (-5cm,0.5cm){};
  \end{tikzpicture}

  %------------------------------------------------

  \begin{textblock}{6}(0.5, 0.2)

    %------------------------------------------------

        \vspace{4mm}
    {\Huge\color{pblue}\cvname}

    \vspace{2mm}

    %------------------------------------------------

    {\Large\color{black!80}\cvjobtitle}

    %------------------------------------------------

    \vspace{4mm}
    \renewcommand{\arraystretch}{2}
    \begin{tabular}{p{1cm} @{\hskip 0.5cm}p{5cm}}
      \ifthenelse{\equal{\cvbirth}{}}{}{
          {$
              \begin{array}{l}
              \hspace{2.5mm} \huge \textnormal{\textcolor{birthday}{\faBirthdayCake}}
              \end{array}
              $}
            & \cvbirth\\}
      \ifthenelse{\equal{\cvcitizen}{}}{}{
          {$
              \begin{array}{l}
              \hspace{2.9mm} \huge \textnormal{\textcolor{citizen}{\faGlobe}}
              \end{array}
              $}
            & \cvcitizen\ citizen\\}
      \ifthenelse{\equal{\cvresidence}{}}{}{
          {$
              \begin{array}{l}
              \hspace{2.75mm} \huge \textnormal{\textcolor{residence}{\faHome}}
              \end{array}
              $}
            & \cvresidence\\}
      \ifthenelse{\equal{\cvmatrial}{}}{}{
          {$
              \begin{array}{l}
              \hspace{1.9mm} \huge \textnormal{\textcolor{matrial}{\faUserPlus}}
              \end{array}
              $}
            & \cvmatrial\\}
      \ifthenelse{\equal{\cvnumberphone}{}}{}{
      		{$
              \begin{array}{l}
              \hspace{4mm} \Huge \textnormal{\faMobile}
              \end{array}
              $}
            & \cvnumberphone\\}
      \ifthenelse{\equal{\cvsite}{}}{}{
            {$
              \begin{array}{l}
              \hspace{2.8mm} \huge \textnormal{\textcolor{test}{\faGlobe}}
              \end{array}
              $}
            & \href{http://\cvsite}{\cvsite} \\}
      \ifthenelse{\equal{\cvmail}{}}{}{
            {$
              \begin{array}{l}
              \hspace{2.5mm} \huge \textnormal{\textcolor{yt}{\faEnvelopeO}}
              \end{array}
              $}
            & \href{mailto:\cvmail}{\cvmail} \\}
       \ifthenelse{\equal{\cvlinkedin}{}}{}{
            {$
              \begin{array}{l}
              \hspace{3mm} \huge \textnormal{\textcolor{linkedin}{\faLinkedin}}
              \end{array}
              $} & \href{https://www.linkedin.com/in/\cvlinkedin}{\cvlinkedin} \\
            }
        \ifthenelse{\equal{\cvgithub}{}}{}{
            {$
              \begin{array}{l}
              \hspace{3mm} \huge \textnormal{\textcolor{github}{\faGithub}}
              \end{array}
              $} & \href{https://www.github.com/\cvgithub}{\cvgithub} \\
            }
        \ifthenelse{\equal{\cvskype}{}}{}{
              {$
                \begin{array}{l}
                \hspace{3mm} \huge \textnormal{\textcolor{skype}{\faSkype}}
                \end{array}
                $}
              & \cvskype}
    \end{tabular}

    %------------------------------------------------

    \customCVsections

  \end{textblock}
}


%----------------------------------------------------------------------------------------
%	 COLOURED SECTION TITLE BOX
%----------------------------------------------------------------------------------------

% Command to create the rounded boxes around the first three letters of section titles
\newcommand*\round[2]{%
	\tikz[baseline=(char.base)]\node[anchor=north west, draw,rectangle, rounded corners, inner sep=1.6pt, minimum size=5.5mm, text height=3.6mm, fill=#2,#2,text=white](char){#1};%
}

\def\@sectioncolor#1#2#3{%
	{%
		\color{pblue} #1#2#3%
	}%
}


\renewcommand{\section}[1]{
  \par\vspace{\parskip}
	{%
		\LARGE\headingfont\color{headercolor}%
		\@sectioncolor #1%
	}
  \par\vspace{\parskip}
}

\renewcommand{\subsection}[1]{
	\par\vspace{.5\parskip}{%
		\Large\headingfont\color{headercolor} #1%
	}
	\par\vspace{.25\parskip}%
}

\pagestyle{empty}

%----------------------------------------------------------------------------------------
%	 LONG LIST ENVIRONMENT
%----------------------------------------------------------------------------------------

\setlength{\tabcolsep}{0pt}

% New environment for the long list
\newenvironment{twenty}[1][\fill]{%
  \begin{tabular*}{\textwidth}{@{\extracolsep{#1}}ll}
}{%
	\end{tabular*}
}

\newcommand{\twentyitem}[7][0.83]{%
	#2&\parbox[t]{#1\textwidth}{%
		\textbf{#4}%
		\hfill%
		{\footnotesize#5}%
        }\\%
    #3&\parbox[t]{#1\textwidth}{%
		\ifblank{#6}{}{#6 \\}
		#7\vspace{\parsep}%
	}\\
}

%----------------------------------------------------------------------------------------
%	 SMALL LIST ENVIRONMENT
%----------------------------------------------------------------------------------------

\setlength{\tabcolsep}{0pt}

% New environment for the small list
\newenvironment{twentyshort}{%
	\begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}ll}
}{%
	\end{tabular*}
}

\newcommand{\twentyitemshort}[2]{%
	#1&\parbox[t]{0.83\textwidth}{%
		#2%
	}\\
}

%----------------------------------------------------------------------------------------
%	 MARGINS AND LINKS
%----------------------------------------------------------------------------------------

\RequirePackage[left=7.6cm,top=0.1cm,right=1cm,bottom=0.1cm,nohead,nofoot]{geometry}


\usepackage{smartdiagram}
\smartdiagramset{
    bubble center node font = \footnotesize,
    bubble node font = \footnotesize,
    % specifies the minimum size of the bubble center node
    bubble center node size = 0.5cm,
    %  specifies the minimum size of the bubbles
    bubble node size = 0.5cm,
    % specifies which is the distance among the bubble center node and the other bubbles
    distance center/other bubbles = 0.3cm,
    % sets the distance from the text to the border of the bubble center node
    distance text center bubble = 0.5cm,
    % set center bubble color
    bubble center node color = pblue,
    % define the list of colors usable in the diagram
    set color list = {lightgray, materialcyan, orange, green, materialorange, materialteal, materialamber, materialindigo, materialgreen, materiallime},
    % sets the opacity at which the bubbles are shown
    bubble fill opacity = 0.6,
    % sets the opacity at which the bubble text is shown
    bubble text opacity = 1,
}
