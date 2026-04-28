#' Calculate Wealth Trajectory
#'
# Calculates the monthly balance of an investment account using compound interest
# and regular monthly contributions (Ordinary Annuity).
#
#' @param principal Numeric. The starting balance of the account.
#' @param monthly Numeric. The amount contributed at the end of each month.
#' @param rate Numeric. The annual nominal interest rate (as a decimal, e.g., 0.05 for 5 parcent).
#' @param years Numeric. The number of years to project.
#' @return A numeric vector representing the account balance at each month.
#' @export
calc_wealth <- function(principal, monthly, rate, years) {
  if (rate < 0) stop("Rate must be non-negative.")
  months <- 1:(years * 12)
  m_rate <- rate / 12
  if (m_rate == 0) {
    balance <- principal + (monthly * months)
  } else {
    balance <- principal * (1 + m_rate)^months +
      monthly * (((1 + m_rate)^months - 1) / m_rate)
  }
  return(balance)
}
