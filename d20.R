library(ggplot2)

# Create a data frame
data <- data.frame(
  SurveyID = c(1, 2, 3),
  Question1 = c("A", "B", "C"),
  Question2 = c("B", "A", "A"),
  Question3 = c("C", "D", "B")
)

# Reshape data for grouped bar chart
library(reshape2)
data_long <- melt(data, id.vars = "SurveyID", measure.vars = c("Question1", "Question2", "Question3"))

# Create a grouped bar chart for Question 1
ggplot(data_long, aes(x = variable, fill = value)) +
  geom_bar(stat = "count", position = "dodge") +
  labs(title = "Distribution of Answers for Question 1",
       x = "Question 1",
       y = "Count",
       fill = "Answer") +
  theme_minimal()
# Create a stacked bar chart for overall distribution of responses
data_long$total <- 1  # Add a column for counting
ggplot(data_long, aes(x = variable, fill = value)) +
  geom_bar(stat = "count") +
  labs(title = "Overall Distribution of Survey Responses",
       x = "Questions",
       y = "Count",
       fill = "Answer") +
  theme_minimal()
print(data)
