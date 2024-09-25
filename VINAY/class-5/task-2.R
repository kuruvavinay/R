student_data <- read.csv("C:/Users/pgcom/OneDrive/Documents/VINAY/class-5/vinay.csv")
# by default head gives 1 to 6 data
print(head(student_data,n = 2))
# str is used for showing the structure of the data
str(student_data)
# summary is used show the summary of the data -> min, 1st,median, mean, 3rd ,max
b = summary(student_data)
print(b) 
#data manipulation
