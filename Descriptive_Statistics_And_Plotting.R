# R - Programming : Descriptive Statistics and Plotting

# First we get our data
mydata <- read.table("Sample3.txt", header = TRUE) 

# if you want any help or usage of R command then use "help()" command or use "?" followed by command that will show you the help document for the specified command.
help(read.table)
?read.table

names(mydata) # Lets us see all the variable names
#attach(mydata) # This puts the variable names in memory. We will not be using this because if two data sets has same variable names that will give ambigous results

mysubsetdata <- subset(mydata, select = c(year, value)) # This keeps you only the two variables that we need
summary(mysubsetdata) # Since no variables are listed, a summary for all variables in the data frame is printed
mysubsetdata  # This prints out all the variable values

plot(mysubsetdata$year, mysubsetdata$value, xlab = "", ylab = "", ylim = c(2,8), pch = 19, type = "o")
title(xlab = "Year" , ylab = "Value", main = "Sample Plotting Figure", cex =1.5, col="black",font=2)

#Now lets get overall mean 
mean(mysubsetdata$value)

# Now let us work with just the years 1932 through 1936
my3236data <- subset(mysubsetdata, year >=1932 & year <=1936)
my3236data

plot(my3236data$year, my3236data$value, xlab = "", ylab = "", ylim = c(2,8), pch = 19, type = "o", axes = FALSE)
axis(1, at = c(1932,1933,1934,1935,1936)) # This defines the X- axis tick marks.

axis(2,yaxs = "r") # This defines y - axis

box()
title(xlab = "Year" , ylab = "Value", main = "Sample Plotting Figure 2", cex =1.5, col="black",font=2)
mean(my3236data$value)
