#' Creates a timeseries plot showing number of terrorist incidents for each year
#' @export
#' @import ggplot2
#' @param data A data frame containing the terrorist incident data.
#' @return A ggplot2 plot object
#' @details This function takes a data frame containing information about terrorist incidents
#' and creates a timeseries plot showing the number of incidents for each year.
#' @examples
#' # Load your data
#' gta.df <- read.csv(system.file("data", "FTerrorData.csv", package = "GlobalTerrorAnalyticsGTA"))
#'
#' # Visualize timeseries
#' visualize_timeseries(gta.df)
#'
visualize_timeseries <- function(data) {
  # Load the ggplot2 package
  if (!requireNamespace("ggplot2", quietly = TRUE)) {
    stop("ggplot2 package not found. Please install it.")
  }

  # Convert iyear to a factor to ensure that each year is treated as a separate category
  data$iyear <- as.factor(data$iyear)

  # Count the number of terrorist incidents for each year
  incident_counts <- table(data$iyear)

  # Convert the incident counts to a data frame
  incident_counts_df <- as.data.frame(incident_counts)

  # Rename the columns
  names(incident_counts_df) <- c("Year", "Incidents")

  # Plot the time series
  ggplot2::ggplot(incident_counts_df, aes(x = Year, y = Incidents, group = 1)) +
    ggplot2::geom_line() +
    ggplot2::labs(title = "Number of Terrorist Incidents Over the Years",
                  x = "Year",
                  y = "Number of Incidents") +
    ggplot2::theme_minimal() +
    ggplot2::theme(axis.text.x = ggplot2::element_text(angle = 45, hjust = 1))
}

