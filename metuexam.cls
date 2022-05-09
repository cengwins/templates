% metu.sty
\ProvidesClass{metuexam}[2016/09/01 version 1.0]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{\InputIfFileExists{\CurrentOption.min}{}{%
    \PassOptionsToClass{\CurrentOption}{exam}}}

\ProcessOptions \relax
\LoadClass{exam}

\def\Lrule#1#2{\vtop{\vskip#1\hsize=#2 \hrulefill}}

% what is the email
\def\@email{}
\newcommand{\setemail}[1]{\def\@email{#1}}
\newcommand{\show@email}{\@email}
\newcommand*{\printemail}{\expandafter{\@email}}

% what is the web
\def\@web{}
\newcommand{\setweb}[1]{\def\@web{#1}}
\newcommand{\show@web}{\@web}
\newcommand*{\printweb}{\expandafter{\@web}}


% what is the tel
\def\@tel{}
\newcommand{\settel}[1]{\def\@tel{#1}}
\newcommand{\show@tel}{\@tel}
\newcommand*{\printtel}{\expandafter{\@tel}}

% what is the fax
\def\@fax{}
\newcommand{\setfax}[1]{\def\@fax{#1}}
\newcommand{\show@fax}{\@fax}
\newcommand*{\printfax}{\expandafter{\@fax}}


% what is the course
\def\@coursecode{}
\newcommand{\setcoursecode}[1]{\def\@coursecode{#1}}
\newcommand{\show@coursecode}{\@coursecode}

% what is the coursename
\def\@coursename{}
\newcommand{\setcoursename}[1]{\def\@coursename{#1}}
\newcommand{\show@coursename}{\@coursename}

% what is the courseterm
\def\@courseterm{}
\newcommand{\setcourseterm}[1]{\def\@courseterm{#1}}
\newcommand{\show@courseterm}{\@courseterm}

% what is the examdate
\def\@examdate{}
\newcommand{\setexamdate}[1]{\def\@examdate{#1}}
\newcommand{\show@examdate}{\@examdate}

% what is the examinationtype
\def\@examinationtype{}
\newcommand{\setexaminationtype}[1]{\def\@examinationtype{#1}}
\newcommand{\show@examinationtype}{\@examinationtype}

% what is the lecturer
\def\@lecturer{}
\newcommand{\setlecturer}[1]{\def\@lecturer{#1}}
\newcommand{\show@lecturer}{\@lecturer}


\RequirePackage{libertine}
\RequirePackage{libertinust1math}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}


\RequirePackage[]{xcolor}

\definecolor{metured}{rgb}{.886,0.093,0.215}
\definecolor{metublack}{rgb}{0.078,0.0625,0.0234}
\definecolor{metugray}{rgb}{0.44140625,0.4375,0.44921875}
\definecolor{myviolet}{HTML}{4c0068}

\RequirePackage{tikz}\usetikzlibrary{calc}
\RequirePackage[ a4paper, total={210mm,297mm},left=2.5cm,right=2cm,top=1cm,bottom=7cm]{geometry}

\RequirePackage{lastpage}
 

  %\fancyhf{} % clear all six fields
%  \renewcommand{\headrulewidth}{0pt}
%  \renewcommand{\footrulewidth}{0pt}
  \setlength\headheight{5cm}

\rhead{%
\scriptsize
  \begin{tikzpicture}[remember picture,overlay,every node/.style={anchor=west}]
  \node at (-9,3) { \includegraphics[width=0.5\paperwidth]{refmetu.png}};
 \end{tikzpicture}
}

\rfoot{
\scriptsize \thepage/\pageref{LastPage}
}
\cfoot{}


\lhead{%
\footnotesize
\vspace{1cm}
\textcolor{metugray}{MÜHENDİSLİK FAKÜLTESİ}\\
\textcolor{metugray}{FACULTY OF ENGINEERING}\\
\textcolor{metured}{BİLGİSAYAR MÜHENDİSLİĞİ BÖLÜMÜ}\\
\textcolor{metured}{DEPARTMENT OF COMPUTER ENGINEERING}\\
\textcolor{metublack}{\MakeUppercase{\coursecode} \MakeUppercase{\coursename}  \hfill \MakeUppercase{\courseterm}}\\
\textcolor{metublack}{\MakeUppercase{\examinationtype}  \hfill  \MakeUppercase{\examdate}}\\
\textcolor{metublack}{\hfill  }\\
\textcolor{metublack}{\hfill  }\\
%\namedata
\textbf{NAME}: \textcolor{metugray}{\Lrule{.05cm}{2.1in}} \textbf{NUMBER}:   \textcolor{metugray}{\Lrule{.05cm}{1.5in}}
\textbf{SIGNATURE}:   \textcolor{metugray}{\Lrule{.05cm}{1in}}
}


