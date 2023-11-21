library(ggplot2)
library(dplyr)
sales_data <- data.frame(
  Month = c("January", "February", "March", "April", "May"),
  Sales = c(15000, 18000, 22000, 20000, 23000)
)
ggplot(sales_data, aes(x = Month, y = Sales)) +
  geom_line(color = "blue", size = 1.5) +
  labs(title = "Monthly Sales",
       x = "Month",
       y = "Sales ($)") 
theme_minimal()
Month<- c("January","February","March","April","May")
s <-c(15000, 18000, 22000, 20000, 23000)
m<-c(10,20,30,40,50)
barplot(s,names.arg = Month,col = "red")