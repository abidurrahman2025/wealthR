#' Adjust values for inflation
#'
#' @param amount Numeric vector of nominal amounts.
#' @param inflation_rate Annual inflation rate as decimal.
#' @param years Number of years in the future.
#'
#' @return Numeric vector of inflation-adjusted values.
#' @examples
#' adjust_for_inflation(c(100, 200), 0.03, 5)
adjust_for_inflation <- function(amount, inflation_rate, years) {
  if (any(is.na(c(amount, inflation_rate, years)))) stop("Inputs cannot be NA.")
  if (inflation_rate < -1 || years < 0) stop("Invalid inflation rate or years.")
  amount / (1 + inflation_rate)^years
}
