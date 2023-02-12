# Exercise List - Chapter 2

# Note: If you have problems with accentuation, check this link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Setting up the working directory
# Enclose the working directory you are using on your computer in quotes
# Do not use directories with spaces in the name
setwd("/home/bia/Code/GITHUB_DSA/DSA_Data-Science-Course/1.BigData_RAzure/Ch2")
getwd()

# Exercise 1 - Create a vector with 30 integers
vector1 = c(1:30)
vector1

# Exercise 2 - Create a matrix with 4 rows and 4 columns filled with integers
matrix1 = matrix(data = c(1:16), nrow = 4, ncol = 4)
matrix1

# Exercise 3 - Create a list by merging the vector and array created earlier
list1 = list(vector1, matrix1)
list1

# Exercise 4 - Using the read.table() function read the file from the link below into a dataframe
# http://data.princeton.edu/wws509/datasets/effort.dat
?read.table()
?data.frame()
# ANSWER
# Note: the code is this above, but the page have an error 404, does not exist anymore
# princeton_data = read.table("http://data.princeton.edu/wws509/datasets/effort.dat")
# df1 = data.frame(princeton_data)
# Or:
# df1 = data.frame(read.table("http://data.princeton.edu/wws509/datasets/effort.dat"))


# Exercise 5 - Transform the previous dataframe into a dataframe named with the following labels:
# c("config", "esfc", "chang")
# ANSWER
# names(df1) = c("config", "esfc", "chang") # columns name


# Exercise 6 - Print the iris dataframe on the screen, 
# check how many dimensions exist in the iris dataframe,and print a summary of the dataset
print(iris) # I do not need to use print
iris
View(iris)
class(iris)
dim.data.frame(iris)
summary.data.frame(iris)
str(iris) # Do a summary and each datatype


# Exercise 7 - Create a simple plot using the first two columns of the iris dataframe
?plot
plot(iris$Sepal.Length, iris$Sepal.Width)


# Exercise 8 - Using the subset function, create a new dataframe with the iris dataframe data set where Sepal.Length > 7
# Tip: consult help to learn how to use the subset() function
?subset
df2 = subset(iris, Sepal.Length > 7)
df2


# Exercise 9 (Challenge) - Create a dataframe that is a copy of the iris dataframe and using the slice() function, split the dataframe into a 15-line subset
# Hint 1: You will need to install and load the dplyr package
# Hint 2: Refer to help to learn how to use the slice() function
library(dplyr)
?slice()
iris2 = data.frame(iris) # Copy of the dataframe in a different memory space
# To copy the data frame we could use "new_iris <- iris"
iris3 = slice(iris2, 1:15) 
iris3
class(slice(iris2, 1:15))


# Exercise 10 - Use the filter function in your new dataframe created in the previous item and return only values where Sepal.Length > 5
# Tip: Use RSiteSearch to learn how to use the filter function
RSiteSearch('filter')
iris4 = filter(iris3, Sepal.Length > 5)
iris4
# I think the code above works but we dont have any value with this criteria