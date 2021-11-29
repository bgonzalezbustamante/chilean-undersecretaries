Potential Inconsistencies II
================

## Data

``` r
data_CHL <- read.csv("../data/chl_undersecretaries.csv", encoding = "UTF-8")
```

## ID and Name

``` r
data_CHL$name[which(data_CHL$id == 317)]
```

    ## [1] "Mahmud Aleuy Peña y Lillo"

``` r
data_CHL$name[which(data_CHL$id == 337)]
```

    ## [1] "Emilio de la Cerda Errázuriz"

``` r
data_CHL$name[which(data_CHL$id == 343)]
```

    ## [1] "Antonio Frey Valdés"

## President in Office

``` r
data_CHL$president[which(data_CHL$id == 317)]
```

    ## [1] "Michelle Bachelet II"

``` r
data_CHL$president[which(data_CHL$id == 337)]
```

    ## [1] "Sebastián Piñera II"

``` r
data_CHL$president[which(data_CHL$id == 343)]
```

    ## [1] "Michelle Bachelet II"

## Portfolio Name

``` r
data_CHL$undersec[which(data_CHL$id == 317)]
```

    ## [1] "Interior"

``` r
data_CHL$undersec[which(data_CHL$id == 337)]
```

    ## [1] "Patrimonio Cultural"

``` r
data_CHL$undersec[which(data_CHL$id == 343)]
```

    ## [1] "Prevención del Delito"

## Potential Problems

``` r
data_CHL$start_undersec[which(data_CHL$id == 317)]
```

    ## [1] "2014-03-07"

``` r
data_CHL$start_undersec[which(data_CHL$id == 337)]
```

    ## [1] "2018-01-11"

``` r
data_CHL$end_undersec[which(data_CHL$id == 343)]
```

    ## [1] "2018-10-26"
