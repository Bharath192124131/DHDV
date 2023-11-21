inventory <- data.frame(
  Product_ID = c(1, 2, 3, 4, 5),
  Product_Name = c("Product A", "Product B", "Product C", "Product D", "Product E"),
  Quantity_Available = c(250, 175, 300, 200, 220)
)

# Install and load necessary library (if not installed)
# install.packages("ggplot2")
library(ggplot2)

# Bar chart
bar_chart <- ggplot(inventory, aes(x = Product_Name, y = Quantity_Available)) +
  geom_bar(stat = "identity", fill = "blue") +
  labs(title = "Product Inventory", x = "Product Name", y = "Quantity Available")

# Display the chart
print(bar_chart)
inventory$Category <- c("Category A", "Category B", "Category A", "Category B", "Category A")

# Stacked bar chart
stacked_bar_chart <- ggplot(inventory, aes(x = Product_Name, y = Quantity_Available, fill = Category)) +
  geom_bar(stat = "identity") +
  labs(title = "Product Inventory by Category", x = "Product Name", y = "Quantity Available")

# Display the chart
print(stacked_bar_chart)
# Assuming you have a data frame named 'inventory' with an additional 'Price' column
inventory$Price <- c(10, 20, 15, 25, 18)

# Scatter plot
scatter_plot <- ggplot(inventory, aes(x = Price, y = Quantity_Available)) +
  geom_point() +
  labs(title = "Scatter Plot of Product Price vs Quantity", x = "Product Price", y = "Quantity Available")

# Display the chart
print(scatter_plot)