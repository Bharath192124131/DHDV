sales_data <- data.frame(
  Category = c("Electronics", "Clothing", "Appliances"),
  Sales = c(50000, 35000, 40000)
)

# Install and load necessary library (if not installed)
# install.packages("ggplot2")
library(ggplot2)

# Pie chart for distribution of sales
pie_chart <- ggplot(sales_data, aes(x = "", y = Sales, fill = Category)) +
  geom_bar(stat = "identity", width = 1, color = "white") +
  coord_polar("y") +
  labs(title = "Distribution of Sales Across Product Categories", fill = "Category") +
  theme_void() +
  theme(legend.position = "right")

# Display the chart
print(pie_chart)
# Assuming you have a data frame named 'conversion_data' with the stages of the sales conversion process
conversion_data <- data.frame(
  Stage = c("Stage 1", "Stage 2", "Stage 3"),
  Electronics = c(100, 80, 60),
  Clothing = c(100, 75, 50),
  Appliances = c(100, 85, 70)
)

# Install and load necessary library (if not installed)
# install.packages("plotly")
library(plotly)

# Funnel chart for sales conversion process
funnel_chart <- plot_ly(
  type = "funnel",
  x = ~Sales,
  y = ~Stage,
  textinfo = "value+percent initial",
  marker = list(color = c("blue", "green", "orange"))
)

# Title for the chart
funnel_chart <- funnel_chart %>% layout(title = "Sales Conversion Funnel by Product Category")

# Display the chart
print(funnel_chart)
# Assuming you have a data frame named 'sales_data' with the given data
sales_data <- data.frame(
  Category = c("Electronics", "Clothing", "Appliances"),
  Sales = c(50000, 35000, 40000)
)

# Creating a table
sales_table <- tableGrob(sales_data, theme = ttheme_minimal())

# Display the table
grid.draw(sales_table)