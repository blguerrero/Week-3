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
mapply(rep, 1:4, 4:1)
