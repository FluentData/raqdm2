#'@templateVar aqs_endpoint status
#'
#'@description
#' Returns the status of a previously submitted job.
#'
#'@template transaction_id
#'@template endpoint_title
#'@export
get_status <- function(x) {

  if(class(x) == "raqdmObject") {
    id <- x$id
  } else {
    id <- x
  }

  get_aqdm("status", list(id = id))

}
