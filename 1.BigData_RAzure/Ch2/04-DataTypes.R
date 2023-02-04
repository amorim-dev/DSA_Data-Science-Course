# Basic Data Types in R

# Set word directory
setwd("/home/bia/Code/GITHUB_DSA/DSA_Data-Science-Course/3.BigData_RAzure/Ch2")
getwd()

# NUMERIC - All the numbers created in R are numeric mode
# They are stored as decimal numbers (double) by default. Consider a decimal 
# number even if it is a integer when you just assign a number to the variable
num1 <- 7
num1
class(num1) # Represent the class of the variable
mode(num1)
typeof(num1)

num2 = 16.82
num2
mode(num2)
typeof(num2)


# INTEGER
# Verify if is integer
is.integer(num2)
# Convert numeric type to integer
y = as.integer(num2)
class(y)
mode(y)
typeof(y)
y

as.integer('3.67') # Get only the integer part
as.integer("Joe") # Attribute NA because can not convert
as.integer('Joe') # Attribute NA because can not convert
as.integer(TRUE) # Boolean have a numeric representation
as.integer("FALSE") # Attribute NA because can not convert


# CHARACTER
char1 = 'A'
char1
mode(char1)
typeof(char1)

char2 = "scientist"
char2
mode(char2)
typeof(char2)

char3 = c("Data", "Science", "Academy")
char3
mode(char3)
typeof(char3)


# COMPLEX
compl = 2.5 + 4i
compl
mode(compl)
typeof(compl)

sqrt(-1)
sqrt(-1+0i)
sqrt(as.complex(-1))


# LOGIC
x = 1; y =2
z = x > y
z
class(z)

u = TRUE; v = FALSE
class(u)
u & v
u | v
!u


# OPERATIONS WITH 0
5/0  # inf
0/5  # 0


# ERROR
'Joe'/5
