# Calculate projected wealth over time

Computes the monthly projected balance from an initial principal and
regular monthly contributions at a given annual rate.

## Usage

``` r
calc_wealth(principal, monthly, rate, years)
```

## Arguments

- principal:

  Numeric scalar. Initial amount invested.

- monthly:

  Numeric scalar. Monthly contribution amount.

- rate:

  Numeric scalar. Annual interest rate expressed as a decimal.

- years:

  Numeric scalar. Projection length in years.

## Value

A numeric vector giving the projected balance for each month.

## Examples

``` r
calc_wealth(1000, 100, 0.05, 2)
#>  [1] 1104.167 1208.767 1313.804 1419.278 1525.192 1631.547 1738.345 1845.588
#>  [9] 1953.278 2061.417 2170.006 2279.047 2388.543 2498.496 2608.906 2719.777
#> [17] 2831.109 2942.905 3055.167 3167.897 3281.097 3394.768 3508.913 3623.533
```
