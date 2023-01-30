<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math" version="3.0">
    <xsl:output method="text"/>




    <xsl:template match="cv">
        <xsl:result-document href="francais/short/cv_short_fr.tex">
            <xsl:text>
%%% raw.tex --- Example of CurVe usage.
%% Copyright (C) 2000, 2001, 2002, 2003, 2004, 2005, 2010 Didier Verna.
%% Author:        Didier Verna &lt;didier@lrde.epita.fr>
%% Maintainer:    Didier Verna &lt;didier@lrde.epita.fr>
%% Created:       Thu Dec 10 16:04:01 2000
%% Last Revision: Mon Dec  6 10:57:19 2010

%% This file is part of CurVe.

%% CurVe may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.1
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%% http://www.latex-project.org/lppl.txt
%% and version 1.1 or later is part of all distributions of LaTeX
%% version 1999/06/01 or later.

%% CurVe consists of the files listed in the file `README'.

%%% Commentary:

%% Contents management by FCM version 0.1.


%%% Code:

\NeedsTeXFormat{LaTeX2e}
\documentclass[a4paper,10pt]{curve}
\usepackage{fbb}
\usepackage[T1]{fontenc} 
\usepackage[utf8]{inputenc}
\usepackage[francais]{babel}
\usepackage{listings}
\usepackage{hyperref}
\usepackage{csquotes}
\usepackage{graphicx}
\usepackage{xcolor}
\usepackage[nohead,nofoot,hmargin=1.5cm,vmargin=1.5cm, top=0.3cm, bottom=0.5cm]{geometry}
\title{Curriculum Vitae}
\leftheader{</xsl:text>
            <xsl:value-of select="descendant::meta/prenom"/>
            <xsl:text> \textsc{</xsl:text>
            <xsl:value-of select="descendant::meta/nom"/>
            <xsl:text>}</xsl:text>
            <xsl:text>\\</xsl:text>
            <xsl:apply-templates select="descendant::ident"/>
            <xsl:text>
~\\ Né le </xsl:text>
            <xsl:value-of select="//naissance"/>
            <xsl:text> \\ }
            \rightheader{\href{mailto:</xsl:text>
            <xsl:value-of select="//courriel"/>
            <xsl:text>}{\textit{</xsl:text>
            <xsl:value-of select="//courriel"/>
            <xsl:text>}}\\ \href{https://perso.ens-lyon.fr/matthias.gille-levenson/accueil.html}{page personnelle}}
            \begin{document}
            \makeheaders[t]
            \hspace{-1cm}
            \vspace{-1cm}
            \begin{center}
            {\Huge\textbf{Curriculum vitae}}
            \end{center}
            \makerubric{rubric1}
            \makerubric{rubric2}
            \makerubric{rubric3}
            \makerubric{rubric4}\vfill
            
            \end{document}</xsl:text>
        </xsl:result-document>



        <xsl:result-document href="anglais/short/cv_short_en.tex">
            <xsl:text>
%%% raw.tex --- Example of CurVe usage.
%% Copyright (C) 2000, 2001, 2002, 2003, 2004, 2005, 2010 Didier Verna.
%% Author:        Didier Verna &lt;didier@lrde.epita.fr>
%% Maintainer:    Didier Verna &lt;didier@lrde.epita.fr>
%% Created:       Thu Dec 10 16:04:01 2000
%% Last Revision: Mon Dec  6 10:57:19 2010

%% This file is part of CurVe.

%% CurVe may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.1
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%% http://www.latex-project.org/lppl.txt
%% and version 1.1 or later is part of all distributions of LaTeX
%% version 1999/06/01 or later.

%% CurVe consists of the files listed in the file `README'.

%%% Commentary:

%% Contents management by FCM version 0.1.


%%% Code:

