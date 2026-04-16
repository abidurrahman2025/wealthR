# Adjust amounts for inflation over time

Converts a monthly series of amounts into inflation-adjusted values
using a monthly inflation rate.

## Usage

``` r
adjust_inflation(amounts, inflation_rate, years)
```

## Arguments

- amounts:

  Numeric vector of amounts, one value per month.

- inflation_rate:

  Numeric scalar. Annual inflation rate expressed as a decimal.

- years:

  Numeric scalar. Number of years covered by the series.

## Value

A numeric vector of inflation-adjusted amounts.

## Examples

``` r
adjust_inflation(c(100, 100, 100), 0.03, 1)
#> [1] 99.75062 99.50187 99.25373
```
