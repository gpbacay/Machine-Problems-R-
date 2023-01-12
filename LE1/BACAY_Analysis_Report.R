install.packages("forecast")
library(forecast)

?AirPassengers
data("AirPassengers")

plot(AirPassengers)

fit <- stl(AirPassengers, s.window = "periodic")
plot(fit)

fit <- auto.arima(AirPassengers)

predictions <- forecast(fit, h = 12)
plot(predictions)

accuracy(predictions, AirPassengers)



