### Exercise 3

# Randomly select 75% of the datasets "USArrests" as "trainingData" and the remaining 25% of observations as "testData"
set.seed(100)
# sample 75% of the total observations. 1:nrow(USArrests) gives a vector {1,2,3,...,nrow} from which 75% is sampled.
sample(1:nrow(USArrests), 0.75 * nrow(USArrests)) -> trainingVec
trainingVec

(1:nrow(USArrests))[-trainingVec] -> testVec
testVec

USArrests[trainingVec,] -> trainingData
trainingData

USArrests[testVec,] -> testData
testData
