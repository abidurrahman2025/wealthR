#' Plot Wealth Projection
#'
#' Generates a line plot with a shaded area representing wealth growth over time.
#'
#' @param data Numeric vector. The wealth values to plot (indexed by month).
#' @param title String. The main title of the plot.
#' @return A plot object (base R graphics).
#' @importFrom grDevices rgb
#' @importFrom graphics grid polygon
#' @export
plot_wealth <- function(data, title = "Wealth Projection") {
  years <- (1:length(data)) / 12

  # Initialize plot
  plot(years, data, type = "l", col = "blue", lwd = 2,
       xlab = "Years", ylab = "Value ($)", main = title,
       panel.first = grid())

  # Fill the area under the curve
  polygon(c(years, rev(years)), c(data, rep(0, length(data))),
          col = rgb(0, 0, 1, 0.1), border = NA)
}
