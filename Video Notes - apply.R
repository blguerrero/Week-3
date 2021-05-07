#Video notes from R Programming/Week 3/Loop Functions - apply
str(mean)

#Creating a matrix of 200 random nubers with 20 rows and 10 columns
x <- matrix(rnorm(200), 20, 10)

#to get the mean of each column
#because in the apply function the second variable can only either
#be a 1 or a 2 - 1 for row, 2 for columns
apply(x, 2, mean)

#to get the sum of each row
apply(x, 1, sum)

#how mapply makes life easier
#before
list(rep(1:4), rep(2,3), rep(3:2), rep(4:1))
#after
mapply(rep, 1:4, 4:1)

#tapply
#created a vector of 3 groups
#Group 1 - 10 numbers from a normal dist
#Group 2 - 10 numbers from a uniform
#Group 3 - 10 numbers from normal with a mean of 1
x <- c(rnorm(10), runif(10), rnorm(10,1))

#create a second variable using gl function 
#which just creates another factor variable with levels
#create a factor variable that repeats 1, 2, and 3, 10 times (3 levels)
f <-gl(3, 10)

#tapply will run through x, group them by f, and take the mean of each section
tapply(x, f, mean)

#Split
#does the same thing as above
x <- c(rnorm(10), runif(10), rnorm(10,1))
f <-gl(3, 10)
split(x, f)
lapply(split(x,f), mean)

#Example using air quality dataframe
library(datasets)
head(airquality)

#How can we calculate the mean of each variable by month
#First, we have to split the data into months
#Second, we calculate the means of each column using applyn or colMeans
s <- split(airquality, airquality$Month)
#airquality is your x, airquality$Month is what your are splitting your x by
lapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")]))
#lapply returns a vector of length 3 (ozone, solar, wind) for each month

#to remove na's
sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")], na.rm = TRUE))