\NeedsTeXFormat{LaTeX2e}
\documentclass[a4paper,10pt]{curve}
\usepackage{fbb}
\usepackage[T1]{fontenc} 
\usepackage[utf8]{inputenc}
\usepackage[english]{babel}
\usepackage{listings}
\usepackage{hyperref}
\usepackage{csquotes}
\usepackage{graphicx}
\usepackage[nohead,nofoot,hmargin=1.5cm,vmargin=1.5cm]{geometry}
\title{Curriculum Vitae}
\leftheader{</xsl:text>
            <xsl:value-of select="descendant::meta/prenom"/>
            <xsl:text> \textsc{</xsl:text>
            <xsl:value-of select="descendant::meta/nom"/>
            <xsl:text>}</xsl:text>
            <xsl:text>\\
Born on </xsl:text>
            <xsl:value-of select="//naissance"/>
            <xsl:text> \\ }
            \rightheader{\href{mailto:</xsl:text>
            <xsl:value-of select="//courriel"/>
            <xsl:text>}{\textit{</xsl:text>
            <xsl:value-of select="//courriel"/>
            <xsl:text>}}}
            \begin{document}
            \makeheaders[t]
            \maketitle
            \begin{center}
Last updated: </xsl:text>
            <xsl:value-of
                select="format-date(current-date(), '[M01]/[D01]/[Y0001]')"/>
            <xsl:text>
\end{center}
            \makerubric{rubric1}
            \makerubric{rubric2}
            \makerubric{rubric3}
            \makerubric{rubric4}
            \end{document}</xsl:text>
        </xsl:result-document>
        <xsl:apply-templates/>
    </xsl:template>




    <xsl:template match="cursus">
        <xsl:result-document href="francais/short/rubric1.tex">
            <xsl:text>%%% rubric.tex --- Example of using CurVe.

%% Copyright (C) 2000, 2001, 2002, 2003, 2004, 2005, 2010 Didier Verna.

%% Author:        Didier Verna &lt;didier@lrde.epita.fr>
%% Maintainer:    Didier Verna &lt;didier@lrde.epita.fr>
%% Created:       Thu Dec 10 16:04:01 2000
%% Last Revision: Mon Dec  6 11:04:22 2010

%% This file is part of CurVe.

%% CurVe may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.1
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%% http://www.latex-project.org/lppl.txt
%% and version 1.1 or later is part of all distributions of LaTeX
%% version 1999/06/01 or later.

%% CurVe consists of the files listed in the file `README'.


%%% Commentary:

%% Contents management by FCM version 0.1.


%%% Code:
 \begin{rubric}{Cursus}</xsl:text>
            <xsl:for-each select="annee">
                <xsl:for-each select="entree">
                    <xsl:choose>
                        <xsl:when test="position() = 1">
                            <xsl:text>
                                \entry*[</xsl:text>
                            <xsl:value-of select="parent::annee/@n"/>
                            <xsl:text>]
                            </xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:text>
                                \hspace{-1cm}
                                \entry*
                            </xsl:text>
                        </xsl:otherwise>
                    </xsl:choose>
                    <xsl:apply-templates select="francais"/>
                    <xsl:text>
                    </xsl:text>
                </xsl:for-each>
            </xsl:for-each>


            <xsl:text>\end{rubric}




%%% rubric.tex ends here

%%% Local Variables:
%%% mode: latex
%%% TeX-master: "raw"
%%% End:</xsl:text>
        </xsl:result-document>


        <xsl:result-document href="anglais/short/rubric1.tex">
            <xsl:text>%%% rubric.tex --- Example of using CurVe.

%% Copyright (C) 2000, 2001, 2002, 2003, 2004, 2005, 2010 Didier Verna.

%% Author:        Didier Verna &lt;didier@lrde.epita.fr>
%% Maintainer:    Didier Verna &lt;didier@lrde.epita.fr>
%% Created:       Thu Dec 10 16:04:01 2000
%% Last Revision: Mon Dec  6 11:04:22 2010

%% This file is part of CurVe.

%% CurVe may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.1
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%% http://www.latex-project.org/lppl.txt
%% and version 1.1 or later is part of all distributions of LaTeX
%% version 1999/06/01 or later.

%% CurVe consists of the files listed in the file `README'.


