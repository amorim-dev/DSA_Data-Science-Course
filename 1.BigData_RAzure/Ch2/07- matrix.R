# Matrix, Operations with matrix and name matrix
# Can be 2 or more dimensions and one datatype

# Set WD
setwd("/home/bia/Code/GITHUB_DSA/DSA_Data-Science-Course/1.BigData_RAzure/Ch2")
getwd()


# Creating matrix

# Number of rows (nr)
matrix (c(1,2,3,4,5,6), nr = 2)
matrix (c(1,2,3,4,5,6), nr = 3)
matrix (c(1,2,3,4,5,6), nr = 6)


# Number of columns
matrix (c (1,2,3,4), nc = 2)


# Help
?matrix


# Matrices must have a number of elements that is a multiple of the number of rows
matrix (c(1,2,3,4,5), nc =2) # If not we have a data length error


# Creating matrix from vectors and filling from rows
my_data = c(1:10)
matrix(data = my_data, nrow = 5, ncol = 2, byrow = T)
matrix(data = my_data, nrow = 5, ncol = 2)


# Slicing
mat <- matrix(c(2,3,4,5), nr = 2)
mat
mat[1,2]
mat[2,2]
mat[1,3] # Not exist because we do not have column 3
mat[,2]  # If you omit one of the values it considers all (all rows of column 2)


# Creating a diagonal matrix
matrix = 1:3
diag(matrix)


# Extracting a vector from a diagonal matrix
vector = diag(matrix)
diag(vector)


# Transposed of the matrix
w <- matrix (c(2,4,8,12), nr = 2, ncol = 2)
w
t(w)
U <- t(w)
U


# getting an inverse matrix
solve(w)


# matrix multiplication
mat1 <- matrix(c(2,3,4,5), nr = 2)
mat1
mat2 <- matrix(c(6,7,8,9), nr = 2)
mat2
mat1 * mat2
mat1 %*% mat2
mat1 / mat2
mat1 + mat2
mat1 - mat2


# Multiplying matrix with vector
x = c(1:4)
x
y <- matrix(c(2,3,4,5), nr = 2)
x * y


# Naming matrix
mat3 <- matrix(c('Earth', 'Mars', 'Saturn', 'Neturn'), nr = 2)
mat3
dimnames(mat3) = (list( c('Row1', 'Row2'), c('Column1', 'Column2')))
mat3


# Identifying rows and columns at the time of the creation of the matrix
matrix (c(1,2,3,4), nr = 2, nc = 2, dimnames = list(c('Row1', 'Row2'), c('Column1', 'Column2') ))

# Combining matrices
mat4 <- matrix(c(2,3,4,5), nr = 2)
mat4
mat5 <- matrix(c(6,7,8,9), nr = 2)
mat5
cbind(mat4, mat5) # binding by column
rbind(mat4, mat5) # binding by row

# Deconstructing the Matrix (Transform the matrix in a vector (one dimension))
c(mat4)
