### Data Frames

# A Data frame is a collection of vectors, arranged parallely in rows and columns
# By default, extenal files are imported as a dataframe

a <- c(1,2,3,4,NA)
b <- c(5,6,7,NA,8)
c <- c(9,10,NA, 11,12)
d <- c(13,NA,14,15,16)
e <- c(17,18,19,20,21)

# Missing values are represented by 'NA's

class(a)
class(b)

# Data frame syntax:
# data.frame(vec1,vec2,....)
y <- data.frame(a,b,c,d,e)
y

# Stacking and Unstacking the columns

# stack(df) stacks the columns of 'df' on top of each other into a single vector
stack(y) -> y1
y1

unstack(y1)

# Combining data frames and vectors too
# cbind : column bind
# rbind : row bind

cy <- cbind(y,y,y,y,y)
cy
 # cbind() arrange the data frames or vecotrs given to it in columns

ry <- rbind(y,y,y,y,y)
ry

class(ry)
class(cy)

# Aconvenient way to view dataframes
# fix(df) will open a grided editor window to view dataframes

fix(ry)

# Transpose dataframes

ryt <- t(ry)
fix(ryt)

class(ryt)  # Doing a transpose gives a Matrix by default

as.data.frame(ryt) -> ryt
class(ryt)

# head(df) shows the first 6 lines of 'df'
head(ryt)
head(ry)
head(ry,20)

# tail(df) shows the last 6 lines of 'df')
tail(ry)
tail(ry,20)

# Removing missing values
na.omit(ry)

# Subsetting Dataframes
# df[n,m] will refer to the element in 'n'th row and 'm'th column

ry[1,] # Displays the first row of all columns

ry[,1] # Displays all the rows of a first column

ry[,c(2,3)]  # displays all rows of a second and third columns

ry[c(2,20),] # displays all columns of data from rows 2 to 20

# Leaving a row or column field blank will include all rows or columns respectively

ry$a # display all the elements of column 'a'
ry$b # display all the elements of column 'b'
ry[,"b"]

# ry[,c("a","b")] will refer to all columns inside the c()
ry[,c("a","b")]

# Customized cases in subsettig
# 1. Exclude 'NA's in 1st column

ry[!is.na(ry$a),]

is.na(ry$a) # In places where "TRUE" appears, it will include that row while subsetting

ry[!is.na(ry$b),]

# Getting specific items in dataframes using which()

ry[which(ry$a >1),] # which(ry$a >1) returns the row indexes of column 'a' that has value >1

ry[which(ry[,1] > 1 ),] # ry$a can also be written as ry[,1] - Since a is the first column and since we want all rows to be included we leave row index blank

# Adding multiple conditions
ry[which(ry[,1] > 1 & ry[,2] < 7),] # all 7's and NA's are column

# The attach() statement - Don't use

attach(ry)
a # Since the column names - a,b,c,d,e alreadt had vectors with the same name defined, the attach() did not work. 'a' still referred to the vector 'a' rather than the column a in ry


# Built in dataframes

library(datasets)
library(help = datasets)
?USArrests
fix(USArrests)
summary(USArrests) # summary(df) gives the summary statistics of the dataframe

fivenum(USArrests)
str(USArrests)
colnames(USArrests) # colnames(df) - show the column names of the dataframe.
rownames(USArrests)

# To Change Column names
colnames(USArrests) <- c("Murders", "Assaults", "UrbanPopulation", "Rapes")
colnames(USArrests)
fix(USArrests)

nrow(USArrests)
ncol(USArrests)

USArrests[1,1]

head(USArrests)
tail(USArrests)

USArrests[, c(1,2)]
USArrests[,-c(3,4)] # The '-' is used to omit the columns. 


