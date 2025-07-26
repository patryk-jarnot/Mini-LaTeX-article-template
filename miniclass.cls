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

\newif\if@onecolumnmargin
\@onecolumnmarginfalse
\DeclareOption{onecolumnmargin}{\@onecolumnmargintrue}

\ProcessOptions\relax
\LoadClass{article}




\usepackage{titling}

\pretitle{
	\vspace{-30pt}
	\Large
    \if@twocolumn%
    \else%
    \hspace{-24.5pt}
    \fi
}
\posttitle{
    \par\vskip 15pt
}

\preauthor{
    \if@twocolumn%
    \else%
    \hspace{-17.5pt}
    \fi
}

\postauthor{
    \if@twocolumn%
        \vspace{-15pt}
    \else%
        \vspace{-25pt}
    \fi
}





\renewcommand{\normalsize}{\fontsize{9}{10}\selectfont}
\setcounter{secnumdepth}{0}


\usepackage{authblk}
\usepackage{geometry}


% A4 format: 210mm x 297mm
\if@twocolumn%
    \geometry{ a4paper, total={174mm,257mm}, left=18mm, top=20mm, }
    \setlength{\columnsep}{6mm}
\else%
\if@onecolumnmargin%
    \geometry{ a4paper, total={129mm,246mm}, left=12mm, top=25.5mm, }
\else%
    \geometry{ a4paper, total={159mm,246mm}, left=25.5mm, top=25.5mm, }
\fi
\fi


\usepackage[center]{titlesec}

\renewcommand{\thesection}{\alph{section}}
\renewcommand{\thesubsection}{\alph{subsection}}
\renewcommand{\thesubsubsection}{\alph{subsubsection}}



\usepackage{soul}

% \titleformat{<command>}[<shape>]{<format>}{<label>}{<sep>}{<before-code>}[<after-code>]
% https://www.texready.ir/docs/document_structure/document_sectioning
\titleformat%
    {\section}
    [block]
    {\Large\bfseries}
    {\thesection.}
    {0.5em}
    {}

\titleformat%
    {\subsection}
    [block]
    {\large\itshape}
    {\thesubsection.}
    {0.5em}
    {}

\titleformat%
    {\subsubsection}
    [block]
    {\normalsize\normalfont}
    {\thesubsubsection.)}
    {0.5em}
    {\ul}

\titlespacing{\section}{0pt}{*4}{*1.5}
\titlespacing{\subsection}{0pt}{*4}{*1.5}
\titlespacing{\subsubsection}{0pt}{*4}{*1.5}


