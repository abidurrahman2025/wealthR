#' Project savings with regular contributions
#'
#' @param start_balance Initial balance.
#' @param monthly_contribution Monthly contribution.
#' @param annual_rate Annual return rate as decimal.
#' @param years Number of years.
#'
#' @return Data frame with monthly savings path.
#' @examples
#' project_savings(5000, 250, 0.06, 20)
project_savings <- function(start_balance, monthly_contribution, annual_rate, years) {
  if (any(is.na(c(start_balance, monthly_contribution, annual_rate, years)))) stop("Inputs cannot be NA.")
  if (start_balance < 0 || monthly_contribution < 0 || annual_rate < -1 || years < 0) stop("Invalid inputs.")

  months <- years * 12
  bal <- numeric(months + 1)
  bal[1] <- start_balance

  if (months == 0) {
    return(data.frame(month = 0, balance = start_balance))
  }

  monthly_rate <- annual_rate / 12
  for (i in 1:months) {
    bal[i + 1] <- bal[i] * (1 + monthly_rate) + monthly_contribution
  }

  data.frame(
    month = 0:months,
    balance = bal
  )
}
