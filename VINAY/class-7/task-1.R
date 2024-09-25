#Task 1 Data Exploration and Summary:

data()
library(tidyr)
library(tidyverse)
# Load iris,mtcars,air quality
data("iris")
data("mtcars")
data("airquality")

View(iris)
View(mtcars)
View(airquality)


#display the first 6 rows of the data set

head(iris)
head(mtcars)
head(airquality)

#Summary

summary(iris)
summary(mtcars)
summary(airquality)

#Structure

str(iris)
str(mtcars)
str(airquality)

#Task 2: Data Manipulation

#iris data set where species is setosa

iris %>% 
  filter(Species == "setosa")

#New Column

iris_new <- iris %>% 
  mutate(new.sepal = Sepal.Length/Sepal.Width)

iris_new

#Mtcars mean miles per gallon for cars with 4,6,8 cylinders

mtcars_new <- mtcars %>% 
  mutate(hp_per_cycle = hp/cyl)
mtcars_new

#Air quality Data set

head(airquality)

median_ozone <- median(airquality$Ozone ,na.rm = TRUE)

print(median_ozone)

airquality$Ozone <- ifelse(is.na(airquality$Ozone),median_ozone,airquality$Ozone)

airquality

airquality_new <- airquality %>% 
  mutate(Temp_Fahrenheit = Temp*(9/5) + 32)

airquality_new

#Task 3 Basic Data Analytics

setosa_iris <- iris %>% 
  filter(Species == "setosa")
hist(setosa_iris$Sepal.Length,
     main = "Sepal Length for Setosa Species"
     ,xlab = "Sepal Length",
     col = "red")
boxplot(Sepal.Length ~ Species,data = iris,xlabe = "Species",
        ylab = "Sepal Length",
        main = "Boxplot",
        col = "green")

#mtcars dataset

plot(mtcars$wt,mtcars$mpg,main = "Scatter Plot", xlab = "wt", ylab = "mpg",
     col = "blue")
#correlation matrix 
cor(mtcars)

#Air quality Data set

plot(airquality$Temp,airquality$Wind,main = "Scatter Plot of Temperature Vs Wind",
     xlab = "Temperature",
     ylab ="Wind",
     col = "red",pch = 15)

#Task 4: Data Aggregation

#iris Data set

mean1 <- mean(iris$Sepal.Length)
mean2 <- mean(iris$Petal.Length)

cat(mean1,mean2)

#mtcars

median_mtcars <- mtcars %>% 
  group_by(cyl) %>% 
  summarise(across(where(is.numeric),median))
median_mtcars


#aggregate dataset


