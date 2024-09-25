file_names = readline(prompt = "Enter the file name in extension of .txt ")

num = readline(prompt = "enter the number ")

num = as.numeric(num)

numberss = scan(n = num)

if (is.na(num) || num <= 0) {
  stop("Invalid number of entries.")
}

for(i in 1:num){
  write(numberss[i],file=file_names,append = TRUE)
  #append is used to create the elements in line-by-line
}

listing = scan(file=file_names)
print(listing)
print(median(listing))
print(mean(listing))