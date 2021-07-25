%
% CUSTOM SETTINGS
%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume_template}

% We are going to base this class on the article class
\LoadClass[11pt, oneside, letterpaper, titlepage]{article}

% Defined the font here, make sure you have a license for the font you want to use, and make sure you have it installed.
\usepackage{fontspec}
\setmainfont{Noto Serif JP} % Add a font that suits your preferences here

% This packages gives us the chance to make a font larger than the \Huge command allows is
% I used it for the title section here
\usepackage{anyfontsize}

% This allows us to set the tracking (letter spacing) manually
\usepackage{microtype}

% We need this to have some extra command for text alignment. Like \justify
\usepackage[document]{ragged2e}

% This will be used for the general formatting of the color boxes
\usepackage[most]{tcolorbox}

% This will be used to defined the page margins on the sides
\usepackage{geometry}
\geometry{
	letterpaper,
	left=0mm,
	right=0mm,
	top=0mm,
	bottom=0mm
}

% This package is for the hyperlinks you want to use
\usepackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=blue
}

% This is used to crop your professional picture into a circle 
\usepackage{tikz}

% Some configurations for the item lists
\usepackage{enumitem}
\setlist[itemize]{leftmargin=*,itemsep=0pt,topsep=0pt}

% This package is used to calculate your skill level relative to the bar length
% See the new command at the bottom for more info
\usepackage{calculator}

% Define some colors that you want to use
% If you want to be safe: white for the page, black for the font, some other color for accents
\definecolor{primary}{RGB}{150,150,150}
% Also some colors for the skill bars
\definecolor{bar_primary}{RGB}{255,255,255}
\definecolor{bar_background}{RGB}{0,0,0}

% The settings for the acutual document layout
\tcbset{grid/.style={raster columns=6,raster height=279.4mm,raster width=215.9mm,raster column skip=0mm,raster force size=false}}

% These are some settings for the tcolorboxes used to structure the document
\newcommand{\toppagemargin}{10}
\tcbset{top=\toppagemargin mm}
\tcbset{sidebar/.style={colframe=primary,colback=primary,height=279.4mm,sharp corners=all}}
\tcbset{main/.style={colframe=white,colback=white,height=279.4mm,sharp corners=all}}


%
% CUSTOM COMMANDS
%


% This is a new command for your professional photo photo
% Parameter is the file name of your image including the extenstion (#1). 
% Check the .tex file to see it in action.
\newcommand{\borderwidth}{5}
\newcommand{\imagewidth}{40}
\DIVIDE{\imagewidth}{2}{\imageradius}
\newcommand{\resumephoto}[1]{
	\begin{center}	
		\begin{tikzpicture}
			\draw[white,line width=\borderwidth] (0,0) circle (\imageradius mm);
			\begin{scope}
				\clip(0,0) circle(\imageradius mm);
				\node[anchor=center] at (0,0) {\includegraphics[width=\imagewidth mm]{#1}};
			\end{scope}
			% Use this commented section instead of the one above in case you want your photo to be in a square
			%\draw[white,line width=\borderwidth] (0,0) rectangle (\imagewidth mm,\imagewidth mm);
			%\begin{scope}
			%	\clip(0,0) rectangle(\imagewidth mm,\imagewidth mm);
			%	\node[anchor=center] at (2,2) {\includegraphics[width=\imagewidth mm]{#1}};
			%\end{scope}		
		\end{tikzpicture}
	\end{center}
}

% This is a new command for the header title
% Parameters are your name (#1) and job title (#2). 
% Check the .tex file to see it in action.
\newcommand{\resumetitle}[2]{
	\SetTracking{encoding=*}{150}
	\textls{\fontsize{35}{60}\selectfont\textcolor{black}#1\\[18pt]
		\fontsize{18}{60}\selectfont\textcolor{black}#2}
}

% This is a new command for the section titles
% Parameter is the section title (#1)). 
% Check the .tex file to see it in action.
\newcommand{\resumesection}[1]{
	\SetTracking{encoding=*}{150}
		\section*{\textls{#1}}
			\vspace*{-17pt}		
			\hrulefill
			\vspace*{5pt}
}

% This new command is used to draw the skill bars according to your input. 
% Parameters are the skill (#1) and skill level in percent (#2). 
% For the skill level you can type in a number between 0 and 100 and the bar will be drawn accordingly. 
% Check the .tex file to see it in action.
\newcommand{\maxbarlength}{60}
\newcommand{\skill}[2]{
	\DIVIDE{#2}{100}{\perc} 
	\MULTIPLY{\maxbarlength}{\perc}{\skl}	
	{#1}\\[2.5pt]
	\begin{tikzpicture}
		\filldraw[fill=bar_background,draw=bar_background] (0,0) rectangle (\maxbarlength mm,4mm);
		\filldraw[fill=bar_primary,draw=bar_primary] (0,0) rectangle (\skl mm,4mm);
	\end{tikzpicture}
}

% This new command is used for the headers of each entry in the work experience and education sections.
% Parameters are the company (#1), the city (#2), state/country (#3), job title (#4), start month and year (#5), and the end month and year (#6).
% Check the .tex file to see it in action.
\newcommand{\experienceentryheader}[6]{
	\noindent
	\textbf{\large #1\hfill #2, #3\\
	#4\hfill #5 - #6}
	\vspace*{5pt}
}

% This new command is used for the headers of each entry in the work experience and education sections.
% Parameters are the school/college (#1), the city (#2), state/country (#3), degree (#4), start month and year (#5), and the end month and year (#6).
% Check the .tex file to see it in action.
\newcommand{\educationentryheader}[6]{
	\noindent
	\textbf{\large{#1}\\[5pt]
		\normalsize{#2 | #3, #4\\[3pt]
		#5 - #6}}
	\vspace*{5pt}
}


%
% BLIND TEXT COMMANDS
%


\newcommand{\loremipsum}{Lorem ipsum}

\newcommand{\lorem}{Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.}

\newcommand{\ut}{Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.}

\newcommand{\duis}{Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.}