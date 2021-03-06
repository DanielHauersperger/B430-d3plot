% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/d3_scatter.R
\name{d3_scatter}
\alias{d3_scatter}
\title{Scatter plot made with D3}
\usage{
d3_scatter(data, x_var, y_var, title = NULL, x_lab = NULL,
  y_lab = NULL, point_size = 3, color = "black", stroke_width = 1,
  opacity = 1, transition_duration = 0)
}
\arguments{
\item{data}{A Dataset to use for plotting. Should be a dataframe}

\item{x_var}{Attribute to place on the x axis}

\item{y_var}{Attribute for the y axis. If *y_var* is not specified or NULL, the *x_var* will be counted}

\item{title}{Title for the plot, placed above plot}

\item{x_lab}{X axis label. Default is *x_var's* object name}

\item{y_lab}{Y axis label. Default is *y_var's* ovject name}

\item{point_size}{Size of the data points on the plot}

\item{color}{Color of the points. This value can be a hex color, color name, or the column name from the dataframe}

\item{stroke_width}{Border thickness for each data point}

\item{opacity}{transparency level}

\item{transition_duration}{Duration for the points to transtion}
}
\value{
An HTML widget that displays a scatter plot made with D3.js
}
\description{
Scatter plot made with D3
}
\examples{
# not run:
# d3_scatter(mtcars, mpg, hp)
}
