## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(googleErrorReportingR)

## ---- eval = FALSE------------------------------------------------------------
#  message$message <- message
#  
#  message$serviceContext$service <- service
#  message$serviceContext$version <- version
#  
#  message$context$httpRequest$method <- method
#  message$context$httpRequest$url <- url
#  message$context$httpRequest$userAgent <- user_agent
#  message$context$httpRequest$referrer <- referrer
#  message$context$httpRequest$responseStatusCode <- response_status_code
#  message$context$httpRequest$remoteIp <- remote_ip
#  
#  message$context$user <- user_id
#  
#  message$context$reportLocation$filePath <- filepath
#  message$context$reportLocation$lineNumber <- line_number
#  message$context$reportLocation$functionName <- function_name

## ---- eval=FALSE--------------------------------------------------------------
#  message$eventTime <- format(lubridate::now(), "%Y-%m-%dT%H:%M:%SZ")

