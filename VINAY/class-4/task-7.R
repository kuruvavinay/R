first = readline(prompt = "Enter the first number : ")
second  = readline(prompt = "Enter the second number : ")
first = as.integer(first)
second = as.integer(second)
operator = readline(prompt = "enter the operator : ")
if(operator == "+"){
  print(paste("the sum of",first,"and",second,"=",(first+second)))
}else if(operator == "*"){
  print(paste("the product of",first,"and",second,"=",(first*second)))
}else if(operator == "-"){
  print(paste("the sub of",first,"and",second,"=",(first-second)))
}else if(operator == "/"){
  print(paste("the div of",first,"and",second,"=",(first/second)))
}else{
  print("Enter the correct operator")
}
