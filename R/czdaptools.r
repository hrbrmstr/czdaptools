#' Retrieve the zone data URLs available to your ICANN CZDAP account
#'
#' Requires \code{ICANN_CZDAP_KEY} to be in the environment (use \code{.Renviron}).
#'
#' @return character vector of URL paths with embedded api key
#' @export
#' @examples
#' get_zone_data_urls()
get_zone_data_urls <- function() {
  resp <- GET(base_url,
              path="user-zone-data-urls.json",
              query=list(token=Sys.getenv("ICANN_CZDAP_KEY")))
  stop_for_status(resp)
  fromJSON(content(resp, as="text"))
}

#' Download all zone files associated with ICANN_CZDAP_KEY.
#'
#' Works in parallel (set \code{options(mc.cores=###)}).
#'
#' This function takes in a base directory location to store ICANN zone files,
#' creates a subdirectory based on the current date and then tries to
#' download the zone files in parallel. If not on Windows, use
#' \code{options(mc.cores=n)} to control the number of parallel jobs.
#'
#' @param base_zone_dir base directory where the zone files will be delivered
#' @export
get_zones <- function(base_zone_dir="~/Data/zonefiles") {

  zone_urls <- get_zone_data_urls()

  message(sprintf("Downloading %d zone files...", length(zone_urls)))

  zone_dir <- sprintf("%s/%s", base_zone_dir, format(Sys.Date(), "%Y%m%d"))
  dir.create(zone_dir, showWarnings=FALSE, recursive=TRUE)

  invisible(mclapply(zone_urls, get_zone, zone_dir=zone_dir, base_url=base_url))

}
