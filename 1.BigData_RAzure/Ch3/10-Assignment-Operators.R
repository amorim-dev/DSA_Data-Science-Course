# Assignment Operators

# Setting WD
setwd("/home/bia/Code/GITHUB_DSA/DSA_Data-Science-Course/1.BigData_RAzure/Ch3")
getwd()

# They look the same
vec1 = 1:4
vec2 <- 1:4

class(vec1)
class(vec2)  

typeof(vec1)
typeof(vec2)

# When you use the assignment symbol inside a function they behave in different ways
  # "=" the operation of assignment exist only in time of execution, after that x does not exist anymore
  # If you want keep the x value use "<-"
mean(x = 1:10)
x # X does not exist anymore

mean(x <- 1:10)
x
