# Lists, Operations with lists and Named Lists

# Set wd
setwd("/home/bia/Code/GITHUB_DSA/DSA_Data-Science-Course/1.BigData_RAzure/Ch2")
getwd()


# Use list() to create lists

# List of strings
list_character1 = list('A', 'B', 'C')
list_character1
list_character2 = list(c('A', 'A'), 'B', 'C')
list_character2
list_character3 = list(matrix(c('A', 'A', 'A', 'A'), nr = 2), 'B', 'C')
list_character3

# List of integer numbers
list_integers = list(2, 3, 4)
list_integers

# List of floats
list_numeric = list(1.90, 45.3, 300.5)
list_numeric

# List of complex numbers
list_complex = list(5.3+3i, 2.4+8i)
list_complex

# List of logic values
list_logic = list(TRUE, FALSE, FALSE)
list_logic

# Composed Lists
list_composed1 = list('A', 3, TRUE)
list_composed1

# 1:10 numeric vector
# c() String vector
# rnorm() Normal distribution
list1 <- list(1:10, c('Zico', 'Ronaldo'), rnorm((10)))
list1

?rnorm


# Slicing
list1[1] # The first dimension is a vector
list1[2]
list1[[2]][1] # Get first element inside the second dimension [[]]
list1[[2]][1] = 'Monica'  # Change values
list1

# Named lists (Its Better to use in the slicing the name of the dimension)
names(list1) <- c('integers', 'characters', 'numerics')
list1

# Creating a named list
vec_num <- 1:4
vec_char <- c('A', 'B', 'C', 'D')

list2 = list(Numbers = vec_num, Letters = vec_char)
list2


# Name the elements directly
list2 <- list(element1 = 3:5, element2 = c(7.3,3.5))
list2


# Working with specific elements of the list
names(list1) <- c('integers', 'characters', 'numerics')
list1

list1$characters
length(list1$integers)
list1$integers


# Checking the length of the list
length(list1)

# Extract a specific element inside of each level of the list
list1$characters[2]


# Mode of elements
mode(list1$numerics)
mode(list1$characters)


# Combining 2 lists
list3 <- c(list1, list2)
list3


# Transforming a vector into a list
v = c(1:3)
v
l = as.list(v)
l


# Merging 2 elements in a list
mat = matrix(1:4, nrow = 2)
mat
vec = c(1:9)
vec
lst = list(mat, vec)
lst 
