# Plot a wealth projection

Plots a monthly wealth series against time in years.

## Usage

``` r
plot_wealth(data, title = "Wealth Projection")
```

## Arguments

- data:

  Numeric vector of wealth values, typically monthly projections.

- title:

  Character string. Plot title.

## Value

Invisibly returns \`NULL\`.

## Examples

``` r
plot_wealth(c(1000, 1100, 1200))
```
