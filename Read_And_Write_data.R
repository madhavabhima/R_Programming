### Read and Write Data

# comma separated values(.csv) files is the standard format to import data  into R

setwd("C:/CTU/Big Data")
getwd()

a <- read.csv("hw1_data.csv")
a

class(a) # Data gets imported as a Data Frame, By default

write.csv(a, "Exported_file.csv") # additional column containing the row numbers inserted by default
write.csv(a, "Exported_file.csv", row.names = F)

# Importing text files

read.table("Sample1.txt") -> b # It will throws error, since 3rd row has 5 entries, it expects 5 entries in other rows as well. But since rows 1 and 2 does not have a 5th entry, error occured

read.table("Sample1.txt" , fill = T, header = F) -> b
# 'fill' -> fills up missing values
# 'header' -> include 1st row as header or not
b

# read.table("clipboard") , reads from the content that was just Ctrl+c'd
read.table("clipboard") -> c
c

read.table("clipboard", header = T, sep = "\t") -> d
d

read.table("Sample2.txt" , fill = T, header = F, colClasses = c("character","character","character","character")) -> e
e

read.table("Sample2.txt" , fill = T, header = F, colClasses = c("character","character","character","character"), nrows = 4) -> f
f

read.table("Sample2.txt" , fill = T, header = F, colClasses = c("character","character","character","character"), nrows = 4, skip = 2) -> g
g

