employee_data <- data.frame(
  Employee_ID = c(1, 2, 3, 4, 5),
  Name = c("John Smith", "Jane Doe", "Robert Brown", "Sarah White", "Michael Lee"),
  Department = c("Sales", "HR", "Marketing", "Sales", "HR"),
  Years_of_Service = c(5, 3, 7, 4, 2),
  Performance_Score = c(85, 92, 78, 90, 76)
)

# Install and load necessary library (if not installed)
# install.packages("ggplot2")
library(ggplot2)

# Histogram for the distribution of Years of Service
histogram_years_of_service <- ggplot(employee_data, aes(x = Years_of_Service)) +
  geom_histogram(binwidth = 1, fill = "blue", color = "white") +
  labs(title = "Distribution of Years of Service",
       x = "Years of Service", y = "Frequency")

# Display the chart
print(histogram_years_of_service)
# Assuming you have a data frame named 'employee_data' with the given data
employee_data <- data.frame(
  Employee_ID = c(1, 2, 3, 4, 5),
  Name = c("John Smith", "Jane Doe", "Robert Brown", "Sarah White", "Michael Lee"),
  Department = c("Sales", "HR", "Marketing", "Sales", "HR"),
  Years_of_Service = c(5, 3, 7, 4, 2),
  Performance_Score = c(85, 92, 78, 90, 76)
)

# Install and load necessary library (if not installed)
# install.packages("plotly")
library(plotly)

# Pie chart for the distribution of overall Performance Scores
pie_chart_performance_scores <- plot_ly(employee_data, labels = ~Employee_ID, values = ~Performance_Score, type = "pie") %>%
  layout(title = "Distribution of Overall Performance Scores")

# Display the chart
print(pie_chart_performance_scores)