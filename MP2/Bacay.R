#submitted by: Bacay, Gianne P.

#assigning the iris dataset to the object irisdata (optional)

irisdata <- iris

#Viewing the "irisdata" to inspect the variables and overall structure of the data

View(irisdata)

#Calculate the number of flowers whose specie is versicolor and has a petal length of 4.8 (n(A) = outcomes):

outcomes <- sum(irisdata$Species == "versicolor" & irisdata$Petal.Length == 4.8)

#Calculate the number of flowers in the dataset (n(S) = sample_space):

sample_space <- nrow(irisdata)

#Solve for the probability of picking a specie of versicolor with a petal length of 4.8 centimeters from the set of flowers in the dataset:

answer <- outcomes/sample_space
