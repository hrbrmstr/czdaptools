# called by get_zones() - downloads one zone file
get_zone <- function(zone_url, zone_dir, base_url) {
  fil <- paste0(file.path(path.expand(zone_dir),
                          basename(parse_url(zone_url)$path)), ".txt.gz", collapse="")
  URL <- sprintf("%s%s", base_url, zone_url)
  download.file(URL, fil, mode="wb", quiet=TRUE)
}

# ICANN CZDAP base URL
base_url <- "https://czdap.icann.org"
