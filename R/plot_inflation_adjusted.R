#' Plot nominal versus inflation-adjusted values
#'
#' @param nominal Numeric vector of nominal values.
#' @param inflation_rate Inflation rate as decimal.
#' @param years Years corresponding to each value.
#' @param main Plot title.
#'
#' @return Invisibly returns a data frame with nominal and real values.
#' @examples
#' plot_inflation_adjusted(c(1000, 1500, 2000), 0.03, 0:2)
plot_inflation_adjusted <- function(nominal, inflation_rate, years, main = "Nominal vs Inflation-Adjusted") {
  if (length(nominal) != length(years)) stop("nominal and years must have same length.")
  real <- nominal / (1 + inflation_rate)^years

  plot(years, nominal, type = "l", lwd = 2, col = "darkgreen",
       xlab = "Years", ylab = "Value", main = main)
  lines(years, real, lwd = 2, col = "firebrick")
  legend("topleft", legend = c("Nominal", "Inflation-adjusted"),
         col = c("darkgreen", "firebrick"), lwd = 2, bty = "n")

  invisible(data.frame(year = years, nominal = nominal, real = real))
}
