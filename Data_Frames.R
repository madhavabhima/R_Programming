# R - Programming : Data Frames

# Reading a data frame when you know the directory
mydata <- read.table('C:/CTU/Big Data/Sample3.txt', header = TRUE)
mydata # Printing the variable values

# a different way to get a data set
mydata <- read.table('Sample3.txt' , header = TRUE)
mydata

# and another way to get a data set
mydata <- read.table(file.choose(), header = TRUE)
mydata

summary(mydata) # Summarizing the data set
attach(mydata) # putting the variable in memory. 
year # It is not recommend to use attach command in R because the same column names exists in diffent data sets then it will give ambigous results

# read the column data from the data set
mydata$year

# Either of the below two commands will tell you how many objects available in R
ls()
objects()

# remove any objects we can use the below command
rm(mydata)
ls()
