#' Grow an investment over time
#'
#' @param initial Initial investment amount.
#' @param rate Annual return rate as a decimal.
#' @param years Number of years to simulate.
#' @param contribution Regular contribution added each year.
#' @param compound_per_year Compounding periods per year.
#'
#' @return A data frame with year, contribution, and balance.
#' @examples
#' grow_investment(1000, 0.07, 10, 500)
grow_investment <- function(initial, rate, years, contribution = 0, compound_per_year = 1) {
  if (length(initial) != 1 || length(rate) != 1 || length(years) != 1 ||
      length(contribution) != 1 || length(compound_per_year) != 1) {
    stop("All inputs must be single values.")
  }
  if (any(is.na(c(initial, rate, years, contribution, compound_per_year)))) {
    stop("Inputs cannot be NA.")
  }
  if (initial < 0 || years < 0 || contribution < 0 || compound_per_year <= 0) {
    stop("Initial, years, and contribution must be non-negative; compound_per_year must be positive.")
  }

  years <- as.integer(years)
  balance <- numeric(years + 1)
  balance[1] <- initial

  if (years == 0) {
    return(data.frame(year = 0, contribution = contribution, balance = initial))
  }

  for (i in 1:years) {
    balance[i + 1] <- balance[i] * (1 + rate / compound_per_year)^compound_per_year + contribution
  }

  data.frame(
    year = 0:years,
    contribution = c(0, rep(contribution, years)),
    balance = balance
  )
}
