# Install and load necessary libraries
install.packages("ggplot2")
library(ggplot2)

# Create a data frame
data <- data.frame(
  CustomerID = c(1, 2, 3, 4, 5),
  Age = c(25, 30, 35, 28, 40),
  SatisfactionScore = c(4, 5, 3, 4, 5)
)

# Create a histogram for customer ages
ggplot(data, aes(x = Age)) +
  geom_histogram(binwidth = 5, fill = "skyblue", color = "black") +
  labs(title = "Distribution of Customer Ages",
       x = "Age",
       y = "Frequency") +
  theme_minimal()
# Create a pie chart for the distribution of customer satisfaction scores
satisfaction_counts <- table(data$SatisfactionScore)

# Convert to data frame
satisfaction_df <- as.data.frame(satisfaction_counts)

# Create a pie chart
ggplot(satisfaction_df, aes(x = "", y = Freq, fill = as.factor(SatisfactionScore))) +
  geom_bar(stat = "identity", width = 1, color = "white") +
  coord_polar("y") +
  labs(title = "Distribution of Customer Satisfaction Scores",
       fill = "Satisfaction Score") +
  theme_minimal() +
  theme(axis.text = element_blank(),
        axis.title = element_blank(),
        panel.grid = element_blank())

# Create a stacked bar chart for distribution of customer satisfaction scores by age group
ggplot(data, aes(x = factor(Age), fill = factor(SatisfactionScore))) +
  geom_bar() +
  labs(title = "Distribution of Customer Satisfaction Scores by Age Group",
       x = "Age Group",
       y = "Count",
       fill = "Satisfaction Score") +
  theme_minimal()
