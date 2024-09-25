var1 <- scan(n=5)

mean = mean(var1)
median = median(var1)
standard_dev = sd(var1)

cat(mean,median,standard_dev)

cat("\nthe mean is",as.integer(mean),"\n")
print(paste("the median is",as.integer(median)))
print(paste("the standard deviation is",round(standard_dev,digits=1)))
