#' Adjust amounts for inflation
#'
#' Deflates a sequence of nominal amounts into real amounts using a monthly
#' inflation rate.
#'
#' @param amounts A numeric vector of nominal amounts over time.
#' @param inflation_rate A numeric scalar. The annual inflation rate as a
#'   decimal (for example, 0.03 for 3%).
#' @param years Unused. Included in the original function signature, but not
#'   needed for the calculation.
#'
#' @return A numeric vector of inflation-adjusted amounts.
#'
#' @examples
#' adjust_inflation(c(100, 100, 100), 0.03, 1)
adjust_inflation <- function(amounts, inflation_rate, years) {
  months <- 1:length(amounts)
  discount <- (1 + (inflation_rate / 12))^months
  return(amounts / discount)
}
