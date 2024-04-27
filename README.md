# GlobalTerrorAnalyticsGTA
 Global Terror Analytics and Visualization


GlobalTerrorAnalyticsGTA is an R package designed for analyzing global terrorism data. It provides various functions for trend analysis, data visualization, and statistical insights using the Global Terrorism Database (GTD) data under the University of Maryland's EULA terms.



This project is useful for researchers, analysts, and policymakers who are interested in understanding patterns, trends, and insights related to global terrorism incidents. By providing easy-to-use functions and visualizations, it enables users to explore and analyze terrorism data effectively.





To get started with the project, follow these steps:

1.Install the package from GitHub using devtools:
devtools::install_github("username/GlobalTerrorAnalyticsGTA")


Load the package and your data:
data <- read.csv(system.file("data", "FTerrorData.csv", package = "GlobalTerrorAnalyticsGTA"))


Explore the various functions provided by the package:

Visualize time series: visualize_timeseries(data)

Convert columns to a single date object: convert_to_date(data)

Count bombing/explosion incidents: count_bombing_explosions(data)

Calculate summary statistics: summary_stats(data$nkill)

Plot type of attacks: plot_attacks(data)

If you need help with the project, you can:

Check the .RMD or the HTML file and examples provided in the package.



