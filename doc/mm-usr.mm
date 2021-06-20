%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% LaTeX for Malayalam -- User Guide
%
% Alex A.J. <tex@alex.org.in>
%
% 10 Nov 2007 Updated ILDC Fonts section
% 07 Jun 2005 Version 0.9.2
% 03 Apr 2003 Update
% 25 Mar 2003 Massive Revision
% 11 Mar 2003 Initial Version
%
%
%
\documentclass[12pt]{article}

\usepackage[english]{malayalam}
\usepackage[a4paper,margin=.8in]{geometry}
\usepackage{hhline}
\usepackage[colorlinks=true,%
	pdftitle={Typesetting Malayalam Using LaTeX},%
	pdfauthor={Alex A.J.}]{hyperref}


\begin{document}


\title{\bfseries Typesetting Malayalam Using \LaTeXe}
\author{{\bfseries Alex A.J.}\\
\href{mailto:tex@alex.org.in}{(tex@alex.org.in)}}
\date{}
\maketitle

\noindent \copyright\ Copyright 2003,2005,2007,2017 Alex A.J.
This document is freely redistributable.


\tableofcontents

\medskip

\hrule

\section{Introduction}

\subsection{History}

Typesetting Malayalam using \TeX\ was first attempted in the
pioneering work done by {\bf Mr.~Jeroen Hellingman}. He designed
a basic metafont containing all letter forms necessary for
typesetting traditional and reformed (old and new lipi)
Malayalam script. Since there was no keyboard
to input Malayalam script directly, Mr.~Hellingman used a
transliteration scheme in ASCII to prepare the \TeX\ source file.
He also wrote a pre-processor in C to arrange the necessary
syllables according to the transcripted input file.
Various plain \TeX\ macros were also written for effective
glyph placement. The last stable release of Hellingman's
Malayalam-\TeX\ package is version 1.6.

\subsection{New Package for Malayalam}

Hellingman's package was designed to work with plain \TeX\ only.
However, this new release provides full \LaTeX\ compatibility.
An improved version of Hellingman's pre-processor is used
for pre-processing Malayalam source files. Traditional
style hyphenation is also implemented.

\subsection{Fonts Available With the Package}

This package includes two Malayalam fonts, {\bf Keli}<m>(kELi)</m>
and {\bf Rachana}<m>(racana)</m>. The Rachana family includes
all characters in the Malayalam Traditional Script <m>(pazhaya
lipi)</m>.

If you install the package \textbf{ildc-cdac} available from the project page,
you will get additional font families. See the next section for details.

Support for 15 font families from CDAC ISM Publisher
is also provided (the actual Type1 files are not included in
the package; see the section on installation of the package).

\vfill\eject

\section{Obtaining and Installing the Package}

\subsection{System Requirements}

