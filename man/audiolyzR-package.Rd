\name{audiolyzR-package}
\alias{audiolizR-package}
\alias{audiolyzR}
\alias{audiolyzer}
\alias{Audiolyzer}
\alias{audiolyzr}
\alias{Audiolyzr}
\alias{audiolyzeR}
\alias{audiolizer}
\alias{audiolizeR}
\alias{Audiolizer}
\alias{audiolisR-package}
\alias{audiolysR}
\alias{audiolyser}
\alias{Audiolyser}
\alias{audiolysr}
\alias{Audiolysr}
\alias{audiolyseR}
\alias{audioliser}
\alias{audioliseR}
\alias{Audioliser}
\docType{package}
\title{Data Sonification for R}
\description{
Intended as a tool for familiarization with a dataset,
identification of outliers, and further analyses.\cr 
This may also be helpful in describing data to the visually impaired.\cr
\emph{NOTE:} This package requires the installation of a separate standalone synthesizer application. The R functions will send plots to this program, which is where you will "play" your plots. See Details for details.\cr
The standalone application uses QuickTime, without which visual details will not appear.
}
\details{
\tabular{ll}{
Package: \tab audiolyzR\cr
Type: \tab Package\cr
Version: \tab 0.4-10\cr
Date: \tab 2013-2-16\cr
License: \tab GPL-2\cr
}
\pkg{audiolyzR} translates scatterplots, scatterplot matrices, histograms, and (soon) other plots into corresponding audio graphics. You will see that the plots are played either by looping from left to right, or by directing an interactive cursor.\cr
You will have live control over global volume and tempo, along with quality (major vs minor vs augmented, etc.), range of pitches (in case you have trouble hearing particularly high or low notes), and gap between loops.\cr\cr

Things to note and pay attention to while you listen:\cr
1) The X or horizontal axis corresponds to time (not pitch).\cr
2) Pitch corresponds to the Y or vertical axis.\cr
3) Reverb is inversely proportional to correlation (more reverb for less correlation).\cr
4) Synthesizer dryness is mildly related to number of points in a column.\cr
5) Relative note volume is inversely proportional to the number of notes in a neighborhood of each (higher volume for fewer neighbors)\cr\cr

