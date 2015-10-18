# R Programming : Vectors

c(1,2,3,4)
1:4
5:2
-4:3
seq(1,4)
seq(0,8, by = 2)
seq(0,1, by = 0.2)
seq(0,1, length = 11)
seq(0,1, length = 3)
seq(0,1, length = 5)
c(1,2,3,4) * 2
c(1,2,3,4) / c(2,2,5,5)
log(c(1,2,3,4), 10)
log(c(1,2,3,4), base = 10)
c(1,2,3,4) / seq(2,8, by = 2)

# Vector is a collection of elements

a <- c(1,2,3,4,"asdf","123",13)
a

# Usefull functions
length(a) # Give you a length of a vector
a[5] # To access particular element
a[5:7] # It will give you value from 5th element to last element(7th)
a[5:length(a)] # It will give you 5th to end of element value
a[c(1,3,length(a))]

vec1 <- c(1,3,length(a))
vec1
a[vec1]

# some more Usefull functions

a <- 12
b <- 10
c <- a + b
d <- a * b
e <- c + d

ls()  # list of elements stored in memory
rm(a) # remove a particular element
rm(list = ls()) # remove all elements from memory

# Setting and Getting current working directory
getwd() # To get current working directory
setwd("c:/R_Working_directory/basics") # set working directory
setwd("c:\\R_Working_directory\\basics") # or we can use double back slash

# Vector Sequences
a <- 1:10
a
b <- 10:1
b

seq(1,16,2)
c <- seq(1,16,2)
d <- seq(1,20, 0.1)
d

d <- seq(20,1, -0.1)
d

e <- seq(5, by = 2, length =50)
e

f <- c(a,b,c,d,e)
f

rep(5,10)
g <- rep(5,10)

rep(1:4, 5)

rep(1:4, each = 3)

h <- rep(1:4, each = 3, times=2)
h

rep(1:4, 1:4)

rep(1:4, c(4,1,8,2))

# Random numbers

a <- runif(10)
a

a <- a * 10
a

a <- round(a)
a

names(a)

names(a) <- c(1:10)
a

names(a) <- c("one","two", "three","four","five","six","seven","eight","nine","ten")
a

# Manipulate Vectors, find and remove missing values

x <- c(1,2,3,4,5)
x

# Missing values are denoted by 'NA'
# To access 'n'th element, use 'vectorname[n]' to refer to that element. For Example, In Vector 'x' x[1] equal to 1

x[2] <- NA
x

is.na(x) # It will gives a logical vector that has "TRUE" in place of missing values

!is.na(x)

x[!is.na(x)]

na.omit(x) # This also gives same output

x == NA  # Since 2nd element is "NA", one would expect a "TRUE" in place of NA. So always use is.na()
x == "NA"

# Get specific elements from Vector using 'which' operator

x <- c(1:11)
x

min(x)
max(x)
mean(x)
median(x)

# x[-c(n1,n2)] will drop 'n1'th and 'n2'th from 'x'

x <- x[-c(5,6)]
x

which(x>5)

y <- x[which(x>5)]
y

y <- x[x>5] # R will retain only those elements where 'TRUE' appears
y

x>5

x[which(x== min(x))] # Same rule applies here. R will retain only those elements where 'TRUE' appears

x[which((x >7) | (x <2 ))]


# Converting one variable type to another

int.vec <- c(1:6)
class(int.vec)
int.vec

as.numeric(int.vec) # as.numeric() converts as integer to numeric class, though numeric and integer behave the same for most practical purposes.
as.numeric(int.vec) -> int.vec
class(int.vec)

as.character(int.vec) # as.character() converts the input to character class

c("f",2) # All elements of a vector should be of same data type, else they will be converted as per priority

vec1 <- c("f",2) 
class(vec1)  # The number 2 was converted to character "2"

vec2 <- c(TRUE,2)
vec2
class(vec2)

vec3 <- c(TRUE,"f")
vec3
class(vec3)

# Character > numeric > Integer > Logical


### Lists
# A List can be collection of objects of mixed datatypes/classes.

list1 <- list(vec1, vec2, vec3)
list1

list1[1]

list1[2]

list1[[1]] # It will give direct reference to 1st object of list1
list1[[1]][1] # list1[1][1] will refer to 1st element of list1[1] while, list1[[1]][1] does the same but without an additional layer

length(list1)

names(list1)

# unlist() flattens a list into a single vector. This is very useful function.
unlist(list1)
unlist(list1)[6]

### Set Operations

a <- c(1:6)
b <- c(5:10)
1 %in% a # It checks if value 1 is present in a, and returns a TRUE/FALSE. Often used in IF-ELSE conditional statements.

10 %in% a

a %in% b # It checks if each element of a is present in b, and returns a logical vector of length 'a'
is.element(a,b) # It gives the same result

sample(a) # sample(a) function is used to 'sample' any vector 'a'. Gives a different sample everytime you sample()

set.seed(10) # Use set.seed() to get consistent samples.
sample(a)
sample(a)

set.seed(10)
sample(a)

sample(a, replace = T)
sample(a,4, replace = T)
sample(a,40, replace = T)

c <- sample(a,40, replace = T)
c
d <- sort(c)
d

args(sort)

e <- sort(c, decreasing = T)
e

f <- rev(sort(c))
f

# order() gives the index locations of sorted vector.
g <- c[order(c)]
g

order(c)

a
b

union(a,b) -> h
h

intersect(a,b) -> i
i

setdiff(a,b) -> j  # It is the set difference function. It removes the elements of vector 'b' from 'a'
j

