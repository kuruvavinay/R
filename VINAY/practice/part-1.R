dff = data.frame(name = c("vinay","vikey","venkat","bacha","thrisha","nageswari"),
                 age = c(24,25,26,24,20,23),
                 score = c(99,98,95,90,98,95),
                 class = c(17,17,10,11,15,15),
                 gender =c("male","male","male","male","female","female")
)

# print(dff)


# library(dplyr)

maxxy = dff%>%
  filter(score >= 98) %>%
  select (name,age,gender) %>% 
  group_by(gender)

dff2 = arrange(dff,age)

# print(dff2)

# print(select(dff.name,starts_with("age")))
# prints only the age column

#print(select(dff,-starts_with("age")))
#prints all the data except the age column


#print(select(dff,contains("n")))
#prints the data where the heading of columns contains the a

#print(select(dff,matches("ag")))
# similar to the contains


#print(sample_frac(dff,0.2))
#prints the frac of the table size of columns


#print(sample_n(dff,3))
#prints the given of rows of data


#print(summarise(dff,mean=mean(score)))
#print the mean of the score lly the min,max,median





