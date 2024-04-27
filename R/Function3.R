#' Count the number of terrorist incidents with attack type "Bombing/Explosion"
#' @param data A data frame containing the terrorist incident data.
#' @return The number of terrorist incidents with the attack type "Bombing/Explosion"
#'
#' @examples
#' # Load your data
#' gta.df <- read.csv(system.file("data", "FTerrorData.csv", package = "GlobalTerrorAnalyticsGTA"))
#'
#' # Count the number of terrorist incidents with attack type "Bombing/Explosion"
#' count_bombing_explosions(gta.df)


count_bombing_explosions <- function(data) {
  # Check if the attacktype1_txt column is available in the dataset
  if (!"attacktype1_txt" %in% colnames(data)) {
    stop("Column 'attacktype1_txt' not found in the dataset.")
  }

  # Count the number of incidents with the attack type "Bombing/Explosion"
  bombing_explosions_count <- sum(data$attacktype1_txt == "Bombing/Explosion", na.rm = TRUE)

  # Return the count
  return(bombing_explosions_count)
}


