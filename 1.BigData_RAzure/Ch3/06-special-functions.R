# Special functions

# Setting WD
setwd("/home/bia/Code/GITHUB_DSA/DSA_Data-Science-Course/1.BigData_RAzure/Ch3")
getwd()

# unlist()
# Generate a vector with the list elements
# Flatten - From a object with many dimensions (list) to one dimension (Vector) 
?unlist

lst1 <- list(6, "b", 15)
lst1
class(lst1)

unlist(lst1)
vec1 <- unlist(lst1)
class(vec1)
vec1


lst2 <- list(v1 = 6, v2 = list(381, 2190), v3 = c(30, 217))
lst2

unlist(lst2)

mean(unlist(lst2))
round(mean(unlist(lst2)))

# unlist useful with you want to calculate something like mean in a list with many dimension

# Do.call()
# *** ATTENTION **
# The functions in apply`s family apply the function in each element of a object (replace a loop)
# The function do.call apply the function in the object and not in each individual element
?do.call

data <- list()
N <- 100

for (n in 1:N) {
  data[[n]] = data.frame(index = n, char = sample(letters, 1), z = rnorm(1))
}
head(data)

do.call(rbind, data) # rbinf join by line
class(do.call(rbind, data))


# lapply x do.call()
y <- list(1:3, 4:6, 7:9)
y

lapply(y, sum) # Sum to each element of the list
do.call(sum, y) # Total sum


# The result of the function lapply() can be obtained in other ways
# plyr package
install.packages('plyr')
library(plyr)

ldply(y, sum)


# strsplit()
# Divide a string in a list of characters
text <- "Data Science Academy"
strsplit(text, " ")
strsplit(text, "")


dates <- c('1998-05-23', '2008-12-30', '2009-11-29')
temp <- strsplit(dates, '-')
temp
class(temp)

# Transform a list in a matrix, doing first an unlist()
unlist(temp)
matrix(unlist(temp), ncol = 3, byrow = TRUE)


# 
Names <- c("Brin, Sergey", "Page, Larry",
           "Dorsey, Jack", "Glass, Noah",
           "Williams, Evan", "Stone, Biz")

temp <- strsplit(Names, ",")
temp


phrase <- "Many times we have to repeat something several times, and these several times seem like something strange."
words <- strsplit(phrase, " ")[[1]] # The number indicate the first element of the list, in this case we only have one
words
unique(tolower(words)) # We remove the repeated words


before <- data.frame(attr = c(1, 30, 4, 6), type = c('bread_and_water', 'bread_and_water2'))
before
strsplit(as.character(before$type), '_and_')


library(stringr)
str_split_fixed(before$type, '_and_', 2) # Do the same but the final result is a matrix


before <- data.frame(attr = c(1, 30, 4, 6), type = c('bread_and_water', 'bread_and_water2'))
before 
strsplit(as.character(before$type), '_and_') # Generate a list difficult to manipulate
do.call(rbind, before) # We can convert in a vector to be easier to manipulate


# Using dplyr and tidyr
install.packages("dplyr")
install.packages("tidyr")
library(dplyr)
library(tidyr)


before <- data.frame(
  attr = c(1, 30, 4, 6),
  type = c("bread_and_water", "bread_and_water2")
)

# Different syntax
# %>% is the default character to concatenate in this type of packages
# This type of code of tidyr let the code better
before %>%
  separate(type, c("bread", "water"), "_and_")
