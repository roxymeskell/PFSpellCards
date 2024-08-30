% PATHFINDER SPEEL CARD SHEET DOCUMENT STYLE
% Copyright (C) 2017 by Roxanna Meskell

\typeout{Document Style `pfspellsheet' <21 Aug 17>.}


\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{pfspellsheet}[2017/08/21 Pathfinder Spell Card Sheet]

%% Article options
\DeclareOption{default}{
	%\PassOptionsToPackage{margin=0.5in}{geometry}
	\PassOptionsToPackage{top=0.25in,bottom=0in,right=0.5in,left=0.5in}{geometry}
	%\PassOptionsToPackage{headheight=0pt,footskip=0pt,marginpar=0pt,ignoreheadfoot}{geometry}
	\PassOptionsToPackage{ignoreall,noheadfoot,nomarginpar,offset=0pt}{geometry}
	\headsep=0pt\headheight=0pt
	%\PassOptionsToClass{\CurrentOption}{article}
}
\DeclareOption{landscapeindexcard}{
	%\PassOptionsToClass{\CurrentOption}{article}
	\PassOptionsToPackage{top=1in,bottom=0in,right=1.75in,left=1.75in}{geometry}
	\PassOptionsToPackage{cardwidth=5in, cardheight=3in}{pfspell}
}
\DeclareOption{landscapebusinesscard}{
	%\PassOptionsToClass{landscape}{article}
	\PassOptionsToPackage{total={7in,10in},top=.5in,bottom=0in,right=.75in,left=.75in}{geometry}
	\PassOptionsToPackage{cardwidth=3.5in, cardheight=2in}{pfspell}
}
\DeclareOption{portraitindexcard}{
	%\PassOptionsToClass{\CurrentOption}{article}
	\PassOptionsToPackage{landscape}{geometry}
	\PassOptionsToPackage{top=1.75in,bottom=0in,right=1in,left=1in}{geometry}
	\PassOptionsToPackage{cardwidth=3in, cardheight=5in}{pfspell}
}
\DeclareOption{portraitbusinesscard}{
	%\PassOptionsToClass{landscape}{article}
	\PassOptionsToPackage{landscape}{geometry}
	\PassOptionsToPackage{top=.75in,bottom=0in,right=.5in,left=.5in}{geometry}
	\PassOptionsToPackage{cardwidth=2in, cardheight=3.5in}{pfspell}
}
\DeclareOption{flashcard}{ % avery 4765
    \PassOptionsToPackage{landscape}{geometry}
    \PassOptionsToPackage{top=0in,bottom=0in,right=0in,left=0in}{geometry}
	\PassOptionsToPackage{cardwidth=5.5in, cardheight=4.25in}{pfspell}
}
\DeclareOption{halfindexcard}{ % avery 4765
    %\PassOptionsToPackage{landscape}{geometry}
    \PassOptionsToPackage{total={7in,9in},top=1in,bottom=0in,right=0in,left=0.75in}{geometry}
	\PassOptionsToPackage{cardwidth=3.5in, cardheight=3in}{pfspell}
}
\DeclareOption{namebadgeinsert}{ % avery namebadge 3x4
    %\PassOptionsToPackage{landscape}{geometry}
    \PassOptionsToPackage{total={8in,9in},top=1in,bottom=0in,right=0in,left=0.25in}{geometry}
	\PassOptionsToPackage{cardwidth=4in, cardheight=3in}{pfspell}
}
\DeclareOption{test}{
	%\PassOptionsToClass{landscape}{article}
	\PassOptionsToPackage{total={7in,10in},top=.5in,bottom=0in,right=.75in,left=.75in}{geometry}
	\PassOptionsToPackage{cardwidth=3.5in, cardheight=2.5in}{pfspell}
}
\DeclareOption{nogray}{
    \PassOptionsToPackage{blackandwhite=true}{pfspell}
}

%% Execute default options
\ExecuteOptions{default}

%% Process given options
\ProcessOptions\relax

%\PassOptionsToClass{11pt,12pt}{article}
\PassOptionsToClass{letterpaper}{article}
%\PassOptionsToPackage{paperwidth=8.5in, paperheight=11in}{geometry}
\PassOptionsToClass{11pt}{article}
\LoadClassWithOptions{article}

%\PassOptionsToPackage{cardwidth=2in, cardheight=3.5in}{pfspell}


%\RequirePackage[margin=0.5in]{geometry}
\RequirePackage{geometry}
\RequirePackage{multicol}
\RequirePackage{pfspell}

\setlength{\parindent}{0pt}

\AtBeginDocument{
	\pagenumbering{gobble}%
	\fontfamily{qag}%
    \pagestyle{empty}%
    \setlength{\topskip}{0pt}%
    \setlength{\parskip}{0pt}%
    % \showthe\baselineskip
    \setlength{\baselineskip}{0pt}%
}