%%% Commentary:

%% Contents management by FCM version 0.1.


%%% Code:
 \begin{rubric}{Education}</xsl:text>
            <xsl:for-each select="annee">
                <xsl:for-each select="entree">
                    <xsl:choose>
                        <xsl:when test="position() = 1">
                            <xsl:text>
                                \entry*[</xsl:text>
                            <xsl:value-of select="parent::annee/@n"/>
                            <xsl:text>]
                            </xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:text>
                                \entry*
                            </xsl:text>
                        </xsl:otherwise>
                    </xsl:choose>
                    <xsl:apply-templates select="anglais"/>
                    <xsl:text>
                    </xsl:text>
                </xsl:for-each>
            </xsl:for-each>


            <xsl:text>\end{rubric}




%%% rubric.tex ends here

%%% Local Variables:
%%% mode: latex
%%% TeX-master: "raw"
%%% End:</xsl:text>
        </xsl:result-document>
    </xsl:template>


    <xsl:template match="enseignement">
        <xsl:result-document href="francais/short/rubric2.tex">
            <xsl:text>%%% rubric.tex --- Example of using CurVe.

%% Copyright (C) 2000, 2001, 2002, 2003, 2004, 2005, 2010 Didier Verna.

%% Author:        Didier Verna &lt;didier@lrde.epita.fr>
%% Maintainer:    Didier Verna &lt;didier@lrde.epita.fr>
%% Created:       Thu Dec 10 16:04:01 2000
%% Last Revision: Mon Dec  6 11:04:22 2010

%% This file is part of CurVe.

%% CurVe may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.1
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%% http://www.latex-project.org/lppl.txt
%% and version 1.1 or later is part of all distributions of LaTeX
%% version 1999/06/01 or later.

%% CurVe consists of the files listed in the file `README'.


%%% Commentary:

%% Contents management by FCM version 0.1.


%%% Code:

\begin{rubric}{Enseignement et formations dispensées en HN}</xsl:text>
            <xsl:for-each select="annee">
                <xsl:for-each select="entree">
                    <xsl:choose>
                        <xsl:when test="position() = 1">
                            <xsl:text>
                                \entry*[</xsl:text>
                            <xsl:value-of select="parent::annee/@n"/>
                            <xsl:text>]
                            </xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:text>
                                \hspace{-1cm}
                                \entry*
                            </xsl:text>
                        </xsl:otherwise>
                    </xsl:choose>
                    <xsl:apply-templates select="francais"/>
                    <xsl:text>
                    </xsl:text>
                </xsl:for-each>
            </xsl:for-each>
            <xsl:text>\end{rubric}

%%% rubric.tex ends here

%%% Local Variables:
%%% mode: latex
%%% TeX-master: "raw"
%%% End:</xsl:text>
        </xsl:result-document>

        <xsl:result-document href="anglais/short/rubric2.tex">
            <xsl:text>%%% rubric.tex --- Example of using CurVe.

%% Copyright (C) 2000, 2001, 2002, 2003, 2004, 2005, 2010 Didier Verna.

%% Author:        Didier Verna &lt;didier@lrde.epita.fr>
%% Maintainer:    Didier Verna &lt;didier@lrde.epita.fr>
%% Created:       Thu Dec 10 16:04:01 2000
%% Last Revision: Mon Dec  6 11:04:22 2010

%% This file is part of CurVe.

%% CurVe may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.1
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%% http://www.latex-project.org/lppl.txt
%% and version 1.1 or later is part of all distributions of LaTeX
%% version 1999/06/01 or later.

%% CurVe consists of the files listed in the file `README'.


%%% Commentary:

