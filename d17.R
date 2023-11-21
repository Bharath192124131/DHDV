# Install and load necessary libraries
install.packages("ggplot2")
library(ggplot2)

# Create a data frame
data <- data.frame(
  CustomerID = c(1, 2, 3),
  Age = c(28, 35, 42),
  Gender = c("Female", "Male", "Female"),
  Income = c(50000, 60000, 75000)
)

# Create a bar chart for customer ages
ggplot(data, aes(x = factor(CustomerID), y = Age, fill = Gender)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Distribution of Customer Ages",
       x = "Customer ID",
       y = "Age",
       fill = "Gender") +
  theme_minimal()
# Create a pie chart for the distribution of customers by gender
ggplot(data, aes(x = "", y = 1, fill = Gender)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  labs(title = "Distribution of Customers by Gender",
       fill = "Gender") +
  theme_minimal() +
  theme(axis.text = element_blank(),
        axis.title = element_blank(),
        panel.grid = element_blank())
print(data)