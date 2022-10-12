PLdata <- read.csv("ProgLangDATASHEET.csv")
Programming_Language <- PLdata$Programming.Language
Popularity_Percentage <- PLdata$Popularity.
Ranking <- PLdata$Rank
mpone <- data.frame(Programming_Language, Popularity_Percentage, Ranking)
summpone <- summary(mpone)
mpone <- data.frame(Popularity_Percentage[1:10], Ranking[1:10])
plot(x = mpone$Ranking.1.10., y = mpone$Popularity_Percentage.1.10., main = "Programming Language Data") #Negative Correlation