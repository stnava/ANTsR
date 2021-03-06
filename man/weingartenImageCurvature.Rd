% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/weingartenImageCurvature.R
\name{weingartenImageCurvature}
\alias{weingartenImageCurvature}
\title{image curvature for 2D or 3D}
\usage{
weingartenImageCurvature(image, sigma = 1, opt = "mean")
}
\arguments{
\item{image}{antsImage}

\item{sigma}{smoothing parameter}

\item{opt}{mean by default, otherwise use string gaussian or characterize}
}
\value{
image
}
\description{
uses the weingarten map to estimate image mean or gaussian curvature
}
\examples{
img = makeImage( c(10,10,10) , rnorm( 1000 ) )
fik <- weingartenImageCurvature( img )
\dontrun{
fi <- antsImageRead( getANTsRData( "mni" ) )
fik <- weingartenImageCurvature( fi )
}
}
\references{
Avants, B, J. Gee, and B. Avants.
Shape operator for differential image analysis
Information Processing in Medical Imaging, 2003.
}
\author{
Brian B. Avants
}
\keyword{curvature}
