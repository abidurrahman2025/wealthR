
#' Plot growth curve
#'
#' @param forecast Data frame with year/month and balance columns.
#' @param xlab X-axis label.
#' @param ylab Y-axis label.
#' @param main Plot title.
#'
#' @return Invisibly returns the forecast.
#' @examples
#' x <- grow_investment(1000, 0.07, 10, 500)
#' plot_growth_curve(x)
plot_growth_curve <- function(forecast, xlab = "Time", ylab = "Balance", main = "Growth Curve") {
  if (!is.data.frame(forecast)) stop("forecast must be a data frame.")
  if (!all(c("balance") %in% names(forecast))) stop("forecast must contain balance.")
  x <- if ("year" %in% names(forecast)) forecast$year else forecast$month

  plot(x, forecast$balance, type = "l", lwd = 2, col = "steelblue",
       xlab = xlab, ylab = ylab, main = main)
  grid()
  invisible(forecast)
}
