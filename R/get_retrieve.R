#'@templateVar aqs_endpoint retrieve
#'
#'@description
#' Returns the data created with a previsously submitted request.
#'
#'@template transaction_id
#'@template endpoint_title
#'@export
get_retrieve <- function(x) {

  if(class(x) == "raqdmObject") {
    id <- x$id
  } else {
    id <- x
  }

  get_aqdm("retrieve", list(id = id))

}
