
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ufc.stats

<!-- badges: start -->

<!-- badges: end -->

This package contains UFC fight statistics, continously updated with
data from latest events.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("mtoto/ufc.stats")
```

## Example usage

Who has the most significant strikes landed in UFC history?

``` r
library(ufc.stats)
library(dplyr)
#> 
#> Attaching package: 'dplyr'
#> The following objects are masked from 'package:stats':
#> 
#>     filter, lag
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union

data("ufc_stats")
ufc_stats %>% group_by(Fighter) %>%
  summarise(total_strikes = sum(Significant_strikes_landed)) %>%
  arrange(-total_strikes) %>%
  head()
#> # A tibble: 6 x 2
#>   Fighter            total_strikes
#>   <chr>                      <int>
#> 1 Max Holloway                1937
#> 2 Michael Bisping             1567
#> 3 Frankie Edgar               1559
#> 4 Donald Cerrone              1535
#> 5 Joanna Jedrzejczyk          1525
#> 6 Rafael Dos Anjos            1387
```

Each row represents the statistics of a fighter in a single round.
Overall, the dataset consits of 36 variables:

``` r
str(ufc_stats)
#> 'data.frame':    24598 obs. of  36 variables:
#>  $ Fighter                      : chr  "Dominick Reyes" "Chris Weidman" "Yair Rodriguez" "Jeremy Stephens" ...
#>  $ Knockdowns                   : int  1 0 0 0 0 0 0 0 0 0 ...
#>  $ Significant_strikes_landed   : int  8 3 39 11 41 11 16 28 19 9 ...
#>  $ Significant_strikes_attempted: int  11 6 70 24 73 22 27 49 39 32 ...
#>  $ Significant_strikes_rate     : num  0.72 0.5 0.55 0.45 0.56 0.5 0.59 0.57 0.48 0.28 ...
#>  $ Total_strikes_landed         : int  9 10 39 11 62 21 35 67 19 9 ...
#>  $ Total_strikes_attempted      : int  12 13 70 25 97 34 46 97 39 32 ...
#>  $ Takedown_successful          : int  0 1 0 0 0 1 0 2 0 0 ...
#>  $ Takedown_attempted           : int  0 4 3 0 0 1 0 3 0 0 ...
#>  $ Takedown_rate                : num  0 0.25 0 0 0 1 0 0.66 0 0 ...
#>  $ Submission_attempt           : int  0 0 0 0 0 0 0 0 0 0 ...
#>  $ Passes                       : int  0 0 0 0 0 0 0 1 0 0 ...
#>  $ Reversals                    : int  0 0 0 0 0 0 0 0 0 0 ...
#>  $ Head_landed                  : int  7 1 18 3 37 9 10 23 12 3 ...
#>  $ Head_attempted               : int  10 4 43 14 67 19 17 43 31 22 ...
#>  $ Body_landed                  : int  0 2 9 4 2 2 3 4 0 5 ...
#>  $ Body_attempted               : int  0 2 13 4 4 2 6 4 0 9 ...
#>  $ Leg_landed                   : int  1 0 12 4 2 0 3 1 7 1 ...
#>  $ Leg_attempted                : int  1 0 14 6 2 1 4 2 8 1 ...
#>  $ Distance_landed              : int  2 1 34 9 5 1 15 9 17 9 ...
#>  $ Distance_attempted           : int  4 3 61 21 13 8 26 22 37 32 ...
#>  $ Clinch_landed                : int  2 1 4 2 2 4 0 0 2 0 ...
#>  $ Clinch_attempted             : int  2 1 8 3 2 7 0 1 2 0 ...
#>  $ Ground_landed                : int  4 1 1 0 34 6 1 19 0 0 ...
#>  $ Ground_attempted             : int  5 2 1 0 58 7 1 26 0 0 ...
#>  $ Round                        : chr  "round 1" "round 1" "round 1" "round 1" ...
#>  $ Result                       : chr  "KO/TKO" "KO/TKO" "Decision - Unanimous" "Decision - Unanimous" ...
#>  $ Last_round                   : int  1 1 3 3 3 3 3 3 3 3 ...
#>  $ Time                         : chr  "1:43" "1:43" "5:00" "5:00" ...
#>  $ Timeformat                   : chr  "5 Rnd (5-5-5-5-5)" "5 Rnd (5-5-5-5-5)" "3 Rnd (5-5-5)" "3 Rnd (5-5-5)" ...
#>  $ Winner                       : chr  "W" "L" "W" "L" ...
#>  $ Weight_class                 : chr  "Light Heavyweight Bout" "Light Heavyweight Bout" "Featherweight Bout" "Featherweight Bout" ...
#>  $ Event                        : chr  "UFC Fight Night: Reyes vs. Weidman" "UFC Fight Night: Reyes vs. Weidman" "UFC Fight Night: Reyes vs. Weidman" "UFC Fight Night: Reyes vs. Weidman" ...
#>  $ Date                         : Date, format: "2019-10-18" "2019-10-18" ...
#>  $ Location                     : chr  "Boston, Massachusetts, USA" "Boston, Massachusetts, USA" "Boston, Massachusetts, USA" "Boston, Massachusetts, USA" ...
#>  $ Attendance                   : num  12066 12066 12066 12066 12066 ...
```