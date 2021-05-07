library(swirl)
swirl()
#will be using the Flags dataset from UCI Machine Learning Repository
#unique returns a vector of the unique values contained in the object passed to it
sapply(flags, unique)
vapply(flags, unique, numeric(1))
#doesn't work because unique numeric length can be more than 1. 
vapply(flags, class, character(1))
#works because the 'character(1)' argument tells R that we expect the
#class function to return a character vector of length 1

#tapply - split your data up into groups based on the value of some variable, 
#then apply a function to the members of each group
#landmass can be values between 1 and 6, diff part of world flag is from
#see how manyflags/countries fall into each group
table(flags$landmass)
#animate takes on val of 1 if flag has animate image
table(flags$animate)
#see the mean of countries that have an animate object by landmass
tapply(flags$animate, flags$landmass, mean)
#see the summary of population values for countries with red on their flag
#summary shows you min, mad, median, and 1st, and 3rd quartiles
tapply(flags$population, flags$red, summary)
#use the same approach to look at a summary of population values for each of the six landmasses
tapply(flags$population, flags$landmass, summary)