%% Contents management by FCM version 0.1.


%%% Code:

\begin{rubric}{Teaching}</xsl:text>
            <xsl:for-each select="annee">
                <xsl:for-each select="entree">
                    <xsl:choose>
                        <xsl:when test="position() = 1">
                            <xsl:text>
                                \entry*[</xsl:text>
                            <xsl:value-of select="parent::annee/@n"/>
                            <xsl:text>]
                                
                            </xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:text>
                                \entry*
                            </xsl:text>
                        </xsl:otherwise>
                    </xsl:choose>
                    <xsl:apply-templates select="anglais"/>
                    <xsl:text>
                    </xsl:text>
                </xsl:for-each>
            </xsl:for-each>
            <xsl:text>\end{rubric}

%%% rubric.tex ends here

%%% Local Variables:
%%% mode: latex
%%% TeX-master: "raw"
%%% End:</xsl:text>
        </xsl:result-document>
    </xsl:template>

    <xsl:template match="competences">
        <xsl:result-document href="francais/short/rubric4.tex">
            <xsl:text>%%% rubric.tex --- Example of using CurVe.

%% Copyright (C) 2000, 2001, 2002, 2003, 2004, 2005, 2010 Didier Verna.

%% Author:        Didier Verna &lt;didier@lrde.epita.fr>
%% Maintainer:    Didier Verna &lt;didier@lrde.epita.fr>
%% Created:       Thu Dec 10 16:04:01 2000
%% Last Revision: Mon Dec  6 11:04:22 2010

%% This file is part of CurVe.

%% CurVe may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.1
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%% http://www.latex-project.org/lppl.txt
%% and version 1.1 or later is part of all distributions of LaTeX
%% version 1999/06/01 or later.

%% CurVe consists of the files listed in the file `README'.


%%% Commentary:

%% Contents management by FCM version 0.1.


%%% Code:


\begin{rubric}{Compétences}</xsl:text>
            <xsl:text>
                \subrubric{Langues pratiquées}</xsl:text>
            <xsl:for-each select="entree[@type = 'langues']">
                <xsl:text>
                    \entry*
                    
                </xsl:text>
                <xsl:apply-templates select="francais"/>
            </xsl:for-each>
            <xsl:text>
                \subrubric{Compétences informatiques}</xsl:text>
            <xsl:for-each select="entree[@type = 'info']">
                <xsl:text>
                    \entry*
                    
                </xsl:text>
                <xsl:apply-templates select="francais"/>
            </xsl:for-each>
            <xsl:for-each select="entree[@type = 'outils']">
                <xsl:text>
                    \entry*
                    
                </xsl:text>
                <xsl:apply-templates select="francais"/>
            </xsl:for-each>
            <xsl:text>\end{rubric}


%%% rubric.tex ends here

%%% Local Variables:
%%% mode: latex
%%% TeX-master: "raw"
%%% End:</xsl:text>
        </xsl:result-document>


        <xsl:result-document href="anglais/short/rubric4.tex">
            <xsl:text>%%% rubric.tex --- Example of using CurVe.

%% Copyright (C) 2000, 2001, 2002, 2003, 2004, 2005, 2010 Didier Verna.

%% Author:        Didier Verna &lt;didier@lrde.epita.fr>
%% Maintainer:    Didier Verna &lt;didier@lrde.epita.fr>
%% Created:       Thu Dec 10 16:04:01 2000
%% Last Revision: Mon Dec  6 11:04:22 2010

%% This file is part of CurVe.

%% CurVe may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.1
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%% http://www.latex-project.org/lppl.txt
%% and version 1.1 or later is part of all distributions of LaTeX
%% version 1999/06/01 or later.

%% CurVe consists of the files listed in the file `README'.


%%% Commentary:

%% Contents management by FCM version 0.1.


%%% Code:


