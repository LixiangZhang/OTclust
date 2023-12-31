% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mplot.R
\name{mplot}
\alias{mplot}
\title{Membership Heat Map}
\usage{
mplot(result, k)
}
\arguments{
\item{result}{-- the return from function clustCPS, visCPS or CPS.}

\item{k}{-- which cluster that you want to see the membership heat map.}
}
\value{
membership heat map of the required cluster.
}
\description{
Output the membership heat map of the required cluster. The return of clustCPS, visCPS or CPS can be directly used as the input.
}
\examples{
# CPS analysis on selection of visualization methods
data(vis_pollen)
c=visCPS(vis_pollen$vis, vis_pollen$ref)
# visualization of the results
mplot(c,2)
cplot(c,2)
}
