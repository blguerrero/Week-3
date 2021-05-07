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

#4 - What is the absolute difference between the average horsepower 
#of 4-cylinder cars and the average horsepower of 8-cylinder cars?
#First, you want to separate out 4 cylinder and 8 cylinder cars
#Then, get their average horsepower
#Last, take the absolute difference (|x-y|).
?mtcars
#gonna want to use mtcars$hp somewhere
tapply(mtcars$hp, mtcars$cyl, mean)
#result of 8 cylinder - result of 4 cylinder
209.21429 - 82.63636

#5 - If you run debug(ls), what happens when you next call the 'ls' function?
debug(ls)
ls()
?ls
?debug
#Execution of 'ls' will suspend at the beginning of the function and you will 
#be in the browser.
#got answer by doing ?debug to see what it does

