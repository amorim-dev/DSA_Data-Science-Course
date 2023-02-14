# Control Structures

# Setting WD
setwd("/home/bia/Code/GITHUB_DSA/DSA_Data-Science-Course/1.BigData_RAzure/Ch3")
getwd()


# If-else
x = 25
if (x < 30) 
  {"This number is less than 30"}


# The curly braces is not mandatory but highly recommended
if (x < 30) 
  "This number is less then 30"

# Else
if (x < 7) {
  'This number is less than 7'
} else {
  'This number is not less than 7'
}


# Nested if
x = 7
if (x < 7) {
  'This number is less than 7'
} else if (x == 7) {
  'This is the numbe 7'
} else {
  'This is number is not less than 7'
}


# Ifelse
x = 5
ifelse (x < 6, 'Correct!', NA)

x = 9
ifelse (x < 6, 'Correct!', NA)


# Nested Ifelse
x = c(7,5,4)
ifelse(x < 5, 'Less than 5',
       ifelse(x == 5, 'Equal 5', 'Greater than 5'))


# If inside functions
func1 <- function(x, y) {
  ifelse(y < 7, x + 7, 'Not found')
}

func1(4,2)
func1(40,7)


# Rep (something, number to repeat)
# rnorm - creat a normal distribution
rep(rnorm(10), 5)


# Repeat
x = 1
repeat {
  x = x + 3
  if (x > 99)
    break
  print(x)}


# Loop For
for (i in 1:20) {print(i)}
for (q in rnorm(10)) {print(q)}


# Ignore some elements inside the loop
for(i in 1:22){
  if(i == 13 | i ==15)
    next
  print(i)}


# Break hte loop
for(i in 1:22){
  if(i == 13)
    break
  print(i)
}


# Loop While
x = 1
while(x < 5){
  x = x + 1
  print(x)
}


# Does not enter the loop
y = 6
while(y < 5){
  y = y + 10
  print(y)
}














