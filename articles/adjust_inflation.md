# Adjusting for Inflation

``` r

library(wealthR)
```

## Description

Adjusts a sequence of nominal financial values for inflation to reflect
their real value in today’s purchasing power. This function uses a
monthly discount factor based on the provided annual inflation rate.The
function assumes the first amount is next month. It uses the Present
Value (PV) formula, specifically the Discount Factor.

## Usage

adjust_inflation(amounts, inflation_rate)

## Arguments

- `amounts`: Numeric vector. The nominal future values. The function
  assumes the first amount is next month.
- `inflation_rate`: Numeric. The annual inflation rate (as a decimal,
  e.g., 0.03 for 3%).

## Value

A numeric vector of the same length as amounts, containing values
adjusted for the cumulative effect of inflation.

## Example

``` r

nominal_values <- rep(10000, 60) # 5 years of monthly data
real_values <- adjust_inflation(nominal_values, inflation_rate = 0.03)
real_values
#>  [1] 9975.062 9950.187 9925.373 9900.622 9875.932 9851.304 9826.737 9802.231
#>  [9] 9777.787 9753.403 9729.081 9704.819 9680.617 9656.476 9632.395 9608.374
#> [17] 9584.413 9560.512 9536.670 9512.888 9489.165 9465.501 9441.896 9418.351
#> [25] 9394.863 9371.435 9348.065 9324.753 9301.499 9278.303 9255.165 9232.085
#> [33] 9209.062 9186.097 9163.189 9140.338 9117.545 9094.807 9072.127 9049.503
#> [41] 9026.936 9004.425 8981.970 8959.571 8937.228 8914.941 8892.709 8870.533
#> [49] 8848.412 8826.346 8804.335 8782.379 8760.478 8738.631 8716.839 8695.101
#> [57] 8673.418 8651.788 8630.213 8608.691
```
