#' Compute real return after inflation
#'
#' @param nominal_return Nominal return rate as decimal.
#' @param inflation_rate Inflation rate as decimal.
#'
#' @return Real return rate.
#' @examples
#' compute_real_return(0.08, 0.03)
compute_real_return <- function(nominal_return, inflation_rate) {
  if (any(is.na(c(nominal_return, inflation_rate)))) stop("Inputs cannot be NA.")
  (1 + nominal_return) / (1 + inflation_rate) - 1
}

#' Run multiple return scenarios
#'
#' @param initial Initial value.
#' @param years Number of years.
#' @param rates Named numeric vector of return assumptions.
#' @param contribution Annual contribution.
#'
#' @return Data frame comparing scenarios.
#' @examples
#' scenario_forest(1000, 10, c(conservative=0.04, base=0.06, optimistic=0.08), 500)
scenario_forest <- function(initial, years, rates, contribution = 0) {
  if (any(is.na(c(initial, years, contribution)))) stop("Inputs cannot be NA.")
  if (!is.numeric(rates) || length(rates) < 1) stop("rates must be a numeric vector.")
  if (initial < 0 || years < 0 || contribution < 0) stop("Invalid inputs.")

  out <- vector("list", length(rates))
  nm <- names(rates)
  if (is.null(nm)) nm <- paste0("scenario_", seq_along(rates))

  for (i in seq_along(rates)) {
    sim <- grow_investment(initial, rates[i], years, contribution)
    out[[i]] <- data.frame(
      scenario = nm[i],
      year = sim$year,
      balance = sim$balance
    )
  }
  do.call(rbind, out)
}
