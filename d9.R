# Install and load necessary libraries
install.packages("ggplot2")
library(ggplot2)

# Create a data frame
data <- data.frame(
  ProductID = c(1, 2, 3),
  ProductName = c("Product A", "Product B", "Product C"),
  QuantityAvailable = c(250, 175, 300),
  Price = c(20, 15, 18)
)

# Create a bar chart for product inventory quantity
ggplot(data, aes(x = ProductName, y = QuantityAvailable, fill = ProductName)) +
  geom_bar(stat = "identity") +
  labs(title = "Product Inventory Quantity",
       x = "Product",
       y = "Quantity Available") +
  theme_minimal()
# Create a stacked bar chart for quantity within product categories
ggplot(data, aes(x = factor(ProductID), y = QuantityAvailable, fill = factor(ProductID))) +
  geom_bar(stat = "identity") +
  labs(title = "Quantity of Each Product within Categories",
       x = "Product ID",
       y = "Quantity Available",
       fill = "Product ID") +
  theme_minimal()
print(data)
