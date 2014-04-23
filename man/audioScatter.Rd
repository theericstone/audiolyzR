\name{audioScatter}
\alias{audioScatter}
\alias{panel.audiolyzR}
%
\title{
Generate an audiolyzed version of a scatterplot
}
\description{
Transaltes a scatterplot into an audio graph where notes and chords correspond to a binned version of the plot.
}
\usage{
audioScatter(x, y = NULL, z = NULL, data, purge.plots = FALSE, show.plots = TRUE,
             bins = 30, aspect = 1, radius = floor(sqrt(bins))-1, 
             key = "C", quality = "Major", tempo = 115,
             directory = file.path (Sys.getenv("R_LIBS_USER"), "audiolyzR"),
             output = file.path (tempdir(), "json_matrix"), write.to.home = NULL, ...)
             
panel.audiolyzR(x, y, ...)
}

\arguments{
  \item{x}{
     A formula specifying either 2 or 3 variables from the specified data object.
     For now, if 3 variables are specified, the 3rd is considered a "conditional" 
     variable and it atop the interaction between the first 2, in the same manner
     as a call like \code{xyplot (y ~ x + z, data=data, outer=FALSE)} \cr
     -or-\cr
     The x-axis variable name as a text string.
}
  \item{y}{
     Specifies the y-axis variable if formula not used, should also be a text string.
}
  \item{z}{
     An optional "conditional" variable that is plotted atop the interaction between 
     the first 2
}
  \item{data}{
     Required data frame object.
}
  \item{purge.plots}{
Specifies whether to erase the directory containing the plots that the external \pkg{audiolyzR} synthesizer accesses. Default is FALSE, so plots will pile up unless you change it to TRUE.
}

\item{show.plots}{
Specifies whether to print the binned version of the plot in R's grpahics window. Default is set to TRUE.
}

  \item{bins}{
     Optional specification of bins for hex binning step. Default is 30.
}
  \item{aspect}{
     Optional aspect ratio adjustment. Default is 1:1.
}
  \item{radius}{
     Used to obtain the number of nearest neighbors for each bin/point. Default is square root of number of bins.
}
  \item{key}{
     Optional, not yet fully implemented. The desired key for the audio matrix.
     This can be adjusted manually in the \pkg{audiolyzR} synthesizer (starting note).
}
  \item{quality}{
     Optional. Quality of the specified key. Default is "Major".
     This is not yet fully implemented, and can be changed manually in the \pkg{audiolyzR} synthesizer.
}
  \item{tempo}{
     Optional. Tempo for chord progressions in the audio plot. Default is 115 bpm, and it can be adjusted once the plot is generated.
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
\details{
The panel function \code{panel.audiolyzR} adds an audio plot component to \code{xyplot()}. This functions at a basic level of implementation and only currently supports \code{outer = FALSE} plots. Support for more complex \pkg{lattice} graphics will be incorporated into future releases.
}

\section{External Application Instructions}{
The \pkg{audiolyzR} package requires a free standalone synthesizer application. the first time you run an \code{audio*Plot*} function, the program will download and install automatically. By default, the app installs into the \code{file.path (Sys.getenv("R_LIBS_USER"), "audiolyzR")} directory, which is where the package's functions will look for it. You are free to install it whereever you like, but you must specify its parent \code{directory} in your function calls.\cr\cr If you prefer to install it yourself:\cr

\pkg{audiolyzR} application for \emph{Mac}:\cr \url{http://s3.amazonaws.com/audiolyzR/installers/the_audiolyzR_mac_v5.zip}\cr

\pkg{audiolyzR} application for \emph{Windows}:\cr \url{http://s3.amazonaws.com/audiolyzR/installers/the_audiolyzR_win_v5.zip}
}
\value{
  Sends a JSON file to The audiolyzR, which is then played. This requires the installation of The audiolyzR. 
  Also plots the resulting hexbin plot(s)
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
##Basic audioScatter example

\dontrun{
data(NHANES)
audioScatter("Weight","BMI",data=NHANES)
audioScatter(BMI ~ Weight + Transferin,data=NHANES)
}
}
