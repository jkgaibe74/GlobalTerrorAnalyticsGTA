#' Convert Year, Month, and Day Columns to a Single Date Object
#'
#' This function takes a data frame with separate columns for year, month, and day
#' and combines them into a single date object.
#'
#' @param data The data frame containing the separate year, month, and day columns.
#' @param year_col Name of the column representing the year. Default is "iyear".
#' @param month_col Name of the column representing the month. Default is "imonth".
#' @param day_col Name of the column representing the day. Default is "iday".
#' @return A single date object representing the combined year, month, and day.
#' @export
#' @examples
#' # Load your data
#' gta.df <- read.csv(system.file("data", "FTerrorData.csv", package = "GlobalTerrorAnalyticsGTA"))
#'
#' # Convert separate year, month, and day columns to a single date column
#' gta.df$date <- convert_to_date(gta.df)
#'
convert_to_date <- function(data, year_col = "iyear", month_col = "imonth", day_col = "iday") {
  # Check if required columns exist in the data
  if (!all(c(year_col, month_col, day_col) %in% names(data))) {
    stop("Error: Data must contain columns named ", paste(year_col, month_col, day_col, collapse = ", "))
  }

  # Combine year, month, and day into a character vector
  date_strings <- paste(data[[year_col]], data[[month_col]], data[[day_col]], sep = "-")

  # Convert the character vector to date objects
  dates <- as.Date(date_strings, format = "%Y-%m-%d")

  # Return the new date column
  return(dates)
}
