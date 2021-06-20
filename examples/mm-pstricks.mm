%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% LaTeX for Malayalam : Examples using Pstricks
%
% Alex A.J (tex@alex.org.in)
%
% 26 Oct 2002 (Initial version)
%
% $Id$
% This file wont compile with pdfTeX.
% Use latex->dvips.
%
%

\documentclass[a4paper,12pt]{report}

\usepackage{malayalam}
\usepackage{pst-all,pstricks}
\usepackage{graphicx}

\addtolength{\hoffset}{-1.5cm}
\addtolength{\textwidth}{3cm}

\begin{document}

\noindent{\RMF The examples will not compile with pdf-\TeX. 
Use \LaTeX$\to$dvips$\to$whatever.
Pdftricks compatibility will be added in future versions. Examine
the source file to see how these examples are made---Alex.}
\vskip 1cm

\font\reallybig=mlklb at 4.2cm \font\teensy=mlklr at 4.5mm

\psboxfill{\teensy <m>a A i I</m>}
\begin{pspicture*}(10,4.2)
\centerline{%
\pscharpath[fillstyle=gradient,gradangle=-45,
        gradmidpoint=0.5,addfillstyle=boxfill,
        fillangle=45,fillsep=.9mm]
{\rput[b](-1.2,0){\reallybig <m>malayALaM</m>}}}
\end{pspicture*}
\vskip 1cm

\font\bigg=mlklb at 12cm
\begin{pspicture*}(10,8)
\centerline{%
\pscharpath[fillstyle=gradient,gradangle=-45,
	gradbegin=yellow,gradend=cyan,
        gradmidpoint=0.5,addfillstyle=boxfill,
        fillangle=45,fillsep=1.2mm]
{\rput[b](-1,0){\bigg <m>a</m>}}}
\end{pspicture*}
\vfill\eject

\begin{center}
\begin{pspicture}(8,4)
\psset{linecolor=white,linewidth=2pt}
\rput[b](-2,0){%
\pstextpath{\pscurve(0,0)(2,4)(4,0)(6,4)(8,0)(10,4)(12,0)}
{\blue <m>aAiIuU.reEaioOauaMaH kakhagaghan"a cachajajhan~a
TaThaDaDhaNa tathadadhana paphababhama yaralavashaSasahaLazhaRa
kkaccaTTappa n"n"an~n~aNNannamma n"kan~caNTantanpa ggajjaDDaddabba
klaplablamlasla</m>}}
\end{pspicture}
\end{center}
\vskip 2cm

\begin{center}
\psset{linecolor=white}\newcommand{\myR}{1.5}
\begin{pspicture}(8,4)
\pstextpath[c]{\psarcn(\myR,\myR)%
{\myR}{180}{0}}{\Large\red
<m>frI sOfRR{}veyaR</m>}
\pstextpath[c]{\psarc(\myR,\myR)%
{\myR}{180}{0}}{\Large\red <m>fauNTESan</m>}
%\rput[b](1.5,.82){\includegraphics[scale=.2,draft]{baby-gnu.ps}}
\rput[b](1.5,1.5){\pscircle[linecolor=blue]{1.18}}
\rput[b](1.5,1.5){\pscircle[linecolor=blue]{1.85}}
%\rput[b](1.5,.64){\scriptsize\RMF GNU Roxx}
\rput[b](1.5,1.3){\scriptsize\RMF GNU ROXX!}
\end{pspicture}
\end{center}



\end{document}

