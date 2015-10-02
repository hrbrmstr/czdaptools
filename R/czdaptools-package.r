#' Tools for downloading zone data from ICANN's CZDS application.
#'
#' Can perform parallel downloads. Use \code{options(mc.cores=n)}. Also expects
#' the ICANN CZDAP key to be in ICANN_CZDAP_KEY (use \code{.Renvion}).
#'
#' @note download & decryption of "credentials" it not supported yet
#' @name czdaptools
#' @docType package
#' @author Bob Rudis (@@hrbrmstr)
#' @import httr jsonlite parallel
NULL
