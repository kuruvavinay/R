num_vec = c(3.5, 2.4, 7.8, 4.1)
char_vec = c("apple", "banana", "cherry","date")
log_vec = c(TRUE,FALSE,TRUE,FALSE)
cat(num_vec,char_vec,log_vec)

class(num_vec)

class(char_vec)

class(log_vec)

length(num_vec)

length(char_vec)

length(log_vec)

num_con = as.character(num_vec)

log_con = as.numeric(log_vec)

cat(num_con, log_con)

#task 1.2.2 : the logical values are converted into numeric as 0,1 of false and true

num_vecc = c(1,2,3,4)

string = "Hello World"

log_v = TRUE

my_list = list(num_vecc,string,log_v)

print(my_list)

print(my_list[2])


appended = append(my_list,list(c(5,6, 7,8)))

print(appended)

# default the matrix is done in bycol
matrixx = matrix(1:9,nrow = 3, ncol = 3, byrow = TRUE)

print(matrixx)

colnames(matrixx) = c("col1","col2","col3")

rownames(matrixx) = c("row1","row2","row3")

print(matrixx)

print(matrixx[2,3])

print(sum(matrixx))


data1 = data.frame(
  name = c("john","sarah","mike","anna"),
  age = c(25,30,22,28),
  gender = c("Male","Female","Male","Female"),
  score = c(85,90,88,92)
)

print(data1)
#prints all the data of the female
female_data = data1[data1$gender == "Female",]
#prints the only name of the gender female
female_data = data1[data1$gender == "Female","name"]

print(female_data)
#average of the scores
print(mean(data1$score))

#new dataframe of pass based on score
data1$pass = data1$score >= 85
print(data1$pass)

passed = data1[data1$pass == TRUE, "name"]

print(passed)


values <- c("b", "a", "c", "b", "a", "d")

levels <- c("a", "b", "c", "d")

factors_grade = factor(values,level = levels)

print(factors_grade)

new_levels <- c('d','c','b','a')

factors_grade = factor(values,level = new_levels)

students = c("Tom","jerry","spike","Tyke")

grade = factor(c("A","B","A","C"),c("A","B","C","D"))

grade_df = data.frame(students,grade)

print(grade_df)

table(grade_df)








