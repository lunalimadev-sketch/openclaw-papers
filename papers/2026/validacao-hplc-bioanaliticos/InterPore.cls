\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{InterPore}
              [2024/12/11 v1.5n
 Standard LaTeX document class]

\newcommand\@ptsize{}
\newif\iffinals\global\finalsfalse
\newif\iflettersize\global\lettersizetrue%
\newif\iflegalsize\global\legalsizefalse%
\newif\iftabloidsize\global\tabloidsizefalse%
\newif\ifcolorimage\global\colorimagefalse%
\newif\ifFoottext\global\Foottextfalse
\newif\ifpddata\global\pddatafalse
\newif\ifAbstract\global\Abstractfalse
\newif\ifnoauthor\global\noauthorfalse%
\newif\ifOAarticle\global\OAarticlefalse
\newif\ifmultiau\global\multiaufalse
\newif\ifaugroup\global\augroupfalse
%\newif\iftwocolcaption\global\twocolcaptionfalse
\newif\ifrightcaption\global\rightcaptionfalse
\newif\ifdbleed\global\dbleedfalse%
\newif\ifnarrowcol\global\narrowcolfalse
\newif\iftablefootnotenone\tablefootnotenonefalse
\newif\ifunnumtable\unnumtablefalse
\newif\ifsidewaystable\sidewaystablefalse%
\newif\iftwocoltable\global\twocoltablefalse
\newif\if@LDdoublespace\global\@LDdoublespacefalse
\newif\ifLineNum\global\LineNumfalse
\newif\ifmetarunon\global\metarunonfalse
\newif\ifswitchcols
\newif\iftrimmarks\global\trimmarksfalse
\newif\ifnoabstract\global\noabstractfalse%%
\newif\ifCCBY\global\CCBYfalse

%\@twosidetrue
\@mparswitchtrue

\newcount\tempcount
\newcount\affcount\affcount0%
\newcount\afftempcount
\newcount\tempaffcount
\newcount\instcount\instcount0%
\newcount\insttempcount
\newcount\tempinstcount
\newcount\deptcount\deptcount0%
\newcount\depttempcount
\newcount\tempdeptcount
\newcount\streetcount\streetcount0%
\newcount\streettempcount
\newcount\tempstreetcount
\newcount\citycount\citycount0%
\newcount\citytempcount
\newcount\tempcitycount
\newcount\statecount\statecount0%
\newcount\statetempcount
\newcount\tempstatecount
\newcount\postcodecount\postcodecount0%
\newcount\postcodetempcount
\newcount\temppostcodecount
\newcount\countrycount\countrycount0%
\newcount\countrytempcount
\newcount\tempcountrycount
\newcount\refvaluecount
\newcount\temprefvaluecount
\newcount\refvaluetempcount
\newcount\enunheadcount
\newcount\tempenunheadcount
\newcount\enuntempcount
\newcount\algheadcount
\newcount\tempalgheadcount
\newcount\algtempcount
\newcount\authorcount\authorcount0%
\newcount\xrefcount\xrefcount0%
\newcount\tempauthorcount\tempauthorcount0%
\newcount\tempxrefcount\tempxrefcount0%
\newcount\authorcommacount\authorcommacount0%
\newcount\xrefcommacount\xrefcommacount0%
\newcount\authortempcount\authortempcount0%
\newcount\xreftempcount\xreftempcount0%
\newcount\keywordcount
\newcount\keytempcount
\newcount\tempkeywordcount
\newcount\keyiiwordcount
\newcount\keyiitempcount
\newcount\tempkeyiiwordcount
\newcount\minute
\newcount\hour
\newcount\authorcount \authorcount0%
\newcount\xrefcount \xrefcount0%
\newcount\tempaffilcount
\newcount\authorcount \authorcount0%
\newcount\xrefcount \xrefcount0%
\newcount\tempauthorcount \tempauthorcount0%
\newcount\tempxrefcount \tempxrefcount0%
\newcount\affiliationcount \affiliationcount0%
\newcount\tempaffiliationcount \tempaffiliationcount0%
\newcount\tempcount
\newcount\affilcount
\newcount\affiltempcount
\newcount\tempaffilcount
\newcount\membercount
\newcount\membertempcount
\newcount\tempmembercount
\newcount\historycount
\newcount\historytempcount
\newcount\temphistorycount
\newcount\historycount
\newcount\historytempcount
\newcount\temphistorycount
\newcount\symtempcount
\newcount\tfootcount\global\tfootcount0
\newcount\temptfootcount%
\newcount\tbodycount\global\tbodycount0
\newcount\tgroupcount\tgroupcount0
\newcount\bcount
\newcount\ncount\ncount=1
\newcount\ccount\ccount=1
\newcount\acomcount
\newcount\tempacomcount
\newcount\acomtempcount
\newcount\TotalCharCount\TotalCharCount0
\newcount\auquerycount\auquerycount0%
\newcount\querycheckcount\querycheckcount0%
\newcount\tempauquerycount\tempauquerycount0%
\newcount\seccount%
\newcount\authcount%
\newcount\SCOUNT
\newcount\HCOUNT
\newcount\fpcount
\newcount\viper@penalty
\newcount\AQpage\AQpage0%
\newcount\AQlpage\AQlpage0%
\newcount\orcidaucnt
%%%%%%%%%%%%%%% B-BookTabs %%%%%%%%%%%%%%
\newcount\@cmidla
\newcount\@cmidlb
\newdimen\@aboverulesep
\newdimen\@belowrulesep
\newcount\@thisruleclass
\newcount\@lastruleclass
%%%%%%%%%%%%%%% E-BookTabs %%%%%%%%%%%%%%

\newcounter{theorem}
% \newcounter{afrfilnote}
% \newcounter{r@tfl@t}

\newdimen\trimwidthval
\newdimen\trimwidthbleedval
\newdimen\trimheightval
\newdimen\trimheightbleedval
\newdimen\normaltextheight%
\newdimen\blindfoliodrop%
%\newdimen\LabelSep \LabelSep4.7pt
\newdimen\leftmarginvii
\newdimen\leftmarginviii
\newdimen\leftmarginix
\newdimen\leftmarginx
\newdimen\toprulewidth
\newdimen\midrulewidth
\newdimen\botrulewidth
\newdimen\cmidrulewidth
\newdimen\belowbottomsep
\newdimen\abovetopsep
\newdimen\cmidrulesep
\newdimen\cmidrulekern
\newdimen\defaultaddspace
\newdimen\foot@parindent
\newdimen\bibindent
\newdimen\letterwidth%
\newdimen\letterheight%
\newdimen\legalwidth%
\newdimen\legalheight%
\newdimen\tabloidwidth%
\newdimen\tabloidheight%
\newdimen\mathindent%
\newdimen\aboverulesep
\newdimen\@aboverulesep
\newdimen\@belowrulesep
\newdimen\belowrulesep
\newdimen\@thisrulewidth
\newdimen\tablewidth
\newdimen\tabledim%
\newdimen\@partialpageht
\newdimen\storedboxheight

\newlength\LDcroppaperwidth\LDcroppaperwidth0pt
\newlength\LDcroppaperheight\LDcroppaperheight0pt
\newlength\LDpaperheight\LDpaperheight0pt
\newlength\LDpaperwidth\LDpaperwidth0pt

\newbox\abstractbox%
\newbox\figcapbox
\newbox\tempbox%
\newbox\temptbox
\newbox\ctabox
\newbox\metabox

\newskip\normalbaselineskip%
\newskip\colmargin
\newskip\texttypewidthsep
%\newskip\authorbelowskip
\newskip\topsepi
\newskip\topsepii
\newskip\topsepiii
\newskip\topsepiv
\newskip\topsepv
\newskip\topsepvi
\newskip\topsepvii
\newskip\topsepviii
\newskip\topsepix
\newskip\topsepx
\newskip\itemsepi
\newskip\itemsepii
\newskip\itemsepiii
\newskip\itemsepiv
\newskip\itemsepv
\newskip\itemsepvi
\newskip\itemsepvii
\newskip\itemsepviii
\newskip\itemsepix
\newskip\itemsepx
\newskip\fignumcapsep\fignumcapsep=2.5pt
\newskip\figcapdescsep\figcapdescsep=0pt
\newskip\tablenumcapsep
\newskip\tableleftskip%
\newskip\tablerightskip%
\newskip\tabnoteleftskip%
\newskip\tabnoterightskip%

\newlength\subtitleval
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\newlength\trimwidth%
\newlength\trimheight%
\newlength\typewidth%
\newlength\typeheight%
%
\newtoks\authorrunning
\newtoks\titlerunning
\newtoks\tocauthor
\newtoks\toctitle
\newtoks\CharCounttoks

\newwrite\@maintab%%
\newwrite\@mainndx
\newwrite\@querywrite%

\renewcommand\@ptsize{0}

\DeclareOption{dbleed}{\global\dbleedtrue}
\DeclareOption{finals}{\global\finalstrue\global\noquerytrue\global\proofstagefalse}
\DeclareOption{draft}{\setlength\overfullrule{0pt}}
\DeclareOption{onecolumn}{\@twocolumnfalse}
\DeclareOption{twocolumn}{\@twocolumntrue}
\DeclareOption{query}{\global\noqueryfalse}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\DeclareOption{OA}{\global\OAarticletrue}
\DeclareOption{linenum}{\global\LineNumtrue}
\DeclareOption{metarunon}{\global\metarunontrue}

\DeclareOption{doublespace}{\global\@LDdoublespacetrue}
\DeclareOption{suppleart}{\global\noabstracttrue}
\DeclareOption{CCBY}{\global\CCBYtrue}

\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{fleqn}{\input{fleqn.clo}}
\DeclareOption{print}{\global\trimmarkstrue}  % Enable print option to increase size

\ExecuteOptions{final}
\ProcessOptions

\RequirePackage{xifthen}
\RequirePackage{ifpdf}
%\RequirePackage{etex}
\RequirePackage{amsthm}
\RequirePackage{soul}
\RequirePackage{calc}

% \renewcommand*\rmdefault{ptm}
% \renewcommand*\sfdefault{phv}
% \renewcommand*\ttdefault{pcr}

%\usepackage{fontspec}

\iftrimmarks%
    \LDpaperheight=312truemm%%%Paper Height
    \LDpaperwidth=225truemm%%%Paper Width
\else
    \LDpaperheight=297truemm%%%Paper Height
    \LDpaperwidth=210truemm%%%Paper Width
\fi
\setlength{\paperheight}{\LDpaperheight}
\setlength{\paperwidth}{\LDpaperwidth}

%\RequirePackage[utf8]{inputenc}
%\RequirePackage[T1]{fontenc}
%\RequirePackage{mathptmx}

%\RequirePackage{geometry}  % To adjust paper size and margins
\RequirePackage{tikz}  % For trim marks

\RequirePackage{marvosym}
%\RequirePackage{stix2}
%\RequirePackage{mathtools}

\DeclareMathSizes{10}{10}{7}{6}

