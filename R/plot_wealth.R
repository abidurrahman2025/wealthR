#' Plot a wealth projection
#'
#' Plots a time series of wealth values against years.
#'
#' @param data A numeric vector of wealth values, typically monthly values.
#' @param title A character scalar. Plot title.
#'
#' @return Invisibly returns `NULL`.
#'
#' @examples
#' plot_wealth(seq(1000, 5000, length.out = 60))
plot_wealth <- function(data, title = "Wealth Projection") {
  years <- (1:length(data)) / 12
  plot(years, data, type = "l", col = "blue", lwd = 2,
       xlab = "Years", ylab = "Value ($)", main = title,
       panel.first = grid())
  polygon(c(years, rev(years)), c(data, rep(0, length(data))),
          col = rgb(0, 0, 1, 0.1), border = NA)
}
