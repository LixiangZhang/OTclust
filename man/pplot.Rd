% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pplot.R
\name{pplot}
\alias{pplot}
\title{Point-wise Uncertainty Assessment}
\usage{
pplot(result, method = 0)
}
\arguments{
\item{result}{-- the return from function clustCPS, visCPS or CPS.}

\item{method}{-- method for calculating point-wise uncertainty. Using posterior probability matrix is \code{0} and using topological information between clusters is \code{1}. Default is using posterior probability matrix.}
}
\value{
a list, in which P is the posterior probability matrix that each sample below to the reference clusters, point_stab is the point-wise stability for each sample and v is the visualization of the point-wise stability.
}
\description{
Output both the numerical and graphical point-wise uncertainty assessment for each individual points. The return of clustCPS, visCPS or CPS can be directly used as the input.
}
\examples{
# CPS analysis on selection of visualization methods
data(vis_pollen)
k1=kmeans(vis_pollen$vis,max(vis_pollen$ref))$cluster
k2=kmeans(vis_pollen$vis,max(vis_pollen$ref))$cluster
k=cbind(as.matrix(k1,ncol=1),as.matrix(k2,ncol=1))
c=CPS(vis_pollen$ref, vis_pollen$vis, pert=k)
# Point-wise Uncertainty Assessment
pplot(c)
}
