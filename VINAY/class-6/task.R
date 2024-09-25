product_id = 1:10
product_name = c("fans","bulb","tube light","ac","cpu","monitor","keyboard","mouse","chairs","spects")
category = c("electric","electric","electric","electric","lab","lab","lab","lab","lab","lab")
units_sold = c(2,4,6,1,1,1,1,1,3,2)
revenue = c(500,10,50,50000,12000,7000,500,1000,13000,1200)
date = c(2012,2020,2022,2021,2019,2012,2020,2022,2021,2019)
sales = data.frame(product_id,product_name,category,units_sold,revenue,date)
write.csv(sales,file="C:/Users/ASUS/Desktop/VINAY/class-6/sales")

product_id = 1:10
product_name = c("fans","bulb","tube light","ac","cpu","monitor","keyboard","mouse","chairs","spects")
category = c("electric","electric","electric","electric","lab","lab","lab","lab","lab","lab")
price = c(200,1500,2000,1800,9000,10000,12000,2000,2000,120)
products= data.frame(product_id,product_name,category,price)
write.csv(products,file="C:/Users/ASUS/Desktop/VINAY/class-6/products")

sales_data = read.csv("C:/Users/ASUS/Desktop/VINAY/class-6/sales")
products_data = read.csv("C:/Users/ASUS/Desktop/VINAY/class-6/products")

str(sales_data)
str(products_data)

print(summary(sales_data))
print(summary(products_data))

#install.packages("zoo")

is.na(products_data)
#filled_data <- na.fill(products_data, fill = 2000)

merged_data <- merge(sales_data, products_data, by = "product_id")



merged_data$total = units_sold * price

merged_data$date=as.Date(merged_data$date,format = "%Y-%m-%d")

merged_data$month = format(merged_data$date,"%m")

total_rev = aggregate(merged_data$total, by=list(merged_data$month),FUN = sum)

print(paste("the total revenue is  : ",total_rev))

barplot(merged_data$total,
        main = "Total Revenue for Each Category",
        xlab = "Category",
        ylab = "Total Revenue",
        names.arg = merged_data$category.x,
        col = "green",  # You can choose a color for the bars
        border = "orange"
)


library(ggplot2)

# Create a line plot
ggplot(merged_data, aes(x = merged_data$date, y = merged_data$total)) +
  geom_line() +
  labs(title = "Monthly Revenue Over Time", x = "Date", y = "Total Revenue")














