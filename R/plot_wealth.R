plot_wealth <- function(data, title = "Wealth Projection") {
  years <- (1:length(data)) / 12
  plot(years, data, type = "l", col = "blue", lwd = 2,
       xlab = "Years", ylab = "Value ($)", main = title,
       panel.first = grid())
  # Add a shaded area for aesthetic quality
  polygon(c(years, rev(years)), c(data, rep(0, length(data))), 
          col = rgb(0, 0, 1, 0.1), border = NA)
}