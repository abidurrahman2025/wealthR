#' Adjust Values for Inflation
#'
#' Converts future dollar amounts into "today's dollars" to show their
#' actual purchasing power.
#'
#' @param amounts Numeric vector. The list of future money values you want to adjust
#' @param inflation_rate Numeric. The annual inflation rate (as a decimal).
#' @return A list of values showing what that money is worth in today's economy.
#' @export
adjust_inflation <- function(amounts, inflation_rate) {
  months <- 1:length(amounts)
  # Calculate the discount factor for each month
  discount <- (1 + (inflation_rate / 12))^months
  return(amounts / discount)
}
