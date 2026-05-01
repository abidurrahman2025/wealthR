# Adjust Values for Inflation

Converts future dollar amounts into "today's dollars" to show their
actual purchasing power.

## Usage

``` r
adjust_inflation(amounts, inflation_rate)
```

## Arguments

- amounts:

  Numeric vector. The list of future money values you want to adjust

- inflation_rate:

  Numeric. The annual inflation rate (as a decimal).

## Value

A list of values showing what that money is worth in today's economy.
