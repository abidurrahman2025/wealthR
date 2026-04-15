
#' Plot scenario bands
#'
#' @param scenario_df Data frame from scenario_forest.
#' @param main Plot title.
#'
#' @return Invisibly returns the input data.
#' @examples
#' s <- scenario_forest(1000, 10, c(conservative=0.04, base=0.06, optimistic=0.08), 500)
#' plot_scenario_bands(s)
plot_scenario_bands <- function(scenario_df, main = "Scenario Comparison") {
  if (!is.data.frame(scenario_df)) stop("scenario_df must be a data frame.")
  if (!all(c("scenario", "year", "balance") %in% names(scenario_df))) stop("Missing required columns.")

  scenarios <- unique(scenario_df$scenario)
  cols <- c("steelblue", "darkorange", "darkgreen", "purple", "brown")
  plot(NA, xlim = range(scenario_df$year), ylim = range(scenario_df$balance),
       xlab = "Year", ylab = "Balance", main = main)

  for (i in seq_along(scenarios)) {
    s <- scenario_df[scenario_df$scenario == scenarios[i], ]
    lines(s$year, s$balance, col = cols[(i - 1) %% length(cols) + 1], lwd = 2)
  }

  legend("topleft", legend = scenarios,
         col = cols[seq_along(scenarios)], lwd = 2, bty = "n")
  grid()
  invisible(scenario_df)
}
