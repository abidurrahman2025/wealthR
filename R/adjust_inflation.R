adjust_inflation <- function(amounts, inflation_rate, years) {
  months <- 1:length(amounts)
  # Calculate the discount factor for each month
  discount <- (1 + (inflation_rate / 12))^months
  return(amounts / discount)
}