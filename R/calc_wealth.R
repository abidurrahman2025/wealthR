#' Calculate projected wealth over time
#'
#' Computes the future value of an initial lump sum plus regular monthly
#' contributions compounded at a monthly rate.
#'
#' @param principal A numeric scalar. The initial amount invested.
#' @param monthly A numeric scalar. The monthly contribution amount.
#' @param rate A numeric scalar. The annual nominal interest rate as a decimal
#'   (for example, 0.06 for 6%).
#' @param years A numeric scalar. The number of years to project.
#'
#' @return A numeric vector of length `years * 12` containing the projected
#'   wealth balance at the end of each month.
#'
#' @examples
#' calc_wealth(1000, 200, 0.06, 5)
calc_wealth <- function(principal, monthly, rate, years) {
  if (rate < 0) stop("Rate must be positive.")

  months <- 1:(years * 12)
  m_rate <- rate / 12

  balance <- principal * (1 + m_rate)^months +
    monthly * (((1 + m_rate)^months - 1) / m_rate)

  return(balance)
}
