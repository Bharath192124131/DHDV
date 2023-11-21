library(ggplot2)

# Create a data frame
data <- data.frame(
  EmployeeID = c(1, 2, 3),
  Department = c("Sales", "HR", "Marketing"),
  YearsOfService = c(5, 3, 7),
  PerformanceScore = c(85, 92, 78)
)

# Create a line chart for employee performance trend
ggplot(data, aes(x = EmployeeID, y = PerformanceScore, group = 1)) +
  geom_line() +
  labs(title = "Employee Performance Trend",
       x = "Employee ID",
       y = "Performance Score") +
  theme_minimal()
# Create a bar chart for the distribution of employees across departments
ggplot(data, aes(x = Department, fill = Department)) +
  geom_bar() +
  labs(title = "Distribution of Employees Across Departments",
       x = "Department",
       y = "Number of Employees") +
  theme_minimal()
# Print performance data for each employee
print(data)

