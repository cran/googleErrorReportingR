## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(googleErrorReportingR)

## -----------------------------------------------------------------------------
message <- googleErrorReportingR::format_error_message()
message$serviceContext$service <- "api_name"
message$serviceContext$version <- "api_version"

## ----eval=FALSE, include=TRUE-------------------------------------------------
#  error_catcher_from_function <- tryCatch(
#    your_function(your_parameters),
#    error = function(e) {
#      message$message <- as.character(e)
#      googleErrorReportingR::report_error(message)
#      stop("Error message to print", call. = FALSE)
#    })

