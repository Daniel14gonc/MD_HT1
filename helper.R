movies <- read.csv("movies.csv")
summary(movies)

hist(movies$revenue)
boxplot(movies$revenue)
qqnorm(movies$revenue)
qqline(movies$revenue,col='red')

shapiro.test(movies$revenue)

yes <- rnorm(nrow(movies),mean(movies$revenue),sd(movies$revenue))
ks.test(movies$revenue,yes)

library(nortest)
lillie.test(movies$revenue)

kurtosis

head(sort(movies$voteCount,decreasing=T),10)
head(movies[order(movies$voteCount),],10)

head(movies[order(movies$voteCount),c("originalTitle","voteCount")],1)
head(movies[order(movies$voteCount,decreasing=T),c("originalTitle","voteCount")],1)