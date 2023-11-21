page_data <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03")),
  Page_Views = c(1500, 1600, 1400),
  Click_Through_Rate = c(2.3, 2.7, 2.0)
)

# Install and load necessary library (if not installed)
# install.packages("ggplot2")
library(ggplot2)

# Line chart for daily page views
line_chart <- ggplot(page_data, aes(x = Date, y = Page_Views)) +
  geom_line() +
  labs(title = "Trend in Daily Page Views Over Time", x = "Date", y = "Page Views")

# Display the chart
print(line_chart)
# Assuming you want to show the top 2 days with the highest click-through rates
top_n_days <- 2
top_days <- page_data[order(page_data$Click_Through_Rate, decreasing = TRUE), ][1:top_n_days, ]

# Bar chart for top N days with highest click-through rates
bar_chart <- ggplot(top_days, aes(x = factor(Date), y = Click_Through_Rate, fill = factor(Date))) +
  geom_bar(stat = "identity") +
  scale_fill_manual(values = c("2023-01-02" = "blue", "2023-01-01" = "red")) +  # You can customize colors
  labs(title = paste("Top", top_n_days, "Days with Highest Click-Through Rates"),
       x = "Date", y = "Click-Through Rate")

# Display the chart
print(bar_chart)
# Assuming you have a data frame named 'page_data' with the given data
page_data <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03")),
  Page_Views = c(1500, 1600, 1400),
  Click_Through_Rate = c(2.3, 2.7, 2.0)
)

# Creating a table
page_data_table <- tableGrob(page_data, theme = ttheme_minimal())

# Display the table
grid.draw(page_data_table)