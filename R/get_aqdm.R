#' get_aqdm
#'
#' generic function for making requests to the AQS REST Service
#'
#' All the other data retrieval functions in this package are just
#' wrappers for this function with additional validation
#'
#'@param endpoint the name of an AQS REST service endpoint
#'@param params a named list of parameters to be passed to the REST service
#'
#'@export
get_aqdm <- function(endpoint, params) {

  url <- paste(aqdm_url, endpoint, sep = "/")

  if(!missing(params)) {
    url <- paste(url, paste(names(params), params, sep="=", collapse = "&"), sep = "?")
  }

  res <- GET(url)
  code <- status_code(res)

  if(status_code(res) == 200) {
    return(content(res))
  } else {
    stop("The REST service reported: ", http_status(res)$message)
  }

}
