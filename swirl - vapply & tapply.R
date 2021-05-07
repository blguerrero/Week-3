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