\begin{rubric}{Skills}</xsl:text>
            <xsl:text>
                \subrubric{Languages}</xsl:text>
            <xsl:for-each select="entree[@type = 'langues']">
                <xsl:text>
                    \entry*
                    
                </xsl:text>
                <xsl:apply-templates select="anglais"/>
            </xsl:for-each>
            <xsl:text>
                \subrubric{IT skills}</xsl:text>
            <xsl:for-each select="entree[@type = 'info']">
                <xsl:text>
                    \entry*
                    
                </xsl:text>
                <xsl:apply-templates select="anglais"/>
            </xsl:for-each>
            <xsl:text>\end{rubric}


%%% rubric.tex ends here

%%% Local Variables:
%%% mode: latex
%%% TeX-master: "raw"
%%% End:</xsl:text>
        </xsl:result-document>


    </xsl:template>

    <xsl:template match="publications">
        <xsl:result-document href="francais/short/rubric3.tex">
            <xsl:text>%%% rubric.tex --- Example of using CurVe.

%% Copyright (C) 2000, 2001, 2002, 2003, 2004, 2005, 2010 Didier Verna.

%% Author:        Didier Verna &lt;didier@lrde.epita.fr>
%% Maintainer:    Didier Verna &lt;didier@lrde.epita.fr>
%% Created:       Thu Dec 10 16:04:01 2000
%% Last Revision: Mon Dec  6 11:04:22 2010

%% This file is part of CurVe.

%% CurVe may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.1
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%% http://www.latex-project.org/lppl.txt
%% and version 1.1 or later is part of all distributions of LaTeX
%% version 1999/06/01 or later.

%% CurVe consists of the files listed in the file `README'.


%%% Commentary:

%% Contents management by FCM version 0.1.


%%% Code:


\begin{rubric}{Publications et communications}
                </xsl:text>
            <xsl:for-each select="publication/entree">
                <xsl:text>
                    
                    \entry*
                </xsl:text>
                <xsl:apply-templates select="francais"/>
            </xsl:for-each>
            <xsl:for-each select="communications/entree">
                <xsl:text>
                    
                    \entry*
                </xsl:text>
                <xsl:apply-templates select="francais"/>
            </xsl:for-each>
            <xsl:text>\end{rubric}

%%% rubric.tex ends here

%%% Local Variables:
%%% mode: latex
%%% TeX-master: "raw"
%%% End:</xsl:text>
        </xsl:result-document>

        <xsl:result-document href="anglais/short/rubric3.tex">
            <xsl:text>%%% rubric.tex --- Example of using CurVe.

%% Copyright (C) 2000, 2001, 2002, 2003, 2004, 2005, 2010 Didier Verna.

%% Author:        Didier Verna &lt;didier@lrde.epita.fr>
%% Maintainer:    Didier Verna &lt;didier@lrde.epita.fr>
%% Created:       Thu Dec 10 16:04:01 2000
%% Last Revision: Mon Dec  6 11:04:22 2010

%% This file is part of CurVe.

%% CurVe may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.1
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%% http://www.latex-project.org/lppl.txt
%% and version 1.1 or later is part of all distributions of LaTeX
%% version 1999/06/01 or later.

%% CurVe consists of the files listed in the file `README'.


%%% Commentary:

%% Contents management by FCM version 0.1.


%%% Code:


\begin{rubric}{Publications}
                    \subrubric{Talks and posters}
                    
                </xsl:text>
            <xsl:for-each select="communications/entree">
                <xsl:text>
                    
                    \entry*
                </xsl:text>
                <xsl:apply-templates select="anglais"/>
            </xsl:for-each>
            <xsl:text>
                \subrubric{Publications}
            </xsl:text>
            <xsl:for-each select="publication/entree">
                <xsl:text>
                    
                    \entry*
                </xsl:text>
                <xsl:apply-templates select="anglais"/>
            </xsl:for-each>
            <xsl:text>\end{rubric}

