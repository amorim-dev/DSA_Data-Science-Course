# Functions

# Setting WD
setwd("/home/bia/Code/GITHUB_DSA/DSA_Data-Science-Course/1.BigData_RAzure/Ch3")
getwd()

# help
?sample
# To visualize the arguments of a function
args(sample)
args(mean)
args(sd) # Standard deviation


# Built-in fuctions
abs(-43)
sum(c(1:5))
mean(1:5)
round(c(1.1:5.8))
rev(c(1:5))
seq(1:5)
sort(rev(1:5))
append(c(1:5), 6)

vec1 <- c(1.5, 2.5, 8.4, 3.7, 6.3)
vec2 <- rev(vec1)
vec2

# Functions inside functions
plot(rnorm(10))
mean(c(abs(vec1), abs(vec2))) # Slow code, but its possible

# Create functions
# before create a function search if already exist one
myfunc <- function(x) { x + x}
myfunc(10)
class(myfunc)

myfunc2 <- function(a, b) {
  value = a ^ b
  print(value)
}
myfunc2(3, 2)

# Rolling dice
rolling_dice <- function() {
  num <- sample(1:6, size = 1) # local
  num
}
rolling_dice()


# Scope
print(num)
num <- c(1:6)
num # Global

# Function without a default argument
vec1 <- (10:13)
vec2 <- c('a', 'b', 'c', 'd')
vec3 <- c(6.5, 9.2, 11.9, 5.1)

myfunc3 <- function(...){
  df = data.frame(cbind(...))
  print(df)
}

myfunc3(vec1)
myfunc3(vec2, vec3)
myfunc3(vec1, vec2, vec3)
