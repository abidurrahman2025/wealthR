# Adjust Values for Inflation

Discounts a vector of future nominal values to their present value
(purchasing power) based on a monthly inflation rate.

## Usage

``` r
adjust_inflation(amounts, inflation_rate)
```

## Arguments

- amounts:

  Numeric vector. The nominal values to be adjusted.

- inflation_rate:

  Numeric. The annual inflation rate (as a decimal).

## Value

A numeric vector of inflation-adjusted values.