The package should work on any Linux system
with a working \TeX\ distribution.
The {\href{http://www.vim.org}{{\bfseries vim}} editor is also
required in the pre-processing stage.
Some determined hacking is required to get the
package working on non-Linux systems. 

\subsection{Where to Get It}

The latest tarballs of the project can be downloaded from:

{\href{https://alex.org.in/tex}{\bfseries %
https://alex.org.in/tex}}

If you want to install the fonts from ILDC CD-ROM,
download the \textbf{ildc-cdac} package also.

\subsection{Installing under Linux}

A {\itshape bash} script is provided for easy installation
on Linux systems. Follow the steps below to install:

\begin{enumerate}
\item Download the package and copy it to a temporary
directory on your system.
\item Untar it using `{\tt tar -xvzf malayalam-latex-x.x.x.tar.gz}',
and change to the top level directory by issuing
`{\tt cd malayalam-latex-x.x.x}'.
\item Run the installation script by issuing the
command `{\tt ./install.sh}'.
\item The installation will ask you to choose some
directories for installing the files. The defaults
should be okey for most Linux systems.
\item If you choose something other than the default
directories, be sure to follow the instructions given
at the end of the installation.
\end{enumerate}

\subsection{Fonts from the `ILDC' CD-ROM}

In 2006, \textbf{Ministry of Communication and Information Technology}, Govt. of India
brought out a CD-ROM as part of their \textbf{Technology Development for Indian Languages
(TDIL} project\footnote{\texttt{http://ildc.in}}. The CD contains several Malayalam fonts
from various sources. The fonts by CDAC can now be used with this package. The fonts
can be downloaded as a separate package `\textbf{ildc-cdac}' from 
{\href{https://alex.org.in/tex}{\bfseries https://alex.org.in/tex}}. Installation
is explained in the README file with the package.


\subsection{Fonts from ISM Publisher}

ISM Publisher, developed by CDAC, is one of the best solutions for
typesetting in Indian languages. The Malayalam section comes with a wide variety
of beautiful fonts both in TrueType and Type1 formats. The Type1 fonts
can now be used in this latest release of the \LaTeX\ package
for Malayalam.

ISM is proprietory software, and the font files are copyrighted,
so the actual \textbf{.pfb} files are not included with this package.
You may get them from an ISM CD-ROM.

Installation:

\begin{enumerate}

\item Mount the ISM CD-ROM and cd to \verb"Fonts/MALYALAM/PSFONTS/"

\textbf{Note: I used ISM version 3.04. The fonts may not be present
in older versions before 3.0.}

\item Make the directory \verb"{TEXMF}/fonts/type1/malayalam/ism"

\item Copy all the \textbf{.pfb} files to \verb"{TEXMF}/fonts/type1/malayalam/ism"%
\footnote{/usr/share/texmf/ is the default TEXMF
root folder on Linux. Change it according to your installation.}

\item Issue the command \texttt{texhash} or \texttt{mktexlsr} to update
\TeX{}'s filename database.

\end{enumerate}


\subsection{Installation on Other Platforms}

Currently, non-Linux platforms are not supported.

\vfill\eject

\section{Working With Malayalam}

\subsection{Preparing Your Document}

Malayalam source files normally have `.mm' extension.
It is written just like a normal \LaTeX\ file, but
Malayalam text is written in a phonetic transliteration scheme.
This file is pre-processed to get the proper \TeX\ source file.

To typeset Malayalam, you have to include the
following line in the preamble of your source file:

\noindent {\verb"\usepackage[options]{malayalam}"}

\noindent Currently the supported options are:

\begin{itemize}
\item No options: If no options are specified, the Reformed script
(<m>putiya lipi</m>) from the Rachana font family
will be used.
\item `{\tt rachana}': for the Traditional script
(<m>pazhaya lipi</m>)from the Rachana family.
\item `{\tt keli}': for the Keli font (\verb"\usepackage[keli]{malayalam}").
\item See Appendix for using the ILDC Fonts (For e.g., \verb"\usepackage[revathi]{malayalam}").
\item `{\tt english}': use this option when you want to include
some Malayalam text in an english document.
\item See Appendix for using ISM fonts.
\end{itemize}

\subsection{Typing Malayalam}

Malayalam text is entered in a phonetic tranliteration scheme
that uses the standard ASCII character set. All Malayalam
matter must be enclosed between `{\tt <m{}>}' and
`{\tt </m{}>}'. Anything outside these delimiters will come out
in English. {\bf Table~\ref{tbl:trans}} shows the ASCII character(s)
you have to type in order to generate a Malayalam character.
The common ligatures (<m>kUTTakSaran"n"aL</m>) available with
the package are shown in {\bf Table~\ref{tbl:lig}}.

The input file is then preprocessed to generate a {\tt .tex} file.
Instructions for pre-processing can be found in
{\bf Section~\ref{sec:preprocess}} on
{\bf page~\pageref{sec:preprocess}}.

\begin{table}[!hbp]
\caption{Malayalam Transliteration Table}
\label{tbl:trans}
{\Large
\begin{center}
\begin{tabular}{||l|c||l|c||l|c||}
\hhline{|t:==:t:==:t:==:t|}
{\tt a}         & <m>a</m>      &
{\tt ka}        & <m>ka</m>     &
{\tt pa}        & <m>pa</m>\\   \hhline{||--||--||--||}
{\tt aa, A}     & <m>A</m>      &
{\tt kha}       & <m>kha</m>    &
{\tt fa, pha}   & <m>fa</m>\\   \hhline{||--||--||--||}
{\tt i}         & <m>i</m>      &
{\tt ga}        & <m>ga</m>     &
{\tt ba}        & <m>ba</m>\\   \hhline{||--||--||--||}
{\tt ii, I}     & <m>I</m>      &
{\tt gha}       & <m>gha</m>    &
{\tt bha}       & <m>bha</m>\\  \hhline{||--||--||--||}
{\tt u}         & <m>u</m>      &
{\tt n"a}       & <m>n"a</m>    &
{\tt ma}        & <m>ma</m>\\   \hhline{||--||--||--||}
{\tt uu,U}      & <m>U</m>      &
{\tt ca}        & <m>ca</m>     &
{\tt ya}        & <m>ya</m>\\   \hhline{||--||--||--||}
{\tt .r}        & <m>.r</m>     &
{\tt cha}       & <m>cha</m>    &
{\tt ra}        & <m>ra</m>\\   \hhline{||--||--||--||}
{\tt e}         & <m>e</m>      &
{\tt ja}        & <m>ja</m>     &
{\tt la}        & <m>la</m>\\   \hhline{||--||--||--||}
{\tt ee, E}     & <m>E</m>      &
{\tt jha}       & <m>jha</m>    &
{\tt va}        & <m>va</m>\\   \hhline{||--||--||--||}
{\tt ai}        & <m>ai</m>     &
{\tt n\~{}a}    & <m>n~a</m>    &
{\tt sha}       & <m>sha</m>\\  \hhline{||--||--||--||}
{\tt o}         & <m>o</m>      &
{\tt Ta}        & <m>Ta</m>     &
{\tt Sa}        & <m>Sa</m>\\   \hhline{||--||--||--||}
{\tt oo, O}     & <m>O</m>      &
{\tt Tha}       & <m>Tha</m>    &
{\tt sa}        & <m>sa</m>\\   \hhline{||--||--||--||}
{\tt au}        & <m>au</m>     &
{\tt Da}        & <m>Da</m>     &
{\tt ha}        & <m>ha</m>\\   \hhline{||--||--||--||}
{\tt M}         & <m>M</m>      &
{\tt Dha}       & <m>Dha</m>    &
{\tt La}        & <m>La</m>\\   \hhline{||--||--||--||}
{\tt H}         & <m>H</m>      &
{\tt Na}        & <m>Na</m>     &
{\tt zha}       & <m>zha</m>\\  \hhline{||--||--||--||}
                &               &
{\tt ta}        & <m>ta</m>     &
{\tt Ra}        & <m>Ra</m>\\   \hhline{||--||--||--||}
                &               &
{\tt tha}       & <m>tha</m>    &
{\tt +}         & <m>+</m>\\    \hhline{||--||--||--||}
                &               &
{\tt da}        & <m>da</m>     &
                &   \\          \hhline{||--||--||--||}
                &               &
{\tt dha}       & <m>dha</m>    &
                &       \\      \hhline{||--||--||--||}
                &               &
{\tt na}        & <m>na</m>     &
                &     \\        \hhline{|b:==:b:==:b:==:b|}
\end{tabular}
\end{center}
}

\end{table}

\begin{table}[!hbp]
\caption{Common ligatures (<m>kUTTakSaran"n"aL</m>) available
with the package}
\label{tbl:lig}
{\Large
\begin{center}
\begin{tabular}{||c|c||c|c||c|c||}
\hhline{|t:==:t:==:t:==:t|}
<m>kka</m>      & {\tt kka}     &
<m>pla</m>      & {\tt pla}     &
<m>hma</m>      & {\tt hma}\\   \hhline{||--||--||--||}
<m>kla</m>      & {\tt kla}     &
<m>bba</m>      & {\tt bba}     &
<m>hna</m>      & {\tt hna}\\   \hhline{||--||--||--||}
<m>kSa</m>      & {\tt kSa}     &
<m>bla</m>      & {\tt bla}     &
<m>ndha</m>     & {\tt ndha}\\  \hhline{||--||--||--||}
<m>gga</m>      & {\tt gga}     &
<m>npa</m>      & {\tt npa}     &
<m>tsa</m>      & {\tt tsa}\\   \hhline{||--||--||--||}
<m>gla</m>      & {\tt gla}     &
<m>mma</m>      & {\tt mma}     &
<m>jja</m>      & {\tt jja}\\   \hhline{||--||--||--||}
<m>n"ka</m>     & {\tt n"ka}    &
<m>mla</m>      & {\tt mla}     &
%<m>Nma</m>      & {\tt Nma}\\   \hhline{||--||--||--||}
--      	& --\\   	\hhline{||--||--||--||}
<m>n"n"a</m>    & {\tt n"n"a}   &
<m>yya</m>      & {\tt yya}     &
<m>stha</m>     & {\tt stha}\\  \hhline{||--||--||--||}
<m>cca</m>      & {\tt cca}     &
<m>RRa</m>      & {\tt RRa}     &
<m>ntha</m>     & {\tt ntha}\\  \hhline{||--||--||--||}
<m>n~ca</m>     & {\tt n\~{}ca} &
<m>lla</m>      & {\tt lla}     &
<m>jn~a</m>     & {\tt jn\~{}a}\\ \hhline{||--||--||--||}
<m>n~n~a</m>    & {\tt n\~{}n\~{}a} &
<m>LLa</m>      & {\tt LLa}     &
<m>tbha</m>     & {\tt tbha}\\  \hhline{||--||--||--||}
<m>TTa</m>      & {\tt TTa}     &
<m>vva</m>      & {\tt vva}     &
<m>gma</m>      & {\tt gma}\\   \hhline{||--||--||--||}
<m>NTa</m>      & {\tt NTa}     &
<m>shla</m>     & {\tt shla}    &
<m>gda</m>      & {\tt gda}\\   \hhline{||--||--||--||}
<m>NNa</m>      & {\tt NNa}     &
<m>shsha</m>    & {\tt shsha}   &
%<m>gddha</m>    & {\tt gddha}\\ \hhline{||--||--||--||}
--    		& --\\ 		\hhline{||--||--||--||}
<m>tta</m>      & {\tt tta}     &
<m>sla</m>      & {\tt sla}     &
<m>shca</m>     & {\tt shca}\\  \hhline{||--||--||--||}
<m>ttha</m>     & {\tt ttha}    &
<m>ssa</m>      & {\tt ssa}     &
<m>NDa</m>      & {\tt NDa}\\   \hhline{||--||--||--||}
<m>dda</m>      & {\tt dda}     &
<m>hla</m>      & {\tt hla}     &
<m>NDha</m>     & {\tt NDha}\\  \hhline{||--||--||--||}
<m>ddha</m>     & {\tt ddha}    &
<m>sRRa</m>     & {\tt sRRa}    &
<m>tma</m>      & {\tt tma}\\   \hhline{||--||--||--||}
<m>nta</m>      & {\tt nta}     &
<m>DDa</m>      & {\tt DDa}     &
<m>tna</m>      & {\tt tna}\\   \hhline{||--||--||--||}
<m>nda</m>      & {\tt nda}     &
%<m>kTa</m>      & {\tt kTa}     &
--      	& --	     	&
<m>kta</m>      & {\tt kta}\\   \hhline{||--||--||--||}
<m>nna</m>      & {\tt nna}     &
%<m>bdha</m>     & {\tt bdha}    &
--     		& --    	&
<m>gna</m>      & {\tt gna}\\   \hhline{||--||--||--||}
<m>nma</m>      & {\tt nma}     &
%<m>bda</m>      & {\tt bda}     &
--      	& --		&
<m>nRa</m>      & {\tt nRa}\\   \hhline{||--||--||--||}
<m>ppa</m>      & {\tt ppa}     &
<m>ccha</m>     & {\tt ccha}    &
<m>STa</m>      & {\tt STa}\\   \hhline{|b:==:b:==:b:==:b|}
\end{tabular}
\end{center}
}
\end{table}

\vfill\eject

\subsection{An Example of Malayalam Input}

Given below is a typical example of Malayalam input and its
compiled output\footnote{Excerpt from <m>``dakSiNEntyan saMgItaM''</m>
by A.K. Ravindranath}.

\subsubsection{The Roman Input}

\noindent {\tt <m{}>}
\begin{verbatim}
atiprAcInakAlaMmutalkkutanne shabdan"n"aLuTEyuM
bhAvahAvAdikaLuTEyuM sahAyattOTukUTi AshayaprakaTanaM
naTattAn manuSyaR paThiccukazhin~n~irunnu.
manuSyasharIrattinnuLLilttanneyuLLa h.rdayaM,
shvAsakOshaM ennI avayavan"n"aLuTe kramaMteRRAteyuLLa
calanaM avann tALabOdhattinnuLLa AdyapAThan"n"aL
nalkiyirikkaNaM. atupOlettanne prak.rtiyilninnuM
avan nityEna kELkkunna saMgItaM---atAyat pakSikaLuTe
kaLakUjanan"n"aL, kARRinRe maRmmarashabdaM, tEnIccakaLuTe
mULakkaM, ozhukunna veLLattinRe kaLakaLashabdaM,
muLan"kATukaLkkiTayilUTe kARRaTikkunpOzhuNTAkunna
cULaMviLi, m.rgan"n"aLuTe vividharItiyiluLLa shabdan"n"aL
tuTan"n"iyavayellAM---avanRe saMgItAsvAdanashESiyEyuM
kramaprav.rddhamAyi vaLaRttikkoNTuvannu. manuSyamastiSkkattinRe
vaLaRccayuTe tOtanusaricc madhurasvaran"n"aL kETTAsvadikkAnuLLa
ceviyuTe kazhiv dinaMprati vaLaRnnuvannu. jIvitOpAdhikaL
sanpAdikkAnuLLa kUTTAya pravaRttanan"n"aLkkiTayil
AshayavinimayattinRe AvashyakatayuM tanmUlaM bhASayuM
utbhaviccu vikasiccatupOlettanne jIvitaklEshan"n"aLkkiTayil
ninnu niR{}v.rtiyuM, kUTTAya addhvAnattinnuLLa pracOdanavuM
nETENTa AvashyattinnanusariccAN<<+ manuSyanRe
saMgItaparamAya kazhivukaLuM vaLaRnnu vikasiccat.
\end{verbatim}
\noindent {\tt </m{}>}

\subsubsection{The Malayalam Output}

<m>
atiprAcInakAlaMmutalkkutanne shabdan"n"aLuTEyuM
bhAvahAvAdikaLuTEyuM sahAyattOTukUTi AshayaprakaTanaM
naTattAn manuSyaR paThiccukazhin~n~irunnu.
manuSyasharIrattinnuLLilttanneyuLLa h.rdayaM,
shvAsakOshaM ennI avayavan"n"aLuTe kramaMteRRAteyuLLa
calanaM avann tALabOdhattinnuLLa AdyapAThan"n"aL
nalkiyirikkaNaM. atupOlettanne prak.rtiyilninnuM
avan nityEna kELkkunna saMgItaM---atAyat pakSikaLuTe
kaLakUjanan"n"aL, kARRinRe maRmmarashabdaM, tEnIccakaLuTe
mULakkaM, ozhukunna veLLattinRe kaLakaLashabdaM,
muLan"kATukaLkkiTayilUTe kARRaTikkunpOzhuNTAkunna
cULaMviLi, m.rgan"n"aLuTe vividharItiyiluLLa shabdan"n"aL
tuTan"n"iyavayellAM---avanRe saMgItAsvAdanashESiyEyuM
kramaprav.rddhamAyi vaLaRttikkoNTuvannu. manuSyamastiSkkattinRe
vaLaRccayuTe tOtanusaricc madhurasvaran"n"aL kETTAsvadikkAnuLLa
ceviyuTe kazhiv dinaMprati vaLaRnnuvannu. jIvitOpAdhikaL
sanpAdikkAnuLLa kUTTAya pravaRttanan"n"aLkkiTayil
AshayavinimayattinRe AvashyakatayuM tanmUlaM bhASayuM
utbhaviccu vikasiccatupOlettanne jIvitaklEshan"n"aLkkiTayil
ninnu niR{}v.rtiyuM, kUTTAya addhvAnattinnuLLa pracOdanavuM
nETENTa AvashyattinnanusariccAN<<+ manuSyanRe
saMgItaparamAya kazhivukaLuM vaLaRnnu vikasiccat.
</m>

\subsection{More Examples}

A number of examples illustrating various uses of the package
can be found in the `{\tt examples}' directory. Compiled PDF
output of the examples are in `{\tt examples/pdf}'.

Following is a list of the available example files:

\begin{itemize}
\item {\tt sanjayan.mm}: This file contains selected articles
from ``Sanjayan vol.1'' published by Mathrubhoomi.
\item {\tt mm-pstricks.mm}: Some experiments with Malayalam
and PSTricks
\item {\tt screen.mm}: Another short example taken from the
Mathrubhoomi weekend edition.
\end{itemize}


\subsection{Things to Remember When Typing}

\begin{itemize}
\item Commands which use \verb"{...}" (for example
\verb"\begin", \verb"\end", \verb"\ref", \verb"\label" etc.)
should always be outside {\tt <m{}>...</m{}>}
\item All English text and Mathematics must be outside
{\tt <m{}>...</m{}>}
\item Use of non-cillu letters at the end of words must
be explicitly entered. For example, if you type `{\tt AN}'
you will get `<m>AN</m>'. To get `<m>AN<<+</m>', you will
have to type `\verb"AN<<+"'. This is applicable for
other cillu letters also.
\item To get words like `<m>paR{}vataM</m>' you have to
type '\verb"paR{}vataM"'. If the \verb"{}" is omitted,
you will get `<m>paRvataM</m>'.
\item `{\tt Rya}' must be used to get `<m>Rya</m>'. (This
is a limitation in the pre-processor, which will be
rectified in the next release)
\end{itemize}

\subsection{Using the Pre-processor}
\label{sec:preprocess}

The file you typed must be pre-processed before feeding it
to \LaTeX. A bash script `{\tt mal}' is included in the
distribution to make things easier. Its syntax is:

\noindent \verb"mal <file.mm> <fontname>"

Available fontname options are: \textbf{rachana} for Rachana
old lipi, \textbf{rachana2} for Rachana new lipi (this is the
default), \textbf{keli} for the Keli font, \textbf{ildc} for the ILDC fonts, 
and \textbf{ism} for ISM fonts. If this option is omitted,
Rachana new lipi will be used.

For example, if you want to pre-process the mm file
for use with keli, the command would be:

\noindent \verb"mal file.mm keli"

For Rachana old lipi:

\noindent \verb"mal file.mm rachana"

Typing just {\tt mal} at the command prompt gives the syntax
and available options.

\subsection{Footnotes, Marginpars etc.}

The pre-processor changes the default text font
at the start of Malayalam text by a special macro `\verb"\mm"'.
But this won't affect things like footnotes, marginpars etc. 
Therefore you have to include `\verb"\mm"' inside these commands. For example,
<m>eksAnpiL\footnote{\mm udAharaNaM}</m>, the footnote in the
previous word was typeset with
{\tt <m{}>eksAnpiL\verb"\footnote{\mm udAharaNaM}"</m{}>}.
In short, if strange english characters appear anywhere
inside a group, add `\verb"\mm"' before it and the
problem should be gone.

\vfill\eject

\section{Miscellany}

\subsection{Obsolete Commands}

The original Malayalam-\TeX\ included a command ``\verb"\RMF"''
to typeset English matter. That means, you had to type
``\verb"\RMF"'' before every occurence of English text.
This is not needed anymore. All text outside {\tt <m{}>}
and {\tt </m{}>} will be in English. However, the command
is retained for backwards compatibility.

\subsection{Sending Bug Reports}


When reporting bugs, please include the following things
along with a clear description of the problem:

\begin{itemize}
\item The offending sections from the source file.
\item The log file generated by \LaTeX .
\item If the problem is with the pre-processor, include
{\tt mmerr.log} generated by the pre-processing script.
\end{itemize}

\subsection{Contact Information}


\noindent E-mail: \textbf{tex@alex.org.in}

\medskip

\vfill\eject

\appendix

\section{Fonts from ILDC CD-ROM}

\input ildc.tex

\section{Fonts from CDAC ISM}


\input ism.tex


\end{document}

