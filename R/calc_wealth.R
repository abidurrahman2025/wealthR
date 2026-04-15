# You can learn more about package authoring with RStudio at:
#
#   https://r-pkgs.org
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'


#' Calculate projected wealth over time
#'
#' Computes the monthly projected balance from an initial principal and regular
#' monthly contributions at a given annual rate.
#'
#' @param principal Numeric scalar. Initial amount invested.
#' @param monthly Numeric scalar. Monthly contribution amount.
#' @param rate Numeric scalar. Annual interest rate expressed as a decimal.
#' @param years Numeric scalar. Projection length in years.
#'
#' @return A numeric vector giving the projected balance for each month.
#'
#' @examples
#' calc_wealth(1000, 100, 0.05, 2)
calc_wealth <- function(principal, monthly, rate, years) {
  if (rate < 0) stop("Rate must be positive.")

  months <- 1:(years * 12)
  m_rate <- rate / 12

  # Future value of a lump sum + future value of an annuity
  balance <- principal * (1 + m_rate)^months +
    monthly * (((1 + m_rate)^months - 1) / m_rate)

  return(balance)
}
