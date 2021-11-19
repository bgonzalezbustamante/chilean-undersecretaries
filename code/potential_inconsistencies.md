Potential Inconsistencies
================

## Data

``` r
data_CHL <- read.csv("../data/chl_undersecretaries.csv", encoding = "UTF-8")
```

## ID and Name

``` r
data_CHL$name[which(data_CHL$id == 1)]
```

    ## [1] "Belisario Velasco Baraona"

``` r
data_CHL$name[which(data_CHL$id == 100)]
```

    ## [1] "Jorge Burgos Varela"

``` r
data_CHL$name[which(data_CHL$id == 171)]
```

    ## [1] "Felipe Harboe Bascuñán"

``` r
data_CHL$name[which(data_CHL$id == 234)]
```

    ## [1] "Rodrigo Ubilla Mackenney"

## President in Office

``` r
data_CHL$president[which(data_CHL$id == 1)]
```

    ## [1] "Patricio Aylwin"

``` r
data_CHL$president[which(data_CHL$id == 100)]
```

    ## [1] "Ricardo Lagos"

``` r
data_CHL$president[which(data_CHL$id == 171)]
```

    ## [1] "Michelle Bachelet"

``` r
data_CHL$president[which(data_CHL$id == 234)]
```

    ## [1] "Sebastián Piñera"

## Portfolio Name

``` r
data_CHL$undersec[which(data_CHL$id == 1)]
```

    ## [1] "Interior"

``` r
data_CHL$undersec[which(data_CHL$id == 100)]
```

    ## [1] "Interior"

``` r
data_CHL$undersec[which(data_CHL$id == 171)]
```

    ## [1] "Interior"

``` r
data_CHL$undersec[which(data_CHL$id == 234)]
```

    ## [1] "Interior"

## Potential Problems

``` r
data_CHL$start_undersec[which(data_CHL$id == 1)]
```

    ## [1] "1990-03-09"

``` r
data_CHL$start_undersec[which(data_CHL$id == 100)]
```

    ## [1] "2000-03-09"

``` r
data_CHL$start_undersec[which(data_CHL$id == 171)]
```

    ## [1] "2006-01-30"

``` r
data_CHL$start_undersec[which(data_CHL$id == 234)]
```

    ## [1] "2010-03-09"
