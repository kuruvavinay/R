
student_data <- read.csv("C:/Users/ASUS/Desktop/VINAY/class-5/vinay.csv")
# captial V is used in the view
student_id = c(1,2,3,4,5,6,7,8,9,10)
name = c("vinay","vikey","isha","vittal","atul","bobby","gian","priyank","agarwal","dileep")
age = c(21,22,19,23,25,24,27,24,30,20)
gender=c("male","male","female","male","male","male","male","male","female","male")
major=c("cse","cse","csebs","mech","civil","ai","dse","cseis","mli","ece")
gpa = c(4.9,4.8,4.0,3.0,3.8,4.5,2.1,5.0,4.0,2.5)
student = data.frame(student_id,name,age,gender,major,gpa)
write.csv(student,file="C:/Users/ASUS/Desktop/VINAY/class-5/students")

studentt = read.csv("C:/Users/ASUS/Desktop/VINAY/class-5/students")
print(head(studentt,n = 5))

print(str(studentt))

print(summary(studentt))

studentt$passed = studentt$gpa > 3.0

print(studentt$passed)

# Filter rows where cgpa is greater than 3.0
df_filtered <- subset(studentt, gpa >= 3.0)
print(df_filtered)

df_filtered1 <- studentt[studentt$gpa > 3.0, ]

print(df_filtered1)

df_arranged = studentt[order(studentt$gpa, decreasing = TRUE), ]


print(df_arranged)

#task-4

print(aggregate(x=studentt$gpa,by = list(studentt$major), FUN = mean))


library(dplyr)

print(count(studentt,gender))

# Load necessary libraries
library(ggplot2)

gender_table = table(studentt$gender)
print(gender_table)

barplot(gender_table,xlab = "gender", ylab = "number of sudents")

boxplot(gpa ~ gender,data = studentt, xlab = "gender")

#task-6

write.csv(studentt, file="student_pass.csv")




