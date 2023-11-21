library(ggplot2)
data <- data.frame(
  ProductID = c(1, 2, 3),
  ProductName = c("Product A", "Product B", "Product C"),
  JanuarySales = c(2000, 1500, 1200),
  FebruarySales = c(2200, 1800, 1400),
  MarchSales = c(2400, 1600, 1100)
)
library(reshape2)
data_long <- melt(data, id.vars = c("ProductID", "ProductName"), measure.vars = c("JanuarySales", "FebruarySales", "MarchSales"))

ggplot(data_long, aes(x = ProductName, y = value, fill = variable)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Product Sales for the First Quarter",
       x = "Product",
       y = "Sales",
       fill = "Month") +
  theme_minimal()
# Create a stacked area chart
ggplot(data_long, aes(x = factor(ProductID), y = value, fill = variable)) +
  geom_area() +
  labs(title = "Overall Sales Trend for All Products",
       x = "Product",
       y = "Sales",
       fill = "Month") +
  theme_minimal()
print(data)
