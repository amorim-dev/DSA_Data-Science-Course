# Variables in R

# Configuring directory
setwd("/home/bia/Code/GITHUB_DSA/DSA_Data-Science-Course/3.BigData_RAzure/Ch2")
getwd()

# Creating variables
var1 = 100
var1
sqrt(var1)

# Verify mode of the language (storage mode)
# When you create a number its mode numeric but can have a different type
mode(var1)
help("mode")

# We can atribute the value from a variable to another one
var2 = var1
var2

# Mode is different of typeof
# typeof return the type or storage mode see the difference:
mode(var2)
typeof(var2)
help("typeof")

# One variable can be a list of elements
# The function c create a vector
var3 = c("first", "second", "third")
var3
mode(var3)

# One variable can be a function
var4 = function(x) {x+3}
var4
mode(var4)

# We can change a type
var5 = as.character(var1)
var5
mode(var5)

# Attribute values to objects
x = c(1,2,3)
x    
x1 <- c(1,2,3)
x1
c(1,2,3) -> y
y
assign("x", c(6.3,4,-2))
x

# Verify the value in a specific position
x[1]

# Verify objects
ls()
objects()

# Remove objects
rm(x)
x