\RequirePackage{amsbsy}[1995/01/20]
%\RequirePackage{amssymb}  % commented while stix2 is already loaded
\RequirePackage{graphicx}  % For images and other graphic elements
\RequirePackage{ifthen}
\RequirePackage[table]{xcolor}

\RequirePackage{ifsym}

\RequirePackage{makeidx}
\RequirePackage{ifthen}
\RequirePackage{calc}
\RequirePackage{multicol}
\RequirePackage{algorithm}
\RequirePackage{stfloats}
\RequirePackage{wrapfig}
\RequirePackage[base]{babel}
\RequirePackage{lipsum}
\RequirePackage{cuted}
\RequirePackage{url}
\RequirePackage{etoolbox}
\RequirePackage{eurosym}
\RequirePackage{framed}
\RequirePackage{mdframed}

\RequirePackage{algorithm}
\RequirePackage[noend]{algpseudocode}

\RequirePackage{lastpage}  % Number of pages in the document

\def\etal{\itshape et~al.}

\if@LDdoublespace
\AtBeginDocument{\RequirePackage{setspace}
\doublespacing}
\else\fi

\ifLineNum
%\AtBeginDocument{%
% \if@twocolumn
% \RequirePackage[switch]{lineno}
% \else
\RequirePackage{lineno}
% \fi
\linenumbers%
%}
\else\fi

\RequirePackage[figuresright]{rotating}

\RequirePackage{colortbl}
\RequirePackage{dcolumn}
\newcolumntype{d}[1]{D{.}{.}{#1}}

\newcolumntype{R}{!{\color{iptblrulecolor}\vrule width .5pt}}

% \def\@listi{\leftmargin\leftmargini
%             \labelwidth\leftmargini
%             \advance\labelwidth-\labelsep
%             \parsep 0\p@%
%             \topsep \topsepi
%             \itemsep\itemsepi}%

% Set document color scheme
%\definecolor{color0}{RGB}{107, 110, 105} %42,43,41} % graylike
%\definecolor{color1}{RGB}{110, 150, 161} %43,59,63} % author email, doi  0.168, 0.231, 0.247
%\definecolor{color2}{RGB}{232, 227, 212} %91,89,83} % abs back
%\definecolor{color3}{RGB}{148, 94, 56} %58,37,22} % abs & subsec head
%\definecolor{color4}{RGB}{0, 0, 250} %0,0,98} % blue for hyperlinks
%\definecolor{color5}{RGB}{173, 166, 125} %0,0,98} % blue for hyperlinks
%\definecolor{color6}{RGB}{204, 204, 204} %80,80,80
%\definecolor{color7}{RGB}{217, 217, 217}  %85,85,85
\definecolor{shadecolor}{RGB}{232, 227, 212}
\definecolor{tabcapcolor}{cmyk}{.27, .68, .89, .15}
\definecolor{iplinkcolor}{cmyk}{.88,.63,0,0}
\definecolor{iptblrulecolor}{cmyk}{.24,.08,.02,0}
\definecolor{iptblthickrulecolor}{cmyk}{.37,.14,.02,0}
\definecolor{iptblcolhdcolor}{cmyk}{.11,.04,.01,0}

\renewcommand\@biblabel[1]{{#1.}} % Remove brackets from label
\newcommand{\eqref}[1]{\textup{{\normalfont Eq.~(\ref{#1}}\normalfont)}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Fonts %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Credit Line font
\def\psplainfont{\fontsize{8}{10}\fontfamily{\sfdefault}\selectfont\rightskip0pt plus1fill}
%% headings
\def\rhfont{\calibri\fontsize{10}{12}\selectfont\itshape}
\def\foliofont{\calibri\fontsize{10}{10}\selectfont}
\def\dropfoliofont{\foliofont}
\def\jvolfont{\fontfamily{\sfdefault}\fontsize{10}{10}\bfseries\selectfont}
%% part
\def\PNfont{\fontsize{50}{50}\bfseries\selectfont\leftskip0pt plus1fill\rightskip-10pc plus1fill}
\def\PTfont{\fontsize{32}{38}\bfseries\selectfont\leftskip0pt plus1fill\rightskip-10pc plus1fill}%\leftskip.5pc plus1fill\rightskip.5pc plus1fill}
\def\PSTfont{\fontsize{13}{15}\bfseries\selectfont}%\leftskip.5pc plus1fill\rightskip.5pc plus1fill}
%% chapter
\def\CNfont{\fontfamily{\sfdefault}\fontsize{65}{12}\selectfont\bfseries}
\def\CTfont{\fontfamily{\sfdefault}\fontsize{16}{18}\selectfont\bfseries}
\def\CSTfont{}
\def\abstractfont{\calibri\fontsize{11}{13.4}\selectfont}
\def\continuedfont{\fontfamily{\sfdefault}\fontsize{8}{8}\itshape\selectfont}
%% section
\def\sectionfont{\aptos\fontseries{b}\fontsize{14}{16}\selectfont\rightskip0pt plus1fill} %\normalspaceskip}
%\def\ACKsectionfont{\fontfamily{\sfdefault}\fontseries{b}\fontsize{8}{10}\selectfont\rightskip0pt plus1fill} %\normalspaceskip}
\def\subsectionfont{\aptos\fontseries{b}\fontsize{13}{15}\selectfont\rightskip0pt plus1fill} %\normalspaceskip}
\def\subsubsectionfont{\aptos\fontseries{b}\fontsize{12bp}{14}\selectfont\itshape\rightskip0pt plus1fill}
\def\paragraphfont{\aptos\fontsize{10}{12}\selectfont\itshape}%
\def\subparagraphfont{}%
\def\subsubparagraphfont{}%
%
\def\sectionnumfont{\fontsize{12}{14}\bfseries\selectfont}
\def\subsectionnumfont{\fontsize{11}{13}\bfseries\selectfont}
%
%% figure
\def\figcaptionfont{\aptos\fontsize{10}{12}\selectfont}
\def\figcaptiondescfont{\aptos\fontsize{10}{12}\bfseries\selectfont}
\def\figcaptionnumfont{\aptos\fontsize{10}{12}\selectfont\bfseries}
%% TABLE
\def\multilistfont{\fontsize{8.5}{10}\selectfont\leftskip\tableleftskip\rightskip\tablerightskip}% use plus 1fill if needed
\def\multilistheadfont{\fontsize{8.5}{10}\bfseries\selectfont\leftskip\tableleftskip\rightskip\tablerightskip}% use plus 1fill if needed
\def\tablefont{\aptos\fontsize{10}{12}\selectfont}%\leftskip\tableleftskip\rightskip\tablerightskip}% use plus 1fill if needed
\def\tablecaptionfont{\aptos\fontsize{10}{12}\selectfont}%\raggedright\normalspaceskip}%
\def\tablesidecaptionfont{\fontsize{10}{12}\selectfont}%Updated
\def\tablecaptionnumfont{\reset@font\aptos\fontsize{10}{12}\selectfont\bfseries}%
\def\TCHfont{\fontsize{10}{12}\selectfont}%
\def\TSCHfont{}%
\def\tabnotefont{\fontsize{8}{10}\selectfont}% use plus 1fill if needed
%
\def\listfont{}
\def\listdevicefont{}
\def\extractfont{\leftskip2pc\rightskip\leftskip}
%
\def\historyfont{\fontsize{8}{10}\selectfont\raggedright} %\normalspaceskip}
\def\titlefont{\aptos\fontsize{28}{34}\selectfont\raggedright} %\normalspaceskip} % \global\TitleMicroSymtrue
\def\authorfont{\calibri\fontsize{12bp}{15}\selectfont\raggedright} %\normalspaceskip}
\def\corresfont{\calibri\fontsize{9bp}{11}\selectfont\raggedright}
\def\subtitlefont{\fontsize{10}{12}\selectfont\itshape\centering}
\def\absfont{\calibri\fontsize{11.04bp}{13}\selectfont}
\def\keyfont{\calibri\fontsize{11.04bp}{13}\selectfont} %\leftskip24pt\rightskip24pt}
\def\keyheadfont{\calibri\bfseries\fontsize{12bp}{14}\selectfont}
\def\keyhead{KEYWORDS}
\def\acknowfont{\normalsize}
%\def\headifont{\fontsize{10}{12}\fontfamily{\sfdefault}\selectfont\leftskip0pt plus1fill\rightskip0pt plus1fill}
\def\refheadfont#1{#1}
%\def\affilfont{\fontencoding{T1}\fontfamily{\sfdefault}\fontseries{m}\fontsize{8}{10}\selectfont\raggedright\itshape}
%\def\Affilfont{\reset@font{}\fontencoding{T1}\fontfamily{\sfdefault}\fontseries{m}\fontsize{8}{10}\selectfont\raggedright\itshape}
\def\emailfont{\fontencoding{T1}\fontfamily{\sfdefault}\fontseries{m}\fontsize{8}{10}\selectfont\raggedright\itshape}
%


\renewcommand\normalsize{%
   \@setfontsize\normalsize{10}{14}%
   \abovedisplayskip8\p@ plus1pt minus1pt
   \abovedisplayshortskip\abovedisplayskip
   \belowdisplayshortskip\abovedisplayskip
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\def\biggg#1{{\hbox{$\left#1\vbox to20.5\p@{}\right.\n@space$}}}
\def\Biggg#1{{\hbox{$\left#1\vbox to23.5\p@{}\right.\n@space$}}}
\normalsize
%
\newcommand\small{%
   \@setfontsize\small{8}{10}%
   \abovedisplayskip 8\p@ \@plus3\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus2\p@
   \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus2\p@ \@minus2\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
   \setSmallDelims}
%
\def\setSmallDelims{%
\def\big##1{{\hbox{$\left##1\vbox to7.5\p@{}\right.\n@space$}}}%
\def\Big##1{{\hbox{$\left##1\vbox to10.5\p@{}\right.\n@space$}}}%
\def\bigg##1{{\hbox{$\left##1\vbox to13.5\p@{}\right.\n@space$}}}%
\def\Bigg##1{{\hbox{$\left##1\vbox to16.5\p@{}\right.\n@space$}}}%
\def\biggg##1{{\hbox{$\left##1\vbox to19.5\p@{}\right.\n@space$}}}%
\def\Biggg##1{{\hbox{$\left##1\vbox to22.5\p@{}\right.\n@space$}}}%
}
%
\newcommand\footnotesize{%
   \@setfontsize\footnotesize\@ixpt{11}%
   \abovedisplayskip 6\p@ \@plus2\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus\p@
   \belowdisplayshortskip 3\p@ \@plus\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 3\p@ \@plus\p@ \@minus\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
   \setFootnotesizeDelims}
%
\def\setFootnotesizeDelims{%
\def\big##1{{\hbox{$\left##1\vbox to6.5\p@{}\right.\n@space$}}}%
\def\Big##1{{\hbox{$\left##1\vbox to9.5\p@{}\right.\n@space$}}}%
\def\bigg##1{{\hbox{$\left##1\vbox to12.5\p@{}\right.\n@space$}}}%
\def\Bigg##1{{\hbox{$\left##1\vbox to15.5\p@{}\right.\n@space$}}}%
\def\biggg##1{{\hbox{$\left##1\vbox to18.5\p@{}\right.\n@space$}}}%
\def\Biggg##1{{\hbox{$\left##1\vbox to21.5\p@{}\right.\n@space$}}}%
}
%
\newcommand\scriptsize{\@setfontsize\scriptsize\@viipt\@viiipt}
\newcommand\tiny{\@setfontsize\tiny\@vpt\@vipt}
\newcommand\large{\@setfontsize\large\@xiipt{14}}
\newcommand\Large{\@setfontsize\Large\@xivpt{18}}
\newcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}}
\newcommand\huge{\@setfontsize\huge\@xxpt{25}}
\newcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}
%
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareOldFontCommand{\bi}{\bfseries\itshape}{\bfseries\itshape}


