\ProvidesClass{twentysecondcv-IT}[2017/05/30 CV class]
\LoadClass{twentysecondcv}
\NeedsTeXFormat{LaTeX2e}

%----------------------------------------------------------------------------------------
%	 REQUIRED PACKAGES
%----------------------------------------------------------------------------------------

\RequirePackage{pgf-pie}

%----------------------------------------------------------------------------------------

% Command for printing skill progress bars
\newcommand\programming[2]{
	\renewcommand{\programming}{
    ~
  	\tikz{
  		\pie[before number=\phantom, after number=, text=inside]{#1}
  	}
  	~\phantom{a}\\
  	#2
	}
}

\newcommand\programmingSection{
  \vspace{3mm}
  \profilesection{Programming}{1.5cm}

  \programming
}

%----------------------------------------------------------------------------------------

\newcommand\describeJob[3]{%
  \begin{itemize}%
    \item #1.
    \item[] \underline{Technologies used:} #2.
    \item[] \underline{Responsibilities:} #3.
  \end{itemize}%
}
