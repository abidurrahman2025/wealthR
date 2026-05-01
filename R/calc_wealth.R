#' Calculate Wealth Trajectory
#'
# Calculates the monthly balance of an investment account using compound interest
# and regular monthly contributions (Ordinary Annuity).
#
#' @param principal Numeric. Your starting balance (how much money you have now)
#' @param monthly Numeric. The amount you plan to save/add every month.
#' @param rate Numeric. The annual nominal interest rate (as a decimal, e.g., 0.05 for 5 parcent).
#' @param years Numeric. How many years into the future you want to project.
#' @return A list of monthly balances over the specified time.
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