\RequirePackage{iftex}
\ifluatex
  \RequirePackage{fontspec}
  \RequirePackage{unicode-math}
  % Ensure an OpenType Math font is loaded first (avoids unicode-math warning)
  \setmathfont{latinmodern-math.otf}

  % --- Text font ---
  \IfFileExists{./Fonts/commercial/Gadugi/gadugi.ttf}{
    \setmainfont[
      Path = ./Fonts/commercial/Gadugi/,
      UprightFont = gadugi.ttf,
      BoldFont    = gadugib.ttf,
      ItalicFont  = gadugi.ttf,
      BoldItalicFont = gadugib.ttf,
      ItalicFeatures = {FakeSlant=0.20},       % fake italic
      BoldItalicFeatures = {FakeSlant=0.20}    % fake bold italic
    ]{gadugi}
  }{
    % Fallback: Noto Sans (ensure files exist in Fonts/NotoSans)
    \setmainfont[
      Path = ./Fonts/NotoSans/,
      UprightFont = NotoSans-Regular.ttf,
      BoldFont    = NotoSans-Bold.ttf,
      ItalicFont  = NotoSans-Italic.ttf,
      BoldItalicFont = NotoSans-BoldItalic.ttf
    ]{Noto Sans}
  }

  % --- Math font ---
  \IfFileExists{./Fonts/commercial/Cambria/cambria.ttc}{
    \setmathfont[
      Path = ./Fonts/commercial/Cambria/,
      FontIndex = 1
    ]{cambria.ttc}
  }{
    % Fallback: STIX Two Math (ensure file exists in Fonts/STIXTwoMath)
    \setmathfont[
      Path = ./Fonts/STIXTwoMath/
    ]{STIXTwoMath-Regular.ttf}
  }

  \IfFileExists{./Fonts/commercial/Aptos/aptos.ttf}{
    \newfontfamily\aptos[
      Path = ./Fonts/commercial/Aptos/,
      UprightFont     = aptos.ttf,
      BoldFont        = aptos-bold.ttf,
      ItalicFont      = aptos-italic.ttf,
      BoldItalicFont  = aptos-bold-italic.ttf
    ]{Aptos}
  }{
    % Fallback: Roboto (ensure files exist in Fonts/Roboto)
    \newfontfamily\aptos[
      Path = ./Fonts/Roboto/,
      UprightFont     = Roboto-Regular.ttf,
      BoldFont        = Roboto-Bold.ttf,
      ItalicFont      = Roboto-Italic.ttf,
      BoldItalicFont  = Roboto-BoldItalic.ttf
    ]{Roboto}
  }

%\newfontfamily\calibri{Calibri}
  \IfFileExists{./Fonts/commercial/Calibri/calibri.ttf}{
    \newfontfamily\calibri[
      Path = ./Fonts/commercial/Calibri/,
      UprightFont     = calibri.ttf,
      BoldFont        = calibrib.ttf,
      ItalicFont      = calibrii.ttf,
      BoldItalicFont  = calibriz.ttf
    ]{calibri}
  }{
    % Fallback: Carlito (ensure files exist in Fonts/Carlito)
    \newfontfamily\calibri[
      Path = ./Fonts/Carlito/,
      UprightFont     = Carlito-Regular.ttf,
      BoldFont        = Carlito-Bold.ttf,
      ItalicFont      = Carlito-Italic.ttf,
      BoldItalicFont  = Carlito-BoldItalic.ttf
    ]{Carlito}
  }
\else
  \errmessage{This class requires LuaLaTeX.}
\fi


