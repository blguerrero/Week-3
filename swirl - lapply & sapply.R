library(swirl)
swirl()
Brianna Guerrero
1
1
10
#using flags dataset from UCI Machine Learning Repository
head(flags)
dim(flags)
#flags - each observation is a country, and each variable is a characteristic of that country or flag
class(flags)
#we want to see the class of each variable so we will use the lapply() function
#lapply runs a function on a list of elements, a dataframe is a list of vectors
cls_list <- lapply(flags, class)
cls_list
#because lapply just returns a list itself, can do below to condense, similar to what sapply does
as.character(cls_list)
#or just sapply
cls_vect <- sapply(flags, class)
#to get number of countries that have orange in their flag
sum(flags$orange)
#want to do this for all the colors --> create a loop function
#step 1 separate out columns you will be using, 11 - 17 are the color indicator columns
flag_colors <- flags[, 11:17]
head(flag_colors)
lapply(flag_colors, sum)
sapply(flag_colors, sum)
#create a new variable
flag_shapes <- flags[, 19:23]
#we want to find the max and min number of times a shape or design appears on a flag
#the range() function gives us min and max
lapply(flag_shapes, range)
shape_mat <- sapply(flag_shapes, range)
#shape_mat is shape matrix, when sapply is going through diff vector lengths it creates a matrix
shape_mat
#shape_mat gives the min of design/shape on a flag and the max

#testing out unique()
unique(c(3, 4, 5, 5,5, 6, 6))
unique_vals<-lapply(flags,unique)
sapply(unique_vals, length)
sapply(flags, unique)
lapply(unique_vals, function(elem) elem[2])
