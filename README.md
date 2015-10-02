<!-- README.md is generated from README.Rmd. Please edit that file -->
czdaptools is an R counterpart to <https://github.com/fourkitchens/czdap-tools>.

It currently only supports downloading via API (i.e. it does not attempt to do anyting with FTP credentials yet, mostly since the author only needs the API access).

The following functions are implemented:

-   `get_zones`: Download all zone files associated with `ICANN_CZDAP_KEY`.
-   `get_zone_data_urls`: Retrieve the zone data urls available to your ICANN CZDAP account

### News

-   Version 0.0.0.9999 released

### Installation

``` r
devtools::install_github("hrbrmstr/czdaptools")
```

### Usage

``` r
library(czdaptools)

# current verison
packageVersion("czdaptools")
#> [1] '0.0.0.9000'
```

### Test Results

``` r
library(czdaptools)
library(testthat)

date()
#> [1] "Thu Oct  1 23:04:26 2015"

test_dir("tests/")
#> testthat results ========================================================================================================
#> OK: 0 SKIPPED: 0 FAILED: 0
#> 
#> DONE
```

### Code of Conduct

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
