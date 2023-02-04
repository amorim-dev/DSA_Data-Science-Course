# Advanced data types in R

# Set word directory
setwd("/home/bia/Code/GITHUB_DSA/DSA_Data-Science-Course/3.BigData_RAzure/Ch2")
getwd()

# VECTOR: It has only one dimension and 1 data type
vector1 <- c(1:20)
vector1
length(vector1)
mode(vector1)
class(vector1)
class(vector1)
typeof(vector1)


# MATRIZ - It has 2 dimensions and 1 data type
matrix1 <- matrix(1:20, nrow = 2)
matrix1
length(matrix1)
mode(matrix1)
class(matrix1)
typeof(matrix1)


# ARRAY: It has 2 or more dimensions and 1 type of data
array1 <- array(1:5, dim = c(3,3,3))
array1
length(array1)
mode(array1)
class(array1)
typeof(array1)


# DATA FRAMES: Data of different types
View(iris) # Iris is a data frame that came with R to test
length(iris)
mode(iris)
class(iris)
typeof(iris)

# LISTS: Collection of different objects
# Different data types are possible
list1 <- list(a = matrix1, b = vector1)
list1
length(list1)
mode(list1)
class(list1)
typeof(list1)


# FUNCTIONS - they are also objects in R
func1 <- function(x) {
  var1 <- x * x
  return(var1)
}
func1(5)
class(func1)


# REMOVE OBJECTS
objects()
rm(array1, func1)
objects()
