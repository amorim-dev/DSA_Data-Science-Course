# Exercise List - Chapter 3

# Note: If you have problems with accentuation, check this link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Setting up the working directory
setwd("C:/FCD/BigDataRAzure/Cap02")
getwd()

# Exercise 1 - Search for the function that lets you list all the files in the working directory
dir()

# Exercise 2 - Create a dataframe from 3 vectors: one of characters, one logical, and one of numbers
vec1 = c('char1', 'char2', 'char3')
vec2 = c(TRUE, FALSE, FALSE)
vec3 = c(1, 2, 3)

df = data.frame(vec1, vec2, vec3)
df

# Exercise 3 - Consider the array below. 
# Create a loop that checks for numbers greater than 10 and prints the number and a message to the console.
vec1 <- c(12, 3, 4, 19, 34)
vec1

for(num in vec1){
  if(num > 10){
    print(num)
  }
}

# Exercise 4 - Consider the list below. Create a loop that prints to the console each element of the list
lst2 <- list(2, 3, 5, 7, 11, 13)
lst2
for(n in lst2){
  print(n)
}

# Exercise 5 - Consider the two matrices below. 
# Do an element-wise multiplication and normal multiplication between the matrices
mat1 <- matrix(c(1:50), nrow = 5, ncol = 5, byrow = T)
mat1
mat2 <- t(mat1)
mat2

# Element-wise multiplication
mat3 <- mat1 * mat2 
mat3

# Matrix multiplication (%*% are used for matrix multiplication)
mat4 <- mat1 %*% mat2
mat4

# Exercise 6 - Create a vector, matrix, list, and dataframe and name each of the objects
vec1 <- c(1, 2, 3)
names(vec1) <- c('num1', 'num2', 'num3')

matrix1 <- matrix(data = c(1:9), nrow = 3, ncol = 3, byrow = T)
matrix1
dimnames(matrix1) <- list(c('row1', 'row2', 'row3'), c('col1', 'col2', 'col3'))
matrix1

lst1 <- list(5, 6, 7)
names(lst1) <- c('num5', 'num6', 'num7')
lst1

df <- data.frame(c(8:10))
df
names(df) <- c('numbers')
df

# Exercise 7 - Consider the matrix below. Assign NA values randomly to 50 elements of the array
# Hint: use the sample() function
mat2 <- matrix(1:90, 10)
mat2
?sample
idx_sample = sample(mat2, size = 50)

for (i in mat2){
  if (i %in% c(idx_sample)){
    mat2[i] = NA
  }
}
mat2

# Exercise 8 - For the matrix below, calculate the sum per row and per column
mat1 <- matrix(c(1:50), nrow = 5, ncol = 5, byrow = T)
mat1

?apply
row_sum <- apply(mat1, 1, sum) # Sum by row
column_sum <- apply(mat1, 2, sum) # Sum by column

cbind(mat1, row_sum)
rbind(mat1, column_sum)


# Exercise 9 - For the vector below, sort the values in ascending order
a <- c(100, 10, 10000, 1000)
a
sort(a)

# Exercise 10 - Print to the console all elements of the matrix below that are greater than 15
mat1 <- matrix(c(1:50), nrow = 5, ncol = 5, byrow = T)
mat1

for (i in mat1){
  if (i > 15){
    print(i)}
}



