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
