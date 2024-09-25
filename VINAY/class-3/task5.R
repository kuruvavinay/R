name = readline("Enter the full name : ")
age = readline("Enter your age : ")
gender = readline("Enter your gender : ")
email = readline("Enter your email ID : ")
number_of_hours = readline("Enter the number of hours you worked : ")
if(as.numeric(number_of_hours) > 40){
  working = "Full-Time-Worked"
}else{
  working = "Part-Time-worked"
}
print(paste("your name is",name,".your age is",age,".your gender is",gender,".your mail id is", email,".no of hours you worked",number_of_hours,"hours."))
print(paste("Good morning! your name is",name,".your age is",age,".your gender is",gender,".your mail id is", email,".no of hours you worked",number_of_hours,"hours. you are the",working))





