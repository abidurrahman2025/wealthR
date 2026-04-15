#' Summarize a forecast
#'
#' @param forecast A data frame from grow_investment or project_savings.
#' @param initial Starting value.
#'
#' @return One-row summary data frame.
#' @examples
#' x <- grow_investment(1000, 0.07, 5, 200)
#' summarize_forecast(x, 1000)
summarize_forecast <- function(forecast, initial) {
  if (!is.data.frame(forecast)) stop("forecast must be a data frame.")
  if (!"balance" %in% names(forecast)) stop("forecast must contain a balance column.")
  if (any(is.na(initial))) stop("initial cannot be NA.")

  final_balance <- tail(forecast$balance, 1)
  contributions <- if ("contribution" %in% names(forecast)) sum(forecast$contribution, na.rm = TRUE) else NA
  gain <- final_balance - initial

  data.frame(
    initial = initial,
    final_balance = final_balance,
    total_contributions = contributions,
    gain = gain
  )
}
