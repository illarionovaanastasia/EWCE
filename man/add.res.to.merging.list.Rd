% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add.res.to.merging.list.r
\name{add.res.to.merging.list}
\alias{add.res.to.merging.list}
\title{Add to results to merging list}
\usage{
add.res.to.merging.list(full_res, existing_results = NULL)
}
\arguments{
\item{full_res}{results list generated using 
\code{\link{bootstrap.enrichment.test}} or \code{\link{ewce_expression_data}}
functions. Multiple results tables can be merged into one
results table, as long as the 'list' column is set to distinguish them.}

\item{existing_results}{Output of previous rounds from adding results to 
list. Leave empty if this is the first item in the list.}
}
\value{
merged results list
}
\description{
\code{add.res.to.merging.list} Adds EWCE results to a list 
for merging analysis
}
\examples{
# Load the single cell data
library(ewceData)
ctd <- ctd()

# Load the data
tt_alzh <- tt_alzh()
tt_alzh_BA36 <- tt_alzh_BA36()
tt_alzh_BA44 <- tt_alzh_BA44()

# Run EWCE analysis
tt_results <- ewce_expression_data(
    sct_data = ctd, tt = tt_alzh, annotLevel = 1,
    ttSpecies = "human", sctSpecies = "mouse"
)
tt_results_36 <- ewce_expression_data(
    sct_data = ctd, tt = tt_alzh_BA36, annotLevel = 1,
    ttSpecies = "human", sctSpecies = "mouse"
)
tt_results_44 <- ewce_expression_data(
    sct_data = ctd, tt = tt_alzh_BA44, annotLevel = 1,
    ttSpecies = "human", sctSpecies = "mouse"
)

# Fill a list with the results
results <- add.res.to.merging.list(tt_alzh)
results <- add.res.to.merging.list(tt_alzh_BA36, results)
results <- add.res.to.merging.list(tt_alzh_BA44, results)
}
