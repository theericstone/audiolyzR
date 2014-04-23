\name{audioSplom}
\alias{audioSplom}
\title{
audioSplom geneartes a scatterplot matrix-like series of tone matrices
}
\description{
Translates a scatterplot matrix into an audioplot, with help from \code{hexplom}. The \pkg{audiolyzR} plots are played according to the selected plot in the drop-down menu. 
The result can be considered similar to "movements" of a piece of music, with each scatterplot representing a separate movement within the larger piece.
}
\usage{
audioSplom(x = NULL, data, purge.plots = FALSE,
           bins = 30, aspect = 1, radius = floor (sqrt(bins)) - 1,
           key = "C", quality = "Major", tempo = 115,
           directory = file.path (Sys.getenv("R_LIBS_USER"), "audiolyzR"),
           output = file.path (tempdir(), "json_matrix"), write.to.home = NULL, ...)
}
\arguments{
  \item{x}{
     An optional character vector of names c("name1","name2",etc.)\cr
     -or-\cr
     An optional formula specifying variables to be included in the splom.
     All that is required is a data.frame object.
}
  \item{data}{
     Required data frame object
}
  \item{purge.plots}{
     Specifies whether to erase the directory containing the plots that the \pkg{audiolyzR} synthesizer accesses.    
     Default is FALSE, so plots will pile up unless you change it to TRUE.
}
  \item{bins}{
     Optional specification of bins for hex binning step. Default is 30.
}
  \item{aspect}{
     Optional aspect ratio adjustment. Default is 1
}
  \item{radius}{
     Used to obtain the number of nearest neighbors for each bin/point. Default is square root of number of bins.
}
  \item{key}{
     Optional, not yet fully implemented. The desired key for the audio matrix.
     This can be adjusted manually in the \pkg{audiolyzR} synthesizer.
}
  \item{quality}{
     Optional. Quality of the specified key. Default is "Major".
     This is not yet fully implemented, and can be changed manually in the \pkg{audiolyzR} synthesizer.
}
  \item{tempo}{
     Optional. Tempo to set as default (You can also change tempo in the \pkg{audiolyzR} synthesizer). Default is 115 bpm.
}
  \item{directory}{
     The path of the parent directory containing the \pkg{audiolyzR} synthesizer.
     This defaults to the "audiolyzR" folder in your "R_LIBS_USER" directory.  
}
  \item{output}{
     This is simply a temporary directory by default. 
     If you wish to change it, the only sensible option is the HOME directory.
     Included for transparency.
}
\item{write.to.home}{
  The standalone synthesizer application will look in your HOME directory for plot files when it opens.
  R will request permission to write there during the current session. 
  If you refuse, it will still work, but you will need to drag the appropriate folder to the synthesizer (a message will explain how).
  Adjusting this in the function call will have no effect.
}
  \item{...}{
     Additional arguments to be fed to \code{hexbin()} and \code{hexbinplot()}.
}
}
\section{External Application Instructions}{
The \pkg{audiolyzR} package requires a free standalone synthesizer application. the first time you run an \code{audio*Plot*} function, the program will download and install automatically. By default, the app installs into the \code{file.path (Sys.getenv("R_LIBS_USER"), "audiolyzR")} directory, which is where the package's functions will look for it. You are free to install it whereever you like, but you must specify its parent \code{directory} in your function calls.\cr\cr If you prefer to install it yourself:\cr

\pkg{audiolyzR} application for \emph{Mac}:\cr \url{http://s3.amazonaws.com/audiolyzR/installers/the_audiolyzR_mac_v5.zip}\cr

\pkg{audiolyzR} application for \emph{Windows}:\cr \url{http://s3.amazonaws.com/audiolyzR/installers/the_audiolyzR_win_v5.zip}
}
\value{
Produces a hexplom of the specified or supported variables, and then
plays the corresponding audio scatterplots, generated in the \pkg{audiolyzR} standalone.
}

\seealso{
 \code{\link{hexbin}}
}

\section{Side Effects}{
Saves a file to the \code{output} directory in order to generate audio. 
Also, a plot will be produced in the graphics window.
}

\references{
 \pkg{audiolyzR}: \url{http://biostat.mc.vanderbilt.edu/wiki/pub/Main/UseR-2012/81-Stone.pdf}\cr
 \emph{Max/MSP}: \url{http://cycling74.com/whatismax/}
}

\author{
Eric Stone, Jesse Garrison
}

\examples{
##Simple audioSplom example
\dontrun{
data(NHANES)
audioSplom(data=NHANES)
}
}
