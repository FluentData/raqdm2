#'@templateVar aqs_endpoint rawData
#'
#'@description
#' Returns raw data that match your query criteria. This is a synchronous query
#' that returns data to your screen, so you must stay connected to the service
#' while the query runs.
#'
#'@template dots
#'@template endpoint_title
#'@export
get_rawData <- function(...) {

  params <- list(...)

  res <- get_aqdm("rawData", params)

}
