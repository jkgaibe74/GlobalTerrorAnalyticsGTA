#' Calculate Summary Statistics
#'
#' Calculate mean, median, and standard deviation for a numeric vector.
#'
#' @param x A numeric vector.
#' @return A named vector containing the mean, median, and standard deviation.
#' @export
#'
#' @examples
#' # Load your data
#' gta.df <- read.csv(system.file("data", "FTerrorData.csv", package = "GlobalTerrorAnalyticsGTA"))
#'
#' # Calculate summary statistics for the number of fatalities (nkill)
#' nkill_stats <- summary_stats(gta.df$nkill)
#' cat("nkill statistics:", nkill_stats)

#' @importFrom stats median sd


summary_stats <- function(x) {
  stats <- c(
    Mean = mean(x, na.rm = TRUE),
    Median = median(x, na.rm = TRUE),
    SD = sd(x, na.rm = TRUE),
    Min = min(x, na.rm = TRUE),
    Max = max(x, na.rm = TRUE)
  )
  return(as.data.frame(stats))
}


