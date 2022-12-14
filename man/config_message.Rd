% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/config_message.R
\name{config_message}
\alias{config_message}
\title{Format messages before sending to Google Error Reporting}
\usage{
config_message(message, req, status_code)
}
\arguments{
\item{message}{Error message returned by validation}

\item{req}{Request object used by plumber}

\item{status_code}{Valid HTTP status code}
}
\value{
formatted message
}
\description{
Format messages before sending to Google Error Reporting
}
\examples{
\dontrun{
your_function_call <- tryCatch(
  your_function(),
  error = function(e) {
    message$message <- as.character(e)
    googleErrorReportingR::report_error(message)
    message <- config_message(message, req, "401")
    stop("Error", call. = FALSE)
  })
}
}
