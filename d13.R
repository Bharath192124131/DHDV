city_data <- data.frame(
  City = c("City A", "City B", "City C"),
  Population = c(500000, 700000, 600000),
  Avg_Temperature = c(75, 68, 80),
  Elevation = c(1000, 800, 1200)
)

# Install and load necessary library (if not installed)
# install.packages(c("ggplot2", "maps"))
library(ggplot2)
library(maps)

# Get the map data for the world
world_map <- map_data("world")

# Merge city data with map data
city_map_data <- merge(world_map, city_data, by.x = "region", by.y = "City", all.x = TRUE)

# Map chart
map_chart <- ggplot(city_map_data, aes(x = long, y = lat, group = group, fill = Population)) +
  geom_polygon(color = "white") +
  scale_fill_viridis_c() +  # You can choose a different color scale
  labs(title = "Distribution of Cities", fill = "Population") +
  theme_void()

# Display the map chart
print(map_chart)
# Scatter plot for relationship between average temperature and population size
scatter_plot <- ggplot(city_data, aes(x = Avg_Temperature, y = Population, label = City)) +
  geom_point(size = 3, color = "blue") +
  geom_text(vjust = -0.5) +  # Adjust the position of city labels
  labs(title = "Relationship between Average Temperature and Population Size",
       x = "Average Temperature", y = "Population")

# Display the scatter plot
print(scatter_plot)
# Creating a table
city_data_table <- tableGrob(city_data, theme = ttheme_minimal())

# Display the table
grid.draw(city_data_table)