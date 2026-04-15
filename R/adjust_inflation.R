#' Adjust amounts for inflation over time
#'
#' Converts a monthly series of amounts into inflation-adjusted values using a
#' monthly inflation rate.
#'
#' @param amounts Numeric vector of amounts, one value per month.
#' @param inflation_rate Numeric scalar. Annual inflation rate expressed as a decimal.
#' @param years Numeric scalar. Number of years covered by the series.
#'
#' @return A numeric vector of inflation-adjusted amounts.
#'
#' @examples
#' adjust_inflation(c(100, 100, 100), 0.03, 1)
adjust_inflation <- function(amounts, inflation_rate, years) {
  months <- 1:length(amounts)
  # Calculate the discount factor for each month
  discount <- (1 + (inflation_rate / 12))^months
  return(amounts / discount)
}
