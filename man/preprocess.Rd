% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/preprocess.R
\name{preprocess}
\alias{preprocess}
\title{Data preprocessing}
\usage{
preprocess(data, l = TRUE, pre = TRUE)
}
\arguments{
\item{data}{-- data that needs to be processed}

\item{l}{-- logical. If True, log-transformation will be carried out on the data.}

\item{pre}{-- logical. If True, pre-dimension reduction will be carried out based on the variance.}
}
\value{
the processed data.
}
\description{
Preprocessing for dimension reduction based on variance, it will delete the variable whose variance is smaller than 0.5*mean variance of all variables.
}
\examples{
data(YAN)
preprocess(YAN,l=FALSE,pre=TRUE)
}
