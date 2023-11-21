library(ggplot2)
data <- data.frame(
  EmployeeID = c(1, 2, 3, 4, 5),
  Department = c("Sales", "HR", "Marketing", "Sales", "HR"),
  YearsOfService = c(5, 3, 7, 4, 2),
  PerformanceScore = c(85, 92, 78, 90, 76)
)
ggplot(data, aes(x = YearsOfService, y = PerformanceScore, group = EmployeeID, color = as.factor(EmployeeID))) +
  geom_line() +
  labs(title = "Performance Trend of Employees Over Time",
       x = "Years of Service",
       y = "Performance Score") +
  theme_minimal()
ggplot(data, aes(x = Department, fill = Department)) +
  geom_bar() +
  labs(title = "Distribution of Employees Across Departments",
       x = "Department",
       y = "Number of Employees") +
  theme_minimal()
ggplot(data, aes(x = YearsOfService, y = PerformanceScore)) +
  geom_point() +
  labs(title = "Correlation between Years of Service and Performance Scores",
       x = "Years of Service",
       y = "Performance Score") +
  theme_minimal()