\newcommand{\fakeit}[1]{{\addfontfeatures{FakeSlant=0.20}#1}}

% --- Default settings for the paper size ---

%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%
\colmargin=0pc
\texttypewidthsep=0pc
%
%\setlength\trimwidth{612bp}%
%\setlength\trimheight{792bp}%
%
\setlength\textheight{702pt}%
%\addtolength\textheight{-2pt}%
%
%\setlength\normaltextheight{\textheight}%
\setlength\textwidth{456pt} %{43.15pc}%
%\setlength\columnsep{18pt}
%
%\setlength\typeheight{702pt}%
%\setlength\typewidth{\textwidth}%

\setlength\topmargin{37.5pt}%
%\setlength\oddsidemargin{48pt}%
%\setlength\evensidemargin{48pt}%
%
\setlength\headheight{13\p@}%
\setlength\headsep   {18pt}% \typeheight - \textheight - \headheight
\setlength\topskip   {9\p@}
%
\setlength\footskip{34pt}
\setlength\maxdepth{61\baselineskip}
%
\blindfoliodrop\trimheight
\advance\blindfoliodrop-\typeheight
\advance\blindfoliodrop-\topmargin
\advance\blindfoliodrop-\footskip
\advance\blindfoliodrop18pt
%
\setlength\parindent{\z@}
%
\setlength\marginparwidth {.75in}
\setlength\marginparsep{6\p@}
\setlength\marginparpush{5\p@}
%
\setlength\footnotesep{\z@}
\setlength{\skip\footins}{17\p@ \@plus 8\p@ \@minus 8\p@}% \@plus 8\p@ \@minus 8\p@}% change + based on FN font height
\skip\@mpfootins = \skip\footins
%
\setlength\floatsep    {12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\textfloatsep{6\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\intextsep   {6\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\dblfloatsep    {8\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\dbltextfloatsep{18\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\@fptop{0\p@}
\setlength\@fpsep{8\p@ \@plus 1fil}
\setlength\@fpbot{0\p@ \@plus 1fil}
\setlength\@dblfptop{0\p@}
\setlength\@dblfpsep{8\p@ \@plus 1fil}
\setlength\@dblfpbot{0\p@ \@plus 1fil}
%
\setlength\partopsep{0pt}
\setlength\lineskip{1\p@}% check if it can be flexible
\setlength\normallineskip{1\p@}%
\renewcommand\baselinestretch{}
\setlength\parskip{8\p@}  %\@plus 2\p@
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
%
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
%
\trimwidthval\the\trimwidth
\trimheightval\the\trimheight

\trimwidthbleedval\trimwidthval
\advance\trimwidthbleedval.25in
\trimheightbleedval\trimheightval
\advance\trimheightbleedval.25in

\def\thepaperwidth{\the\trimwidthval}
\def\thepaperheight{\the\trimheightval}

\def\thebleedpaperwidth{\the\trimwidthbleedval}
\def\thebleedpaperheight{\the\trimheightbleedval}

%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% End Parameters %%%%%%%%%%%%%%%%%%%%%%%%%
%

\def\journalname{InterPore}
\def\footjournalname{InterPore Journal}
\def\doiname{doi:}
\def\CTAhd{How to Cite:}
\def\citethisarticle#1{\gdef\@citethisarticle{\corresfont{\bfseries \CTAhd}\par #1}}
\citethisarticle{}
%\def\citethisauthor#1{\gdef\@citethisauthor{#1}}\citethisauthor{}
%\def\citethistitle#1{\gdef\@citethistitle{#1}}\citethistitle{\@title}
\def\fpage#1{\gdef\@fpage{#1}}\fpage{\thepage}
\def\vol#1{\gdef\@vol{#1}}\vol{00}
\def\iss#1{\gdef\@iss{#1}}\iss{00}
\def\doi#1{\gdef\@doi{#1}}\doi{}
%\def\email#1{\gdef\@email{#1}}\email{}
\def\email#1{%
% \ifonline%
    \href{mailto:#1}{#1}%
% \else%
%     #1%
% \fi%
}
\def\cpyear#1{\gdef\@cpyear{#1}}\cpyear{\the\year}
\def\artcategory#1{\gdef\@artcategory{\aptos\fontsize{11}{13}\selectfont#1}}\artcategory{Research Article}
\def\rhauthor#1{\gdef\@rhauthor{#1}}\rhauthor{Insert Running Author}

%\def\Mycitethisauthor#1{\gdef\@Mycitethisauthor{#1}}\Mycitethisauthor{}

\def\ps@myplain{%
\let\@mkboth\@gobbletwo%
    \def\@oddfoot{%\raisebox{-7.5pt}
    {\hbox to \textwidth{\calibri\fontsize{10}{12}\selectfont{\footjournalname, Vol. \@vol, Issue {\@iss}, {\@cpyear}}\hfill{\url@samestyle\url{https://doi.org/\@doi}}%
}}}
    \def\@evenfoot{%\raisebox{-7.5pt}
    {\hbox to \textwidth{\calibri\fontsize{10}{12}\selectfont{\footjournalname, Vol. \@vol, Issue {\@iss}, {\@cpyear}}\hfill{\url@samestyle\url{https://doi.org/\@doi}}%
}}}%
% \def\@evenfoot{\raisebox{-11.5pt}{\hbox to \textwidth{\fontfamily{\sfdefault}\fontseries{m}\fontsize{8}{8}\selectfont{\journalname, Vol. \@vol, Issue {\@iss} {\@cpyear}}{{\hspace*{10pt}{{\textbullet}}\hspace*{10pt}}}\MakeUppercase{\doiname}~\@doi%
% \hfill{\itshape\journalname}\hspace*{15pt}{\bfseries\thepage}}}}%
% \def\@oddfoot{\raisebox{-11.5pt}{\hbox to \textwidth{\fontfamily{\sfdefault}\fontseries{m}\fontsize{8}{8}\selectfont{\journalname, Vol. \@vol, Issue {\@iss} {\@cpyear}}{{\hspace*{10pt}{{\textbullet}}\hspace*{10pt}}}\MakeUppercase{\doiname}~\@doi%
% \hfill{\itshape\journalname}\hspace*{15pt}{\bfseries\thepage}}}}%
\def\@evenhead{%
\hbox to \textwidth{\ifpdf\hbox{\vbox{\includegraphics{interPore_logo_cmyk.pdf}}}\else\hbox{\vbox{\includegraphics{interPore_logo_cmyk.eps}}}\fi\hfill{\hbox{\vbox{\@artcategory}}}}
}
\def\@oddhead{%
{{\hspace*{4pt}\ifpdf{\includegraphics{interPore_logo_cmyk.pdf}}\else{\includegraphics{interPore_logo_cmyk.eps}}\fi}\rlap{{\hfill{{\begin{minipage}[b][0pt]{318pt}\vbox to 26pt{\begin{flushright}{\@artcategory}\end{flushright}\vfill}\end{minipage}}}}}}
}
            }

\def\orcidbeforespace{\kern2pt}
\def\ausepspace{\hskip3pt}

\def\aubetweenand{\unskip\unskip\unskip{\fontsize{8.5}{14}\selectfont{and}}}
\def\aulastand{\unskip\unskip\unskip{\fontsize{8.5}{14}\selectfont{and}}}%
\def\comma{,}
\def\affcomma{,}
\def\affsemicolon{}

\def\orc#1{\raisebox{-2pt}{\href{https://orcid/org/#1}{\kern1pt\ifpdf\includegraphics[scale=1.5]{orcid_logo_Web}\else\includegraphics[scale=1.5]{orcid_logo_Web.eps}\fi}}}

\def\author[#1]#2{%
   \gdef\au@data{yes}%
   \expandafter\protected@xdef\csname author\the\authorcount\endcsname{#2\raisebox{3pt}{\fontsize{8}{8}\selectfont#1}}%
   \global\advance\authorcount1}

\def\andlastauname{%\ifx\@auandbreak\undefined\else\@auandbreak\fi
\gdef\AUxrefpresence{no}\unskip\unskip%\aulastand{}
\ausepspace\null\csname author\the\tempcount\endcsname\ifx\orcidau\YES\orcidbeforespace\null\orcid{}\fi\unskip}

\gdef\@author{%
\multiaufalse
\global\augrouptrue
   \global\tempauthorcount\authorcount%
   \global\advance\tempauthorcount-1%
   \global\authorcommacount\tempauthorcount%
   \global\advance\authorcommacount-1%
   \global\authortempcount0%
   \global\authortempcount0%
   \ifnum\authorcount=1%
   \gdef\AUxrefpresence{no}
      \ignorespaces\csname author0\endcsname\orcidbeforespace\orcid{}%
   \else%
      \ifnum\authorcount=2%
      \gdef\AUxrefpresence{no}
         \ignorespaces\csname author0\endcsname\orcidbeforespace\orcid{}\gdef\@givenname{}\ausepspace\null\aubetweenand\ausepspace\null\gdef\AUxrefpresence{no}\gdef\@ausuffix{}\csname author1\endcsname\orcidbeforespace\orcid{}%
      \else%
               \@whilenum\tempcount<\tempauthorcount%
   			       \do{%\vskip8pt
                     \gdef\AUxrefpresence{no}%
                     \ifx\orcidau\YES\gdef\orcidau{no}\else\fi%
                     \gdef\@ausuffix{}%
                     \multiautrue%
              		 {\csname author\the\tempcount\endcsname}\unskip\unskip\ifx\orcidau\YES\orcidbeforespace\orcid{}\comma\ausepspace\null\else\comma\ausepspace\null\fi\unskip\unskip%\space
                     \global\advance\tempcount1\gdef\@givenname{}}%
        \ifx\orcidau\YES\gdef\orcidau{no}\else\fi%
        \multiaufalse
        \gdef\@ausuffix{}%
		\ausepspace\andlastauname%
               \fi%
\global\augroupfalse%
           \fi}

\def\printauthor{\@author}



\gdef\keyword@data{no}%

\def\keyword#1{\unskip%
    \gdef\keyword@data{yes}%
    \expandafter\protected@xdef\csname keyword\the\keywordcount\endcsname{#1}%
    \global\advance\keywordcount1%
}%

\def\printkeyword{\keyfont{\keyheadfont{\ifx\keyhead\undefined\else{\MakeUppercase{\keyhead}}\par\fi}}\nopagebreak%
     \global\tempkeywordcount\keywordcount%
     \global\keytempcount0%
     \global\advance\tempkeywordcount-1
     \@whilenum\keytempcount<\tempkeywordcount%
     \do{\csname keyword\the\keytempcount\endcsname\comma\ %
                \global\advance\keytempcount1}%
                \csname keyword\the\keytempcount\endcsname\@@par}%

\def\keyiiword#1{\unskip%
    \gdef\keyiiword@data{yes}%
    \expandafter\protected@xdef\csname keyiiword\the\keyiiwordcount\endcsname{#1}%
    \global\advance\keyiiwordcount1%
}%

\def\printkeyiiword{\keyfont{\keyheadfont{\ifx\keyiihead\undefined\else\keyiihead:\ \fi}}%
     \global\tempkeyiiwordcount\keyiiwordcount%
     \global\keyiitempcount0%
     \global\advance\tempkeyiiwordcount-1
     \@whilenum\keyiitempcount<\tempkeyiiwordcount%
     \do{\csname keyiiword\the\keyiitempcount\endcsname\comma\ %
                \global\advance\keyiitempcount1}%
                \csname keyiiword\the\keyiitempcount\endcsname\@@par}%


\def\auorcprefix{https://orcid.org/}

\newcommand{\auorc}[3][\auorcprefix]{\ %
\ifpdf%
    \includegraphics[height=7pt]{orcid_logo_Web.pdf}% [scale=.82]
\else%
    \includegraphics[height=7pt]{orcid_logo_Web.eps}% [scale=.82]
\fi%
~\href{https://orcid.org/#2}{#1#2} \MakeUppercase{#3}%
}

\def\corau#1{\gdef\@corau{\corresfont{\bfseries Correspondence to:} #1\par}}\corau{}

\def\affil[#1]#2{%#3
    \expandafter\protected@xdef\csname affil\the\affilcount\endcsname{\raisebox{3pt}{\fontsize{6.5}{6.5}\selectfont#1}#2{\affsemicolon}}% .\kern3pt#2\ifx#3\@empty\else#3\fi
    \global\advance\affilcount1}%

\def\printaffil{\par
{\fontsize{10}{12.3}\itshape\selectfont
\parindent0pt
\parskip0pt
\global\tempaffilcount\affilcount
\global\affiltempcount0
\global\advance\tempaffilcount-1
\ifnum\affilcount=1
  \hangindent1.5em
  \hangafter1
  \ignorespaces\csname affil0\endcsname\par
\else
  \@whilenum\affiltempcount<\tempaffilcount
  \do{%
    \hangindent1.5em
    \hangafter1
    \raggedright\csname affil\the\affiltempcount\endcsname\par
    \global\advance\affiltempcount1
  }%
  \hangindent1.5em
  \hangafter1
  \csname affil\the\affiltempcount\endcsname\par
\fi
}%

%\ifx\@corau\@empty\else\par\vskip6pt\@corau\fi%
% \ifOAarticle\vskip6pt{\fontfamily{\sfdefault}\fontsize{7}{10}\selectfont\raggedright\par{\copyright} \the\year. The Authors. This is an open access article distributed under the terms of the CC-BY
% license, which permits unrestricted use, distribution, and reproduction in any medium, provided the
% original work is properly cited.}\else\fi\vspace*{0pt}%\par
%                }%
                }%

\RequirePackage{xstring}

\def\balanceandcontinue{%
   \par
   \ifdim\pagegoal=\maxdimen
   \else
      \global\let\@outputpage\store@outputpage
      \ifdim\@colht=\pagegoal
         \global\storedboxheight\pagetotal
      \else
         \global\storedboxheight\@colht
         \global\advance\storedboxheight-\pagegoal
         \global\advance\storedboxheight\pagetotal
%         \global\advance\storedboxheight12pt
      \fi
   \fi
   \onecolumn
   \global\switchcolstrue}

\def\TwoColumn{\@ifnextchar[{\@TwoColumn}{\@TwoColumn[]}}
\def\@TwoColumn[#1]{%
   \balanceandcontinue
   \let\clearpage\relax
   \def\@tempa{#1}%
   \ifx\@tempa\@empty
      \twocolumn
   \else
      #1\global\@partialpageht\pagetotal\twocolumn
   \fi
   \let\clearpage\save@clearpage}

\def\maketitle{\par%
\begingroup%
\parindent\z@%
\renewcommand\thefootnote{\@fnsymbol\c@footnote}%
\def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
%    \long\def\@makefntext##1{##1}%
\long\def\@makefntext##1{\noindent
    {%
        \@textsuperscript{\normalfont\@thefnmark}}##1}%
\if@twocolumn
    \ifnum \col@number=\@ne
        \@maketitle
    \else
        \ifmetarunon%
            \TwoColumn[\@maketitle]%
        \else%
            \twocolumn[\@maketitle]%
        \fi%
    \fi
\else
    \newpage
    \global\@topnum\z@   % Prevents figures from going at top of page.
    \@maketitle
\fi
%    {\twocolumn[\@maketitle]}%
\renewcommand\thefootnote{}%
\endgroup%
\setcounter{footnote}{0}%
\advance\keywordcount0%
\advance\authorcount0
}

\RequirePackage[breakable]{tcolorbox}

\newtcolorbox{absbox}{breakable = true,
notitle after break,
%pad before break=0mm,
%topsep at break=-15mm,
width=\textwidth,left=1pt,right=1pt,bottom=1pt,top=1pt,colback=iptblcolhdcolor,boxrule=0pt,
arc=0pt,outer arc=0pt,
pad at break=1mm}

\def\supplementhead{Supplemental Material}

%\authorbelowskip=0pt

\def\mktitlespaceadjust#1{\gdef\@mktitlespaceadjust{#1pt}}\mktitlespaceadjust{0}

\RequirePackage{marginnote}

\def\@maketitle{\par\thispagestyle{myplain}%%
{\parindent\z@%
\vspace*{34.23pt}
\vbox{%{\textcolor{color1}{\vrule height 3pt depth0pt width 249.5pt}}\\[10pt]%\rlap
{{\titlefont%
\MakeUppercase{\@title}\vphantom{y}\@@par}}\par}%
\vspace*{5pt}
{\ifnoauthor\else\authorfont%\textcolor{color2b}
{\@author}\vphantom{y}\fi}% \global\TitleMicroSymfalse
\vspace{6pt}
\ifx\printaffil\@empty%
\else%
    \printaffil%
\fi%
\ifnoabstract\else\printabstract\fi%
}
%\addvspace{24pt}%
\@afterindentfalse%
\setcounter{section}{0}
\vspace*{\@mktitlespaceadjust}%
}


\newtcolorbox{myabstractbox}{
    colback=iptblcolhdcolor,     % background
    colframe=iptblcolhdcolor,    % frame color
    boxrule=0pt,         % no frame (set to >0 for borders)
    sharp corners,
    breakable,           % <-- allows page breaks
    %enhanced,
    left=4pt,
    right=4pt,
    top=0pt,
    bottom=2pt
}

% Internal storage for abstract text
\newcommand{\abstracttext}{}

\def\CCbystatement#1{\gdef\@CCbystatement{#1}}%
\ifCCBY
\CCbystatement{Creative Commons Attribution 4.0 International license (CC BY 4.0 Deed) \url{https://creativecommons.org/licenses/by/4.0/}}
\else
\CCbystatement{Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License (CC~BY-NC-ND 4.0) (\url{https://creativecommons.org/licenses/by-nc-nd/4.0/}).}
\fi

\def\OAstatement{\leftskip107.5pt This is an open access article published by InterPore under the terms of the
\@CCbystatement\par}
%Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License (CC BY-NC-ND 4.0) (\url{https://creativecommons.org/licenses/by-nc-nd/4.0/}).\par
%Creative Commons Attribution 4.0 International license (CC BY 4.0 Deed) \url{https://creativecommons.org/licenses/by/4.0/}

% User command: \abstract{<text>}
\newcommand{\abstract}[1]{%
  \gdef\abstracttext{\par%
  \leftskip107.5pt%
  {%\null\vspace*{-.25\baselineskip}\par
  {\calibri\bfseries\fontsize{12bp}{14}\selectfont\MakeUppercase{\abstractname}}\par}
  \absfont#1\par}%
}

\def\CPstatement#1{\gdef\@CPstatement{#1}}\CPstatement{© \the\year\ The Authors}

% Command to typeset the abstract (called inside maketitle or wherever needed)
\newcommand{\printabstract}{\ifLineNum\nolinenumbers\else\fi%
\begin{myabstractbox}%
\reversemarginpar
\marginnote{\leftskip64pt{\noindent% \begin{tabular*}{\textwidth}{@{}p{95.5pt}@{\hspace*{12pt}}p{340.5pt}@{}}
    \vbox{\hsize95.5pt
        \ifx\@corau\@empty\else{%\calibri\fontsize{9}{11}\selectfont\raggedright
        \corresfont\@corau}\par\fi%
        \ifx\@citethisarticle\@empty\else%
        \vskip\baselineskip{%\calibri\fontsize{9}{11}\selectfont\raggedright
        \corresfont%
        %{\bfseries How to Cite:}
        \@citethisarticle%
        %     {{\@citethisauthor} (2022). {\@citethistitle}, {{\itshape\journalname}} {\bfseries\@vol}({\bfseries\@iss}), \@fpage--\@abspage@last, %\@lpage,
        %     {\doiname}~\href{https://doi.org/\@doi}{\@doi}.}
        \par%
        %{\calibri\bfseries\fontsize{9}{11}\selectfont{\supplementhead}}
        }\fi%
        \ifx\@recdate\@empty\else\vskip\baselineskip\@recdate\par\fi%
        \ifx\@accdate\@empty\else\@accdate\par\fi%
        \ifx\@pubdate\@empty\else\@pubdate\par\fi%
        \ifx\@vordate\@empty\else\@vordate\par\fi%
    }%
    \par}%\vspace*{-22pt}
}[-12pt]
\normalmarginpar
%
\ifLineNum\internallinenumbers\else\fi\abstracttext\vskip6pt\par%
\ifnum\the\keywordcount>0\printkeyword\else\fi%
\ifOAarticle%
    \vskip10pt{\calibri\fontsize{9}{11}\selectfont\raggedright
%     \par{\copyright} \the\year. The Authors. This is an open access article distributed under the terms of the CC-BY
%     license, which permits unrestricted use, distribution, and reproduction in any medium, provided the
%     original work is properly cited.%
%CC-BY_logo.pdf
\vbox{\ifCCBY\includegraphics{CC-BY_logo.pdf}\else\includegraphics{CC-BY-NC-ND_logo.pdf}\fi\vspace*{-3pt}\par \@CPstatement}\vspace*{-32pt}\par\OAstatement%
    }%
\else%
\fi%\par
\end{myabstractbox}
}

\def\absrunon#1{\gdef\@absrunon{\abstractfont#1}}

\setcounter{secnumdepth}{3}
\newcounter {part}
\newcounter {section}
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand\thepart          {\Roman{part}}
\renewcommand\thesection       {\arabic{section}}
\renewcommand\thesubsection    {\thesection.\arabic{subsection}}
\renewcommand\thesubsubsection {\thesubsection .\arabic{subsubsection}}
\renewcommand\theparagraph     {\thesubsubsection.\arabic{paragraph}}
\renewcommand\thesubparagraph  {\theparagraph.\arabic{subparagraph}}
%
\def\@seccntformat#1{\csname the#1\endcsname.\hspace*{4pt}}
%
\newcommand\part{%
   \if@noskipsec \leavevmode \fi
   \par
   \addvspace{4ex}%
   \@afterindentfalse
   \secdef\@part\@spart}

\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >\m@ne
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
    \else
      \addcontentsline{toc}{part}{#1}%
    \fi
    {\parindent \z@ \raggedright
     \interlinepenalty \@M
     \normalfont
     \ifnum \c@secnumdepth >\m@ne
       \Large\bfseries \partname\nobreakspace\thepart
       \par\nobreak
     \fi
     \huge \bfseries #2%
     \markboth{}{}\par}%
    \nobreak
    \vskip 3ex
    \@afterheading}
\def\@spart#1{%
    {\parindent \z@ \raggedright
     \interlinepenalty \@M
     \normalfont
     \huge \bfseries #1\par}%
     \nobreak
     \vskip 3ex
     \@afterheading}

\newcommand\section{\@startsection {section}{1}{\z@}{8pt \@plus 1pt \@minus 1pt}{3pt}{\sectionfont}}%
%\newcommand\ACKsection{\@startsection {section}{1}{\z@}{12pt \@plus 1pt \@minus 1pt}{0.001pt}{\sectionfont}}%
\newcommand\subsection{\@startsection{subsection}{2}{\z@}{8pt \@plus 1pt \@minus 1pt}{0.001pt}{\subsectionfont}}%
\newcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}{-8pt \@plus -1pt \@minus -.1pt}{0.001pt}{\subsubsectionfont}}%
\newcommand\paragraph{\@startsection{paragraph}{4}{18\p@}{-2pt \@plus -2pt \@minus -.2pt}{-1.5pt}{\paragraphfont}}%
\newcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}{-8pt \@plus -2pt \@minus -.2pt}{-1em}{\subparagraphfont}}%
\newcommand\subsubparagraph{\@startsection{subsubparagraph}{6}{\parindent}{-12pt \@plus -2pt \@minus -.2pt}{-1em}{\subsubparagraphfont}}%

\newif\ifsubsec\global\subsectrue
\newif\ifsec\global\sectrue

\def\@sect#1#2#3#4#5#6[#7]#8{\ifnum #2>\c@secnumdepth
     \let\@svsec\@empty
     \else
     \refstepcounter{#1}%
%     \refstepcounter{HL#1}%
     \let\@@protect\protect
     \def\protect{\noexpand\protect\noexpand}%
%    \global\ackhdtrue
     \edef\@svsec{%
        \@seccntformat{#1}%
     }%
     \let\protect\@@protect\fi
     \ifnum#2=2\global\subsectrue\else\fi
     \@tempskipa #5\relax
      \ifdim \@tempskipa>\z@
        \begingroup #6\relax
        \ifnum#2=1
              %\@hangfrom
	      {\noindent\hskip #3\relax{\@svsec}}% {\csname #1numfont\endcsname\@svsec}
                    {\interlinepenalty \@M \MakeUppercase{#8}\vspace*{-\parskip}\par}%
        \else
        \ifnum#2=2%\centering%
              %\@hangfrom
	      {\noindent\hskip #3\relax{\@svsec}}% {\csname #1numfont\endcsname\@svsec}
                    {\interlinepenalty \@M {#8}\vspace*{-\parskip}\par}%
%         \else
%         \ifnum#2=3
%               %\@hangfrom
%           {\hskip #3\relax{\itshape\@svsec}}% {\csname #1numfont\endcsname\@svsec}
%                     {\interlinepenalty \@M {\itshape #8}\par}%
%         \else
%         \ifnum#2=4
%               %\@hangfrom
%           {\hskip #3\relax{\@svsec}}% {\csname #1numfont\endcsname\@svsec}
%                     {\interlinepenalty \@M {\fontencoding{T1}\itshape #8}\par}%
        \else
              %\@hangfrom
          {\noindent\hskip #3\relax\@svsec}% {\csname #1numfont\endcsname\@svsec}
                    {\interlinepenalty \@M #8\vspace*{-\parskip}\par}%
        \fi\fi%\fi\fi
        \endgroup%
               \csname #1mark\endcsname{#7}\addcontentsline{toc}{#1}{\ifnum #2>\c@secnumdepth \else\protect\numberline{\csname the#1\endcsname}\fi#7}
        \else
        \def\@svsechd{#6\hskip #3\relax\@svsec #8\csname #1mark\endcsname{#7}}
        \fi
               \@xsect{#5}}
%
\def\@ssect#1#2#3#4#5{%
  \@tempskipa #3\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #4{%
        \@hangfrom{\hskip #1}%
          \interlinepenalty \@M {#5}\vspace*{-\parskip}\@@par}%
    \endgroup
  \else
    \def\@svsechd{#4{\hskip #1\relax #5}}%
  \fi
  \@xsect{#3}}
%
\def\@startsection#1#2#3#4#5#6{%
  \if@noskipsec \leavevmode \fi
  \par
  \@tempskipa #4\relax
  \@afterindentfalse
  \ifdim \@tempskipa <\z@
    \@tempskipa -\@tempskipa%
  \fi
  \if@nobreak
     \ifnum#2=2
     %\vskip1.5pt
     \fi
     \ifnum#2=3
     \fi
    \everypar{}%
  \else
    \addpenalty\@secpenalty\addvspace\@tempskipa
  \fi
  \@ifstar
    {\@ssect{#3}{#4}{#5}{#6}}%
    {\@dblarg{\@sect{#1}{#2}{#3}{#4}{#5}{#6}}}}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Lists %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%
\topsepi6\p@ \@plus2\p@% \@minus.5\p@
\topsepii2pt% \@plus1\p@
\topsepiii2pt% \@plus1\p@
\topsepiv2pt% \@plus1\p@
\topsepv2pt% \@plus1\p@
\topsepvi2pt% \@plus1\p@
\itemsepi0pt
\itemsepii0pt
\itemsepiii0pt
\itemsepiv0pt
\itemsepv0pt
\itemsepvi0pt
%
%
\def\@listI{\leftmargin\leftmargini
%            \labelwidth\leftmargini
%            \advance\labelwidth-\labelsep
            \parsep 0\p@%
            \topsep \topsepi
            \itemsep\itemsepi}%
\let\@listi\@listI
\@listi
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep\topsepii
              \parsep 0pt
              \itemsep\itemsepii}
\def\@listiii {\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep\topsepiii
              \parsep 0pt
              \itemsep\itemsepiii}
\def\@listiv {\leftmargin\leftmarginiv
              \labelwidth\leftmarginiv
              \advance\labelwidth-\labelsep}
\def\@listv  {\leftmargin\leftmarginv
              \labelwidth\leftmarginv
              \advance\labelwidth-\labelsep}
\def\@listvi {\leftmargin\leftmarginvi
              \labelwidth\leftmarginvi
              \advance\labelwidth-\labelsep}
%
\if@twocolumn
  \setlength\leftmargini  {1.25em}
\else
  \setlength\leftmargini  {1.75em}
\fi
\leftmargin  \leftmargini
\setlength\leftmarginii  {1.25em}
\setlength\leftmarginiii {1.12em}
\setlength\leftmarginiv  {0.95em}
\if@twocolumn
  \setlength\leftmarginv  {.5em}
  \setlength\leftmarginvi {.5em}
\else
  \setlength\leftmarginv  {1em}
  \setlength\leftmarginvi {1em}
\fi
\setlength  \labelsep  {.5em}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi  {\labelitemfont \textbullet}
\newcommand\labelitemii {\labelitemfont \textbullet}
\newcommand\labelitemiii{\labelitemfont \textasteriskcentered}
\newcommand\labelitemiv {\labelitemfont \textperiodcentered}
\newcommand\labelitemfont{\normalfont}
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand*\descriptionlabel[1]{\hspace\labelsep
                                \normalfont\bfseries #1}
%
\newenvironment{verse}
               {\let\\\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \item\relax}
               {\endlist}
\newenvironment{quotation}
               {\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item\relax}
               {\endlist}
\newenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%
                \item\relax}
               {\endlist}

\newcommand\appendix{\par
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \gdef\thesection{\@Alph\c@section}}

%\setlength\arraycolsep{5\p@}
%\setlength\tabcolsep{6\p@}
%\setlength\arrayrulewidth{.4\p@}
%\setlength\doublerulesep{2\p@}
%\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
%\setlength\fboxsep{3\p@}
\setlength\fboxrule{.25bp}
%\renewcommand \theequation {\@arabic\c@equation}
\newcounter{figure}


\setcounter{topnumber}{5}
\renewcommand\topfraction{.9}
\setcounter{bottomnumber}{5}
\renewcommand\bottomfraction{.9}
\setcounter{totalnumber}{5}
\renewcommand\textfraction{.09}
\renewcommand\floatpagefraction{.901}
\setcounter{dbltopnumber}{2}
\renewcommand\dbltopfraction{.9}
\renewcommand\dblfloatpagefraction{.901}
%
\setlength\abovecaptionskip{5\p@}
\setlength\belowcaptionskip{2.4\p@}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Figures %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\def\figcaptiondesc#1{\gdef\@figcaptiondesc{#1}}
\figcaptiondesc{}
%
\renewcommand \thefigure {\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}

\def\fnum@figure{\figurename\nobreakspace\thefigure}
\newenvironment{figure}
               {\begingroup\setlength{\fboxrule}{.25\p@}\@float{figure}}
               {\end@float\endgroup}
\newenvironment{figure*}
               {\@dblfloat{figure}} % \global\twocolcaptiontrue
               {\end@dblfloat\global\rightcaptionfalse} % \global\twocolcaptionfalse


\def\@makefigurecaption#1#2{%\figcaptionfont%
%\iftwocolcaption%
%    \ifrightcaption\else\vspace*{-1.18\baselineskip}\fi%
%    \begin{multicols}{2}
%    \ifrightcaption\null\columnbreak\else\fi%
%    \noindent{\figcaptionfont{\figcaptionnumfont\textcolor{color3}{#1.}\hskip\fignumcapsep}{\figcaptiondescfont\@figcaptiondesc}\hskip\figcapdescsep#2\par}%
%    \end{multicols}
%\else
    \noindent{\figcaptionfont{\figcaptionnumfont{#1:}\hskip\fignumcapsep}{\figcaptiondescfont\@figcaptiondesc}\hskip\figcapdescsep#2\par}%
    %{\vrule height 0.25pt width \hsize depth0pt}
%\fi%
}

\RequirePackage{subcaption}

\def\FigName{figure}
%
\long\def\@makecaption#1#2{%
    \ifx\FigName\@captype
      \vskip\abovecaptionskip
      \@makefigurecaption{#1}{#2}%
      \vskip\belowcaptionskip
      %\vskip0pt
    \else
      \@maketablecaption{#1}{#2}%
      \vskip\belowcaptionskip
    \fi}
%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% B-Booktabs Materials %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\@lastruleclass=0
\def\futurenonspacelet#1{\def\@BTcs{#1}%
   \afterassignment\@BTfnslone\let\nexttoken= }
\def\@BTfnslone{\expandafter\futurelet\@BTcs\@BTfnsltwo}
\def\@BTfnsltwo{\expandafter\ifx\@BTcs\@sptoken\let\next=\@BTfnslthree
   \else\let\next=\nexttoken\fi \next}
\def\@BTfnslthree{\afterassignment\@BTfnslone\let\next= }
\def\topline{\noalign{\ifnum0=`}\fi
  \@aboverulesep=\aboverulesep
  \global\@belowrulesep=\belowrulesep %global cos for use in the next noalign
  \global\@thisruleclass=\@ne
  \@ifnextchar[{\@BTrule}{\@BTrule[\toprulewidth]}}
\def\midline{\noalign{\ifnum0=`}\fi
  \@aboverulesep=\aboverulesep
  \global\@belowrulesep=\belowrulesep
  \global\@thisruleclass=\@ne
  \@ifnextchar[{\@BTrule}{\color{white}\@BTrule[\midrulewidth]}}
\def\botline{\noalign{\ifnum0=`}\fi
  \@aboverulesep=\aboverulesep
  \global\@belowrulesep=\belowrulesep
  \global\@thisruleclass=\@ne
  \@ifnextchar[{\@BTrule}{\@BTrule[\botrulewidth]}}
\def\specialrule#1#2#3{\noalign{\ifnum0=`}\fi
  \@aboverulesep=#2\global\@belowrulesep=#3\global\@thisruleclass=\tw@
  \@BTrule[#1]}
\def\addlinespace{\noalign{\ifnum0=`}\fi
  \@ifnextchar[{\@addspace}{\@addspace[\defaultaddspace]}}
\def\@addspace[#1]{\global\@belowrulesep=#1\global\@thisruleclass=\tw@
  \futurelet\@tempa\@BTendrule}
\def\@BTrule[#1]{%
  \global\@thisrulewidth=#1\relax
  \ifnum\@thisruleclass=\tw@\vskip\@aboverulesep\else
  \ifnum\@lastruleclass=\z@\vskip\@aboverulesep\else
  \ifnum\@lastruleclass=\@ne\vskip\doublerulesep\fi\fi\fi
  \ifx\longtable\undefined
     \let\@BTswitch\@BTnormal
  \else\ifx\hline\LT@hline
     \let\@BTswitch\@BLTrule
  \else
     \let\@BTswitch\@BTnormal
  \fi\fi
  \@BTswitch}
\AtBeginDocument{%
   \providecommand*\CT@arc@{}}%% colortbl support
\def\@BTnormal{{%
    {\CT@arc@\hrule\@height\@thisrulewidth}%
    \futurenonspacelet\@tempa\@BTendrule}}
\def\@BLTrule{\@ifnextchar({\@@BLTrule}{\@@BLTrule()}}
\def\@@BLTrule(#1){\@setrulekerning{#1}%
\global\@cmidlb\LT@cols
\ifnum0=`{\fi}%
\@cmidruleb
\noalign{\ifnum0=`}\fi
\futurenonspacelet\@tempa\@BTendrule}
\def\@BTendrule{%
\ifx\@tempa\toprule\global\@lastruleclass=\@thisruleclass
\else
    \ifx\@tempa\midrule\global\@lastruleclass=\@thisruleclass
    \else
        \ifx\@tempa\bottomrule\global\@lastruleclass=\@thisruleclass
        \else
            \ifx\@tempa\cmidrule\global\@lastruleclass=\@thisruleclass
            \else
                \ifx\@tempa\specialrule\global\@lastruleclass=\@thisruleclass
                \else
                    \ifx\@tempa\addlinespace\global\@lastruleclass=\@thisruleclass
                    \else
                        \global\@lastruleclass=\z@
                    \fi
                \fi
            \fi
        \fi
    \fi
\fi
  \ifnum\@lastruleclass=\@ne\relax\else\vskip\@belowrulesep\fi
  \ifnum0=`{\fi}
  }
\def\@setrulekerning#1{%
   \global\let\cmrkern@l\z@
   \global\let\cmrkern@r\z@
   \@tfor\@tempa :=#1\do
  {\def\@tempb{r}%
   \ifx\@tempa\@tempb
      \global\let\cmrkern@r\cmidrulekern
      \def\cmrsideswitch{\cmrkern@r}%
   \else
      \def\@tempb{l}%
      \ifx\@tempa\@tempb
         \global\let\cmrkern@l\cmidrulekern
         \def\cmrsideswitch{\cmrkern@l}%
      \else
         \global\expandafter\let\cmrsideswitch\@tempa
      \fi
   \fi}}
\def\cmidrule{\noalign{\ifnum0=`}\fi
    \@ifnextchar[{\@cmidrule}{\@cmidrule[\cmidrulewidth]}}
\def\@cmidrule[#1]{\@ifnextchar({\@@cmidrule[#1]}{\@@cmidrule[#1]()}}
\def\@@cmidrule[#1](#2)#3{\@@@cmidrule[#3]{#1}{#2}}
\def\@@@cmidrule[#1-#2]#3#4{\global\@cmidla#1\relax
    \global\advance\@cmidla\m@ne
    \ifnum\@cmidla>0\global\let\@gtempa\@cmidrulea\else
    \global\let\@gtempa\@cmidruleb\fi
    \global\@cmidlb#2\relax
    \global\advance\@cmidlb-\@cmidla
    \global\@thisrulewidth=#3
    \@setrulekerning{#4}
    \ifnum\@lastruleclass=\z@\vskip \aboverulesep\fi
    \ifnum0=`{\fi}\@gtempa
    \noalign{\ifnum0=`}\fi\futurenonspacelet\@tempa\@xcmidrule}
\def\@xcmidrule{%
   \ifx\@tempa\cmidrule
       \vskip-\@thisrulewidth
       \global\@lastruleclass=\@ne
   \else \ifx\@tempa\morecmidrules
       \vskip \cmidrulesep
       \global\@lastruleclass=\@ne\else
       \vskip \belowrulesep
       \global\@lastruleclass=\z@
   \fi\fi
   \ifnum0=`{\fi}}
\def\@cmidrulea{%
   \multispan\@cmidla&\multispan\@cmidlb
   \unskip\hskip\cmrkern@l%
  {\CT@arc@\leaders\hrule \@height\@thisrulewidth\hfill}%
   \hskip\cmrkern@r\cr}%
\def\@cmidruleb{%
    \multispan\@cmidlb
    \unskip\hskip \cmrkern@l%
   {\CT@arc@\leaders\hrule \@height\@thisrulewidth\hfill}%
    \hskip\cmrkern@r\cr}%
\def\morecmidrules{\noalign{\relax}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% E-Booktabs Materials %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcounter{table}
\renewcommand\thetable{\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename\nobreakspace\thetable: } % \enspace
%
\def\tablefootnote#1{
        \global\advance\tfootcount1\expandafter\gdef\csname tablefootnote\the\tfootcount\endcsname{#1}}
%
\newenvironment{table}
               {\let\footnote\tablefootnote\@float{table}}
               {%
                  \ifx\@tablebelowspace\@empty%
                  \else%
                    \vspace*{\@tablebelowspace}\tablebelowspace{}%
                  \fi%
		\end@float}
%
\def\tablebelowspace#1{\gdef\@tablebelowspace{#1}}\tablebelowspace{}
%
\newenvironment{table*}
               {\let\footnote\tablefootnote\@dblfloat{table}}
               {%
                  \ifx\@tablebelowspace\@empty%
                  \else%
                    \vspace*{\@tablebelowspace}\tablebelowspace{}%
                  \fi%
               \end@dblfloat}
%
% \def\@cline#1-#2\@nil{%
%   \omit
%   \@multicnt#1%
%   \advance\@multispan\m@ne
%   \ifnum\@multicnt=\@ne\@firstofone{&\omit}\fi
%   \@multicnt#2%
%   \advance\@multicnt-#1%
%   \advance\@multispan\@ne
%   \leaders\hrule\@height\arrayrulewidth\hfill
%   \cr
%   \noalign{\vskip-\arrayrulewidth}}
%
%\def\@testtabularcr{}
%%%%%%%%%%%%%%% B-Table Rules %%%%%%%%%%%%%%
%
\toprulewidth=0.47pt%.42pt
\midrulewidth=0.47pt%.42pt
\botrulewidth=\toprulewidth
\cmidrulewidth=0.25pt%.42pt
\belowbottomsep=0pt
\abovetopsep=0pt
\cmidrulesep=\doublerulesep
\cmidrulekern=.5em
\defaultaddspace=.5em
%
%%%%%%%%%%%%%%% E-Table Rules %%%%%%%%%%%%%%

\def\Hline{%
  \noalign{\ifnum0=`}\fi\hrule \@height .5pt \futurelet%\@height \arrayrulewidth
   \@tempa\@xhline}
%
\def\Mline{%
  \noalign{\ifnum0=`}\fi\hrule \@height 0pt \futurelet%\@height \arrayrulewidth
   \@tempa\@xhline}

% \newenvironment{tabcaptionshaded*}{%
% \definecolor{shadecolor}{cmyk}{0.08, 0.07, 0.16, 0}%
% \rule{\hsize}{.5pt}\\[-28pt]%
%   \def\FrameCommand{\fboxsep6pt\colorbox{shadecolor}}%
%   \MakeFramed {\advance\hsize-\width \FrameRestore}\vspace*{1pt}%
% }%
%  {\endMakeFramed\ \\[-32.8pt]\textcolor{tabcapcolor}{\rule{\hsize}{3pt}}\vspace*{5.5pt}}

\def\@maketablecaption#1#2{%
\hsize\tablewidth%
                        {\tablecaptionfont\ifunnumtable\else\noindent{\tablecaptionnumfont\fnum@table}\fi %\hskip\tablenumcapsep%
                        {{#2}}\vphantom{y}\par}%\global\unnumtablefalse%
}

%\def\trowsep{\\[5.5pt]}

\newcommand{\TCH}{%
  \rowcolor{iptblthickrulecolor}
}

\def\tbl#1#2{%
\global\setbox\tempbox\hbox{\tablefont#2}%
%\global\setbox\temptbox\hbox{\tablecaptionfont#1}%
\global\setbox\temptbox\hbox{{\tablecaptionfont\ifunnumtable\else\noindent{\tablecaptionnumfont\fnum@table\hskip\tablenumcapsep}\fi#1\vphantom{y}\par}}%
\global\tablewidth\wd\tempbox%
\advance\tablewidth-7pt%
\def\tabstartrule{\vspace*{3.5pt}{{\vrule width\tablewidth height3pt depth0pt}}}
%%%
\ifsidewaystable%
    \tabledim\textheight%
    \advance\tabledim-\wd\tempbox%
    \ifdim\tabledim>0pt%
        \divide\tabledim2%
    \else%
        \global\tabledim0pt%
    \fi%
    \global\tableleftskip0pt%\tabledim% plus1fill%
    \global\tablerightskip0pt%\tabledim plus1fill%
    \global\tabnoteleftskip\tabledim%
    \global\tabnoterightskip\tabledim%
    %\caption{#1}%
    \ifdim\wd\temptbox > \hsize
        \caption{#1}%
    \else
        \caption{#1}
    \fi
    {\centerline{\box\tempbox}}%
\else%
    \ifdim\wd\tempbox > \textwidth%
    %     \ifodd\c@page%
    %       \tabledim\typewidth%
    %       \advance\tabledim-\wd\tempbox%
    %       \ifdim\tabledim>0pt%
    %                 \divide\tabledim2%
    %       \else%
    %                 \global\tabledim0pt%
    %       \fi%
    %       \tableleftskip\tabledim% plus1fill%
    %       \tablerightskip-9pc%
    %       \advance\tablerightskip\tabledim plus1fill%
    %       \tabnoteleftskip\tabledim%
    %       \tabnoterightskip-9pc%
    %       \advance\tabnoterightskip\tabledim%
    %       \caption{#1}%
    %       {\centerline{\box\tempbox}}%
    %     \else%
        \tabledim\typewidth%
        \advance\tabledim-\wd\tempbox%
        \ifdim\tabledim>0pt%
            \divide\tabledim2%
        \else%
            \global\tabledim0pt%
        \fi%
        \tableleftskip-9pc% plus1fill%
        \advance\tableleftskip\tabledim%
        \tablerightskip\tabledim%
        \tabnoteleftskip-9pc%
        \advance\tabnoteleftskip\tabledim%
        \tabnoterightskip\tabledim%
        \caption{#1}%
        {\centerline{\box\tempbox}}%
    %     \fi%
    \else%
        \tabledim\hsize%
        \advance\tabledim-\wd\tempbox%
        \ifdim\tabledim>0pt%
            \divide\tabledim2%
        \else%
            \global\tabledim0pt%
        \fi%
        \global\tableleftskip0pt%\tabledim% plus1fill%
        \global\tablerightskip0pt%\tabledim%
        \global\tabnoteleftskip\tabledim%
        %\advance\tabnoteleftskip by -1pt%
        \global\tabnoterightskip\tabledim%
%         \ifdim\wd\temptbox > \hsize
%             \centering%
%             \noindent\tabstartrule\par%
%             \hbox to \iftwocoltable\textwidth\else\columnwidth\fi{\hfill\vbox{\caption{#1}}\hfill}%
%         \else
            \centerline{\hbox to \tablewidth{%\arrayrulecolor{iptblrulecolor}\setlength{\fboxrule}{0.5pt}
            \hspace*{-\fboxsep}\hspace*{-\fboxrule}%
            %\fbox{\vbox{\caption{#1}}}
            \colorfbox[\vbox{\caption{#1}}]{iptblrulecolor}{0.5pt}
            %\colorfbox[red]{\vbox{\caption{#1}}}{.5pt}%
            }\vspace*{-1pt}}%
            %\noindent{\figcaptionfont{\figcaptionnumfont{\figurename\nobreakspace\thefigure:}\hskip\fignumcapsep}{\figcaptiondescfont\@figcaptiondesc}\hskip\figcapdescsep\par}
%         \fi%
        {\par\centerline{\box\tempbox}}%
        %     \fi%
        %     \fi%
    \fi%
\fi%
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Math %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\setlength\arraycolsep{1.5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.5\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.5\p@}
\newcommand{\rowrule}{\arrayrulecolor{iptblrulecolor}\hline} % \arrayrulecolor{black}
%
\newcommand{\colorfbox}[3][black]{%
  {\color{#2}\setlength{\fboxrule}{#3}\fbox{\color{black}#1}}%
}
%
%\setlength\columnsep{18\p@}
%\setlength\columnseprule{0\p@}
%
%\renewcommand\theequation{\arabic{equation}}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Footnote %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand\footnoterule{%
  \kern-3\p@
  {\hrule\@width144pt height0.75pt}
  %\vspace*{1.5pt}
  \kern7.9\p@}

%\@addtoreset{footnote}{chapter}

\pagenumbering{arabic}
\RequirePackage{hyperref}%
\hypersetup{
draft=false,
pdfpagemode=UseNone,
colorlinks=true,
allcolors=iplinkcolor,
%linkcolor=iplinkcolor,
pdfborderstyle={/S/U/W 0},
pdfstartview={FitH 800},
breaklinks=true}

\RequirePackage{bookmark}

\usepackage{cleveref}
% \RequirePackage[nameinlink]{cleveref}
%
% \crefname{table}{\textbf{Table}}{\textbf{Tables}}
% \Crefname{table}{\textbf{Table}}{\textbf{Tables}}

% \crefname{figure}{\textbf{Figure}}{\textbf{Figures}}
% \Crefname{figure}{\textbf{Figure}}{\textbf{Figures}}
%
% % TABLE REFS → Bold
% \crefname{table}{\textbf{Table}}{\textbf{Tables}}
% \Crefname{table}{\textbf{Table}}{\textbf{Tables}}
%
% % EQUATION REFS → Bold parentheses only
% \crefformat{equation}{\textbf{(#2#1#3)}}
% \Crefformat{equation}{\textbf{(#2#1#3)}}
%
% % SECTIONS → Normal (do NOT bold)
% \crefname{section}{Section}{Sections}
% \Crefname{section}{Section}{Sections}
%

\foot@parindent0pt

\renewcommand\@makefntext[1]{%
%    \parindent 1em%
    \noindent
    \hb@xt@.4em{\hss\@makefnmark}#1}


\def\@makefnmark{%
\ifpddata%
\setcounter{footnote}{0}%
\else%
\hbox{\@textsuperscript{\normalfont\@thefnmark}}%
\fi}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  End Footnote %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Page styles  %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   \def\oddfolio{{\thepage}}
%   \def\evenfolio{{\thepage}}
%
%\def\versorh#1{\gdef\@versorh{#1}}\versorh{}
%\def\rectorh#1{\gdef\@rectorh{#1}}\rectorh{}
%
\def\ps@headings{%
    \def\@oddfoot{%\raisebox{-7.5pt}
    {\hbox to \textwidth{\calibri\fontsize{10}{12}\selectfont{\footjournalname, Vol. \@vol, Issue {\@iss}, {\@cpyear}}\hfill{\url@samestyle\url{https://doi.org/\@doi}}%
}}}
    \def\@evenfoot{%\raisebox{-7.5pt}
    {\hbox to \textwidth{\calibri\fontsize{10}{12}\selectfont{\footjournalname, Vol. \@vol, Issue {\@iss}, {\@cpyear}}\hfill{\url@samestyle\url{https://doi.org/\@doi}}%
}}}%
      %\def\@evenhead{\foliofont{Page \textbf{\thepage} of \textbf{\pageref*{LastPage}}}\hfil{\rhfont\leftmark}}%
      \def\@oddhead{\rhfont{\@rhauthor}\hfil{{\reset@font\foliofont{Page \textbf{\thepage} of \textbf{\pageref*{LastPage}}}}}}%
    \let\@mkboth\markboth
    }%

\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}
\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg{2.55em}
\newcommand\@dotsep{4.5}
\setcounter{tocdepth}{3}
\newcommand\tableofcontents{%
    \section*{\contentsname
        \@mkboth{%
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}%
    \@starttoc{toc}%
    }
\newcommand*\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty\@secpenalty
    \addvspace{2.25em \@plus\p@}%
    \setlength\@tempdima{3em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \large \bfseries #1\hfil
       \hb@xt@\@pnumwidth{\hss #2%
                          \kern-\p@\kern\p@}}\par
       \nobreak
    \endgroup
  \fi}
\newcommand*\l@section[2]{%
  \ifnum \c@tocdepth >\z@
    \addpenalty\@secpenalty
    \addvspace{1.0em \@plus\p@}%
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil
      \nobreak\hb@xt@\@pnumwidth{\hss #2%
                                 \kern-\p@\kern\p@}\par
    \endgroup
  \fi}
\newcommand*\l@subsection{\@dottedtocline{2}{1.5em}{2.3em}}
\newcommand*\l@subsubsection{\@dottedtocline{3}{3.8em}{3.2em}}
\newcommand*\l@paragraph{\@dottedtocline{4}{7.0em}{4.1em}}
\newcommand*\l@subparagraph{\@dottedtocline{5}{10em}{5em}}
\newcommand\listoffigures{%
    \section*{\listfigurename}%
      \@mkboth{\MakeUppercase\listfigurename}%
              {\MakeUppercase\listfigurename}%
    \@starttoc{lof}%
    }
\newcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand\listoftables{%
    \section*{\listtablename}%
      \@mkboth{%
          \MakeUppercase\listtablename}%
         {\MakeUppercase\listtablename}%
    \@starttoc{lot}%
    }
\let\l@table\l@figure


\newenvironment{datres}[1][\dataresname]%
{\bgroup\section*{#1}\acknowfont}%
{\par\egroup}

\newenvironment{ack}[1][\ackheadname]%
{\bgroup\section*{#1}\acknowfont}%
{\par\egroup}

\newenvironment{bmsec}[1][]%
{\bgroup\section*{#1}\acknowfont}%
{\par\egroup}


\def\refurl#1{\begingroup\url@rmstyle\url{#1}\endgroup}

%\newdimen\bibindent
\setlength\bibindent{1.5em}
\newenvironment{thebibliography}[1]
     {\section*{\refname}%
      \@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}

\RequirePackage[numbers]{natbib}

\def\bibfont{\fontsize{9}{12}\selectfont\raggedright}
%\setlength{\bibhang}{12pt}
\def\refdoi#1{\href{http://dx.doi.org/#1}{#1}}

\@ifundefined{chapter}{%
  \renewcommand\bibsection{%
   \section*{\MakeUppercase\refname\@mkboth{\MakeUppercase{\refname}}{\MakeUppercase{\refname}}}%
  }%
}{%
  \@ifxundefined\NAT@sectionbib{%
    \renewcommand\bibsection{%
      \chapter*{\bibname\@mkboth{\MakeUppercase{\bibname}}{\MakeUppercase{\bibname}}}%
    }%
  }{%
    \renewcommand\bibsection{%
      \section*{\MakeUppercase\bibname\ifx\@mkboth\@gobbletwo\else\markright{\MakeUppercase{\bibname}}\fi}%
    }%
  }%
}%


\renewenvironment{thebibliography}[1]{%
 \bibsection
 \parindent\z@
 \bibpreamble
 \bibfont
 \list{\@biblabel{\the\c@NAT@ctr}}{\@bibsetup{#1}\global\c@NAT@ctr\z@}%
 \ifNAT@openbib
   \renewcommand\newblock{\par}%
 \else
   \renewcommand\newblock{\hskip .11em \@plus.33em \@minus.07em}%
 \fi
 \sloppy\clubpenalty10000\widowpenalty10000
 \sfcode`\.\@m
 \let\NAT@bibitem@first@sw\@firstoftwo
    \let\citeN\cite \let\shortcite\cite
    \let\citeasnoun\cite
}{%
 \bibitem@fin
 \bibpostamble
 \def\@noitemerr{%
  \PackageWarning{natbib}{Empty `thebibliography' environment}%
 }%
 \endlist
 \bibcleanup
}%

\newcommand\newblock{}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  End Bibliography Section %%%%%%%%%%%%%%%%

%\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty
\newenvironment{theindex}
               {\if@twocolumn
                  \@restonecolfalse
                \else
                  \@restonecoltrue
                \fi
                \twocolumn[\section*{\indexname}]%
                \@mkboth{\MakeUppercase\indexname}%
                        {\MakeUppercase\indexname}%
                \thispagestyle{plain}\parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \columnseprule \z@
                \columnsep 35\p@
                \let\item\@idxitem}
               {\if@restonecol\onecolumn\else\clearpage\fi}
\newcommand\@idxitem{\par\hangindent 40\p@}
\newcommand\subitem{\@idxitem \hspace*{20\p@}}
\newcommand\subsubitem{\@idxitem \hspace*{30\p@}}
\newcommand\indexspace{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}

\newcommand\contentsname{Contents}
\newcommand\listfigurename{List of Figures}
\newcommand\listtablename{List of Tables}
\renewcommand\refname{References}
\newcommand\indexname{Index}
\newcommand\figurename{Figure}
\newcommand\tablename{Table}
\newcommand\partname{Part}
\newcommand\appendixname{Appendix}
\newcommand\abstractname{Abstract}
\newcommand\ackheadname{Acknowledgments}
\newcommand\dataresname{Data, Code \& Protocol Availability}

\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}

% %
\AtBeginDocument{%
\advance\voffset-71pt%
\advance\hoffset-1.5pt%
}


\hbadness=10000
\vbadness=10000
%\brokenpenalty=10000
\doublehyphendemerits 1000000
\finalhyphendemerits=1000000
\predisplaypenalty=0
\hyphenpenalty=50
\lefthyphenmin=3
\righthyphenmin=3
\uchyph=0
\clubpenalty10000
\widowpenalty10000
\tolerance=1
\emergencystretch=\maxdimen
\pagestyle{headings}%
\pagenumbering{arabic}      % Arabic page numbers
\nonfrenchspacing
\jot=2.5pt
\medmuskip=3.5mu
\thickmuskip=3.5mu
\thinmuskip=3.5mu
\sloppy%

%%%%%%%%%%%%%%%%%%%%%%%%% For table column alignments thorughout the journals %%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\def\toprule{\\[-6.9pt]\topline\\[-6.9pt]}
\def\colrule{\\[-9.5pt]\midline\\[-7.5pt]}
\def\botrule{\iftablefootnotenone\\[-15.6pt]\else\\[-9.5pt]\botline\\[-6pt]\fi}
%


\newcommand{\orcid}[1][]{%
    \ifx\@orcid\@undefined%
    \else
            \ifpdf%
                \href{\@orcid}{{\includegraphics[width=9.1pt]{orcid_logo_Web.pdf}}}%
            \else
                \href{\@orcid}{{\includegraphics[width=9.1pt]{orcid_logo_Web.eps}}}%
            \fi
    \fi%
}

%\newbox\recddatebox

\def\recdtxtname{RECEIVED:}
\def\accptxtname{ACCEPTED:}
\def\publtxtname{AVAILABLE ONLINE:}
\def\vortxtname{VERSION OF RECORD:}
%{\MakeUppercase{\recdtxtname} \@recdate}

\def\recdate#1{\gdef\@recdate{\corresfont{\bfseries\recdtxtname} {#1}}}\recdate{\the\day \the\month \the\year}
\def\accdate#1{\gdef\@accdate{\corresfont{\bfseries\accptxtname} {#1}}}\accdate{\the\day \the\month \the\year}
\def\pubdate#1{\gdef\@pubdate{\corresfont{\bfseries\publtxtname} {#1}}}\pubdate{\the\day \the\month \the\year}
\def\vordate#1{\gdef\@vordate{\corresfont{\bfseries\vortxtname} {#1}}}\vordate{\the\day \the\month \the\year}


%\def\enddata{%
%\setbox\recddatebox\hbox
%\noindent{\vrule width\hsize height 0.5pt depth0pt}\rlap{\hspace*{-\wd\recddatebox}\raisebox{-14pt}{\@recdate}}
%\label{ArticleLastPage}
%}

% \def\enumerate{%
%   \ifnum \@enumdepth >\thr@@\@toodeep\else
%     \advance\@enumdepth\@ne
%     \edef\@enumctr{enum\romannumeral\the\@enumdepth}%
%       \expandafter
%       \list
%         \csname label\@enumctr\endcsname
%         {\usecounter\@enumctr\def\makelabel##1{\hss\llap{##1}}}%
%   \fi}
% \let\endenumerate =\endlist
% \newcount\@itemdepth \@itemdepth = 0
% \def\itemize{%
%   \ifnum \@itemdepth >\thr@@\@toodeep\else
%     \advance\@itemdepth\@ne
%     \edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
%     \expandafter
%     \list
%       \csname\@itemitem\endcsname
%       {\def\makelabel##1{\hss\llap{##1}}}%
%       \leftskip-3pt%
%   \fi}
% \let\enditemize =\endlist

\usepackage{enumitem}
%\setlist{itemsep=6pt, topsep=6pt, itemindent=18pt, labelsep=6pt, leftmargin=36pt}


% Level 1: item text begins at 36pt
\setlist[1]{%
  leftmargin=36pt,
  labelindent=0pt,
  labelwidth=0pt,
  labelsep=6pt    % space between label and text
}

% Level 2: align bullet with level 1 text column
\setlist[2]{%
  leftmargin=*,   % text column at 36pt
  labelindent=0pt,
  labelwidth=0pt,    % bullet sits at the text start
  labelsep=6pt       % space between bullet and its text
}

\newcommand{\orcaulistitem}[2][]{%
    #2 & {\href{https://orcid/org/#1}{\kern1pt\ifpdf\includegraphics[height=1.2em]{orcid_logo_Web}\else\includegraphics[scale=1.5]{orcid_logo_Web.eps}\fi}}\enspace\url{https://orcid.org/#1} \\
}

% Original orcid list:
% \newenvironment{orcaulist}%
% {\bgroup\section*{ORCID IDs}
% \noindent\begin{tabular}{@{}l l@{}}} % \ifLineNum\internallinenumbers\else\fi
% {\end{tabular}\par\egroup}

% By using the following the orcid items get page breaked if necessary:
\usepackage{longtable}
\newenvironment{orcaulist}
{
  \section*{ORCID IDs}
  \setlength{\LTleft}{0pt}
  \setlength{\LTright}{\fill}
  \begin{longtable}{@{}l l@{}}
}
{
  \end{longtable}
}


\url@rmstyle

\pagestyle{headings}%
%\pagenumbering{arabic}
\if@twocolumn
  \twocolumn
  \sloppy
  \flushbottom
\else
  \onecolumn
\fi
\endinput
%%
%% End of file `article.cls'.
