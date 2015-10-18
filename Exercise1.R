# Exercise 1
# From 'USArrests', select 25 % of states with least Murder's with:
#   1. Row positions changed
#   2. Row positions unchanged

order(USArrests[,1]) # order() gives a vector giving the row indices of the stored vector with respect to thier original positions
USArrests[order(USArrests[,1]),]
USArrests[order(USArrests[,1]),] -> newdf
newdf[1:round(nrow(USArrests)*0.25), ]

USArrests[order(USArrests[,1]), ][1:round(nrow(USArrests)*0.25), ]

# Method 2
quantile(USArrests[,1])
quantile(USArrests[,1])[2]

which(USArrests[,1] < quantile(USArrests[,1])[2] ) # The row numbers of the observations that satisfies this condition

USArrests[which(USArrests[,1] < quantile(USArrests[,1])[2]), ]


