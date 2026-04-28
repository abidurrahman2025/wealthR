#' Adjust Values for Inflation
#'
#' Discounts a vector of future nominal values to their present value (purchasing power)
#' based on a monthly inflation rate.
#'
#' @param amounts Numeric vector. The nominal values to be adjusted.
#' @param inflation_rate Numeric. The annual inflation rate (as a decimal).
#' @return A numeric vector of inflation-adjusted values.
#' @export
adjust_inflation <- function(amounts, inflation_rate) {
  months <- 1:length(amounts)
  # Calculate the discount factor for each month
  discount <- (1 + (inflation_rate / 12))^months
  return(amounts / discount)
}
