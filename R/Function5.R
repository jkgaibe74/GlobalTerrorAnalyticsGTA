#' Plot Type of Attacks
#'
#' Plot the number of attacks over time grouped by attack type.
#'
#' @param data A dataframe containing the data.
#' @return A ggplot object.
#' @export
#' @import dplyr
#' @examples
#' data(gta.df)
#' plot_attacks(gta.df)
plot_attacks <- function(data) {
  data <- data %>%
    group_by(Year = iyear, `Type of attack` = attacktype1_txt) %>%
    summarise(`Number of events` = n()) %>%
    ungroup()

  ggplot(data = data, aes(x = Year, y = `Number of events`, colour = `Type of attack`)) +
    geom_line() + geom_point() + theme_bw()
}
