file_name = readline(prompt = "enter the filename  in .txt type : ")
numbering = scan(n = 5)
write(numbering,file=file_name)
read_numbers = scan(file_name)
mean_val = mean(read_numbers)
print(mean_val)
median_val = median(read_numbers)
print(median_val)




