% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geom_shotplot.R
\name{geom_shotplot}
\alias{geom_shotplot}
\title{NHL Shot Location Map}
\usage{
geom_shotplot(...)
}
\arguments{
\item{...}{Passed to [ggplot2::geom_point()]}
}
\description{
Creates a shot location plot. Calls geom_point() with an image
of an NHL rink as the background.
}
\examples{
library(ggplot2)
x_coord <- c(1,5,10)
y_coord <- c(5,10,15)
data <- data.frame(x,y)
ggplot(data, aes(x=x_coord, y=y_coord)) +
    geom_shotplot()
}
\keyword{geom}
\keyword{ggplot}
