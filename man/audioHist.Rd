\name{audioHist}
\alias{audioHist}
\title{
Generate an audiolyzR version of a Histogram
}
\description{
Generates a histogram and translates it to \pkg{audiolyzR} format.
}
\usage{
  audioHist(x, name = "Variable", purge.plots = FALSE,
            bins = 30, breaks = "Scott", radius = floor(sqrt(bins))-1, 
            key = "C", quality = "Major", tempo = 80, reverb = 1,
            directory = file.path (Sys.getenv("R_LIBS_USER"), "audiolyzR"),
            output = file.path (tempdir(), "json_matrix"), write.to.home = NULL, ...)
}

\arguments{
  \item{x}{
    A vector of values to be plotted as a histogram, of form \code{data.frame$variable}.
  }
  \item{name}{
    A character string specifying the name of x. This will be used to label the plots.
    The default is "Variable".
  }
  \item{purge.plots}{
  Specifies whether to erase existing \pkg{audiolyzR} plots that the synthesizer accesses. Default is FALSE, so plots will pile up unless you change it to TRUE.
}
  \item{bins}{
    Optional specification of bins for hex binning step. Default is 30.
  }
  \item{breaks}{
    Optional specification of breaks for the histogram. Default is "Scott".
  }
  \item{radius}{
    Used to obtain the number of nearest neighbors for each bin/point. Default is the square root of number of bins.
  }
  \item{key}{
     Optional, not yet fully implemented. The desired key for the audio matrix.
     This can be adjusted manually in the \pkg{audiolyzR} synthesizer.
}
  \item{quality}{
     Optional. Quality of the specified key. Default is "Major".
     This is not yet fully implemented, and can be changed manually in the synthesizer.
}
  \item{tempo}{
     Optional. Tempo to set as default (You can change it manually in the synthesizer later). Default is 115 beats per minute.
}
  \item{reverb}{
     Optional. A number between 0 and 1 (inclusive) that specifies the amount of reverb in the resulting audio plot.
     A value of 1 is no reverb while a value of 0 produces the most.
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
     Additional arguments to be fed to \code{hexbin()} and \code{hist()}.
  }
}
\section{External Application Instructions}{
The \pkg{audiolyzR} package requires a free standalone synthesizer application. the first time you run an \code{audio*Plot*} function, the program will download and install automatically. By default, the app installs into the \code{file.path (Sys.getenv("R_LIBS_USER"), "audiolyzR")} directory, which is where the package's functions will look for it. You are free to install it whereever you like, but you must specify its parent \code{directory} in your function calls.\cr\cr If you prefer to install it yourself:\cr

\pkg{audiolyzR} application for \emph{Mac}:\cr \url{http://s3.amazonaws.com/audiolyzR/installers/the_audiolyzR_mac_v5.zip}\cr

\pkg{audiolyzR} application for \emph{Windows}:\cr \url{http://s3.amazonaws.com/audiolyzR/installers/the_audiolyzR_win_v5.zip}
}
\value{
  Sends a JSON file to the \pkg{audiolyzR} synthesizer, and by default, plots the corresponding histogram in R.
}

\seealso{
  \code{\link{hexbin}}
  
  \code{\link{hist}}
}

\section{Side Effects}{
  Saves a file to the \code{output} directory in order to generate audio. 
Also, by default, a plot will be produced in the graphics window.
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
  audioHist(NHANES$Diet.Iron, name="Dietary Iron")
  }
  }
  