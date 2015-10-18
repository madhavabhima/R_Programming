### Binning data
# cut, pretty and range functions

set.seed(100) # set.seed(n) generates the same random sequence consistently.
rpois(100,6)
set.seed(100)
range(rpois(100,6)) # range(vector) gives the min and max of 'vector', as a vector
set.seed(100)
range(rpois(100,6))[1]
set.seed(100)
range(rpois(100,6))[1]:range(rpois(100,6))[2]
set.seed(100)
cut(rpois(100,6),range(rpois(100,6))[1]:range(rpois(100,6))[2]) # cut(vector) allocates each element of 'vector' to a corresponding bucket
cut(rpois(100,6),pretty(rpois(100,6))) # pretty(vector) creates the breakpoint nicely.
pretty(rpois(100,6))
pretty(rpois(1000,50))
pretty(rpois(1000,50),15)       

### Tables
USArrests

table(USArrests[,3]) # table(vector) gives the frequency count of each distinct value in 'vector'.
# The vector you feed into the table() could be a character vector too

table(cut(USArrests[,3], pretty(USArrests[,3])))

table(cut(USArrests[,3], pretty(USArrests[,3],4)))

# table(vector1, vector2) -> vector1 will go in rows and vector2 will go in columns in the resulting table.
table(USArrests[,3], USArrests[,2])

airquality # type 'airquality' or 'fix(airquality)'

table(airquality[,4], airquality[,5])

# Making range wise (buckets) tables ...
table(cut(airquality[,4], pretty(airquality[,4])), airquality[,5])

table(cut(airquality[,4], pretty(airquality[,4])), airquality[,5]) -> a

prop.table(a)

prop.table(a,1)

prop.table(a,2)

