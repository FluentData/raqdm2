#'@templateVar aqs_endpoint list
#'
#'@description
#' Returns a list of valid values for a variable. Requesting a list takes three
#' parts. The list name, the qualifier (what to filter the list on), and the
#' resource - only one of which is currently available.
#'
#'@details
#' Must include a \code{name} parameter telling the REST service which parameter
#' list to return. Acceptable values are:
#' \itemize{
#'  \item \code{state}
#'  \item \code{county}
#'  \item \code{site}
#'  \item \code{pc}
#'  \item \code{param}
#'  \item \code{format}
#'  \item \code{cbsa}
#'  \item \code{csa}
#'  \item \code{duration}
#'  \item \code{agency}
#' }
#' May also pass one or more qualifier parameters. These will filter the
#' \code{name} list returned. Acceptable qualifier parameters are:
#' \itemize{
#'  \item \code{state}
#'  \item \code{county}
#'  \item \code{pc}
#'  \item \code{agency_code}
#' }
#' Also accepts a \code{resource} parameter which indicates the name of the
#' service to use as a reference for this list. Currently, this parameter is
#' optional and the only acceptable value is \code{rawData}. This value is
#' inserted into the query by default.
#'
#'@param name The variable for which to show a list of valid values
#'@param \dots Qualifier variables to filter the list on.
#'@template endpoint_title
#'@export
get_list <- function(name, ...) {

  params <- list(name = name)
  params <- c(params, list(...))

  res <- get_aqdm("list", params)

  df <- read.table(textConnection(res), header = FALSE, sep = "\t")
  colnames(df) <- c("code", "value")

  return(df)

}
