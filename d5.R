# Install and load necessary libraries
install.packages("ggplot2")
library(ggplot2)
library(scales)  # for formatting percentage labels

# Create a data frame
data <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04", "2023-01-05")),
  PageViews = c(1500, 1600, 1400, 1650, 1800),
  ClickThroughRate = c(2.3, 2.7, 2.0, 2.4, 2.6)
)

# Create a line chart for daily page views trend
ggplot(data, aes(x = Date, y = PageViews, group = 1)) +
  geom_line() +
  labs(title = "Daily Page Views Trend",
       x = "Date",
       y = "Page Views") +
  scale_y_continuous(labels = scales::comma) +
  theme_minimal()
# Create a bar chart for top N days with the highest click-through rates
top_n_days <- 3  # Change this value for the desired number of top days

top_days <- data[order(data$ClickThroughRate, decreasing = TRUE), ][1:top_n_days, ]

ggplot(top_days, aes(x = reorder(Date, -ClickThroughRate), y = ClickThroughRate)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(title = paste("Top", top_n_days, "Days with Highest Click-Through Rates"),
       x = "Date",
       y = "Click-Through Rate") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
# Assuming you have data for user interactions (likes, shares, comments)
# Create a data frame with random interaction data for illustration
set.seed(123)
interaction_data <- data.frame(
  Date = data$Date,
  Likes = sample(1:50, 5, replace = TRUE),
  Shares = sample(1:30, 5, replace = TRUE),
  Comments = sample(1:20, 5, replace = TRUE)
)

# Reshape data for stacked area chart
interaction_long <- reshape2::melt(interaction_data, id.vars = "Date")

# Create a stacked area chart for distribution of user interactions
ggplot(interaction_long, aes(x = Date, y = value, fill = variable)) +
  geom_area() +
  labs(title = "Distribution of User Interactions",
       x = "Date",
       y = "Count",
       fill = "Interaction Type") +
  theme_minimal()


