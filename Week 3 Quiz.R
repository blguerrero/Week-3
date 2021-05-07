#Week 3 - Quiz
library(datasets)
data(iris)
?iris
#what is the mean of 'Sepal.Length' for the species virginica
#should first extract the species virginica
View(iris)
virginica <- iris[101:150,]
View(virginica)
mean(virginica$Sepal.Length)
#answer is 6.588, rounded to whole number - 7

