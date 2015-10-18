# R - Programming : Variables and Data types

x <- c(3,2,5,3)
x
y <- c(2,1,3,5)
y
x + y
w <- x +y
w
z <- x * y
z
q = x * y  # it will work but do not use "=" operator for assignment operation
q
x / 2
x ^ 2
r <- x ^ 3
r
y <- r * x
y
x <- sqrt(w)
x
w <- rnorm(50)
w


# Primary Data types are
# 1. Character
# 2.Numbers
#     -- Numeric
#     -- Integer
# 3.Logical
#     --- TRUE
#     --- FALSE
# 4.Factors

a <- 12
# To check what data type of an object using class()
class(a)

# Convert numeric datatype to integer using the below command
as.integer(a) -> b
class(b)

# Some Useful points
# 1. Varible names should not start with numbers. For example, the below variable name is not allowed in R
# as.integer(a) -> 123b
# 2. R is case sensitive.

# Character Data type
c <- "Madhava Reddy"
class(c)

d <- "12345"
class(d)

# Logical Data type

TRUE -> q
class(q)

True -> q # This is not valid in R, TRUE and FALSE are all Uppercase letters to represent Logical datatype.

"True" -> q # This is valid and it consider as Character data type.
class(q)

# Factor data type is used to handle any catogorical data. 

factor(c("male","female", "male", "female")) -> f1
class(f1)

f1

levels(f1)
nlevels(f1)
