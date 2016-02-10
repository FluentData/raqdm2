#'@templateVar aqs_endpoint serviceAvailable
#'
#'@description
#' Returns a response if the REST services are working.
#'
#'@details
#' Will return READY @" followed by the date and time at the server (US Eastern
#' Time Zone) if the service is running, otherwise will return an error.
#'@template endpoint_title
#'@export
get_serviceAvailable <- function() {

  get_aqdm("serviceAvailable")

}
