# You can learn more about package authoring with RStudio at:
#
#   https://r-pkgs.org
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'


calc_wealth <- function(principal, monthly, rate, years) {
  if (rate < 0) stop("Rate must be positive.")

  months <- 1:(years * 12)
  m_rate <- rate / 12

  # Future value of a lump sum + future value of an annuity
  balance <- principal * (1 + m_rate)^months +
    monthly * (((1 + m_rate)^months - 1) / m_rate)

  return(balance)
}
