#' Forecast loan balance over time
#'
#' @param principal Loan amount.
#' @param annual_rate Annual interest rate as decimal.
#' @param monthly_payment Monthly payment amount.
#' @param months Number of months to forecast.
#'
#' @return Data frame with month, interest, payment, and balance.
#' @examples
#' forecast_loan_balance(20000, 0.05, 400, 60)
forecast_loan_balance <- function(principal, annual_rate, monthly_payment, months) {
  if (any(is.na(c(principal, annual_rate, monthly_payment, months)))) stop("Inputs cannot be NA.")
  if (principal < 0 || annual_rate < 0 || monthly_payment <= 0 || months < 0) stop("Invalid inputs.")

  months <- as.integer(months)
  bal <- numeric(months + 1)
  interest_paid <- numeric(months)
  payment <- numeric(months)
  bal[1] <- principal
  monthly_rate <- annual_rate / 12

  if (months == 0) {
    return(data.frame(month = 0, interest = NA, payment = NA, balance = principal))
  }

  for (i in 1:months) {
    interest_paid[i] <- bal[i] * monthly_rate
    payment[i] <- min(monthly_payment, bal[i] + interest_paid[i])
    bal[i + 1] <- max(0, bal[i] + interest_paid[i] - payment[i])
  }

  data.frame(
    month = 0:months,
    interest = c(NA, interest_paid),
    payment = c(NA, payment),
    balance = bal
  )
}