%%% rubric.tex ends here

%%% Local Variables:
%%% mode: latex
%%% TeX-master: "raw"
%%% End:</xsl:text>
        </xsl:result-document>
    </xsl:template>

    <xsl:template match="pers">
        <xsl:apply-templates/>
        <xsl:if test="@orcid">
            <xsl:text>\href{https://orcid.org/</xsl:text>
            <xsl:value-of select="@orcid"/>
            <xsl:text>}{\includegraphics[scale=0.025]{img/orcid.png}}</xsl:text>
        </xsl:if>
        <xsl:if test="@idref">
            <xsl:text>\href{https://www.idref.fr/</xsl:text>
            <xsl:value-of select="@idref"/>
            <xsl:text>}{\textsuperscript{\includegraphics[scale=0.025]{img/idref.png}}}</xsl:text>
        </xsl:if>
    </xsl:template>

    <xsl:template match="fr | en | es">
        <xsl:text>\textit{</xsl:text>
        <xsl:value-of select="."/>
        <xsl:text>}</xsl:text>
    </xsl:template>
    <xsl:template match="ident[@type = 'orcid']">
        <xsl:text>Orcid: \href{https://orcid.org/</xsl:text>
        <xsl:value-of select="."/>
        <xsl:text>}{\includegraphics[scale=0.025]{img/orcid.png}}</xsl:text>
    </xsl:template>


    <xsl:template match="titre[not(@type)][not(parent::titre)]">
        <xsl:text>\textit{</xsl:text>
        <xsl:apply-templates/>
        <xsl:text>}</xsl:text>
    </xsl:template>

    <xsl:template match="titre[not(@type)][parent::titre]">
        <xsl:text>``</xsl:text>
        <xsl:apply-templates/>
        <xsl:text>''</xsl:text>
    </xsl:template>

    <xsl:template match="titre[@type = 'article']">
        <xsl:text>\enquote{</xsl:text>
        <xsl:apply-templates/>
        <xsl:text>}</xsl:text>
    </xsl:template>

    <xsl:template match="titre[ancestor::communications]">
        <xsl:text>\enquote{</xsl:text>
        <xsl:apply-templates/>
        <xsl:text>}</xsl:text>
    </xsl:template>

    <xsl:template match="titre[@type = 'livre']">
        <xsl:text>\textit{</xsl:text>
        <xsl:apply-templates/>
        <xsl:text>}</xsl:text>
    </xsl:template>



    <xsl:template match="cit">
        <xsl:text>\enquote{</xsl:text>
        <xsl:apply-templates/>
        <xsl:text>}</xsl:text>
    </xsl:template>

    <xsl:template match="img">
        <xsl:text>\includegraphics</xsl:text>
        <xsl:if test="@echelle">
            <xsl:text>[scale=</xsl:text>
            <xsl:value-of select="@echelle"/>
            <xsl:text>]</xsl:text>
        </xsl:if>
        <xsl:text>{</xsl:text>
        <xsl:value-of select="@lien"/>
        <xsl:text>}</xsl:text>
    </xsl:template>

    <xsl:template match="//text()">
        <xsl:apply-templates select="replace(., 'LaTeX', '\\LaTeX')"/>
    </xsl:template>

    <xsl:template match="lien">
        <xsl:text>\href{</xsl:text>
        <xsl:value-of select="@href"/>
        <xsl:text>}{</xsl:text>
        <xsl:apply-templates/>
        <xsl:text>}</xsl:text>
    </xsl:template>

    <xsl:template match="title">
        <xsl:text>\enquote{</xsl:text>
        <xsl:value-of select="."/>
        <xsl:text>}</xsl:text>
    </xsl:template>

    <xsl:template match="nom">
        <xsl:text>\textsc{</xsl:text>
        <xsl:value-of select="."/>
        <xsl:text>}</xsl:text>
    </xsl:template>
</xsl:stylesheet>
