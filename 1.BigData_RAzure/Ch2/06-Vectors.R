# Vectors, operations with vectors and named vectors
# Vector has only one dimension and one data type

# Set WD
setwd("/home/bia/Code/GITHUB_DSA/DSA_Data-Science-Course/1.BigData_RAzure/Ch2")
getwd()

# String vector
vector_character = c("Data", "Science", "Academy")
vector_character


# Float vector
vector_numeric = c(1.90, 45.3, 300.5)
vector_numeric


# Complex value vector
vector_complex = c(5.2+3i, 3.8+4i)
vector_complex


# Logic value vector
vector_logic = c(TRUE, FALSE, TRUE, FALSE, FALSE)
vector_logic


# Integer vector
vector_integer = c(2, 4, 6)
vector_integer


# We can create a vector using seq()
vector1 = seq(1:10)
vector1
is.vector(vector1)

# We can create a vector using rep()
vector2 = rep(1:5)
vector2
is.vector(vector2)


# Vector indexing
a <- c(1,2,3,4,5)
a
a[1]
1[6] #  Return NA and not an error, maybe you cannot see that inside a operation 

b <- c("Data", "Science", "Academy")
b
b[1]
b[2]
b[3]
b[4]


# Combining vectors (It transform v1 values in string to be only one data type)
v1 = c(2, 3, 5)
v2 = c("aa", "bb", "cc", "dd", "ee")
c(v1, v2)


# Operations with vectors
x = c(1, 3, 5, 7)
y = c(2, 4, 6, 8)

x * 5
x + y
x - y
x * y
x / y


# Adding vectors with different number of elements (vectors has to be multiple)
alfa = c(10, 20, 30)
beta = c(1, 2, 3, 4, 5, 6, 7, 8, 9)
alfa + beta


# Named vector (names() to rename columns)
v = c("Nelson", "Mandela")
v
names(v) = c("Name", "Surname")
v
v["Name"]
