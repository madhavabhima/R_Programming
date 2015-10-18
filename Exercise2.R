# Exercise 2
# From USArrests, select states with more than 75 % Urban population or 'Rapes' variable value more than 20

which(USArrests[,3] >75 | USArrests[,4] > 20)
USArrests[which(USArrests[,3] >75 | USArrests[,4] > 20), ]

USArrests[which(USArrests[,3] >75 & USArrests[,4] > 20), ] # Using '&' both condition will be satisfied for all observations
# or we can use subset() function also as shown below
subset(USArrests, UrbanPopulation >75 | Rapes > 20)

# USArrests[which(USArrests[,3] > quantile(USArrests[,3])[4] | USArrests[,4]>20),]
