\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{miniclass}[2025/07/03 Mini LaTeX class]

\newcommand{\headlinecolor}{\normalcolor}
\RequirePackage{xcolor}
\RequirePackage{graphicx}
\definecolor{slcolor}{HTML}{882B21}

\DeclareOption{green}{\renewcommand{\headlinecolor}{\color{green}}}
\DeclareOption{red}{\renewcommand{\headlinecolor}{\color{slcolor}}}
\DeclareOption{blue}{\renewcommand{\headlinecolor}{\color{blue}}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}


\usepackage{titling}

\pretitle{
	\vspace{-30pt}
	\Huge\bfseries
    \if@twocolumn%
    \else%
    \hspace{-24.5pt}
    \fi
}
\posttitle{\par\vskip 15pt}

\preauthor{
    \if@twocolumn%
    \else%
    \hspace{-17.5pt}
    \fi
}

\postauthor{
	\vspace{10pt}
}



\renewcommand{\normalsize}{\fontsize{9}{10}\selectfont}
\setcounter{secnumdepth}{0}


\usepackage{authblk}
\usepackage{geometry}
\geometry{ a4paper, total={170mm,257mm}, left=20mm, top=20mm, }


\usepackage[center]{titlesec}

\renewcommand{\thesection}{\alph{section}}
\renewcommand{\thesubsection}{\alph{subsection}}
\renewcommand{\thesubsubsection}{\alph{subsubsection}}

% \titleformat{<command>}[<shape>]{<format>}{<label>}{<sep>}{<before-code>}[<after-code>]
% https://www.texready.ir/docs/document_structure/document_sectioning
\titleformat%
    {\section}
    [block]
    {\LARGE\bfseries}
    {\thesection.}
    {0.5em}
    {}

\titleformat%
    {\subsection}
    [block]
    {\Large\itshape}
    {\thesubsection.}
    {0.5em}
    {}

\titleformat%
    {\subsubsection}
    [block]
    {\large\normalfont}
    {\thesubsubsection.)}
    {0.5em}
    {}

\titlespacing{\section}{0pt}{*4}{*1.5}
\titlespacing{\subsection}{0pt}{*4}{*1.5}
\titlespacing{\subsubsection}{0pt}{*4}{*1.5}


