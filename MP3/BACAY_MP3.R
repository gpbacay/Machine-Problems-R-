#Make a linear regression prediction on petal width values based on petal length:

#import iris data and identify the significant predictor variable:
irisdata <- iris
#Take the independent value/s (predictor variable) needed for prediction from iris data set:
PetalLength <- unlist(subset(irisdata, select = Petal.Length))
#Take the dependent value (response variable) we want to predict from iris data set:
PetalWidth <- unlist(subset(irisdata, select = Petal.Width))
#Set Petal_WidLen as the data containing both dependent and independent variables, respectively:
PetalWidLen <- data.frame(PetalLength, PetalWidth)

#View Petal_WidLen dataframe:
View(PetalWidLen)

#Create a linear model of the Petal_WidLen dataframe:
PetalWidLenModel <- lm(PetalWidth ~ PetalLength, data = PetalWidLen)
PetalWidLenModel

#Check the summary of Petal_WidLen_Model:
summary(PetalWidLenModel)

#Mathematical model: y = alpha + (beta * x)
#alpha (y-intercept) = -0.363076 
#beta (estimated slope) = 0.415755

#Mathematical model: y = -0.363076 + (0.415755 * Petal Length)

#Line of fit
plot(PetalWidLen)
abline(PetalWidLenModel, col = "red", lwd = 6)
