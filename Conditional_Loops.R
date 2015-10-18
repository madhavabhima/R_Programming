## Condition Statements

a <- 2
b <- 10
c <- c(1:4)

any(c > b)
any(c > a)

# if any of the elements of vector 'a' holds the value TRUE, then 'any(a)' evaluates to TRUE
# Here c > b returns FALSE for all the 4 elements of c. Therefore, any(c > b) evaluates to FALSE. The same principle applies when any(c > a) returns TRUE
 
all(c < b) # it will return TRUE, only is ALL the elements of c is less than b

if(a < b){
  print("I like R Programming")
}
#else{ # It will through an error, it should be in the above line
#  print("I don't like R Programming")
#}

if(a > b){
  print("I like R Programming")
}else{ # It works without any error
  print("I don't like R Programming")
}

## For Loops

# Syntax:
# for('counter' in 'vector'){
#   statements...
#   statements...
# }

for (i in c(1:10)) {
  
}

for (i in seq(2,20,2)) {
  if (i%%2 == 0) {
    print(i)
  }
}


# The vector element could be a sequence too, which enables having customized 'step increments' for the counter

for (i in seq(2,20,2)) {
  if (i%%2 == 0) {
    print(i)
  }
  if (i > 10) {
    break   # Use the 'break' command to come out of a loop
  }
}

# R does check for errors even if a statement will never get executed within a loop

for (i in seq(2,20,2)) {
  if (i%%2 == 0) {
    print(i)
  }
  if (i > 10) {
    break   
  }
  if (i >50) {
  # print i # Syntax error. '()' missing in print function
  }
}
