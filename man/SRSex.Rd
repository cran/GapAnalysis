% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SRSex.R
\name{SRSex}
\alias{SRSex}
\title{Sampling representativeness score ex situ}
\usage{
SRSex(Species_list, Occurrence_data)
}
\arguments{
\item{Species_list}{A species list to calculate the SRSex metrics.}

\item{Occurrence_data}{A data frame object with the species name, geographical coordinates,
and type of records (G or H) for a given species}
}
\value{
This function returns a data frame with two columns:
\tabular{lcc}{
species \tab Species name \cr
SRSex \tab SRSex value calculated\cr
}
}
\description{
The SRSex process provides a general indication of the completeness of ex situ conservation collections,
 calculating the ratio of germplasm accessions (G) available in ex situ repositories to reference (H) records for each taxon,
 making use of all compiled records, regardless of whether they include coordinates, with an ideal (i.e., comprehensive) conservation
 ratio of 1:1. In this and in the subsequent measurements, if no G or H records exist, taxa are automatically considered
 to be of high priority for further conservation action and assigned a value of 0. If there are more G than H records,
SRSex is set to 100.
}
\examples{
##Obtaining occurrences from example
data(CucurbitaData)
##Obtaining species names from the data
Cucurbita_splist <- unique(CucurbitaData$species)
#Running SRSex
SRSex_df <- SRSex(Species_list = Cucurbita_splist,
                    Occurrence_data = CucurbitaData)

}
\references{
Khoury et al. (2019) Ecological Indicators 98:420-429. doi: 10.1016/j.ecolind.2018.11.016
}