Instructions for the external \pkg{audiolyzR} application:\cr
In order to run \pkg{audiolyzR}, you need to install the appropriate standalone application. The first time you run any \pkg{audiolyzR} command, it will automatically install the appropriate version for your system. If you prefer to download the files yourself: \cr
\emph{Mac}:\cr \url{http://s3.amazonaws.com/audiolyzR/installers/the_audiolyzR_mac_v5.zip}\cr

\emph{Windows}:\cr \url{http://s3.amazonaws.com/audiolyzR/installers/the_audiolyzR_win_v5.zip}

Also, make sure you are running a functioning version of Apple QuickTime, or you won't see the visual representation of the data in the synthesizer.
}

\author{
Eric Stone, Jesse Garrison, \cr Contributions from Nate Wheeler

Maintainer: \email{ericstone@temple.edu}
}
\references{
Baier T, Neuwirth E, Meo MD (2011). "Creating and Deploying an Application with RExcel and R." R Journal, 3/2.\cr\cr
Brown E (2012). playitbyr: Representing and exploring data through sound. R Package: Version 0.2-1, \url{http://playitbyr.org/}.\cr\cr
Carr D, Maechler M, Lewin-Koh N (2012). hexbin: Hexagonal Binning Routines. R Package: Version 1.26-0, \url{http://cran.r-project.org/web/packages/hexbin/index.html}.\cr\cr
CDC (2012). "National Health and Nutrition Examination Survey." \url{www.cdc.gov/nchs/nhanes.htm}.\cr\cr
Chambers JM (1983). Graphical methods for data analysis. Wadsworth & Brooks/Cole, Pacific Grove, CA.\cr\cr
Chambers JM, Mathews MV, Moore FR (1974). "Auditory Data Inspection." Technical Memorandum, 74-1214-20.\cr\cr
Cycling74 (2012). Max/MSP. \url{http://cycling74.com/docs/max6/dynamic/c74_docs}.\cr\cr
Flowers J (2005). "THIRTEEN YEARS OF REFLECTION ON AUDITORY GRAPHING : PROMISES , PITFALLS , AND POTENTIAL NEW DIRECTIONS." Faculty Publications, Univ of Nebraska, pp. 406 to 409. \url{http://digitalcommons.unl.edu/cgi/viewcontent.cgi?article=1429&context=psychfacpub}.\cr\cr
Froehlich I (2011). "Tonematrix." \url{http://tonematrix.audiotool.com}.\cr\cr
Frysinger SP (2005). "A Brief History of Auditory Data Representation to the 1980s." First Symposium on Auditory Graphs, pp. 1980 to 1983.\cr\cr
Hermann T, Hunt A, Neuhoff JG, Walker BN, Nees MA (2011). The Sonification Handbook, Chapter 2: Theory of Sonification. ISBN 9783832528195.\cr\cr
Hunt A, Hermann T, Pauletto S (2004). "Interacting with sonification systems: closing the loop." Proceedings. Eighth International Conference on Information Visualisation, IV, 879 to 884. \url{http://ieeexplore.ieee.org/lpdocs/ epic03/wrapper.htm?arnumber=1320244}.\cr\cr
Lang DT (2012). RJSONIO: Serialize R objects to JSON, JavaScript Object Notation. R Package: Version 1.0-1, \url{http://cran.r-project.org/web/packages/RJSONIO/RJSONIO.pdf}.\cr\cr
Merabet LB, Pascual-Leone A (2010). "Neural reorganization following sensory loss: the opportunity of change." Nature reviews. Neuroscience, 11(1), 44 to 52. ISSN 1471-0048. doi:10.1038/nrn2758. \url{http://www.ncbi.nlm.nih.gov/pubmed/19935836}.\cr\cr
Neuwirth E (2012). RExcelInstaller: Integration of R and Excel, (use R in Excel, read/write XLS files). R Package: Version 3.2.3-1, \url{http://cran.r-project.org/web/packages/RExcelInstaller/index.html}.\cr\cr
R Core Team (2012). R: A Language and Environment for Statistical Computing. R Foun- dation for Statistical Computing, Vienna, Austria. ISBN 3-900051-07-0, \url{http://www.R-project.org}.\cr\cr
Sarkar D (2008). Lattice: Multivariate Data Visualization with R. Springer Science+Business Media.\cr\cr
Sarkar D (2012). lattice: Lattice Graphics. R Package: Version 0.20-10, \url{http://cran. r-project.org/web/packages/lattice/index.html}.\cr\cr
Stein BE, Stanford TR (2008). "Multisensory integration: current issues from the perspective of the single neuron." Nature reviews. Neuroscience, 9(4), 255 to 66. ISSN 1471-0048. doi: 10.1038/nrn2331. \url{http://www.ncbi.nlm.nih.gov/pubmed/18354398}.\cr\cr
Stone E, Garisson J (2012). "Give Your Data a Listen." In UserR! Conference Proceedings. \url{http://biostat.mc.vanderbilt.edu/wiki/pub/Main/UseR-2012/81-Stone.pdf}.\cr\cr
Journal of Statistical Software 15 Tukey JW (1977). "Exploratory Data Analysis." Addison-Wesley.\cr\cr
Vercoe B (2012). The Canonical Csound Reference Manual. MIT Media Lab. Version 5.17.1.
}

\keyword{sonification}

\examples{
##Basic audiolyzR examples
data(NHANES)

\dontrun{
##Scatter Plot
audioScatter(BMI ~ Weight,data=NHANES)

##Scatterplot matrix
audioSplom(data=NHANES, bins=20)

##Histogram
audioHist(NHANES$Weight, name="Weight")
}
}
