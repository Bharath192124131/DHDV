survey_data <- data.frame(
  Respondent = c(1, 2, 3),
  Question_1 = c("A", "B", "C"),
  Question_2 = c("B", "A", "A"),
  Question_3 = c("C", "D", "B")
)

# Reshape the data for plotting
library(tidyr)
survey_data_long <- gather(survey_data, key = "Question", value = "Answer", -Respondent)

# Install and load necessary library (if not installed)
# install.packages("ggplot2")
library(ggplot2)

# Stacked bar chart for distribution of answers for Question 1
stacked_bar_chart <- ggplot(survey_data_long, aes(x = Answer, fill = Question)) +
  geom_bar() +
  labs(title = "Distribution of Answers for Question 1",
       x = "Answer", y = "Count", fill = "Question") +
  theme_minimal()

# Display the chart
print(stacked_bar_chart)
# Assuming you have a data frame named 'survey_data' with the given data
survey_data <- data.frame(
  Respondent = c(1, 2, 3),
  Question_1 = c("A", "B", "C"),
  Question_2 = c("B", "A", "A"),
  Question_3 = c("C", "D", "B")
)

# Install and load necessary library (if not installed)
# install.packages("fmsb")
library(fmsb)

# Reshape the data for plotting
survey_data_long <- gather(survey_data, key = "Question", value = "Answer", -Respondent)

# Convert answers to numerical values
answer_mapping <- c("A" = 1, "B" = 2, "C" = 3, "D" = 4)
survey_data_long$Answer <- as.numeric(factor(survey_data_long$Answer, levels = names(answer_mapping)))

# Calculate the mean response for each question
mean_responses <- aggregate(Answer ~ Question, data = survey_data_long, FUN = mean)

# Prepare data for radar chart
radar_data <- as.data.frame(t(mean_responses[, -1]))

# Add a row for the maximum possible score (4 in this case)
radar_data <- rbind(radar_data, rep(4, ncol(radar_data)))

# Install and load necessary library (if not installed)
# install.packages("fmsb")
library(fmsb)

# Radar chart
radar_chart <- radarChart(radar_data, axistype = 1, 
                          title = "Overall Pattern of Responses",
                          maxmin = TRUE, vlcex = 0.9)

# Display the chart
print(radar_chart)
# Creating a table
survey_data_table <- tableGrob(survey_data, theme = ttheme_minimal())

# Display the table
grid.draw(survey_data_table)