print(paste("the random number is ",random))
repeat{
  guess = readline(prompt = "Enter the number : ")
  print(guess)
  if(as.integer(guess) == random){
    print("yay! you are correct")
    break;
  }
}

