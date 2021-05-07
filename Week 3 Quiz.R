#Week 3 - Quiz
library(datasets)
data(iris)
?iris
#1 - What is the mean of 'Sepal.Length' for the species virginica
#should first extract the species virginica
View(iris)
virginica <- iris[101:150,]
View(virginica)
mean(virginica$Sepal.Length)
#answer is 6.588, rounded to whole number - 7

#2 - What R code returns a vector of the means of the variables 
#'Sepal.Length', 'Sepal.Width', 'Petal.Length', and 'Petal.Width'?
apply(iris[,1:4], 2, mean)
#specified the 1:4 in iris because the 5th column is species, which was not requested
#to be a part of the vector

#3 - How can one calculate the average miles per gallon (mpg) by number of cylinders in the car (cyl)? Select all that apply.
library(datasets)
data(mtcars)
View(mtcars)
#Option 1
#tapply works like --> x(what you are evaluating), index(by what are you are splitting), function.
#so below, want miles per gallon, by cylinder, using the mean function
tapply(mtcars$mpg, mtcars$cyl, mean)
#Option 2
#split works like --> x(what you are evaluating), f(what you want to split by)
#sapply works like --> x, function
#so we put the split in x because that's what we're evaluating, with mean
sapply(split(mtcars$mpg, mtcars$cyl), mean)
#Option 3
#with works like --> data, expression
#very similar to option 1
with(mtcars, tapply(mpg, cyl, mean))
#Option 4
#did not check this because does not exculsively produce mpg mean
#gives the mean for all columns
apply(mtcars, 2, mean)
